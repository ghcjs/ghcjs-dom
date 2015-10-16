{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WindowBase64
       (js_atob, atob, js_btoa, btoa, WindowBase64, castToWindowBase64,
        gTypeWindowBase64)
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
 
foreign import javascript unsafe "$1[\"atob\"]($2)" js_atob ::
        WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.atob Mozilla WindowBase64.atob documentation> 
atob ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
atob self string
  = liftIO (fromJSString <$> (js_atob (self) (toJSString string)))
 
foreign import javascript unsafe "$1[\"btoa\"]($2)" js_btoa ::
        WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.btoa Mozilla WindowBase64.btoa documentation> 
btoa ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
btoa self string
  = liftIO (fromJSString <$> (js_btoa (self) (toJSString string)))