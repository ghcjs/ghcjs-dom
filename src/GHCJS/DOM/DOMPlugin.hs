{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPlugin
       (js_item, item, js_namedItem, namedItem, js_getName, getName,
        js_getFilename, getFilename, js_getDescription, getDescription,
        js_getLength, getLength, DOMPlugin, castToDOMPlugin,
        gTypeDOMPlugin)
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
        JSRef DOMPlugin -> Word -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item :: (MonadIO m) => DOMPlugin -> Word -> m (Maybe DOMMimeType)
item self index
  = liftIO ((js_item (unDOMPlugin self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef DOMPlugin -> JSString -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            DOMPlugin -> name -> m (Maybe DOMMimeType)
namedItem self name
  = liftIO
      ((js_namedItem (unDOMPlugin self) (toJSString name)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.name Mozilla Plugin.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => DOMPlugin -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.filename Mozilla Plugin.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => DOMPlugin -> m result
getFilename self
  = liftIO (fromJSString <$> (js_getFilename (unDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: JSRef DOMPlugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.description Mozilla Plugin.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => DOMPlugin -> m result
getDescription self
  = liftIO (fromJSString <$> (js_getDescription (unDOMPlugin self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMPlugin -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.length Mozilla Plugin.length documentation> 
getLength :: (MonadIO m) => DOMPlugin -> m Word
getLength self = liftIO (js_getLength (unDOMPlugin self))
#else
module GHCJS.DOM.DOMPlugin (
  module Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMPlugin
#endif
