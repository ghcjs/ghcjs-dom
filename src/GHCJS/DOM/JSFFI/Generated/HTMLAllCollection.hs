{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAllCollection
       (js_item, item, js_namedItem, namedItem, js_tags, tags,
        js_getLength, getLength, HTMLAllCollection,
        castToHTMLAllCollection, gTypeHTMLAllCollection)
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
        JSRef HTMLAllCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item :: (MonadIO m) => HTMLAllCollection -> Word -> m (Maybe Node)
item self index
  = liftIO ((js_item (unHTMLAllCollection self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef HTMLAllCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLAllCollection -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      ((js_namedItem (unHTMLAllCollection self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"tags\"]($2)" js_tags ::
        JSRef HTMLAllCollection -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
tags ::
     (MonadIO m, ToJSString name) =>
       HTMLAllCollection -> name -> m (Maybe NodeList)
tags self name
  = liftIO
      ((js_tags (unHTMLAllCollection self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef HTMLAllCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.length Mozilla HTMLAllCollection.length documentation> 
getLength :: (MonadIO m) => HTMLAllCollection -> m Word
getLength self = liftIO (js_getLength (unHTMLAllCollection self))