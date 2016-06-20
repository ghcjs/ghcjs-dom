{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextPathElement
       (pattern TEXTPATH_METHODTYPE_UNKNOWN,
        pattern TEXTPATH_METHODTYPE_ALIGN,
        pattern TEXTPATH_METHODTYPE_STRETCH,
        pattern TEXTPATH_SPACINGTYPE_UNKNOWN,
        pattern TEXTPATH_SPACINGTYPE_AUTO,
        pattern TEXTPATH_SPACINGTYPE_EXACT, js_getStartOffset,
        getStartOffset, js_getMethod, getMethod, js_getSpacing, getSpacing,
        SVGTextPathElement, castToSVGTextPathElement,
        gTypeSVGTextPathElement)
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
pattern TEXTPATH_METHODTYPE_UNKNOWN = 0
pattern TEXTPATH_METHODTYPE_ALIGN = 1
pattern TEXTPATH_METHODTYPE_STRETCH = 2
pattern TEXTPATH_SPACINGTYPE_UNKNOWN = 0
pattern TEXTPATH_SPACINGTYPE_AUTO = 1
pattern TEXTPATH_SPACINGTYPE_EXACT = 2
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffset ::
               (MonadIO m) => SVGTextPathElement -> m (Maybe SVGAnimatedLength)
getStartOffset self
  = liftIO (nullableToMaybe <$> (js_getStartOffset (self)))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethod ::
          (MonadIO m) =>
            SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getMethod self = liftIO (nullableToMaybe <$> (js_getMethod (self)))
 
foreign import javascript unsafe "$1[\"spacing\"]" js_getSpacing ::
        SVGTextPathElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacing ::
           (MonadIO m) =>
             SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getSpacing self
  = liftIO (nullableToMaybe <$> (js_getSpacing (self)))