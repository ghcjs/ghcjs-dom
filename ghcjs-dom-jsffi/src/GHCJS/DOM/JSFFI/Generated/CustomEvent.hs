{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CustomEvent
       (js_initCustomEvent, initCustomEvent, js_getDetail, getDetail,
        CustomEvent, castToCustomEvent, gTypeCustomEvent)
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
 
foreign import javascript unsafe
        "$1[\"initCustomEvent\"]($2, $3,\n$4, $5)" js_initCustomEvent ::
        CustomEvent -> JSString -> Bool -> Bool -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.initCustomEvent Mozilla CustomEvent.initCustomEvent documentation> 
initCustomEvent ::
                (MonadIO m, ToJSString typeArg) =>
                  CustomEvent -> typeArg -> Bool -> Bool -> JSVal -> m ()
initCustomEvent self typeArg canBubbleArg cancelableArg detailArg
  = liftIO
      (js_initCustomEvent (self) (toJSString typeArg) canBubbleArg
         cancelableArg
         detailArg)
 
foreign import javascript unsafe "$1[\"detail\"]" js_getDetail ::
        CustomEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.detail Mozilla CustomEvent.detail documentation> 
getDetail :: (MonadIO m) => CustomEvent -> m JSVal
getDetail self = liftIO (js_getDetail (self))