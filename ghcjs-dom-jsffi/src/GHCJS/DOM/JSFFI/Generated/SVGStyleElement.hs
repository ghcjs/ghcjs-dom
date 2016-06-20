{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGStyleElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setType, setType, js_getType, getType, js_setMedia, setMedia,
        js_getMedia, getMedia, js_setTitle, setTitle, js_getTitle,
        getTitle, SVGStyleElement, castToSVGStyleElement,
        gTypeSVGStyleElement)
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
        js_setDisabled :: SVGStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
setDisabled :: (MonadIO m) => SVGStyleElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: SVGStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
getDisabled :: (MonadIO m) => SVGStyleElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.type Mozilla SVGStyleElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => SVGStyleElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.type Mozilla SVGStyleElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => SVGStyleElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => SVGStyleElement -> val -> m ()
setMedia self val = liftIO (js_setMedia (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => SVGStyleElement -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
setTitle ::
         (MonadIO m, ToJSString val) => SVGStyleElement -> val -> m ()
setTitle self val = liftIO (js_setTitle (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
getTitle ::
         (MonadIO m, FromJSString result) => SVGStyleElement -> m result
getTitle self = liftIO (fromJSString <$> (js_getTitle (self)))