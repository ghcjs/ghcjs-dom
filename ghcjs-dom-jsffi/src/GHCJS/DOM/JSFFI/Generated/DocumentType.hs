{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DocumentType
       (js_getName, getName, js_getPublicId, getPublicId, js_getSystemId,
        getSystemId, DocumentType(..), gTypeDocumentType)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => DocumentType -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"publicId\"]" js_getPublicId
        :: DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicId ::
            (MonadIO m, FromJSString result) => DocumentType -> m result
getPublicId self = liftIO (fromJSString <$> (js_getPublicId self))
 
foreign import javascript unsafe "$1[\"systemId\"]" js_getSystemId
        :: DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemId ::
            (MonadIO m, FromJSString result) => DocumentType -> m result
getSystemId self = liftIO (fromJSString <$> (js_getSystemId self))