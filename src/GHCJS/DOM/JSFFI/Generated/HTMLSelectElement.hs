{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLSelectElement
       (js_item, item, js_namedItem, namedItem, js_addBefore, addBefore,
        js_add, add, js_remove, remove, js_checkValidity, checkValidity,
        js_setCustomValidity, setCustomValidity, js_setAutofocus,
        setAutofocus, js_getAutofocus, getAutofocus, js_setDisabled,
        setDisabled, js_getDisabled, getDisabled, js_getForm, getForm,
        js_setMultiple, setMultiple, js_getMultiple, getMultiple,
        js_setName, setName, js_getName, getName, js_setRequired,
        setRequired, js_getRequired, getRequired, js_setSize, setSize,
        js_getSize, getSize, js_getType, getType, js_getOptions,
        getOptions, js_setLength, setLength, js_getLength, getLength,
        js_getSelectedOptions, getSelectedOptions, js_setSelectedIndex,
        setSelectedIndex, js_getSelectedIndex, getSelectedIndex,
        js_setValue, setValue, js_getValue, getValue, js_getWillValidate,
        getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, HTMLSelectElement, castToHTMLSelectElement,
        gTypeHTMLSelectElement)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        HTMLSelectElement -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
item :: (MonadIO m) => HTMLSelectElement -> Word -> m (Maybe Node)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: HTMLSelectElement -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLSelectElement -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_addBefore
        ::
        HTMLSelectElement ->
          Nullable HTMLElement -> Nullable HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.add Mozilla HTMLSelectElement.add documentation> 
addBefore ::
          (MonadIO m, IsHTMLElement element, IsHTMLElement before) =>
            HTMLSelectElement -> Maybe element -> Maybe before -> m ()
addBefore self element before
  = liftIO
      (js_addBefore (self) (maybeToNullable (fmap toHTMLElement element))
         (maybeToNullable (fmap toHTMLElement before)))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        HTMLSelectElement -> Nullable HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.add Mozilla HTMLSelectElement.add documentation> 
add ::
    (MonadIO m, IsHTMLElement element) =>
      HTMLSelectElement -> Maybe element -> Int -> m ()
add self element index
  = liftIO
      (js_add (self) (maybeToNullable (fmap toHTMLElement element))
         index)
 
foreign import javascript unsafe "$1[\"remove\"]()" js_remove ::
        HTMLSelectElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
remove :: (MonadIO m) => HTMLSelectElement -> m ()
remove self = liftIO (js_remove (self))
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLSelectElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLSelectElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.setCustomValidity Mozilla HTMLSelectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLSelectElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setAutofocus self val = liftIO (js_setAutofocus (self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLSelectElement -> m Bool
getAutofocus self = liftIO (js_getAutofocus (self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLSelectElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLSelectElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLSelectElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        js_setMultiple :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
setMultiple :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setMultiple self val = liftIO (js_setMultiple (self) val)
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        js_getMultiple :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
getMultiple :: (MonadIO m) => HTMLSelectElement -> m Bool
getMultiple self = liftIO (js_getMultiple (self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLSelectElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        js_setRequired :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
setRequired :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setRequired self val = liftIO (js_setRequired (self) val)
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        js_getRequired :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
getRequired :: (MonadIO m) => HTMLSelectElement -> m Bool
getRequired self = liftIO (js_getRequired (self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
setSize :: (MonadIO m) => HTMLSelectElement -> Int -> m ()
setSize self val = liftIO (js_setSize (self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        HTMLSelectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
getSize :: (MonadIO m) => HTMLSelectElement -> m Int
getSize self = liftIO (js_getSize (self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.type Mozilla HTMLSelectElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"options\"]" js_getOptions ::
        HTMLSelectElement -> IO (Nullable HTMLOptionsCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.options Mozilla HTMLSelectElement.options documentation> 
getOptions ::
           (MonadIO m) => HTMLSelectElement -> m (Maybe HTMLOptionsCollection)
getOptions self
  = liftIO (nullableToMaybe <$> (js_getOptions (self)))
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        js_setLength :: HTMLSelectElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
setLength :: (MonadIO m) => HTMLSelectElement -> Word -> m ()
setLength self val = liftIO (js_setLength (self) val)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLSelectElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
getLength :: (MonadIO m) => HTMLSelectElement -> m Word
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"selectedOptions\"]"
        js_getSelectedOptions ::
        HTMLSelectElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedOptions Mozilla HTMLSelectElement.selectedOptions documentation> 
getSelectedOptions ::
                   (MonadIO m) => HTMLSelectElement -> m (Maybe HTMLCollection)
getSelectedOptions self
  = liftIO (nullableToMaybe <$> (js_getSelectedOptions (self)))
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        js_setSelectedIndex :: HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
setSelectedIndex :: (MonadIO m) => HTMLSelectElement -> Int -> m ()
setSelectedIndex self val = liftIO (js_setSelectedIndex (self) val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: HTMLSelectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => HTMLSelectElement -> m Int
getSelectedIndex self = liftIO (js_getSelectedIndex (self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLSelectElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) =>
           HTMLSelectElement -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLSelectElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           HTMLSelectElement -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.willValidate Mozilla HTMLSelectElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLSelectElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLSelectElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validity Mozilla HTMLSelectElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLSelectElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validationMessage Mozilla HTMLSelectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLSelectElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.labels Mozilla HTMLSelectElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLSelectElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))