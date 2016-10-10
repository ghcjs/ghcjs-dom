{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XPathExpression
       (js_evaluate, evaluate, evaluate_, evaluateUnchecked,
        XPathExpression, castToXPathExpression, gTypeXPathExpression)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"evaluate\"]($2, $3, $4)"
        js_evaluate ::
        XPathExpression ->
          Nullable Node ->
            Word -> Nullable XPathResult -> IO (Nullable XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate ::
         (MonadIO m, IsNode contextNode) =>
           XPathExpression ->
             Maybe contextNode ->
               Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self contextNode type' inResult
  = liftIO
      (nullableToMaybe <$>
         (js_evaluate (self) (maybeToNullable (fmap toNode contextNode))
            type'
            (maybeToNullable inResult)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate_ ::
          (MonadIO m, IsNode contextNode) =>
            XPathExpression ->
              Maybe contextNode -> Word -> Maybe XPathResult -> m ()
evaluate_ self contextNode type' inResult
  = liftIO
      (void
         (js_evaluate (self) (maybeToNullable (fmap toNode contextNode))
            type'
            (maybeToNullable inResult)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluateUnchecked ::
                  (MonadIO m, IsNode contextNode) =>
                    XPathExpression ->
                      Maybe contextNode -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnchecked self contextNode type' inResult
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_evaluate (self) (maybeToNullable (fmap toNode contextNode))
            type'
            (maybeToNullable inResult)))