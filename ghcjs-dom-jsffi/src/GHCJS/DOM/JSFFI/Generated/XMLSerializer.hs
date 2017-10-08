{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XMLSerializer
       (js_newXMLSerializer, newXMLSerializer, js_serializeToString,
        serializeToString, serializeToString_, XMLSerializer(..),
        gTypeXMLSerializer)
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
 
foreign import javascript unsafe "new window[\"XMLSerializer\"]()"
        js_newXMLSerializer :: IO XMLSerializer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation> 
newXMLSerializer :: (MonadIO m) => m XMLSerializer
newXMLSerializer = liftIO (js_newXMLSerializer)
 
foreign import javascript unsafe "$1[\"serializeToString\"]($2)"
        js_serializeToString :: XMLSerializer -> Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString ::
                  (MonadIO m, IsNode node, FromJSString result) =>
                    XMLSerializer -> node -> m result
serializeToString self node
  = liftIO
      (fromJSString <$> (js_serializeToString self (toNode node)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString_ ::
                   (MonadIO m, IsNode node) => XMLSerializer -> node -> m ()
serializeToString_ self node
  = liftIO (void (js_serializeToString self (toNode node)))