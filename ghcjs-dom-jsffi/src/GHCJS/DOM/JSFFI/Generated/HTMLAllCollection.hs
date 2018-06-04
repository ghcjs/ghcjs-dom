{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAllCollection
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_getLength, getLength, HTMLAllCollection(..),
        gTypeHTMLAllCollection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_item ::
        HTMLAllCollection -> Word -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item ::
     (MonadIO m) => HTMLAllCollection -> Word -> m (Maybe Element)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item_ :: (MonadIO m) => HTMLAllCollection -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => HTMLAllCollection -> Word -> m Element
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
itemUnchecked ::
              (MonadIO m) => HTMLAllCollection -> Word -> m Element
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_namedItem ::
        HTMLAllCollection ->
          JSString -> IO (Nullable HTMLCollectionOrElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLAllCollection -> name -> m (Maybe HTMLCollectionOrElement)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) => HTMLAllCollection -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  HTMLAllCollection -> name -> m HTMLCollectionOrElement
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) =>
                     HTMLAllCollection -> name -> m HTMLCollectionOrElement
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLAllCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.length Mozilla HTMLAllCollection.length documentation> 
getLength :: (MonadIO m) => HTMLAllCollection -> m Word
getLength self = liftIO (js_getLength self)