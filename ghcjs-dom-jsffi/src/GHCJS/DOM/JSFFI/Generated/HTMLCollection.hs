{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLCollection
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_getLength, getLength, HTMLCollection(..), gTypeHTMLCollection,
        IsHTMLCollection, toHTMLCollection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        HTMLCollection -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item ::
     (MonadIO m, IsHTMLCollection self) =>
       self -> Word -> m (Maybe Node)
item self index
  = liftIO
      (nullableToMaybe <$> (js_item (toHTMLCollection self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item_ :: (MonadIO m, IsHTMLCollection self) => self -> Word -> m ()
item_ self index
  = liftIO (void (js_item (toHTMLCollection self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
itemUnsafe ::
           (MonadIO m, IsHTMLCollection self, HasCallStack) =>
             self -> Word -> m Node
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (toHTMLCollection self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
itemUnchecked ::
              (MonadIO m, IsHTMLCollection self) => self -> Word -> m Node
itemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_item (toHTMLCollection self) index))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem_ ::
           (MonadIO m, IsHTMLCollection self, ToJSString name) =>
             self -> name -> m ()
namedItem_ self name
  = liftIO
      (void (js_namedItem (toHTMLCollection self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, IsHTMLCollection self, ToJSString name,
                 HasCallStack) =>
                  self -> name -> m Node
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$>
          (js_namedItem (toHTMLCollection self) (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, IsHTMLCollection self, ToJSString name) =>
                     self -> name -> m Node
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem (toHTMLCollection self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
getLength :: (MonadIO m, IsHTMLCollection self) => self -> m Word
getLength self = liftIO (js_getLength (toHTMLCollection self))