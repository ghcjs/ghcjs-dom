{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLHtmlElement
       (js_setVersion, setVersion, js_getVersion, getVersion,
        js_setManifest, setManifest, js_getManifest, getManifest,
        HTMLHtmlElement, castToHTMLHtmlElement, gTypeHTMLHtmlElement)
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
 
foreign import javascript unsafe "$1[\"version\"] = $2;"
        js_setVersion :: HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
setVersion ::
           (MonadIO m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setVersion self val
  = liftIO (js_setVersion (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
getVersion ::
           (MonadIO m, FromJSString result) => HTMLHtmlElement -> m result
getVersion self = liftIO (fromJSString <$> (js_getVersion (self)))
 
foreign import javascript unsafe "$1[\"manifest\"] = $2;"
        js_setManifest :: HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
setManifest ::
            (MonadIO m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setManifest self val
  = liftIO (js_setManifest (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"manifest\"]" js_getManifest
        :: HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
getManifest ::
            (MonadIO m, FromJSString result) => HTMLHtmlElement -> m result
getManifest self
  = liftIO (fromJSString <$> (js_getManifest (self)))