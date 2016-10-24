{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ScriptProfile
       (js_getTitle, getTitle, js_getUid, getUid, js_getRootNode,
        getRootNode, getRootNodeUnsafe, getRootNodeUnchecked,
        ScriptProfile(..), gTypeScriptProfile)
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
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        ScriptProfile -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.title Mozilla ScriptProfile.title documentation> 
getTitle ::
         (MonadIO m, FromJSString result) => ScriptProfile -> m result
getTitle self = liftIO (fromJSString <$> (js_getTitle (self)))
 
foreign import javascript unsafe "$1[\"uid\"]" js_getUid ::
        ScriptProfile -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.uid Mozilla ScriptProfile.uid documentation> 
getUid :: (MonadIO m) => ScriptProfile -> m Word
getUid self = liftIO (js_getUid (self))
 
foreign import javascript unsafe "$1[\"rootNode\"]" js_getRootNode
        :: ScriptProfile -> IO (Nullable ScriptProfileNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNode ::
            (MonadIO m) => ScriptProfile -> m (Maybe ScriptProfileNode)
getRootNode self
  = liftIO (nullableToMaybe <$> (js_getRootNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNodeUnsafe ::
                  (MonadIO m, HasCallStack) => ScriptProfile -> m ScriptProfileNode
getRootNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRootNode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNodeUnchecked ::
                     (MonadIO m) => ScriptProfile -> m ScriptProfileNode
getRootNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRootNode (self)))