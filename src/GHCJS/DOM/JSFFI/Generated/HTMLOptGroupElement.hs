{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOptGroupElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setLabel, setLabel, js_getLabel, getLabel, HTMLOptGroupElement,
        castToHTMLOptGroupElement, gTypeHTMLOptGroupElement)
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
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLOptGroupElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLOptGroupElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLOptGroupElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLOptGroupElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: HTMLOptGroupElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => HTMLOptGroupElement -> val -> m ()
setLabel self val = liftIO (js_setLabel (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        HTMLOptGroupElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => HTMLOptGroupElement -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))