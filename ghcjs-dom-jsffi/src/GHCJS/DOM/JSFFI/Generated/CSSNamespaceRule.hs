{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSNamespaceRule
       (js_getNamespaceURI, getNamespaceURI, js_getPrefix, getPrefix,
        CSSNamespaceRule(..), gTypeCSSNamespaceRule)
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
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        js_getNamespaceURI :: CSSNamespaceRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule.namespaceURI Mozilla CSSNamespaceRule.namespaceURI documentation> 
getNamespaceURI ::
                (MonadIO m, FromJSString result) => CSSNamespaceRule -> m result
getNamespaceURI self
  = liftIO (fromJSString <$> (js_getNamespaceURI self))
 
foreign import javascript unsafe "$1[\"prefix\"]" js_getPrefix ::
        CSSNamespaceRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule.prefix Mozilla CSSNamespaceRule.prefix documentation> 
getPrefix ::
          (MonadIO m, FromJSString result) => CSSNamespaceRule -> m result
getPrefix self = liftIO (fromJSString <$> (js_getPrefix self))