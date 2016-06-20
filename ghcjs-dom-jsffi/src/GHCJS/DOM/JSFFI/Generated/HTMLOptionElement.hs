{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOptionElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_getForm, getForm, js_setLabel, setLabel, js_getLabel, getLabel,
        js_setDefaultSelected, setDefaultSelected, js_getDefaultSelected,
        getDefaultSelected, js_setSelected, setSelected, js_getSelected,
        getSelected, js_setValue, setValue, js_getValue, getValue,
        js_setText, setText, js_getText, getText, js_getIndex, getIndex,
        HTMLOptionElement, castToHTMLOptionElement, gTypeHTMLOptionElement)
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
        js_setDisabled :: HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLOptionElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLOptionElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.form Mozilla HTMLOptionElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLOptionElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => HTMLOptionElement -> val -> m ()
setLabel self val = liftIO (js_setLabel (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))
 
foreign import javascript unsafe "$1[\"defaultSelected\"] = $2;"
        js_setDefaultSelected :: HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
setDefaultSelected ::
                   (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setDefaultSelected self val
  = liftIO (js_setDefaultSelected (self) val)
 
foreign import javascript unsafe
        "($1[\"defaultSelected\"] ? 1 : 0)" js_getDefaultSelected ::
        HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
getDefaultSelected :: (MonadIO m) => HTMLOptionElement -> m Bool
getDefaultSelected self = liftIO (js_getDefaultSelected (self))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        js_setSelected :: HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
setSelected :: (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setSelected self val = liftIO (js_setSelected (self) val)
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        js_getSelected :: HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
getSelected :: (MonadIO m) => HTMLOptionElement -> m Bool
getSelected self = liftIO (js_getSelected (self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLOptionElement -> val -> m ()
setValue self val = liftIO (js_setValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getValue self = liftIO (fromJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLOptionElement -> val -> m ()
setText self val = liftIO (js_setText (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getText self = liftIO (fromJSString <$> (js_getText (self)))
 
foreign import javascript unsafe "$1[\"index\"]" js_getIndex ::
        HTMLOptionElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.index Mozilla HTMLOptionElement.index documentation> 
getIndex :: (MonadIO m) => HTMLOptionElement -> m Int
getIndex self = liftIO (js_getIndex (self))