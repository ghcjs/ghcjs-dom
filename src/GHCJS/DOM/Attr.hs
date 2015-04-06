{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Attr
       (js_getName, getName, js_getSpecified, getSpecified, js_setValue,
        setValue, js_getValue, getValue, js_getOwnerElement,
        getOwnerElement, js_getIsId, getIsId, DOMAttr, castToDOMAttr,
        gTypeDOMAttr)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef DOMAttr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName :: (MonadIO m, FromJSString result) => DOMAttr -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unDOMAttr self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        js_getSpecified :: JSRef DOMAttr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadIO m) => DOMAttr -> m Bool
getSpecified self = liftIO (js_getSpecified (unDOMAttr self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef DOMAttr -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue :: (MonadIO m, ToJSString val) => DOMAttr -> val -> m ()
setValue self val
  = liftIO (js_setValue (unDOMAttr self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef DOMAttr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue :: (MonadIO m, FromJSString result) => DOMAttr -> m result
getValue self
  = liftIO (fromJSString <$> (js_getValue (unDOMAttr self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        js_getOwnerElement :: JSRef DOMAttr -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadIO m) => DOMAttr -> m (Maybe Element)
getOwnerElement self
  = liftIO ((js_getOwnerElement (unDOMAttr self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        js_getIsId :: JSRef DOMAttr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
getIsId :: (MonadIO m) => DOMAttr -> m Bool
getIsId self = liftIO (js_getIsId (unDOMAttr self))
#else
module GHCJS.DOM.Attr (
  module Graphics.UI.Gtk.WebKit.DOM.Attr
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
