{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathEvaluator
       (js_newXPathEvaluator, newXPathEvaluator, js_createExpression,
        createExpression, createExpression_, js_createNSResolver,
        createNSResolver, createNSResolver_, js_evaluate, evaluate,
        evaluate_, XPathEvaluator(..), gTypeXPathEvaluator)
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
 
foreign import javascript unsafe "new window[\"XPathEvaluator\"]()"
        js_newXPathEvaluator :: IO XPathEvaluator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
newXPathEvaluator :: (MonadIO m) => m XPathEvaluator
newXPathEvaluator = liftIO (js_newXPathEvaluator)
 
foreign import javascript safe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        XPathEvaluator ->
          Optional JSString -> Optional XPathNSResolver -> IO XPathExpression

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression ::
                 (MonadIO m, ToJSString expression) =>
                   XPathEvaluator ->
                     Maybe expression -> Maybe XPathNSResolver -> m XPathExpression
createExpression self expression resolver
  = liftIO
      (js_createExpression self (toOptionalJSString expression)
         (maybeToOptional resolver))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression_ ::
                  (MonadIO m, ToJSString expression) =>
                    XPathEvaluator -> Maybe expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftIO
      (void
         (js_createExpression self (toOptionalJSString expression)
            (maybeToOptional resolver)))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        XPathEvaluator -> Optional Node -> IO XPathNSResolver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsNode nodeResolver) =>
                   XPathEvaluator -> Maybe nodeResolver -> m XPathNSResolver
createNSResolver self nodeResolver
  = liftIO
      (js_createNSResolver self
         (maybeToOptional (fmap toNode nodeResolver)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadIO m, IsNode nodeResolver) =>
                    XPathEvaluator -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftIO
      (void
         (js_createNSResolver self
            (maybeToOptional (fmap toNode nodeResolver))))
 
foreign import javascript safe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        XPathEvaluator ->
          Optional JSString ->
            Optional Node ->
              Optional XPathNSResolver ->
                Optional Word -> Optional XPathResult -> IO XPathResult

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate ::
         (MonadIO m, ToJSString expression, IsNode contextNode) =>
           XPathEvaluator ->
             Maybe expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Maybe Word -> Maybe XPathResult -> m XPathResult
evaluate self expression contextNode resolver type' inResult
  = liftIO
      (js_evaluate self (toOptionalJSString expression)
         (maybeToOptional (fmap toNode contextNode))
         (maybeToOptional resolver)
         (maybeToOptional type')
         (maybeToOptional inResult))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate_ ::
          (MonadIO m, ToJSString expression, IsNode contextNode) =>
            XPathEvaluator ->
              Maybe expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Maybe Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftIO
      (void
         (js_evaluate self (toOptionalJSString expression)
            (maybeToOptional (fmap toNode contextNode))
            (maybeToOptional resolver)
            (maybeToOptional type')
            (maybeToOptional inResult)))