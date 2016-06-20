{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFormElement
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
        HTMLFormElement -> Word -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement._get Mozilla HTMLFormElement._get documentation> 
_get :: (MonadIO m) => HTMLFormElement -> Word -> m (Maybe Element)
_get self index
  = liftIO (nullableToMaybe <$> (js__get (self) index))
 
foreign import javascript unsafe "$1[\"submit\"]()" js_submit ::
        HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
submit :: (MonadIO m) => HTMLFormElement -> m ()
submit self = liftIO (js_submit (self))
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
reset :: (MonadIO m) => HTMLFormElement -> m ()
reset self = liftIO (js_reset (self))
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLFormElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"requestAutocomplete\"]()"
        js_requestAutocomplete :: HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
requestAutocomplete :: (MonadIO m) => HTMLFormElement -> m ()
requestAutocomplete self = liftIO (js_requestAutocomplete (self))
 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        js_setAcceptCharset :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
setAcceptCharset ::
                 (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAcceptCharset self val
  = liftIO (js_setAcceptCharset (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        js_getAcceptCharset :: HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
getAcceptCharset ::
                 (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAcceptCharset self
  = liftIO (fromJSString <$> (js_getAcceptCharset (self)))
 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        js_setAction :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
setAction ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAction self val = liftIO (js_setAction (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"action\"]" js_getAction ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
getAction ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAction self = liftIO (fromJSString <$> (js_getAction (self)))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        js_setAutocomplete :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
setAutocomplete ::
                (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAutocomplete self val
  = liftIO (js_setAutocomplete (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        js_getAutocomplete :: HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
getAutocomplete ::
                (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAutocomplete self
  = liftIO (fromJSString <$> (js_getAutocomplete (self)))
 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        js_setEnctype :: HTMLFormElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
setEnctype ::
           (MonadIO m, ToJSString val) => HTMLFormElement -> Maybe val -> m ()
setEnctype self val
  = liftIO (js_setEnctype (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"enctype\"]" js_getEnctype ::
        HTMLFormElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
getEnctype ::
           (MonadIO m, FromJSString result) =>
             HTMLFormElement -> m (Maybe result)
getEnctype self
  = liftIO (fromMaybeJSString <$> (js_getEnctype (self)))
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: HTMLFormElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => HTMLFormElement -> Maybe val -> m ()
setEncoding self val
  = liftIO (js_setEncoding (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: HTMLFormElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) =>
              HTMLFormElement -> m (Maybe result)
getEncoding self
  = liftIO (fromMaybeJSString <$> (js_getEncoding (self)))
 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        js_setMethod :: HTMLFormElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
setMethod ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> Maybe val -> m ()
setMethod self val
  = liftIO (js_setMethod (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        HTMLFormElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
getMethod ::
          (MonadIO m, FromJSString result) =>
            HTMLFormElement -> m (Maybe result)
getMethod self
  = liftIO (fromMaybeJSString <$> (js_getMethod (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        js_setNoValidate :: HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
setNoValidate :: (MonadIO m) => HTMLFormElement -> Bool -> m ()
setNoValidate self val = liftIO (js_setNoValidate (self) val)
 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        js_getNoValidate :: HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
getNoValidate :: (MonadIO m) => HTMLFormElement -> m Bool
getNoValidate self = liftIO (js_getNoValidate (self))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setTarget self val = liftIO (js_setTarget (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"elements\"]" js_getElements
        :: HTMLFormElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.elements Mozilla HTMLFormElement.elements documentation> 
getElements ::
            (MonadIO m) => HTMLFormElement -> m (Maybe HTMLCollection)
getElements self
  = liftIO (nullableToMaybe <$> (js_getElements (self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLFormElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
getLength :: (MonadIO m) => HTMLFormElement -> m Int
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        js_setAutocorrect :: HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
setAutocorrect :: (MonadIO m) => HTMLFormElement -> Bool -> m ()
setAutocorrect self val = liftIO (js_setAutocorrect (self) val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        js_getAutocorrect :: HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
getAutocorrect :: (MonadIO m) => HTMLFormElement -> m Bool
getAutocorrect self = liftIO (js_getAutocorrect (self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        js_setAutocapitalize ::
        HTMLFormElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadIO m, ToJSString val) => HTMLFormElement -> Maybe val -> m ()
setAutocapitalize self val
  = liftIO (js_setAutocapitalize (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        js_getAutocapitalize :: HTMLFormElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadIO m, FromJSString result) =>
                    HTMLFormElement -> m (Maybe result)
getAutocapitalize self
  = liftIO (fromMaybeJSString <$> (js_getAutocapitalize (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocomplete Mozilla HTMLFormElement.onautocomplete documentation> 
autocomplete :: EventName HTMLFormElement onautocomplete
autocomplete = unsafeEventName (toJSString "autocomplete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.onautocompleteerror Mozilla HTMLFormElement.onautocompleteerror documentation> 
autocompleteerror :: EventName HTMLFormElement onautocompleteerror
autocompleteerror
  = unsafeEventName (toJSString "autocompleteerror")