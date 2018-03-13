{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE KindSignatures #-}
module GHCJS.DOM.Debug.Internal (
    DomHasCallStack
  , debugEnabled
  , cachedStacks
  , cacheStack
  , lookupStack
  , getElementStack
) where

import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO, liftIO)
import Data.Map (Map)
import qualified Data.Map as M (insert, size, lookup)
import Data.IORef (atomicModifyIORef', IORef, newIORef, readIORef)
import GHC.Stack
       (SrcLoc, CallStack, callStack, getCallStack, HasCallStack)
import GHC.Exts (Constraint)
import System.IO.Unsafe (unsafePerformIO)
import Text.Read (readMaybe)

import GHCJS.DOM.Types (Element(..), MonadDOM, ToJSString, JSString)
import GHCJS.DOM.Element (setAttribute, getAttribute)

#ifdef GHCJS_DOM_DEBUG

type DomHasCallStack = (HasCallStack :: Constraint)
debugEnabled :: Bool
debugEnabled = True

#else

type DomHasCallStack = (() :: Constraint)

debugEnabled :: Bool
debugEnabled = False

#endif

cachedStacks :: IORef (Map String Int, Map Int [(String, SrcLoc)])
cachedStacks = unsafePerformIO $ newIORef (mempty, mempty)
{-# NOINLINE cachedStacks #-}

lookupStack :: MonadIO m => Int -> m (Maybe [(String, SrcLoc)])
lookupStack n = do
    (_, intToStack) <- liftIO $ readIORef cachedStacks
    return $ M.lookup n intToStack

getElementStack :: MonadDOM m => Element -> m (Maybe [(String, SrcLoc)])
getElementStack e =
    getAttribute e ("hs-creator" :: JSString) >>= \case
        Just a -> case readMaybe a of
            Just n -> lookupStack n
            Nothing -> return Nothing
        Nothing -> return Nothing

cacheStack :: MonadIO m => [(String, SrcLoc)] -> m Int
cacheStack cs = do
    let csString = show cs
    liftIO $ atomicModifyIORef' cachedStacks $ \(stackToInt, intToStack) ->
        case M.lookup csString stackToInt of
            Just n -> ((stackToInt, intToStack), n)
            Nothing ->
                let n = M.size stackToInt in
                ((M.insert csString n stackToInt, M.insert n cs intToStack), n)


