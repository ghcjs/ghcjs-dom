{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMStringMap
       (js_get, get, get_, DOMStringMap(..), gTypeDOMStringMap) where
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
 
foreign import javascript unsafe "$1[$2]" js_get ::
        DOMStringMap -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap.get Mozilla DOMStringMap.get documentation> 
get ::
    (MonadIO m, ToJSString name, FromJSString result) =>
      DOMStringMap -> name -> m result
get self name
  = liftIO (fromJSString <$> (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap.get Mozilla DOMStringMap.get documentation> 
get_ ::
     (MonadIO m, ToJSString name) => DOMStringMap -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))