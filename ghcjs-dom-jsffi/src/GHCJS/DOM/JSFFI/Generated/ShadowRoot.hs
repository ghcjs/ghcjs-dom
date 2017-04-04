{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ShadowRoot
       (js_getMode, getMode, js_getHost, getHost, js_setInnerHTML,
        setInnerHTML, js_getInnerHTML, getInnerHTML, getInnerHTMLUnsafe,
        getInnerHTMLUnchecked, ShadowRoot(..), gTypeShadowRoot)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        ShadowRoot -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.mode Mozilla ShadowRoot.mode documentation> 
getMode :: (MonadIO m) => ShadowRoot -> m ShadowRootMode
getMode self = liftIO ((js_getMode self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        ShadowRoot -> IO Element

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.host Mozilla ShadowRoot.host documentation> 
getHost :: (MonadIO m) => ShadowRoot -> m Element
getHost self = liftIO (js_getHost self)
 
foreign import javascript unsafe "$1[\"innerHTML\"] = $2;"
        js_setInnerHTML :: ShadowRoot -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
setInnerHTML ::
             (MonadIO m, ToJSString val) => ShadowRoot -> Maybe val -> m ()
setInnerHTML self val
  = liftIO (js_setInnerHTML self (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        js_getInnerHTML :: ShadowRoot -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTML ::
             (MonadIO m, FromJSString result) => ShadowRoot -> m (Maybe result)
getInnerHTML self
  = liftIO (fromMaybeJSString <$> (js_getInnerHTML self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTMLUnsafe ::
                   (MonadIO m, HasCallStack, FromJSString result) =>
                     ShadowRoot -> m result
getInnerHTMLUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getInnerHTML self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ShadowRoot.innerHTML Mozilla ShadowRoot.innerHTML documentation> 
getInnerHTMLUnchecked ::
                      (MonadIO m, FromJSString result) => ShadowRoot -> m result
getInnerHTMLUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getInnerHTML self))