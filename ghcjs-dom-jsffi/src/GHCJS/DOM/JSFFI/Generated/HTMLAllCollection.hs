{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAllCollection
       (js_item, item, js_namedItem, namedItem, js_tags, tags,
        js_getLength, getLength, HTMLAllCollection,
        castToHTMLAllCollection, gTypeHTMLAllCollection)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        HTMLAllCollection -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item :: (MonadIO m) => HTMLAllCollection -> Word -> m (Maybe Node)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: HTMLAllCollection -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLAllCollection -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"tags\"]($2)" js_tags ::
        HTMLAllCollection -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
tags ::
     (MonadIO m, ToJSString name) =>
       HTMLAllCollection -> name -> m (Maybe NodeList)
tags self name
  = liftIO (nullableToMaybe <$> (js_tags (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLAllCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.length Mozilla HTMLAllCollection.length documentation> 
getLength :: (MonadIO m) => HTMLAllCollection -> m Word
getLength self = liftIO (js_getLength (self))