{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Counter
       (js_getIdentifier, getIdentifier, js_getListStyle, getListStyle,
        js_getSeparator, getSeparator, Counter(..), gTypeCounter)
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
 
foreign import javascript unsafe "$1[\"identifier\"]"
        js_getIdentifier :: Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.identifier Mozilla Counter.identifier documentation> 
getIdentifier ::
              (MonadIO m, FromJSString result) => Counter -> m result
getIdentifier self
  = liftIO (fromJSString <$> (js_getIdentifier self))
 
foreign import javascript unsafe "$1[\"listStyle\"]"
        js_getListStyle :: Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.listStyle Mozilla Counter.listStyle documentation> 
getListStyle ::
             (MonadIO m, FromJSString result) => Counter -> m result
getListStyle self
  = liftIO (fromJSString <$> (js_getListStyle self))
 
foreign import javascript unsafe "$1[\"separator\"]"
        js_getSeparator :: Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.separator Mozilla Counter.separator documentation> 
getSeparator ::
             (MonadIO m, FromJSString result) => Counter -> m result
getSeparator self
  = liftIO (fromJSString <$> (js_getSeparator self))