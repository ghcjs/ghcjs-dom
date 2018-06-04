{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGException
       (js_toString, toString, toString_, pattern SVG_WRONG_TYPE_ERR,
        pattern SVG_INVALID_VALUE_ERR, pattern SVG_MATRIX_NOT_INVERTABLE,
        js_getCode, getCode, js_getName, getName, js_getMessage,
        getMessage, SVGException(..), gTypeSVGException)
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
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: SVGException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.toString Mozilla SVGException.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => SVGException -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.toString Mozilla SVGException.toString documentation> 
toString_ :: (MonadIO m) => SVGException -> m ()
toString_ self = liftIO (void (js_toString self))
pattern SVG_WRONG_TYPE_ERR = 0
pattern SVG_INVALID_VALUE_ERR = 1
pattern SVG_MATRIX_NOT_INVERTABLE = 2
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        SVGException -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.code Mozilla SVGException.code documentation> 
getCode :: (MonadIO m) => SVGException -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        SVGException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.name Mozilla SVGException.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => SVGException -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        SVGException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.message Mozilla SVGException.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => SVGException -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))