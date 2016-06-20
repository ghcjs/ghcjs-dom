{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLCollection
       (js_item, item, js_namedItem, namedItem, js_getLength, getLength,
        HTMLCollection, castToHTMLCollection, gTypeHTMLCollection,
        IsHTMLCollection, toHTMLCollection)
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
        HTMLCollection -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item ::
     (MonadIO m, IsHTMLCollection self) =>
       self -> Word -> m (Maybe Node)
item self index
  = liftIO
      (nullableToMaybe <$> (js_item (toHTMLCollection self) index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: HTMLCollection -> JSString -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, IsHTMLCollection self, ToJSString name) =>
            self -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      (nullableToMaybe <$>
         (js_namedItem (toHTMLCollection self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
getLength :: (MonadIO m, IsHTMLCollection self) => self -> m Word
getLength self = liftIO (js_getLength (toHTMLCollection self))