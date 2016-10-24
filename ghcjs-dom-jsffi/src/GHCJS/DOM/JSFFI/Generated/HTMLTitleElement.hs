{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTitleElement
       (js_setText, setText, js_getText, getText, getTextUnsafe,
        getTextUnchecked, HTMLTitleElement(..), gTypeHTMLTitleElement)
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
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLTitleElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) =>
          HTMLTitleElement -> Maybe val -> m ()
setText self val = liftIO (js_setText (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLTitleElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) =>
          HTMLTitleElement -> m (Maybe result)
getText self = liftIO (fromMaybeJSString <$> (js_getText (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getTextUnsafe ::
              (MonadIO m, HasCallStack, FromJSString result) =>
                HTMLTitleElement -> m result
getTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getText (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getTextUnchecked ::
                 (MonadIO m, FromJSString result) => HTMLTitleElement -> m result
getTextUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getText (self)))