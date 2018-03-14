{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module GHCJS.DOM.Debug (
    DomHasCallStack
  , debugEnabled
  , getElementStack
  , addDebugMenu
  , addDebugMenu'
) where

import Control.Arrow (Arrow(..))
import Control.Monad.IO.Class (MonadIO(..))

import Data.Char (toLower)
import Data.Foldable (forM_)
import Data.Monoid ((<>))

import System.IO (stderr, hPutStrLn)

import GHC.Stack
       (srcLocStartLine, srcLocFile, SrcLoc(..), HasCallStack)
import GHC.Exts (Constraint)

import GHCJS.DOM (currentDocumentUnchecked)
import GHCJS.DOM.Types
       (HTMLDivElement(..), HTMLStyleElement(..), uncheckedCastTo,
        HTMLUListElement(..), MouseEvent(..), Document(..), Element(..),
        HTMLAnchorElement(..), MonadJSM, JSM, liftJSM, JSString)
import GHCJS.DOM.Debug.Internal (DomHasCallStack, getElementStack, debugEnabled)
import GHCJS.DOM.Document
       (createTextNode, getBodyUnchecked,
        getElementsByTagName, createElement)
import GHCJS.DOM.DocumentOrShadowRoot (elementFromPoint)
import GHCJS.DOM.Element
       (getTagName, setAttribute, getAttribute, setInnerHTML)
import GHCJS.DOM.EventM
       (addListener, uiPageXY, mouseClientXY, mouseShiftKey, target,
        newListener, on, preventDefault)
import GHCJS.DOM.EventTargetClosures (SaferEventListener(..))
import GHCJS.DOM.GlobalEventHandlers (click, contextMenu)
import GHCJS.DOM.HTMLCollection (itemUnchecked)
import GHCJS.DOM.HTMLStyleElement (setType)
import GHCJS.DOM.Node (getParentElement, appendChild_)
import GHCJS.DOM.NonElementParentNode (getElementById)

addDebugMenu :: MonadJSM m => m (JSM ())
addDebugMenu = addDebugMenu' (const Nothing)

addDebugMenu' :: MonadJSM m => (SrcLoc -> Maybe String) -> m (JSM ())
addDebugMenu' getSourceLink = liftJSM $ do
    let menuId = "ghcjs-dom-debug" :: JSString
    doc <- currentDocumentUnchecked
    style <- uncheckedCastTo HTMLStyleElement <$> createElement doc ("style" :: JSString)
    setType style ("text/css" :: JSString)
    setInnerHTML style $ mconcat [
        "#", menuId, ", #", menuId, " ul ul{"
      , "  display: block;"
      , "  position: absolute;"
      , "  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"
      , "  padding: 2px;"
      , "  z-index:1000;"
      , "  margin: 0;"
      , "  list-style-type: none;"
      , "  list-style: none;"
      , "  background-color:#fff;"
      , "  color:#000;"
      , "}\n"
      , "#", menuId, " ul{"
      , "  list-style-type: none;"
      , "  margin: 0;"
      , "  padding: 2px;"
      , "  cursor: pointer;"
      , "}\n"
      , "#", menuId, " li{"
      , "  white-space: nowrap;"
      , "}\n"
      , "#", menuId, " ul ul{"
      , "  display: none;"
      , "}\n"
      , "#", menuId, ">li:hover{"
      , "  background-color:#ddd;"
      , "}\n"
      , "#", menuId, " li:hover ul{"
      , "  display: inline-block;"
      , "  position: absolute;"
      , "  z-index:1001;"
      , "}\n"
      ]
    getElementsByTagName doc ("head" :: JSString) >>= (`itemUnchecked` 0) >>= (`appendChild_` style)
    body <- getBodyUnchecked doc
    clickListener <- newListener $ do
        target >>= \case
            Just (t :: HTMLAnchorElement) ->
                getAttribute t ("hs-srcloc" :: JSString)
                    >>= mapM_ (liftIO . hPutStrLn stderr . ("OPEN " <>))
            Nothing -> return ()
        getElementById doc menuId >>= mapM_
            (\e -> setAttribute e ("style" :: JSString) ("display: none;" :: JSString))
    on doc contextMenu $ mouseShiftKey >>= \case
        True -> ((fromIntegral *** fromIntegral) <$> mouseClientXY) >>= uncurry (elementFromPoint doc) >>= \case
            Just e ->  do
                preventDefault
                menu <- getElementById doc menuId >>= \case
                    Just menu -> setInnerHTML menu ("" :: JSString) >> return (uncheckedCastTo HTMLDivElement menu)
                    Nothing -> do
                        menu <- uncheckedCastTo HTMLDivElement <$> createElement doc ("div" :: JSString)
                        setAttribute menu ("id" :: JSString) menuId
                        appendChild_ body menu
                        return menu

                if debugEnabled
                    then do
                        ul <- uncheckedCastTo HTMLUListElement <$> createElement doc ("ul" :: JSString)
                        appendChild_ menu ul
                        addMenu doc clickListener ul e
                    else do
                        a <- uncheckedCastTo HTMLAnchorElement <$> createElement doc ("a" :: JSString)
                        appendChild_ menu a
                        createTextNode doc ("The ghcjs-dom debug cabal flag is switched off" :: JSString)
                            >>= appendChild_ a
                        setAttribute a ("href" :: JSString)
                            ("https://github.com/ghcjs/ghcjs-dom/blob/master/README.md#debug" :: JSString)
                        setAttribute a ("target" :: JSString) ("_blank" :: JSString)
                        liftJSM $ addListener a click clickListener False

                (pageX, pageY) <- uiPageXY
                setAttribute menu ("style" :: JSString) ("display: block; left: " <> show pageX <> "px; top:" <> show pageY <> "px;" )
            Nothing -> return ()
        False -> return ()

  where
    addMenu :: MonadJSM m => Document -> SaferEventListener HTMLAnchorElement MouseEvent -> HTMLUListElement -> Element -> m ()
    addMenu doc clickListener parentMenu = loop
      where
        loop e = do
            getElementStack e >>= mapM_ (addElementMenu doc clickListener parentMenu e)
            getParentElement e >>= mapM_ loop

    addElementMenu
        :: MonadJSM m
        => Document
        -> SaferEventListener HTMLAnchorElement MouseEvent
        -> HTMLUListElement
        -> Element
        -> [(String, SrcLoc)]
        -> m ()
    addElementMenu doc clickListener parentMenu e cs = do
        tagName <- map toLower <$> getTagName e
        parentLi <- createElement doc ("li" :: JSString)
        appendChild_ parentMenu parentLi
        createTextNode doc tagName >>= appendChild_ parentLi
        ul <- createElement doc ("ul" :: JSString)
        appendChild_ parentLi ul
        forM_ (reverse cs) $ \(f, loc) -> do
            li <- createElement doc ("li" :: JSString)
            appendChild_ ul li
            a <- uncheckedCastTo HTMLAnchorElement <$> createElement doc ("a" :: JSString)
            appendChild_ li a
            createTextNode doc (f <> " " <> srcLocFile loc <> ":" <> show (srcLocStartLine loc))
                >>= appendChild_ a
            forM_ (getSourceLink loc) $ \link -> do
                setAttribute a ("href" :: JSString) link
                setAttribute a ("target" :: JSString) ("_blank" :: JSString)
            setAttribute a ("hs-srcloc" :: JSString) $ prettySrcLoc loc
            liftJSM $ addListener a click clickListener False

    prettySrcLoc :: SrcLoc -> String
    prettySrcLoc SrcLoc {..} = mconcat
        [ srcLocFile          , ":("
        , show srcLocStartLine, ","
        , show srcLocStartCol , ")-("
        , show srcLocEndLine  , ","
        , show srcLocEndCol   , ") in "
        , srcLocPackage, ":", srcLocModule
        ]

