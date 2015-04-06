{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMMimeTypeArray
       (js_item, item, js_namedItem, namedItem, js_getLength, getLength,
        DOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item ::
     (MonadIO m) => DOMMimeTypeArray -> Word -> m (Maybe DOMMimeType)
item self index
  = liftIO ((js_item (unDOMMimeTypeArray self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef DOMMimeTypeArray -> JSString -> IO (JSRef DOMMimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            DOMMimeTypeArray -> name -> m (Maybe DOMMimeType)
namedItem self name
  = liftIO
      ((js_namedItem (unDOMMimeTypeArray self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMMimeTypeArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.length Mozilla MimeTypeArray.length documentation> 
getLength :: (MonadIO m) => DOMMimeTypeArray -> m Word
getLength self = liftIO (js_getLength (unDOMMimeTypeArray self))
#else
module GHCJS.DOM.DOMMimeTypeArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
#endif
