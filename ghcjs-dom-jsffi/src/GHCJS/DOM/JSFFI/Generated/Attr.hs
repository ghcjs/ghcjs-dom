{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Attr
       (js_getName, getName, js_getSpecified, getSpecified, js_setValue,
        setValue, js_getValue, getValue, js_getOwnerElement,
        getOwnerElement, js_getIsId, getIsId, Attr, castToAttr, gTypeAttr)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getName self = liftIO (fromMaybeJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        js_getSpecified :: Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadIO m) => Attr -> m Bool
getSpecified self = liftIO (js_getSpecified (self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: Attr -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => Attr -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        js_getOwnerElement :: Attr -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadIO m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftIO (nullableToMaybe <$> (js_getOwnerElement (self)))
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        js_getIsId :: Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
getIsId :: (MonadIO m) => Attr -> m Bool
getIsId self = liftIO (js_getIsId (self))