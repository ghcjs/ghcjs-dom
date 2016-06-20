{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOptionsCollection
       (js_namedItem, namedItem, js_addBefore, addBefore, js_add, add,
        js_remove, remove, js_setSelectedIndex, setSelectedIndex,
        js_getSelectedIndex, getSelectedIndex, js_setLength, setLength,
        js_getLength, getLength, HTMLOptionsCollection,
        castToHTMLOptionsCollection, gTypeHTMLOptionsCollection)
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
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        HTMLOptionsCollection -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLOptionsCollection -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_addBefore
        ::
        HTMLOptionsCollection ->
          Nullable HTMLElement -> Nullable HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
addBefore ::
          (MonadIO m, IsHTMLElement element, IsHTMLElement before) =>
            HTMLOptionsCollection -> Maybe element -> Maybe before -> m ()
addBefore self element before
  = liftIO
      (js_addBefore (self) (maybeToNullable (fmap toHTMLElement element))
         (maybeToNullable (fmap toHTMLElement before)))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        HTMLOptionsCollection -> Nullable HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
add ::
    (MonadIO m, IsHTMLElement element) =>
      HTMLOptionsCollection -> Maybe element -> Int -> m ()
add self element index
  = liftIO
      (js_add (self) (maybeToNullable (fmap toHTMLElement element))
         index)
 
foreign import javascript unsafe "$1[\"remove\"]($2)" js_remove ::
        HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
remove :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
remove self index = liftIO (js_remove (self) index)
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        js_setSelectedIndex :: HTMLOptionsCollection -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadIO m) => HTMLOptionsCollection -> Int -> m ()
setSelectedIndex self val = liftIO (js_setSelectedIndex (self) val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: HTMLOptionsCollection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => HTMLOptionsCollection -> m Int
getSelectedIndex self = liftIO (js_getSelectedIndex (self))
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        js_setLength :: HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
setLength :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
setLength self val = liftIO (js_setLength (self) val)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLOptionsCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
getLength :: (MonadIO m) => HTMLOptionsCollection -> m Word
getLength self = liftIO (js_getLength (self))