{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLPreElement
       (js_setWidth, setWidth, js_getWidth, getWidth, js_setWrap, setWrap,
        js_getWrap, getWrap, HTMLPreElement, castToHTMLPreElement,
        gTypeHTMLPreElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLPreElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
setWidth :: (MonadIO m) => HTMLPreElement -> Int -> m ()
setWidth self val = liftIO (js_setWidth (self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLPreElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
getWidth :: (MonadIO m) => HTMLPreElement -> m Int
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;" js_setWrap ::
        HTMLPreElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
setWrap :: (MonadIO m) => HTMLPreElement -> Bool -> m ()
setWrap self val = liftIO (js_setWrap (self) val)
 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        js_getWrap :: HTMLPreElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
getWrap :: (MonadIO m) => HTMLPreElement -> m Bool
getWrap self = liftIO (js_getWrap (self))