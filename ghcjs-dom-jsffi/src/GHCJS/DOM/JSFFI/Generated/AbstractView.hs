{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AbstractView
       (js_getDocument, getDocument, getDocumentUnsafe,
        getDocumentUnchecked, js_getStyleMedia, getStyleMedia,
        getStyleMediaUnsafe, getStyleMediaUnchecked, AbstractView(..),
        gTypeAbstractView)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"document\"]" js_getDocument
        :: AbstractView -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocument :: (MonadIO m) => AbstractView -> m (Maybe Document)
getDocument self
  = liftIO (nullableToMaybe <$> (js_getDocument (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocumentUnsafe ::
                  (MonadIO m, HasCallStack) => AbstractView -> m Document
getDocumentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDocument (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocumentUnchecked :: (MonadIO m) => AbstractView -> m Document
getDocumentUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDocument (self)))
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        js_getStyleMedia :: AbstractView -> IO (Nullable StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMedia ::
              (MonadIO m) => AbstractView -> m (Maybe StyleMedia)
getStyleMedia self
  = liftIO (nullableToMaybe <$> (js_getStyleMedia (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMediaUnsafe ::
                    (MonadIO m, HasCallStack) => AbstractView -> m StyleMedia
getStyleMediaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStyleMedia (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMediaUnchecked ::
                       (MonadIO m) => AbstractView -> m StyleMedia
getStyleMediaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyleMedia (self)))