{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XPathExpression
       (js_evaluate, evaluate, XPathExpression, castToXPathExpression,
        gTypeXPathExpression)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"evaluate\"]($2, $3, $4)"
        js_evaluate ::
        JSRef XPathExpression ->
          JSRef Node -> Word -> JSRef XPathResult -> IO (JSRef XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate ::
         (MonadIO m, IsNode contextNode) =>
           XPathExpression ->
             Maybe contextNode ->
               Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self contextNode type' inResult
  = liftIO
      ((js_evaluate (unXPathExpression self)
          (maybe jsNull (unNode . toNode) contextNode)
          type'
          (maybe jsNull pToJSRef inResult))
         >>= fromJSRef)