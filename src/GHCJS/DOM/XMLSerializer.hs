{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLSerializer
       (js_newXMLSerializer, newXMLSerializer, js_serializeToString,
        serializeToString, XMLSerializer, castToXMLSerializer,
        gTypeXMLSerializer)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"XMLSerializer\"]()"
        js_newXMLSerializer :: IO (JSRef XMLSerializer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation> 
newXMLSerializer :: (MonadIO m) => m XMLSerializer
newXMLSerializer
  = liftIO (js_newXMLSerializer >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"serializeToString\"]($2)"
        js_serializeToString ::
        JSRef XMLSerializer -> JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString ::
                  (MonadIO m, IsNode node, FromJSString result) =>
                    XMLSerializer -> Maybe node -> m result
serializeToString self node
  = liftIO
      (fromJSString <$>
         (js_serializeToString (unXMLSerializer self)
            (maybe jsNull (unNode . toNode) node)))
#else
module GHCJS.DOM.XMLSerializer (
  ) where
#endif
