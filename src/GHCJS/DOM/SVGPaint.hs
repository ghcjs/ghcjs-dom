{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPaint
       (js_setUri, setUri, js_setPaint, setPaint,
        pattern SVG_PAINTTYPE_UNKNOWN, pattern SVG_PAINTTYPE_RGBCOLOR,
        pattern SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR,
        pattern SVG_PAINTTYPE_NONE, pattern SVG_PAINTTYPE_CURRENTCOLOR,
        pattern SVG_PAINTTYPE_URI_NONE,
        pattern SVG_PAINTTYPE_URI_CURRENTCOLOR,
        pattern SVG_PAINTTYPE_URI_RGBCOLOR,
        pattern SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR,
        pattern SVG_PAINTTYPE_URI, js_getPaintType, getPaintType,
        js_getUri, getUri, SVGPaint, castToSVGPaint, gTypeSVGPaint)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"setUri\"]($2)" js_setUri ::
        JSRef SVGPaint -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.setUri Mozilla SVGPaint.setUri documentation> 
setUri :: (MonadIO m, ToJSString uri) => SVGPaint -> uri -> m ()
setUri self uri
  = liftIO (js_setUri (unSVGPaint self) (toJSString uri))
 
foreign import javascript unsafe "$1[\"setPaint\"]($2, $3, $4, $5)"
        js_setPaint ::
        JSRef SVGPaint -> Word -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.setPaint Mozilla SVGPaint.setPaint documentation> 
setPaint ::
         (MonadIO m, ToJSString uri, ToJSString rgbColor,
          ToJSString iccColor) =>
           SVGPaint -> Word -> uri -> rgbColor -> iccColor -> m ()
setPaint self paintType uri rgbColor iccColor
  = liftIO
      (js_setPaint (unSVGPaint self) paintType (toJSString uri)
         (toJSString rgbColor)
         (toJSString iccColor))
pattern SVG_PAINTTYPE_UNKNOWN = 0
pattern SVG_PAINTTYPE_RGBCOLOR = 1
pattern SVG_PAINTTYPE_RGBCOLOR_ICCCOLOR = 2
pattern SVG_PAINTTYPE_NONE = 101
pattern SVG_PAINTTYPE_CURRENTCOLOR = 102
pattern SVG_PAINTTYPE_URI_NONE = 103
pattern SVG_PAINTTYPE_URI_CURRENTCOLOR = 104
pattern SVG_PAINTTYPE_URI_RGBCOLOR = 105
pattern SVG_PAINTTYPE_URI_RGBCOLOR_ICCCOLOR = 106
pattern SVG_PAINTTYPE_URI = 107
 
foreign import javascript unsafe "$1[\"paintType\"]"
        js_getPaintType :: JSRef SVGPaint -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.paintType Mozilla SVGPaint.paintType documentation> 
getPaintType :: (MonadIO m) => SVGPaint -> m Word
getPaintType self = liftIO (js_getPaintType (unSVGPaint self))
 
foreign import javascript unsafe "$1[\"uri\"]" js_getUri ::
        JSRef SVGPaint -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint.uri Mozilla SVGPaint.uri documentation> 
getUri :: (MonadIO m, FromJSString result) => SVGPaint -> m result
getUri self
  = liftIO (fromJSString <$> (js_getUri (unSVGPaint self)))
#else
module GHCJS.DOM.SVGPaint (
  ) where
#endif
