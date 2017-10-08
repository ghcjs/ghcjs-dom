{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Attr
       (js_getNamespaceURI, getNamespaceURI, getNamespaceURIUnsafe,
        getNamespaceURIUnchecked, js_getPrefix, getPrefix, getPrefixUnsafe,
        getPrefixUnchecked, js_getLocalName, getLocalName, js_getName,
        getName, js_setValue, setValue, js_getValue, getValue,
        js_getOwnerElement, getOwnerElement, getOwnerElementUnsafe,
        getOwnerElementUnchecked, js_getSpecified, getSpecified, Attr(..),
        gTypeAttr)
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
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        js_getNamespaceURI :: Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURI ::
                (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getNamespaceURI self
  = liftIO (fromMaybeJSString <$> (js_getNamespaceURI self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURIUnsafe ::
                      (MonadIO m, HasCallStack, FromJSString result) => Attr -> m result
getNamespaceURIUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getNamespaceURI self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.namespaceURI Mozilla Attr.namespaceURI documentation> 
getNamespaceURIUnchecked ::
                         (MonadIO m, FromJSString result) => Attr -> m result
getNamespaceURIUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getNamespaceURI self))
 
foreign import javascript unsafe "$1[\"prefix\"]" js_getPrefix ::
        Attr -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefix ::
          (MonadIO m, FromJSString result) => Attr -> m (Maybe result)
getPrefix self = liftIO (fromMaybeJSString <$> (js_getPrefix self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefixUnsafe ::
                (MonadIO m, HasCallStack, FromJSString result) => Attr -> m result
getPrefixUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getPrefix self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.prefix Mozilla Attr.prefix documentation> 
getPrefixUnchecked ::
                   (MonadIO m, FromJSString result) => Attr -> m result
getPrefixUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getPrefix self))
 
foreign import javascript unsafe "$1[\"localName\"]"
        js_getLocalName :: Attr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.localName Mozilla Attr.localName documentation> 
getLocalName ::
             (MonadIO m, FromJSString result) => Attr -> m result
getLocalName self
  = liftIO (fromJSString <$> (js_getLocalName self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Attr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
getName :: (MonadIO m, FromJSString result) => Attr -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: Attr -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
setValue :: (MonadIO m, ToJSString val) => Attr -> val -> m ()
setValue self val = liftIO (js_setValue self (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        Attr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
getValue :: (MonadIO m, FromJSString result) => Attr -> m result
getValue self = liftIO (fromJSString <$> (js_getValue self))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        js_getOwnerElement :: Attr -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElement :: (MonadIO m) => Attr -> m (Maybe Element)
getOwnerElement self
  = liftIO (nullableToMaybe <$> (js_getOwnerElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnsafe ::
                      (MonadIO m, HasCallStack) => Attr -> m Element
getOwnerElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOwnerElement self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
getOwnerElementUnchecked :: (MonadIO m) => Attr -> m Element
getOwnerElementUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOwnerElement self))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        js_getSpecified :: Attr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
getSpecified :: (MonadIO m) => Attr -> m Bool
getSpecified self = liftIO (js_getSpecified self)