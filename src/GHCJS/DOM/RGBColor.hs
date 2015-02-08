{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RGBColor
       (ghcjs_dom_rgb_color_get_red, rgbColorGetRed,
        ghcjs_dom_rgb_color_get_green, rgbColorGetGreen,
        ghcjs_dom_rgb_color_get_blue, rgbColorGetBlue,
        ghcjs_dom_rgb_color_get_alpha, rgbColorGetAlpha, RGBColor,
        IsRGBColor, castToRGBColor, gTypeRGBColor, toRGBColor)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"red\"]"
        ghcjs_dom_rgb_color_get_red ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
rgbColorGetRed ::
               (MonadIO m, IsRGBColor self) => self -> m (Maybe CSSPrimitiveValue)
rgbColorGetRed self
  = liftIO
      ((ghcjs_dom_rgb_color_get_red (unRGBColor (toRGBColor self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"green\"]"
        ghcjs_dom_rgb_color_get_green ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
rgbColorGetGreen ::
                 (MonadIO m, IsRGBColor self) => self -> m (Maybe CSSPrimitiveValue)
rgbColorGetGreen self
  = liftIO
      ((ghcjs_dom_rgb_color_get_green (unRGBColor (toRGBColor self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"blue\"]"
        ghcjs_dom_rgb_color_get_blue ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
rgbColorGetBlue ::
                (MonadIO m, IsRGBColor self) => self -> m (Maybe CSSPrimitiveValue)
rgbColorGetBlue self
  = liftIO
      ((ghcjs_dom_rgb_color_get_blue (unRGBColor (toRGBColor self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"alpha\"]"
        ghcjs_dom_rgb_color_get_alpha ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.alpha Mozilla RGBColor.alpha documentation> 
rgbColorGetAlpha ::
                 (MonadIO m, IsRGBColor self) => self -> m (Maybe CSSPrimitiveValue)
rgbColorGetAlpha self
  = liftIO
      ((ghcjs_dom_rgb_color_get_alpha (unRGBColor (toRGBColor self))) >>=
         fromJSRef)
#else
module GHCJS.DOM.RGBColor (
  ) where
#endif
