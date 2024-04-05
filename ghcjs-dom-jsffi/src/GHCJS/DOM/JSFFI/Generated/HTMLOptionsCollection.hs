{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOptionsCollection
       (js_addBefore, addBefore, js_remove, remove, js_item, item, item_,
        itemUnsafe, itemUnchecked, js_namedItem, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, js_setLength, setLength,
        js_getLength, getLength, js_setSelectedIndex, setSelectedIndex,
        js_getSelectedIndex, getSelectedIndex, HTMLOptionsCollection(..),
        gTypeHTMLOptionsCollection)
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
 
foreign import javascript safe "$1[\"add\"]($2, $3)" js_addBefore
        ::
        HTMLOptionsCollection ->
          HTMLOptionElementOrGroup -> Optional HTMLElementOrLong -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
addBefore ::
          (MonadIO m, IsHTMLOptionElementOrGroup element,
           IsHTMLElementOrLong before) =>
            HTMLOptionsCollection -> element -> Maybe before -> m ()
addBefore self element before
  = liftIO
      (mapM toJSVal before >>=
         \ before' ->
           toJSVal element >>=
             \ element' -> js_addBefore self (HTMLOptionElementOrGroup element')
             (maybeToOptional (fmap HTMLElementOrLong before')))
 
foreign import javascript unsafe "$1[\"remove\"]($2)" js_remove ::
        HTMLOptionsCollection -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
remove :: (MonadIO m) => HTMLOptionsCollection -> Int -> m ()
remove self index = liftIO (js_remove self index)
 
foreign import javascript unsafe "$1[$2]" js_item ::
        HTMLOptionsCollection -> Word -> IO (Nullable HTMLOptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
item ::
     (MonadIO m) =>
       HTMLOptionsCollection -> Word -> m (Maybe HTMLOptionElement)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
item_ :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) =>
             HTMLOptionsCollection -> Word -> m HTMLOptionElement
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
itemUnchecked ::
              (MonadIO m) => HTMLOptionsCollection -> Word -> m HTMLOptionElement
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_namedItem ::
        HTMLOptionsCollection ->
          JSString -> IO (Nullable HTMLOptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLOptionsCollection -> name -> m (Maybe HTMLOptionElement)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) =>
             HTMLOptionsCollection -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  HTMLOptionsCollection -> name -> m HTMLOptionElement
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) =>
                     HTMLOptionsCollection -> name -> m HTMLOptionElement
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))
 
foreign import javascript safe "$1[\"length\"] = $2;" js_setLength
        :: HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
setLength :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
setLength self val = liftIO (js_setLength self val)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLOptionsCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
getLength :: (MonadIO m) => HTMLOptionsCollection -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        js_setSelectedIndex :: HTMLOptionsCollection -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadIO m) => HTMLOptionsCollection -> Int -> m ()
setSelectedIndex self val = liftIO (js_setSelectedIndex self val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: HTMLOptionsCollection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => HTMLOptionsCollection -> m Int
getSelectedIndex self = liftIO (js_getSelectedIndex self)