{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ValidityState
       (js_getValueMissing, getValueMissing, js_getTypeMismatch,
        getTypeMismatch, js_getPatternMismatch, getPatternMismatch,
        js_getTooLong, getTooLong, js_getRangeUnderflow, getRangeUnderflow,
        js_getRangeOverflow, getRangeOverflow, js_getStepMismatch,
        getStepMismatch, js_getBadInput, getBadInput, js_getCustomError,
        getCustomError, js_getValid, getValid, ValidityState,
        castToValidityState, gTypeValidityState)
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

 
foreign import javascript unsafe "($1[\"valueMissing\"] ? 1 : 0)"
        js_getValueMissing :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valueMissing Mozilla ValidityState.valueMissing documentation> 
getValueMissing :: (MonadIO m) => ValidityState -> m Bool
getValueMissing self
  = liftIO (js_getValueMissing (unValidityState self))
 
foreign import javascript unsafe "($1[\"typeMismatch\"] ? 1 : 0)"
        js_getTypeMismatch :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.typeMismatch Mozilla ValidityState.typeMismatch documentation> 
getTypeMismatch :: (MonadIO m) => ValidityState -> m Bool
getTypeMismatch self
  = liftIO (js_getTypeMismatch (unValidityState self))
 
foreign import javascript unsafe
        "($1[\"patternMismatch\"] ? 1 : 0)" js_getPatternMismatch ::
        JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.patternMismatch Mozilla ValidityState.patternMismatch documentation> 
getPatternMismatch :: (MonadIO m) => ValidityState -> m Bool
getPatternMismatch self
  = liftIO (js_getPatternMismatch (unValidityState self))
 
foreign import javascript unsafe "($1[\"tooLong\"] ? 1 : 0)"
        js_getTooLong :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.tooLong Mozilla ValidityState.tooLong documentation> 
getTooLong :: (MonadIO m) => ValidityState -> m Bool
getTooLong self = liftIO (js_getTooLong (unValidityState self))
 
foreign import javascript unsafe "($1[\"rangeUnderflow\"] ? 1 : 0)"
        js_getRangeUnderflow :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeUnderflow Mozilla ValidityState.rangeUnderflow documentation> 
getRangeUnderflow :: (MonadIO m) => ValidityState -> m Bool
getRangeUnderflow self
  = liftIO (js_getRangeUnderflow (unValidityState self))
 
foreign import javascript unsafe "($1[\"rangeOverflow\"] ? 1 : 0)"
        js_getRangeOverflow :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeOverflow Mozilla ValidityState.rangeOverflow documentation> 
getRangeOverflow :: (MonadIO m) => ValidityState -> m Bool
getRangeOverflow self
  = liftIO (js_getRangeOverflow (unValidityState self))
 
foreign import javascript unsafe "($1[\"stepMismatch\"] ? 1 : 0)"
        js_getStepMismatch :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.stepMismatch Mozilla ValidityState.stepMismatch documentation> 
getStepMismatch :: (MonadIO m) => ValidityState -> m Bool
getStepMismatch self
  = liftIO (js_getStepMismatch (unValidityState self))
 
foreign import javascript unsafe "($1[\"badInput\"] ? 1 : 0)"
        js_getBadInput :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.badInput Mozilla ValidityState.badInput documentation> 
getBadInput :: (MonadIO m) => ValidityState -> m Bool
getBadInput self = liftIO (js_getBadInput (unValidityState self))
 
foreign import javascript unsafe "($1[\"customError\"] ? 1 : 0)"
        js_getCustomError :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.customError Mozilla ValidityState.customError documentation> 
getCustomError :: (MonadIO m) => ValidityState -> m Bool
getCustomError self
  = liftIO (js_getCustomError (unValidityState self))
 
foreign import javascript unsafe "($1[\"valid\"] ? 1 : 0)"
        js_getValid :: JSRef ValidityState -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valid Mozilla ValidityState.valid documentation> 
getValid :: (MonadIO m) => ValidityState -> m Bool
getValid self = liftIO (js_getValid (unValidityState self))
#else
module GHCJS.DOM.ValidityState (
  module Graphics.UI.Gtk.WebKit.DOM.ValidityState
  ) where
import Graphics.UI.Gtk.WebKit.DOM.ValidityState
#endif
