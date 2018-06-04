{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathException
       (js_toString, toString, toString_, pattern INVALID_EXPRESSION_ERR,
        pattern TYPE_ERR, js_getCode, getCode, js_getName, getName,
        js_getMessage, getMessage, XPathException(..), gTypeXPathException)
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
        :: XPathException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.toString Mozilla XPathException.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => XPathException -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.toString Mozilla XPathException.toString documentation> 
toString_ :: (MonadIO m) => XPathException -> m ()
toString_ self = liftIO (void (js_toString self))
pattern INVALID_EXPRESSION_ERR = 51
pattern TYPE_ERR = 52
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        XPathException -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.code Mozilla XPathException.code documentation> 
getCode :: (MonadIO m) => XPathException -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        XPathException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.name Mozilla XPathException.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => XPathException -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        XPathException -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathException.message Mozilla XPathException.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => XPathException -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))