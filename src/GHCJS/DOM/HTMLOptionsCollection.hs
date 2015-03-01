{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionsCollection
       (js_namedItem, namedItem, js_add, add, js_remove, remove,
        js_setSelectedIndex, setSelectedIndex, js_getSelectedIndex,
        getSelectedIndex, js_setLength, setLength, js_getLength, getLength,
        HTMLOptionsCollection, castToHTMLOptionsCollection,
        gTypeHTMLOptionsCollection)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef HTMLOptionsCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLOptionsCollection -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      ((js_namedItem (unHTMLOptionsCollection self) (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        JSRef HTMLOptionsCollection ->
          JSRef HTMLOptionElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
add ::
    (MonadIO m) =>
      HTMLOptionsCollection -> Maybe HTMLOptionElement -> Word -> m ()
add self option index
  = liftIO
      (js_add (unHTMLOptionsCollection self)
         (maybe jsNull unHTMLOptionElement option)
         index)
 
foreign import javascript unsafe "$1[\"remove\"]($2)" js_remove ::
        JSRef HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
remove :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
remove self index
  = liftIO (js_remove (unHTMLOptionsCollection self) index)
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        js_setSelectedIndex :: JSRef HTMLOptionsCollection -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadIO m) => HTMLOptionsCollection -> Int -> m ()
setSelectedIndex self val
  = liftIO (js_setSelectedIndex (unHTMLOptionsCollection self) val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: JSRef HTMLOptionsCollection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => HTMLOptionsCollection -> m Int
getSelectedIndex self
  = liftIO (js_getSelectedIndex (unHTMLOptionsCollection self))
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        js_setLength :: JSRef HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
setLength :: (MonadIO m) => HTMLOptionsCollection -> Word -> m ()
setLength self val
  = liftIO (js_setLength (unHTMLOptionsCollection self) val)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef HTMLOptionsCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
getLength :: (MonadIO m) => HTMLOptionsCollection -> m Word
getLength self
  = liftIO (js_getLength (unHTMLOptionsCollection self))
#else
module GHCJS.DOM.HTMLOptionsCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif
