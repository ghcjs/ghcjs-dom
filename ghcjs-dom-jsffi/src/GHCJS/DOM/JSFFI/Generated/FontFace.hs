{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FontFace
       (js_newFontFace, newFontFace, js_load, load, load_, js_setFamily,
        setFamily, js_getFamily, getFamily, js_setStyle, setStyle,
        js_getStyle, getStyle, js_setWeight, setWeight, js_getWeight,
        getWeight, js_setStretch, setStretch, js_getStretch, getStretch,
        js_setUnicodeRange, setUnicodeRange, js_getUnicodeRange,
        getUnicodeRange, js_setVariant, setVariant, js_getVariant,
        getVariant, js_setFeatureSettings, setFeatureSettings,
        js_getFeatureSettings, getFeatureSettings, js_getStatus, getStatus,
        js_getLoaded, getLoaded, FontFace(..), gTypeFontFace)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe
        "new window[\"FontFace\"]($1, $2,\n$3)" js_newFontFace ::
        JSString ->
          StringOrBinaryData -> Optional FontFaceDescriptors -> IO FontFace

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace Mozilla FontFace documentation> 
newFontFace ::
            (MonadIO m, ToJSString family', IsStringOrBinaryData source) =>
              family' -> source -> Maybe FontFaceDescriptors -> m FontFace
newFontFace family' source descriptors
  = liftIO
      (toJSVal source >>=
         \ source' ->
           js_newFontFace (toJSString family') (StringOrBinaryData source')
         (maybeToOptional descriptors))
 
foreign import javascript interruptible
        "$1[\"load\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_load :: FontFace -> IO (JSVal, FontFace)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.load Mozilla FontFace.load documentation> 
load :: (MonadIO m) => FontFace -> m FontFace
load self = liftIO ((js_load self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.load Mozilla FontFace.load documentation> 
load_ :: (MonadIO m) => FontFace -> m ()
load_ self = liftIO (void (js_load self))
 
foreign import javascript safe "$1[\"family\"] = $2;" js_setFamily
        :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.family Mozilla FontFace.family documentation> 
setFamily :: (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setFamily self val = liftIO (js_setFamily self (toJSString val))
 
foreign import javascript unsafe "$1[\"family\"]" js_getFamily ::
        FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.family Mozilla FontFace.family documentation> 
getFamily ::
          (MonadIO m, FromJSString result) => FontFace -> m result
getFamily self = liftIO (fromJSString <$> (js_getFamily self))
 
foreign import javascript safe "$1[\"style\"] = $2;" js_setStyle ::
        FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.style Mozilla FontFace.style documentation> 
setStyle :: (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setStyle self val = liftIO (js_setStyle self (toJSString val))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.style Mozilla FontFace.style documentation> 
getStyle ::
         (MonadIO m, FromJSString result) => FontFace -> m result
getStyle self = liftIO (fromJSString <$> (js_getStyle self))
 
foreign import javascript safe "$1[\"weight\"] = $2;" js_setWeight
        :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.weight Mozilla FontFace.weight documentation> 
setWeight :: (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setWeight self val = liftIO (js_setWeight self (toJSString val))
 
foreign import javascript unsafe "$1[\"weight\"]" js_getWeight ::
        FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.weight Mozilla FontFace.weight documentation> 
getWeight ::
          (MonadIO m, FromJSString result) => FontFace -> m result
getWeight self = liftIO (fromJSString <$> (js_getWeight self))
 
foreign import javascript safe "$1[\"stretch\"] = $2;"
        js_setStretch :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.stretch Mozilla FontFace.stretch documentation> 
setStretch ::
           (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setStretch self val = liftIO (js_setStretch self (toJSString val))
 
foreign import javascript unsafe "$1[\"stretch\"]" js_getStretch ::
        FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.stretch Mozilla FontFace.stretch documentation> 
getStretch ::
           (MonadIO m, FromJSString result) => FontFace -> m result
getStretch self = liftIO (fromJSString <$> (js_getStretch self))
 
foreign import javascript safe "$1[\"unicodeRange\"] = $2;"
        js_setUnicodeRange :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.unicodeRange Mozilla FontFace.unicodeRange documentation> 
setUnicodeRange ::
                (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setUnicodeRange self val
  = liftIO (js_setUnicodeRange self (toJSString val))
 
foreign import javascript unsafe "$1[\"unicodeRange\"]"
        js_getUnicodeRange :: FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.unicodeRange Mozilla FontFace.unicodeRange documentation> 
getUnicodeRange ::
                (MonadIO m, FromJSString result) => FontFace -> m result
getUnicodeRange self
  = liftIO (fromJSString <$> (js_getUnicodeRange self))
 
foreign import javascript safe "$1[\"variant\"] = $2;"
        js_setVariant :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.variant Mozilla FontFace.variant documentation> 
setVariant ::
           (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setVariant self val = liftIO (js_setVariant self (toJSString val))
 
foreign import javascript unsafe "$1[\"variant\"]" js_getVariant ::
        FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.variant Mozilla FontFace.variant documentation> 
getVariant ::
           (MonadIO m, FromJSString result) => FontFace -> m result
getVariant self = liftIO (fromJSString <$> (js_getVariant self))
 
foreign import javascript safe "$1[\"featureSettings\"] = $2;"
        js_setFeatureSettings :: FontFace -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.featureSettings Mozilla FontFace.featureSettings documentation> 
setFeatureSettings ::
                   (MonadIO m, ToJSString val) => FontFace -> val -> m ()
setFeatureSettings self val
  = liftIO (js_setFeatureSettings self (toJSString val))
 
foreign import javascript unsafe "$1[\"featureSettings\"]"
        js_getFeatureSettings :: FontFace -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.featureSettings Mozilla FontFace.featureSettings documentation> 
getFeatureSettings ::
                   (MonadIO m, FromJSString result) => FontFace -> m result
getFeatureSettings self
  = liftIO (fromJSString <$> (js_getFeatureSettings self))
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        FontFace -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.status Mozilla FontFace.status documentation> 
getStatus :: (MonadIO m) => FontFace -> m FontFaceLoadStatus
getStatus self
  = liftIO ((js_getStatus self) >>= fromJSValUnchecked)
 
foreign import javascript interruptible
        "$1[\"loaded\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getLoaded :: FontFace -> IO (JSVal, FontFace)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.loaded Mozilla FontFace.loaded documentation> 
getLoaded :: (MonadIO m) => FontFace -> m FontFace
getLoaded self
  = liftIO ((js_getLoaded self) >>= checkPromiseResult)