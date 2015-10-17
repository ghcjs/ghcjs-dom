{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Entity
       (js_getPublicId, getPublicId, js_getSystemId, getSystemId,
        js_getNotationName, getNotationName, Entity, castToEntity,
        gTypeEntity)
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
 
foreign import javascript unsafe "$1[\"publicId\"]" js_getPublicId
        :: Entity -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.publicId Mozilla Entity.publicId documentation> 
getPublicId ::
            (MonadIO m, FromJSString result) => Entity -> m (Maybe result)
getPublicId self
  = liftIO (fromMaybeJSString <$> (js_getPublicId (self)))
 
foreign import javascript unsafe "$1[\"systemId\"]" js_getSystemId
        :: Entity -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.systemId Mozilla Entity.systemId documentation> 
getSystemId ::
            (MonadIO m, FromJSString result) => Entity -> m (Maybe result)
getSystemId self
  = liftIO (fromMaybeJSString <$> (js_getSystemId (self)))
 
foreign import javascript unsafe "$1[\"notationName\"]"
        js_getNotationName :: Entity -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.notationName Mozilla Entity.notationName documentation> 
getNotationName ::
                (MonadIO m, FromJSString result) => Entity -> m (Maybe result)
getNotationName self
  = liftIO (fromMaybeJSString <$> (js_getNotationName (self)))