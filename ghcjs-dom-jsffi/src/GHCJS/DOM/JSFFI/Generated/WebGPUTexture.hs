{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPUTexture
       (js_getWidth, getWidth, js_getHeight, getHeight, WebGPUTexture(..),
        gTypeWebGPUTexture)
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
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        WebGPUTexture -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTexture.width Mozilla WebGPUTexture.width documentation> 
getWidth :: (MonadIO m) => WebGPUTexture -> m Word
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        WebGPUTexture -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPUTexture.height Mozilla WebGPUTexture.height documentation> 
getHeight :: (MonadIO m) => WebGPUTexture -> m Word
getHeight self = liftIO (js_getHeight self)