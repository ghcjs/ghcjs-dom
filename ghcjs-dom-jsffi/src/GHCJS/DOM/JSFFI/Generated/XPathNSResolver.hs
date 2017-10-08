{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathNSResolver
       (js_lookupNamespaceURI, lookupNamespaceURI, lookupNamespaceURI_,
        lookupNamespaceURIUnsafe, lookupNamespaceURIUnchecked,
        XPathNSResolver(..), gTypeXPathNSResolver)
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
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        js_lookupNamespaceURI ::
        XPathNSResolver -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadIO m, ToJSString prefix, FromJSString result) =>
                     XPathNSResolver -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupNamespaceURI self (toOptionalJSString prefix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI_ ::
                    (MonadIO m, ToJSString prefix) =>
                      XPathNSResolver -> Maybe prefix -> m ()
lookupNamespaceURI_ self prefix
  = liftIO
      (void (js_lookupNamespaceURI self (toOptionalJSString prefix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnsafe ::
                         (MonadIO m, ToJSString prefix, HasCallStack,
                          FromJSString result) =>
                           XPathNSResolver -> Maybe prefix -> m result
lookupNamespaceURIUnsafe self prefix
  = liftIO
      ((fromMaybeJSString <$>
          (js_lookupNamespaceURI self (toOptionalJSString prefix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURIUnchecked ::
                            (MonadIO m, ToJSString prefix, FromJSString result) =>
                              XPathNSResolver -> Maybe prefix -> m result
lookupNamespaceURIUnchecked self prefix
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_lookupNamespaceURI self (toOptionalJSString prefix)))