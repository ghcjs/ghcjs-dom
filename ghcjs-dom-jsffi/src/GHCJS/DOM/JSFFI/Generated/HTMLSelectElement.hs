{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLSelectElement
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_addBefore, addBefore, js_removeThis, removeThis, js_remove,
        remove, js_checkValidity, checkValidity, checkValidity_,
        js_reportValidity, reportValidity, reportValidity_,
        js_setCustomValidity, setCustomValidity, js_setAutofocus,
        setAutofocus, js_getAutofocus, getAutofocus, js_setDisabled,
        setDisabled, js_getDisabled, getDisabled, js_getForm, getForm,
        getFormUnsafe, getFormUnchecked, js_setMultiple, setMultiple,
        js_getMultiple, getMultiple, js_setName, setName, js_getName,
        getName, js_setRequired, setRequired, js_getRequired, getRequired,
        js_setSize, setSize, js_getSize, getSize, js_getType, getType,
        js_getOptions, getOptions, js_setLength, setLength, js_getLength,
        getLength, js_getSelectedOptions, getSelectedOptions,
        js_setSelectedIndex, setSelectedIndex, js_getSelectedIndex,
        getSelectedIndex, js_setValue, setValue, js_getValue, getValue,
        js_getWillValidate, getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, js_setAutocomplete, setAutocomplete, js_getAutocomplete,
        getAutocomplete, HTMLSelectElement(..), gTypeHTMLSelectElement)
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
 
foreign import javascript unsafe "$1[$2]" js_item ::
        HTMLSelectElement -> Word -> IO (Nullable HTMLOptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
item ::
     (MonadIO m) =>
       HTMLSelectElement -> Word -> m (Maybe HTMLOptionElement)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
item_ :: (MonadIO m) => HTMLSelectElement -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) =>
             HTMLSelectElement -> Word -> m HTMLOptionElement
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
itemUnchecked ::
              (MonadIO m) => HTMLSelectElement -> Word -> m HTMLOptionElement
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        HTMLSelectElement -> JSString -> IO (Nullable HTMLOptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLSelectElement -> name -> m (Maybe HTMLOptionElement)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) => HTMLSelectElement -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  HTMLSelectElement -> name -> m HTMLOptionElement
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) =>
                     HTMLSelectElement -> name -> m HTMLOptionElement
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))
 
foreign import javascript safe "$1[\"add\"]($2, $3)" js_addBefore
        ::
        HTMLSelectElement ->
          HTMLOptionElementOrGroup -> Optional HTMLElementOrLong -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.add Mozilla HTMLSelectElement.add documentation> 
addBefore ::
          (MonadIO m, IsHTMLOptionElementOrGroup element,
           IsHTMLElementOrLong before) =>
            HTMLSelectElement -> element -> Maybe before -> m ()
addBefore self element before
  = liftIO
      (mapM toJSVal before >>=
         \ before' ->
           toJSVal element >>=
             \ element' -> js_addBefore self (HTMLOptionElementOrGroup element')
             (maybeToOptional (fmap HTMLElementOrLong before')))
 
foreign import javascript safe "$1[\"remove\"]()" js_removeThis ::
        HTMLSelectElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
removeThis :: (MonadIO m) => HTMLSelectElement -> m ()
removeThis self = liftIO (js_removeThis self)
 
foreign import javascript unsafe "$1[\"remove\"]($2)" js_remove ::
        HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
remove :: (MonadIO m) => HTMLSelectElement -> Int -> m ()
remove self index = liftIO (js_remove self index)
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLSelectElement -> m Bool
checkValidity self = liftIO (js_checkValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
checkValidity_ :: (MonadIO m) => HTMLSelectElement -> m ()
checkValidity_ self = liftIO (void (js_checkValidity self))
 
foreign import javascript unsafe
        "($1[\"reportValidity\"]() ? 1 : 0)" js_reportValidity ::
        HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.reportValidity Mozilla HTMLSelectElement.reportValidity documentation> 
reportValidity :: (MonadIO m) => HTMLSelectElement -> m Bool
reportValidity self = liftIO (js_reportValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.reportValidity Mozilla HTMLSelectElement.reportValidity documentation> 
reportValidity_ :: (MonadIO m) => HTMLSelectElement -> m ()
reportValidity_ self = liftIO (void (js_reportValidity self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity :: HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.setCustomValidity Mozilla HTMLSelectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) => HTMLSelectElement -> error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity self (toJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setAutofocus self val = liftIO (js_setAutofocus self val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLSelectElement -> m Bool
getAutofocus self = liftIO (js_getAutofocus self)
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled self val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLSelectElement -> m Bool
getDisabled self = liftIO (js_getDisabled self)
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLSelectElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLSelectElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getFormUnsafe ::
              (MonadIO m, HasCallStack) => HTMLSelectElement -> m HTMLFormElement
getFormUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getForm self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
getFormUnchecked ::
                 (MonadIO m) => HTMLSelectElement -> m HTMLFormElement
getFormUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getForm self))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        js_setMultiple :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
setMultiple :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setMultiple self val = liftIO (js_setMultiple self val)
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        js_getMultiple :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
getMultiple :: (MonadIO m) => HTMLSelectElement -> m Bool
getMultiple self = liftIO (js_getMultiple self)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLSelectElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        js_setRequired :: HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
setRequired :: (MonadIO m) => HTMLSelectElement -> Bool -> m ()
setRequired self val = liftIO (js_setRequired self val)
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        js_getRequired :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
getRequired :: (MonadIO m) => HTMLSelectElement -> m Bool
getRequired self = liftIO (js_getRequired self)
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        HTMLSelectElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
setSize :: (MonadIO m) => HTMLSelectElement -> Word -> m ()
setSize self val = liftIO (js_setSize self val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        HTMLSelectElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
getSize :: (MonadIO m) => HTMLSelectElement -> m Word
getSize self = liftIO (js_getSize self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.type Mozilla HTMLSelectElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"options\"]" js_getOptions ::
        HTMLSelectElement -> IO HTMLOptionsCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.options Mozilla HTMLSelectElement.options documentation> 
getOptions ::
           (MonadIO m) => HTMLSelectElement -> m HTMLOptionsCollection
getOptions self = liftIO (js_getOptions self)
 
foreign import javascript safe "$1[\"length\"] = $2;" js_setLength
        :: HTMLSelectElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
setLength :: (MonadIO m) => HTMLSelectElement -> Word -> m ()
setLength self val = liftIO (js_setLength self val)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLSelectElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
getLength :: (MonadIO m) => HTMLSelectElement -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"selectedOptions\"]"
        js_getSelectedOptions :: HTMLSelectElement -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedOptions Mozilla HTMLSelectElement.selectedOptions documentation> 
getSelectedOptions ::
                   (MonadIO m) => HTMLSelectElement -> m HTMLCollection
getSelectedOptions self = liftIO (js_getSelectedOptions self)
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        js_setSelectedIndex :: HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
setSelectedIndex :: (MonadIO m) => HTMLSelectElement -> Int -> m ()
setSelectedIndex self val = liftIO (js_setSelectedIndex self val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: HTMLSelectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => HTMLSelectElement -> m Int
getSelectedIndex self = liftIO (js_getSelectedIndex self)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLSelectElement -> val -> m ()
setValue self val = liftIO (js_setValue self (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getValue self = liftIO (fromJSString <$> (js_getValue self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.willValidate Mozilla HTMLSelectElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLSelectElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate self)
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLSelectElement -> IO ValidityState

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validity Mozilla HTMLSelectElement.validity documentation> 
getValidity :: (MonadIO m) => HTMLSelectElement -> m ValidityState
getValidity self = liftIO (js_getValidity self)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validationMessage Mozilla HTMLSelectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage self))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLSelectElement -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.labels Mozilla HTMLSelectElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLSelectElement -> m NodeList
getLabels self = liftIO (js_getLabels self)
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        js_setAutocomplete :: HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autocomplete Mozilla HTMLSelectElement.autocomplete documentation> 
setAutocomplete ::
                (MonadIO m, ToJSString val) => HTMLSelectElement -> val -> m ()
setAutocomplete self val
  = liftIO (js_setAutocomplete self (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        js_getAutocomplete :: HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autocomplete Mozilla HTMLSelectElement.autocomplete documentation> 
getAutocomplete ::
                (MonadIO m, FromJSString result) => HTMLSelectElement -> m result
getAutocomplete self
  = liftIO (fromJSString <$> (js_getAutocomplete self))