{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Attr
       (js_getName, getName, js_getSpecified, getSpecified, js_setValue,
        setValue, js_getValue, getValue, js_getOwnerElement,
        getOwnerElement, js_getIsId, getIsId, Attr, castToAttr, gTypeAttr)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        JSRef Attr -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getName self
  = liftIO (fromMaybeJSString <$> (js_getName (unAttr self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        js_getSpecified :: JSRef Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadIO m) => Attr -> m Bool
getSpecified self = liftIO (js_getSpecified (unAttr self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef Attr -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => Attr -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (unAttr self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef Attr -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getValue self
  = liftIO (fromMaybeJSString <$> (js_getValue (unAttr self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        js_getOwnerElement :: JSRef Attr -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadIO m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftIO ((js_getOwnerElement (unAttr self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        js_getIsId :: JSRef Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
getIsId :: (MonadIO m) => Attr -> m Bool
getIsId self = liftIO (js_getIsId (unAttr self))