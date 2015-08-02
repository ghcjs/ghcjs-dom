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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffset ::
               (MonadIO m) => SVGTextPathElement -> m (Maybe SVGAnimatedLength)
getStartOffset self
  = liftIO
      ((js_getStartOffset (unSVGTextPathElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethod ::
          (MonadIO m) =>
            SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getMethod self
  = liftIO ((js_getMethod (unSVGTextPathElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"spacing\"]" js_getSpacing ::
        JSRef SVGTextPathElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacing ::
           (MonadIO m) =>
             SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getSpacing self
  = liftIO
      ((js_getSpacing (unSVGTextPathElement self)) >>= fromJSRef)