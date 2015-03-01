{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMMimeType
       (js_getSuffixes, getSuffixes, js_getDescription, getDescription,
        js_getEnabledPlugin, getEnabledPlugin, DOMMimeType,
        castToDOMMimeType, gTypeDOMMimeType)
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

 
foreign import javascript unsafe "$1[\"suffixes\"]" js_getSuffixes
        :: JSRef DOMMimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.suffixes Mozilla MimeType.suffixes documentation> 
getSuffixes ::
            (MonadIO m, FromJSString result) => DOMMimeType -> m result
getSuffixes self
  = liftIO (fromJSString <$> (js_getSuffixes (unDOMMimeType self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: JSRef DOMMimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.description Mozilla MimeType.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => DOMMimeType -> m result
getDescription self
  = liftIO
      (fromJSString <$> (js_getDescription (unDOMMimeType self)))
 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        js_getEnabledPlugin :: JSRef DOMMimeType -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPlugin ::
                 (MonadIO m) => DOMMimeType -> m (Maybe DOMPlugin)
getEnabledPlugin self
  = liftIO ((js_getEnabledPlugin (unDOMMimeType self)) >>= fromJSRef)
#else
module GHCJS.DOM.DOMMimeType (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
#endif
