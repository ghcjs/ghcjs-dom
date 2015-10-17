{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGGlyphRefElement
       (js_setGlyphRef, setGlyphRef, js_getGlyphRef, getGlyphRef,
        js_setFormat, setFormat, js_getFormat, getFormat, js_setX, setX,
        js_getX, getX, js_setY, setY, js_getY, getY, js_setDx, setDx,
        js_getDx, getDx, js_setDy, setDy, js_getDy, getDy,
        SVGGlyphRefElement, castToSVGGlyphRefElement,
        gTypeSVGGlyphRefElement)
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
 
foreign import javascript unsafe "$1[\"glyphRef\"] = $2;"
        js_setGlyphRef :: SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
setGlyphRef ::
            (MonadIO m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setGlyphRef self val
  = liftIO (js_setGlyphRef (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"glyphRef\"]" js_getGlyphRef
        :: SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
getGlyphRef ::
            (MonadIO m, FromJSString result) => SVGGlyphRefElement -> m result
getGlyphRef self
  = liftIO (fromJSString <$> (js_getGlyphRef (self)))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        js_setFormat :: SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
setFormat ::
          (MonadIO m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setFormat self val = liftIO (js_setFormat (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"format\"]" js_getFormat ::
        SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
getFormat ::
          (MonadIO m, FromJSString result) => SVGGlyphRefElement -> m result
getFormat self = liftIO (fromJSString <$> (js_getFormat (self)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
setX :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
getX :: (MonadIO m) => SVGGlyphRefElement -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
setY :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
getY :: (MonadIO m) => SVGGlyphRefElement -> m Float
getY self = liftIO (js_getY (self))
 
foreign import javascript unsafe "$1[\"dx\"] = $2;" js_setDx ::
        SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
setDx :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setDx self val = liftIO (js_setDx (self) val)
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
getDx :: (MonadIO m) => SVGGlyphRefElement -> m Float
getDx self = liftIO (js_getDx (self))
 
foreign import javascript unsafe "$1[\"dy\"] = $2;" js_setDy ::
        SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
setDy :: (MonadIO m) => SVGGlyphRefElement -> Float -> m ()
setDy self val = liftIO (js_setDy (self) val)
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
getDy :: (MonadIO m) => SVGGlyphRefElement -> m Float
getDy self = liftIO (js_getDy (self))