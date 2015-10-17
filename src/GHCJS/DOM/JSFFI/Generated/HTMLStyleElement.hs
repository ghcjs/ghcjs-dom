{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLStyleElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setMedia, setMedia, js_getMedia, getMedia, js_setType, setType,
        js_getType, getType, js_getSheet, getSheet, HTMLStyleElement,
        castToHTMLStyleElement, gTypeHTMLStyleElement)
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
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLStyleElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLStyleElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setMedia self val = liftIO (js_setMedia (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        HTMLStyleElement -> IO (Nullable StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.sheet Mozilla HTMLStyleElement.sheet documentation> 
getSheet :: (MonadIO m) => HTMLStyleElement -> m (Maybe StyleSheet)
getSheet self = liftIO (nullableToMaybe <$> (js_getSheet (self)))