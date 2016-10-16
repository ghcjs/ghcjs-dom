{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MimeType
       (js_getType, getType, js_getSuffixes, getSuffixes,
        js_getDescription, getDescription, js_getEnabledPlugin,
        getEnabledPlugin, getEnabledPluginUnsafe,
        getEnabledPluginUnchecked, MimeType(..), gTypeMimeType)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.type Mozilla MimeType.type documentation> 
getType :: (MonadIO m, FromJSString result) => MimeType -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"suffixes\"]" js_getSuffixes
        :: MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.suffixes Mozilla MimeType.suffixes documentation> 
getSuffixes ::
            (MonadIO m, FromJSString result) => MimeType -> m result
getSuffixes self
  = liftIO (fromJSString <$> (js_getSuffixes (self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.description Mozilla MimeType.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => MimeType -> m result
getDescription self
  = liftIO (fromJSString <$> (js_getDescription (self)))
 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        js_getEnabledPlugin :: MimeType -> IO (Nullable Plugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPlugin :: (MonadIO m) => MimeType -> m (Maybe Plugin)
getEnabledPlugin self
  = liftIO (nullableToMaybe <$> (js_getEnabledPlugin (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPluginUnsafe ::
                       (MonadIO m, HasCallStack) => MimeType -> m Plugin
getEnabledPluginUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEnabledPlugin (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPluginUnchecked :: (MonadIO m) => MimeType -> m Plugin
getEnabledPluginUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getEnabledPlugin (self)))