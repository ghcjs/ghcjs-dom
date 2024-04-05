{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMError
       (js_getName, getName, js_getMessage, getMessage, DOMError(..),
        gTypeDOMError, IsDOMError, toDOMError)
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
        DOMError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMError.name Mozilla DOMError.name documentation> 
getName ::
        (MonadIO m, IsDOMError self, FromJSString result) =>
          self -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (toDOMError self)))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        DOMError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMError.message Mozilla DOMError.message documentation> 
getMessage ::
           (MonadIO m, IsDOMError self, FromJSString result) =>
             self -> m result
getMessage self
  = liftIO (fromJSString <$> (js_getMessage (toDOMError self)))