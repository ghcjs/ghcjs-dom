{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSeg
       (pattern PATHSEG_UNKNOWN, pattern PATHSEG_CLOSEPATH,
        pattern PATHSEG_MOVETO_ABS, pattern PATHSEG_MOVETO_REL,
        pattern PATHSEG_LINETO_ABS, pattern PATHSEG_LINETO_REL,
        pattern PATHSEG_CURVETO_CUBIC_ABS,
        pattern PATHSEG_CURVETO_CUBIC_REL,
        pattern PATHSEG_CURVETO_QUADRATIC_ABS,
        pattern PATHSEG_CURVETO_QUADRATIC_REL, pattern PATHSEG_ARC_ABS,
        pattern PATHSEG_ARC_REL, pattern PATHSEG_LINETO_HORIZONTAL_ABS,
        pattern PATHSEG_LINETO_HORIZONTAL_REL,
        pattern PATHSEG_LINETO_VERTICAL_ABS,
        pattern PATHSEG_LINETO_VERTICAL_REL,
        pattern PATHSEG_CURVETO_CUBIC_SMOOTH_ABS,
        pattern PATHSEG_CURVETO_CUBIC_SMOOTH_REL,
        pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS,
        pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL, js_getPathSegType,
        getPathSegType, js_getPathSegTypeAsLetter, getPathSegTypeAsLetter,
        SVGPathSeg, castToSVGPathSeg, gTypeSVGPathSeg, IsSVGPathSeg,
        toSVGPathSeg)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern PATHSEG_UNKNOWN = 0
pattern PATHSEG_CLOSEPATH = 1
pattern PATHSEG_MOVETO_ABS = 2
pattern PATHSEG_MOVETO_REL = 3
pattern PATHSEG_LINETO_ABS = 4
pattern PATHSEG_LINETO_REL = 5
pattern PATHSEG_CURVETO_CUBIC_ABS = 6
pattern PATHSEG_CURVETO_CUBIC_REL = 7
pattern PATHSEG_CURVETO_QUADRATIC_ABS = 8
pattern PATHSEG_CURVETO_QUADRATIC_REL = 9
pattern PATHSEG_ARC_ABS = 10
pattern PATHSEG_ARC_REL = 11
pattern PATHSEG_LINETO_HORIZONTAL_ABS = 12
pattern PATHSEG_LINETO_HORIZONTAL_REL = 13
pattern PATHSEG_LINETO_VERTICAL_ABS = 14
pattern PATHSEG_LINETO_VERTICAL_REL = 15
pattern PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16
pattern PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17
pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18
pattern PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19
 
foreign import javascript unsafe "$1[\"pathSegType\"]"
        js_getPathSegType :: JSRef SVGPathSeg -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg.pathSegType Mozilla SVGPathSeg.pathSegType documentation> 
getPathSegType :: (MonadIO m, IsSVGPathSeg self) => self -> m Word
getPathSegType self
  = liftIO (js_getPathSegType (unSVGPathSeg (toSVGPathSeg self)))
 
foreign import javascript unsafe "$1[\"pathSegTypeAsLetter\"]"
        js_getPathSegTypeAsLetter :: JSRef SVGPathSeg -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg.pathSegTypeAsLetter Mozilla SVGPathSeg.pathSegTypeAsLetter documentation> 
getPathSegTypeAsLetter ::
                       (MonadIO m, IsSVGPathSeg self, FromJSString result) =>
                         self -> m result
getPathSegTypeAsLetter self
  = liftIO
      (fromJSString <$>
         (js_getPathSegTypeAsLetter (unSVGPathSeg (toSVGPathSeg self))))
#else
module GHCJS.DOM.SVGPathSeg (
  ) where
#endif
