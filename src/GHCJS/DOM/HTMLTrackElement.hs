{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTrackElement
       (pattern NONE, pattern LOADING, pattern LOADED, pattern ERROR,
        js_setKind, setKind, js_getKind, getKind, js_setSrc, setSrc,
        js_getSrc, getSrc, js_setSrclang, setSrclang, js_getSrclang,
        getSrclang, js_setLabel, setLabel, js_getLabel, getLabel,
        js_setDefault, setDefault, js_getDefault, getDefault,
        js_getReadyState, getReadyState, js_getTrack, getTrack,
        HTMLTrackElement, castToHTMLTrackElement, gTypeHTMLTrackElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern NONE = 0
pattern LOADING = 1
pattern LOADED = 2
pattern ERROR = 3
 
foreign import javascript unsafe "$1[\"kind\"] = $2;" js_setKind ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
setKind ::
        (MonadIO m, ToJSString val) => HTMLTrackElement -> val -> m ()
setKind self val
  = liftIO (js_setKind (unHTMLTrackElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => HTMLTrackElement -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (unHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLTrackElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLTrackElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLTrackElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"srclang\"] = $2;"
        js_setSrclang :: JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
setSrclang ::
           (MonadIO m, ToJSString val) => HTMLTrackElement -> val -> m ()
setSrclang self val
  = liftIO (js_setSrclang (unHTMLTrackElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"srclang\"]" js_getSrclang ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
getSrclang ::
           (MonadIO m, FromJSString result) => HTMLTrackElement -> m result
getSrclang self
  = liftIO
      (fromJSString <$> (js_getSrclang (unHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => HTMLTrackElement -> val -> m ()
setLabel self val
  = liftIO (js_setLabel (unHTMLTrackElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => HTMLTrackElement -> m result
getLabel self
  = liftIO (fromJSString <$> (js_getLabel (unHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"default\"] = $2;"
        js_setDefault :: JSRef HTMLTrackElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
setDefault :: (MonadIO m) => HTMLTrackElement -> Bool -> m ()
setDefault self val
  = liftIO (js_setDefault (unHTMLTrackElement self) val)
 
foreign import javascript unsafe "($1[\"default\"] ? 1 : 0)"
        js_getDefault :: JSRef HTMLTrackElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
getDefault :: (MonadIO m) => HTMLTrackElement -> m Bool
getDefault self = liftIO (js_getDefault (unHTMLTrackElement self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef HTMLTrackElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.readyState Mozilla HTMLTrackElement.readyState documentation> 
getReadyState :: (MonadIO m) => HTMLTrackElement -> m Word
getReadyState self
  = liftIO (js_getReadyState (unHTMLTrackElement self))
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        JSRef HTMLTrackElement -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.track Mozilla HTMLTrackElement.track documentation> 
getTrack :: (MonadIO m) => HTMLTrackElement -> m (Maybe TextTrack)
getTrack self
  = liftIO ((js_getTrack (unHTMLTrackElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLTrackElement (
  ) where
#endif
