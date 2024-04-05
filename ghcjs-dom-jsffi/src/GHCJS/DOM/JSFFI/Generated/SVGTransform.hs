{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTransform
       (js_setMatrix, setMatrix, js_setTranslate, setTranslate,
        js_setScale, setScale, js_setRotate, setRotate, js_setSkewX,
        setSkewX, js_setSkewY, setSkewY, pattern SVG_TRANSFORM_UNKNOWN,
        pattern SVG_TRANSFORM_MATRIX, pattern SVG_TRANSFORM_TRANSLATE,
        pattern SVG_TRANSFORM_SCALE, pattern SVG_TRANSFORM_ROTATE,
        pattern SVG_TRANSFORM_SKEWX, pattern SVG_TRANSFORM_SKEWY,
        js_getType, getType, js_getMatrix, getMatrix, js_getAngle,
        getAngle, SVGTransform(..), gTypeSVGTransform)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe "$1[\"setMatrix\"]($2)" js_setMatrix
        :: SVGTransform -> SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setMatrix Mozilla SVGTransform.setMatrix documentation> 
setMatrix :: (MonadIO m) => SVGTransform -> SVGMatrix -> m ()
setMatrix self matrix = liftIO (js_setMatrix self matrix)
 
foreign import javascript safe "$1[\"setTranslate\"]($2, $3)"
        js_setTranslate :: SVGTransform -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setTranslate Mozilla SVGTransform.setTranslate documentation> 
setTranslate ::
             (MonadIO m) => SVGTransform -> Float -> Float -> m ()
setTranslate self tx ty = liftIO (js_setTranslate self tx ty)
 
foreign import javascript safe "$1[\"setScale\"]($2, $3)"
        js_setScale :: SVGTransform -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setScale Mozilla SVGTransform.setScale documentation> 
setScale :: (MonadIO m) => SVGTransform -> Float -> Float -> m ()
setScale self sx sy = liftIO (js_setScale self sx sy)
 
foreign import javascript safe "$1[\"setRotate\"]($2, $3, $4)"
        js_setRotate :: SVGTransform -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setRotate Mozilla SVGTransform.setRotate documentation> 
setRotate ::
          (MonadIO m) => SVGTransform -> Float -> Float -> Float -> m ()
setRotate self angle cx cy = liftIO (js_setRotate self angle cx cy)
 
foreign import javascript safe "$1[\"setSkewX\"]($2)" js_setSkewX
        :: SVGTransform -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setSkewX Mozilla SVGTransform.setSkewX documentation> 
setSkewX :: (MonadIO m) => SVGTransform -> Float -> m ()
setSkewX self angle = liftIO (js_setSkewX self angle)
 
foreign import javascript safe "$1[\"setSkewY\"]($2)" js_setSkewY
        :: SVGTransform -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setSkewY Mozilla SVGTransform.setSkewY documentation> 
setSkewY :: (MonadIO m) => SVGTransform -> Float -> m ()
setSkewY self angle = liftIO (js_setSkewY self angle)
pattern SVG_TRANSFORM_UNKNOWN = 0
pattern SVG_TRANSFORM_MATRIX = 1
pattern SVG_TRANSFORM_TRANSLATE = 2
pattern SVG_TRANSFORM_SCALE = 3
pattern SVG_TRANSFORM_ROTATE = 4
pattern SVG_TRANSFORM_SKEWX = 5
pattern SVG_TRANSFORM_SKEWY = 6
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGTransform -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.type Mozilla SVGTransform.type documentation> 
getType :: (MonadIO m) => SVGTransform -> m Word
getType self = liftIO (js_getType self)
 
foreign import javascript unsafe "$1[\"matrix\"]" js_getMatrix ::
        SVGTransform -> IO SVGMatrix

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.matrix Mozilla SVGTransform.matrix documentation> 
getMatrix :: (MonadIO m) => SVGTransform -> m SVGMatrix
getMatrix self = liftIO (js_getMatrix self)
 
foreign import javascript unsafe "$1[\"angle\"]" js_getAngle ::
        SVGTransform -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.angle Mozilla SVGTransform.angle documentation> 
getAngle :: (MonadIO m) => SVGTransform -> m Float
getAngle self = liftIO (js_getAngle self)