{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGGlyphRefElement
       (js_setGlyphRef, setGlyphRef, js_getGlyphRef, getGlyphRef,
        js_setFormat, setFormat, js_getFormat, getFormat, js_setX, setX,
        js_getX, getX, js_setY, setY, js_getY, getY, js_setDx, setDx,
        js_getDx, getDx, js_setDy, setDy, js_getDy, getDy,
        SVGGlyphRefElement, castToSVGGlyphRefElement,
        gTypeSVGGlyphRefElement)
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

 
foreign import javascript unsafe "$1[\"glyphRef\"] = $2;"
        js_setGlyphRef :: JSRef SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
setGlyphRef ::
            (MonadIO m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setGlyphRef self val
  = liftIO
      (js_setGlyphRef (unSVGGlyphRefElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"glyphRef\"]" js_getGlyphRef
        :: JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
getGlyphRef ::
            (MonadIO m, FromJSString result) => SVGGlyphRefElement -> m result
getGlyphRef self
  = liftIO
      (fromJSString <$> (js_getGlyphRef (unSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        js_setFormat :: JSRef SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
setFormat ::
          (MonadIO m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setFormat self val
  = liftIO
      (js_setFormat (unSVGGlyphRefElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"format\"]" js_getFormat ::
        JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
getFormat ::
          (MonadIO m, FromJSString result) => SVGGlyphRefElement -> m result
getFormat self
  = liftIO
      (fromJSString <$> (js_getFormat (unSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
setX :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setX self val = liftIO (js_setX (unSVGGlyphRefElement self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
getX :: (MonadIO m) => SVGGlyphRefElement -> m Float
getX self = liftIO (js_getX (unSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
setY :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setY self val = liftIO (js_setY (unSVGGlyphRefElement self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
getY :: (MonadIO m) => SVGGlyphRefElement -> m Float
getY self = liftIO (js_getY (unSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"dx\"] = $2;" js_setDx ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
setDx :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setDx self val = liftIO (js_setDx (unSVGGlyphRefElement self) val)
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
getDx :: (MonadIO m) => SVGGlyphRefElement -> m Float
getDx self = liftIO (js_getDx (unSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"dy\"] = $2;" js_setDy ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
setDy :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setDy self val = liftIO (js_setDy (unSVGGlyphRefElement self) val)
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
getDy :: (MonadIO m) => SVGGlyphRefElement -> m Float
getDy self = liftIO (js_getDy (unSVGGlyphRefElement self))
#else
module GHCJS.DOM.SVGGlyphRefElement (
  ) where
#endif
