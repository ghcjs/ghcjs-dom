{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAttachmentElement
       (js_setFile, setFile, js_getFile, getFile, getFileUnsafe,
        getFileUnchecked, HTMLAttachmentElement(..),
        gTypeHTMLAttachmentElement)
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
 
foreign import javascript unsafe "$1[\"file\"] = $2;" js_setFile ::
        HTMLAttachmentElement -> Optional File -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
setFile ::
        (MonadIO m) => HTMLAttachmentElement -> Maybe File -> m ()
setFile self val = liftIO (js_setFile self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"file\"]" js_getFile ::
        HTMLAttachmentElement -> IO (Nullable File)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFile :: (MonadIO m) => HTMLAttachmentElement -> m (Maybe File)
getFile self = liftIO (nullableToMaybe <$> (js_getFile self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFileUnsafe ::
              (MonadIO m, HasCallStack) => HTMLAttachmentElement -> m File
getFileUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFile self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFileUnchecked :: (MonadIO m) => HTMLAttachmentElement -> m File
getFileUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFile self))