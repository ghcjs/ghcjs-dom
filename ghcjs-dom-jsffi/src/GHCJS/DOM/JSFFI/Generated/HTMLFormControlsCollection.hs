{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFormControlsCollection
       (js_get, get, get_, getUnsafe, getUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        HTMLFormControlsCollection(..), gTypeHTMLFormControlsCollection)
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
 
foreign import javascript unsafe "$1[$2]" js_get ::
        HTMLFormControlsCollection -> Word -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
get ::
    (MonadIO m) =>
      HTMLFormControlsCollection -> Word -> m (Maybe HTMLElement)
get self index = liftIO (nullableToMaybe <$> (js_get self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
get_ :: (MonadIO m) => HTMLFormControlsCollection -> Word -> m ()
get_ self index = liftIO (void (js_get self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
getUnsafe ::
          (MonadIO m, HasCallStack) =>
            HTMLFormControlsCollection -> Word -> m HTMLElement
getUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_get self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
getUnchecked ::
             (MonadIO m) => HTMLFormControlsCollection -> Word -> m HTMLElement
getUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_get self index))
 
foreign import javascript unsafe "$1[$2]" js_namedItem ::
        HTMLFormControlsCollection ->
          JSString -> IO (Nullable RadioNodeListOrElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLFormControlsCollection ->
              name -> m (Maybe RadioNodeListOrElement)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) =>
             HTMLFormControlsCollection -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  HTMLFormControlsCollection -> name -> m RadioNodeListOrElement
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) =>
                     HTMLFormControlsCollection -> name -> m RadioNodeListOrElement
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))