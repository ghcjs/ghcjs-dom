{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLCollection
       (js_item, item, js_namedItem, namedItem, js_getLength, getLength,
        HTMLCollection, castToHTMLCollection, gTypeHTMLCollection,
        IsHTMLCollection, toHTMLCollection)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef HTMLCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item ::
     (MonadIO m, IsHTMLCollection self) =>
       self -> Word -> m (Maybe Node)
item self index
  = liftIO
      ((js_item (unHTMLCollection (toHTMLCollection self)) index) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: JSRef HTMLCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, IsHTMLCollection self, ToJSString name) =>
            self -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      ((js_namedItem (unHTMLCollection (toHTMLCollection self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef HTMLCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
getLength :: (MonadIO m, IsHTMLCollection self) => self -> m Word
getLength self
  = liftIO (js_getLength (unHTMLCollection (toHTMLCollection self)))
#else
module GHCJS.DOM.HTMLCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
#endif
