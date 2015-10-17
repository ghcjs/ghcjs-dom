{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ScriptProfile
       (js_getTitle, getTitle, js_getUid, getUid, js_getRootNode,
        getRootNode, ScriptProfile, castToScriptProfile,
        gTypeScriptProfile)
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