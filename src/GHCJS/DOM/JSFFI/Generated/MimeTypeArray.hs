{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MimeTypeArray
       (js_item, item, js_namedItem, namedItem, js_getLength, getLength,
        MimeTypeArray, castToMimeTypeArray, gTypeMimeTypeArray)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        JSRef MimeTypeArray -> Word -> IO (JSRef MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item :: (MonadIO m) => MimeTypeArray -> Word -> m (Maybe MimeType)
item self index
  = liftIO ((js_item (unMimeTypeArray self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef MimeTypeArray -> JSString -> IO (JSRef MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            MimeTypeArray -> name -> m (Maybe MimeType)
namedItem self name
  = liftIO
      ((js_namedItem (unMimeTypeArray self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef MimeTypeArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.length Mozilla MimeTypeArray.length documentation> 
getLength :: (MonadIO m) => MimeTypeArray -> m Word
getLength self = liftIO (js_getLength (unMimeTypeArray self))