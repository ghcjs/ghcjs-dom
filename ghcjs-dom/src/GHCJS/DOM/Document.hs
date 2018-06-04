{-# LANGUAGE CPP #-}
{-# LANGUAGE PackageImports #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ConstraintKinds #-}
module GHCJS.DOM.Document (
    module Export
  , createElement
  , createElement_
  , createElementNS
  , createElementNS_
) where

#ifdef GHCJS_DOM_DEBUG

import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO, liftIO)
import Data.IORef (atomicModifyIORef', IORef, newIORef, readIORef)
import GHC.Stack
       (SrcLoc, CallStack, callStack, getCallStack, HasCallStack)
import System.IO.Unsafe (unsafePerformIO)
import Text.Read (readMaybe)

import GHCJS.DOM.Types (Element(..), MonadDOM, ToJSString, JSString)
import GHCJS.DOM.Debug.Internal (cacheStack)
import GHCJS.DOM.Element (setAttribute, getAttribute)
#ifdef MIN_VERSION_ghcjs_dom_jsffi
import qualified "ghcjs-dom-jsffi" GHCJS.DOM.Document as Raw (createElement, createElement_, createElementNS, createElementNS_)
import "ghcjs-dom-jsffi" GHCJS.DOM.Document as Export hiding (createElement, createElement_, createElementNS, createElementNS_)
#else
import qualified "jsaddle-dom" GHCJS.DOM.Document as Raw (createElement, createElement_, createElementNS, createElementNS_)
import "jsaddle-dom" GHCJS.DOM.Document as Export hiding (createElement, createElement_, createElementNS, createElementNS_)
#endif


createElement
    :: (MonadDOM m, IsDocument doc, ToJSString localName, HasCallStack)
    => doc
    -> localName
    -> m Element
createElement doc localName = do
    e <- Raw.createElement doc localName
    let cs = getCallStack callStack
    setAttribute e ("hs-creator"::JSString) . show =<< cacheStack cs
    return e

createElement_
    :: (MonadDOM m, IsDocument doc, ToJSString localName, HasCallStack)
    => doc
    -> localName
    -> m ()
createElement_ doc localName = void $ createElement doc localName

createElementNS
    :: (MonadDOM m, IsDocument doc, ToJSString namespaceURI, ToJSString qualifiedName, HasCallStack)
    => doc
    -> Maybe namespaceURI
    -> qualifiedName
    -> m Element
createElementNS doc namespaceURI qualifiedName = do
    e <- Raw.createElementNS doc namespaceURI qualifiedName
    setAttribute e ("haskell-stack"::JSString) . show =<< cacheStack (getCallStack callStack)
    return e

createElementNS_
    :: (MonadDOM m, IsDocument doc, ToJSString namespaceURI, ToJSString qualifiedName, HasCallStack)
    => doc
    -> Maybe namespaceURI
    -> qualifiedName
    -> m ()
createElementNS_ doc namespaceURI qualifiedName = void $ createElementNS doc namespaceURI qualifiedName

#else

#ifdef MIN_VERSION_ghcjs_dom_jsffi
import "ghcjs-dom-jsffi" GHCJS.DOM.Document (createElement, createElement_, createElementNS, createElementNS_)
import "ghcjs-dom-jsffi" GHCJS.DOM.Document as Export hiding (createElement, createElement_, createElementNS, createElementNS_)
#else
import "jsaddle-dom" GHCJS.DOM.Document (createElement, createElement_, createElementNS, createElementNS_)
import "jsaddle-dom" GHCJS.DOM.Document as Export hiding (createElement, createElement_, createElementNS, createElementNS_)
#endif

#endif
