{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitCSSTransformValue
       (js__get, _get, pattern CSS_TRANSLATE, pattern CSS_TRANSLATEX,
        pattern CSS_TRANSLATEY, pattern CSS_ROTATE, pattern CSS_SCALE,
        pattern CSS_SCALEX, pattern CSS_SCALEY, pattern CSS_SKEW,
        pattern CSS_SKEWX, pattern CSS_SKEWY, pattern CSS_MATRIX,
        pattern CSS_TRANSLATEZ, pattern CSS_TRANSLATE3D,
        pattern CSS_ROTATEX, pattern CSS_ROTATEY, pattern CSS_ROTATEZ,
        pattern CSS_ROTATE3D, pattern CSS_SCALEZ, pattern CSS_SCALE3D,
        pattern CSS_PERSPECTIVE, pattern CSS_MATRIX3D, js_getOperationType,
        getOperationType, WebKitCSSTransformValue,
        castToWebKitCSSTransformValue, gTypeWebKitCSSTransformValue)
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
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        WebKitCSSTransformValue -> Word -> IO (Nullable CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue._get Mozilla WebKitCSSTransformValue._get documentation> 
_get ::
     (MonadIO m) =>
       WebKitCSSTransformValue -> Word -> m (Maybe CSSValue)
_get self index
  = liftIO (nullableToMaybe <$> (js__get (self) index))
pattern CSS_TRANSLATE = 1
pattern CSS_TRANSLATEX = 2
pattern CSS_TRANSLATEY = 3
pattern CSS_ROTATE = 4
pattern CSS_SCALE = 5
pattern CSS_SCALEX = 6
pattern CSS_SCALEY = 7
pattern CSS_SKEW = 8
pattern CSS_SKEWX = 9
pattern CSS_SKEWY = 10
pattern CSS_MATRIX = 11
pattern CSS_TRANSLATEZ = 12
pattern CSS_TRANSLATE3D = 13
pattern CSS_ROTATEX = 14
pattern CSS_ROTATEY = 15
pattern CSS_ROTATEZ = 16
pattern CSS_ROTATE3D = 17
pattern CSS_SCALEZ = 18
pattern CSS_SCALE3D = 19
pattern CSS_PERSPECTIVE = 20
pattern CSS_MATRIX3D = 21
 
foreign import javascript unsafe "$1[\"operationType\"]"
        js_getOperationType :: WebKitCSSTransformValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue.operationType Mozilla WebKitCSSTransformValue.operationType documentation> 
getOperationType ::
                 (MonadIO m) => WebKitCSSTransformValue -> m Word
getOperationType self = liftIO (js_getOperationType (self))