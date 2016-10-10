{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RGBColor
       (js_getRed, getRed, getRedUnchecked, js_getGreen, getGreen,
        getGreenUnchecked, js_getBlue, getBlue, getBlueUnchecked, RGBColor,
        castToRGBColor, gTypeRGBColor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"red\"]" js_getRed ::
        RGBColor -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getRed self = liftIO (nullableToMaybe <$> (js_getRed (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRedUnchecked :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getRedUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRed (self)))
 
foreign import javascript unsafe "$1[\"green\"]" js_getGreen ::
        RGBColor -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getGreen self = liftIO (nullableToMaybe <$> (js_getGreen (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreenUnchecked :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getGreenUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getGreen (self)))
 
foreign import javascript unsafe "$1[\"blue\"]" js_getBlue ::
        RGBColor -> IO (Nullable CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getBlue self = liftIO (nullableToMaybe <$> (js_getBlue (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlueUnchecked :: (MonadIO m) => RGBColor -> m CSSPrimitiveValue
getBlueUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBlue (self)))