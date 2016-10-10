{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGClipPathElement
       (js_getClipPathUnits, getClipPathUnits, getClipPathUnitsUnchecked,
        SVGClipPathElement, castToSVGClipPathElement,
        gTypeSVGClipPathElement)
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
 
foreign import javascript unsafe "$1[\"clipPathUnits\"]"
        js_getClipPathUnits ::
        SVGClipPathElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement.clipPathUnits Mozilla SVGClipPathElement.clipPathUnits documentation> 
getClipPathUnits ::
                 (MonadIO m) =>
                   SVGClipPathElement -> m (Maybe SVGAnimatedEnumeration)
getClipPathUnits self
  = liftIO (nullableToMaybe <$> (js_getClipPathUnits (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement.clipPathUnits Mozilla SVGClipPathElement.clipPathUnits documentation> 
getClipPathUnitsUnchecked ::
                          (MonadIO m) => SVGClipPathElement -> m SVGAnimatedEnumeration
getClipPathUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getClipPathUnits (self)))