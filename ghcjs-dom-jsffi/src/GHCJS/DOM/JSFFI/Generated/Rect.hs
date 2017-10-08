{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Rect
       (js_getTop, getTop, js_getRight, getRight, js_getBottom, getBottom,
        js_getLeft, getLeft, Rect(..), gTypeRect)
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
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        Rect -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTop :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getTop self = liftIO (js_getTop self)
 
foreign import javascript unsafe "$1[\"right\"]" js_getRight ::
        Rect -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRight :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getRight self = liftIO (js_getRight self)
 
foreign import javascript unsafe "$1[\"bottom\"]" js_getBottom ::
        Rect -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottom :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getBottom self = liftIO (js_getBottom self)
 
foreign import javascript unsafe "$1[\"left\"]" js_getLeft ::
        Rect -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeft :: (MonadIO m) => Rect -> m CSSPrimitiveValue
getLeft self = liftIO (js_getLeft self)