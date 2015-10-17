{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGColor
       (js_setRGBColor, setRGBColor, js_setRGBColorICCColor,
        setRGBColorICCColor, js_setColor, setColor,
        pattern SVG_COLORTYPE_UNKNOWN, pattern SVG_COLORTYPE_RGBCOLOR,
        pattern SVG_COLORTYPE_RGBCOLOR_ICCCOLOR,
        pattern SVG_COLORTYPE_CURRENTCOLOR, js_getColorType, getColorType,
        js_getRgbColor, getRgbColor, SVGColor, castToSVGColor,
        gTypeSVGColor, IsSVGColor, toSVGColor)
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
 
foreign import javascript unsafe "$1[\"setRGBColor\"]($2)"
        js_setRGBColor :: SVGColor -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setRGBColor Mozilla SVGColor.setRGBColor documentation> 
setRGBColor ::
            (MonadIO m, IsSVGColor self, ToJSString rgbColor) =>
              self -> rgbColor -> m ()
setRGBColor self rgbColor
  = liftIO (js_setRGBColor (toSVGColor self) (toJSString rgbColor))
 
foreign import javascript unsafe
        "$1[\"setRGBColorICCColor\"]($2,\n$3)" js_setRGBColorICCColor ::
        SVGColor -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setRGBColorICCColor Mozilla SVGColor.setRGBColorICCColor documentation> 
setRGBColorICCColor ::
                    (MonadIO m, IsSVGColor self, ToJSString rgbColor,
                     ToJSString iccColor) =>
                      self -> rgbColor -> iccColor -> m ()
setRGBColorICCColor self rgbColor iccColor
  = liftIO
      (js_setRGBColorICCColor (toSVGColor self) (toJSString rgbColor)
         (toJSString iccColor))
 
foreign import javascript unsafe "$1[\"setColor\"]($2, $3, $4)"
        js_setColor :: SVGColor -> Word -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.setColor Mozilla SVGColor.setColor documentation> 
setColor ::
         (MonadIO m, IsSVGColor self, ToJSString rgbColor,
          ToJSString iccColor) =>
           self -> Word -> rgbColor -> iccColor -> m ()
setColor self colorType rgbColor iccColor
  = liftIO
      (js_setColor (toSVGColor self) colorType (toJSString rgbColor)
         (toJSString iccColor))
pattern SVG_COLORTYPE_UNKNOWN = 0
pattern SVG_COLORTYPE_RGBCOLOR = 1
pattern SVG_COLORTYPE_RGBCOLOR_ICCCOLOR = 2
pattern SVG_COLORTYPE_CURRENTCOLOR = 3
 
foreign import javascript unsafe "$1[\"colorType\"]"
        js_getColorType :: SVGColor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.colorType Mozilla SVGColor.colorType documentation> 
getColorType :: (MonadIO m, IsSVGColor self) => self -> m Word
getColorType self = liftIO (js_getColorType (toSVGColor self))
 
foreign import javascript unsafe "$1[\"rgbColor\"]" js_getRgbColor
        :: SVGColor -> IO (Nullable RGBColor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor.rgbColor Mozilla SVGColor.rgbColor documentation> 
getRgbColor ::
            (MonadIO m, IsSVGColor self) => self -> m (Maybe RGBColor)
getRgbColor self
  = liftIO (nullableToMaybe <$> (js_getRgbColor (toSVGColor self)))