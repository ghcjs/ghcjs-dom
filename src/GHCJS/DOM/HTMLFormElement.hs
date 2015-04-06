{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFormElement
       (js__get, _get, js_submit, submit, js_reset, reset,
        js_checkValidity, checkValidity, js_requestAutocomplete,
        requestAutocomplete, js_setAcceptCharset, setAcceptCharset,
        js_getAcceptCharset, getAcceptCharset, js_setAction, setAction,
        js_getAction, getAction, js_setAutocomplete, setAutocomplete,
        js_getAutocomplete, getAutocomplete, js_setEnctype, setEnctype,
        js_getEnctype, getEnctype, js_setEncoding, setEncoding,
        js_getEncoding, getEncoding, js_setMethod, setMethod, js_getMethod,
        getMethod, js_setName, setName, js_getName, getName,
        js_setNoValidate, setNoValidate, js_getNoValidate, getNoValidate,
        js_setTarget, setTarget, js_getTarget, getTarget, js_getElements,
        getElements, js_getLength, getLength, js_setAutocorrect,
        setAutocorrect, js_getAutocorrect, getAutocorrect,
        js_setAutocapitalize, setAutocapitalize, js_getAutocapitalize,
        getAutocapitalize, autocomplete, autocompleteerror,
        HTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement)
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

 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef HTMLFormElement -> Word -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement._get Mozilla HTMLFormElement._get documentation> 
_get :: (MonadIO m) => HTMLFormElement -> Word -> m (Maybe Element)
_get self index
  = liftIO ((js__get (unHTMLFormElement self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"submit\"]()" js_submit ::
        JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
submit :: (MonadIO m) => HTMLFormElement -> m ()
submit self = liftIO (js_submit (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
reset :: (MonadIO m) => HTMLFormElement -> m ()
reset self = liftIO (js_reset (unHTMLFormElement self))
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLFormElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"requestAutocomplete\"]()"
        js_requestAutocomplete :: JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
requestAutocomplete :: (MonadIO m) => HTMLFormElement -> m ()
requestAutocomplete self
  = liftIO (js_requestAutocomplete (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        js_setAcceptCharset :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
setAcceptCharset ::
                 (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAcceptCharset self val
  = liftIO
      (js_setAcceptCharset (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        js_getAcceptCharset :: JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
getAcceptCharset ::
                 (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAcceptCharset self
  = liftIO
      (fromJSString <$> (js_getAcceptCharset (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        js_setAction :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
setAction ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAction self val
  = liftIO (js_setAction (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"action\"]" js_getAction ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
getAction ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAction self
  = liftIO (fromJSString <$> (js_getAction (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        js_setAutocomplete :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
setAutocomplete ::
                (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAutocomplete self val
  = liftIO
      (js_setAutocomplete (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        js_getAutocomplete :: JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
getAutocomplete ::
                (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAutocomplete self
  = liftIO
      (fromJSString <$> (js_getAutocomplete (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        js_setEnctype :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
setEnctype ::
           (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setEnctype self val
  = liftIO (js_setEnctype (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"enctype\"]" js_getEnctype ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
getEnctype ::
           (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getEnctype self
  = liftIO
      (fromJSString <$> (js_getEnctype (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setEncoding self val
  = liftIO (js_setEncoding (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getEncoding self
  = liftIO
      (fromJSString <$> (js_getEncoding (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        js_setMethod :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
setMethod ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setMethod self val
  = liftIO (js_setMethod (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
getMethod ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getMethod self
  = liftIO (fromJSString <$> (js_getMethod (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        js_setNoValidate :: JSRef HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
setNoValidate :: (MonadIO m) => HTMLFormElement -> Bool -> m ()
setNoValidate self val
  = liftIO (js_setNoValidate (unHTMLFormElement self) val)
 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        js_getNoValidate :: JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
getNoValidate :: (MonadIO m) => HTMLFormElement -> m Bool
getNoValidate self
  = liftIO (js_getNoValidate (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setTarget self val
  = liftIO (js_setTarget (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getTarget self
  = liftIO (fromJSString <$> (js_getTarget (unHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"elements\"]" js_getElements
        :: JSRef HTMLFormElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.elements Mozilla HTMLFormElement.elements documentation> 
getElements ::
            (MonadIO m) => HTMLFormElement -> m (Maybe HTMLCollection)
getElements self
  = liftIO ((js_getElements (unHTMLFormElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef HTMLFormElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
getLength :: (MonadIO m) => HTMLFormElement -> m Int
getLength self = liftIO (js_getLength (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        js_setAutocorrect :: JSRef HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
setAutocorrect :: (MonadIO m) => HTMLFormElement -> Bool -> m ()
setAutocorrect self val
  = liftIO (js_setAutocorrect (unHTMLFormElement self) val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        js_getAutocorrect :: JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
getAutocorrect :: (MonadIO m) => HTMLFormElement -> m Bool
getAutocorrect self
  = liftIO (js_getAutocorrect (unHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        js_setAutocapitalize :: JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAutocapitalize self val
  = liftIO
      (js_setAutocapitalize (unHTMLFormElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        js_getAutocapitalize :: JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAutocapitalize self
  = liftIO
      (fromJSString <$> (js_getAutocapitalize (unHTMLFormElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocomplete Mozilla HTMLFormElement.onautocomplete documentation> 
autocomplete :: EventName HTMLFormElement onautocomplete
autocomplete = unsafeEventName (toJSString "autocomplete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocompleteerror Mozilla HTMLFormElement.onautocompleteerror documentation> 
autocompleteerror :: EventName HTMLFormElement onautocompleteerror
autocompleteerror
  = unsafeEventName (toJSString "autocompleteerror")
#else
module GHCJS.DOM.HTMLFormElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
#endif
