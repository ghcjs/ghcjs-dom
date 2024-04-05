{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RGBColor
       (js_getRed, getRed, js_getGreen, getGreen, js_getBlue, getBlue,
        js_getAlpha, getAlpha, RGBColor(..), gTypeRGBColor)
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
 
foreign import javascript unsafe "$1[\"red\"]" js_getRed ::
        RGBColor -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getRed self = liftIO (js_getRed self)
 
foreign import javascript unsafe "$1[\"green\"]" js_getGreen ::
        RGBColor -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getGreen self = liftIO (js_getGreen self)
 
foreign import javascript unsafe "$1[\"blue\"]" js_getBlue ::
        RGBColor -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getBlue self = liftIO (js_getBlue self)
 
foreign import javascript unsafe "$1[\"alpha\"]" js_getAlpha ::
        RGBColor -> IO CSSPrimitiveValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.alpha Mozilla RGBColor.alpha documentation> 
getAlpha :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getAlpha self = liftIO (js_getAlpha self)