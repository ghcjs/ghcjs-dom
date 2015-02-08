{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMMimeTypeArray
       (ghcjs_dom_dom_mime_type_array_item, domMimeTypeArrayItem,
        ghcjs_dom_dom_mime_type_array_named_item,
        domMimeTypeArrayNamedItem,
        ghcjs_dom_dom_mime_type_array_get_length,
        domMimeTypeArrayGetLength, DOMMimeTypeArray, IsDOMMimeTypeArray,
        castToDOMMimeTypeArray, gTypeDOMMimeTypeArray, toDOMMimeTypeArray)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_mime_type_array_item ::
        JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
domMimeTypeArrayItem ::
                     (MonadIO m, IsDOMMimeTypeArray self) =>
                       self -> Word -> m (Maybe DOMMimeType)
domMimeTypeArrayItem self index
  = liftIO
      ((ghcjs_dom_dom_mime_type_array_item
          (unDOMMimeTypeArray (toDOMMimeTypeArray self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_mime_type_array_named_item ::
        JSRef DOMMimeTypeArray -> JSString -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
domMimeTypeArrayNamedItem ::
                          (MonadIO m, IsDOMMimeTypeArray self, ToJSString name) =>
                            self -> name -> m (Maybe DOMMimeType)
domMimeTypeArrayNamedItem self name
  = liftIO
      ((ghcjs_dom_dom_mime_type_array_named_item
          (unDOMMimeTypeArray (toDOMMimeTypeArray self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_mime_type_array_get_length ::
        JSRef DOMMimeTypeArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.length Mozilla MimeTypeArray.length documentation> 
domMimeTypeArrayGetLength ::
                          (MonadIO m, IsDOMMimeTypeArray self) => self -> m Word
domMimeTypeArrayGetLength self
  = liftIO
      (ghcjs_dom_dom_mime_type_array_get_length
         (unDOMMimeTypeArray (toDOMMimeTypeArray self)))
#else
module GHCJS.DOM.DOMMimeTypeArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
#endif
