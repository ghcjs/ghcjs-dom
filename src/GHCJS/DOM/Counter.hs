{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Counter
       (js_getIdentifier, getIdentifier, js_getListStyle, getListStyle,
        js_getSeparator, getSeparator, Counter, castToCounter,
        gTypeCounter)
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

 
foreign import javascript unsafe "$1[\"identifier\"]"
        js_getIdentifier :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.identifier Mozilla Counter.identifier documentation> 
getIdentifier ::
              (MonadIO m, FromJSString result) => Counter -> m result
getIdentifier self
  = liftIO (fromJSString <$> (js_getIdentifier (unCounter self)))
 
foreign import javascript unsafe "$1[\"listStyle\"]"
        js_getListStyle :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.listStyle Mozilla Counter.listStyle documentation> 
getListStyle ::
             (MonadIO m, FromJSString result) => Counter -> m result
getListStyle self
  = liftIO (fromJSString <$> (js_getListStyle (unCounter self)))
 
foreign import javascript unsafe "$1[\"separator\"]"
        js_getSeparator :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.separator Mozilla Counter.separator documentation> 
getSeparator ::
             (MonadIO m, FromJSString result) => Counter -> m result
getSeparator self
  = liftIO (fromJSString <$> (js_getSeparator (unCounter self)))
#else
module GHCJS.DOM.Counter (
  ) where
#endif
