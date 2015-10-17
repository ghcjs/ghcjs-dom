{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XPathEvaluator
       (js_newXPathEvaluator, newXPathEvaluator, js_createExpression,
        createExpression, js_createNSResolver, createNSResolver,
        js_evaluate, evaluate, XPathEvaluator, castToXPathEvaluator,
        gTypeXPathEvaluator)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"XPathEvaluator\"]()"
        js_newXPathEvaluator :: IO XPathEvaluator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
newXPathEvaluator :: (MonadIO m) => m XPathEvaluator
newXPathEvaluator = liftIO (js_newXPathEvaluator)
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        XPathEvaluator ->
          JSString ->
            Nullable XPathNSResolver -> IO (Nullable XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression ::
                 (MonadIO m, ToJSString expression) =>
                   XPathEvaluator ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftIO
      (nullableToMaybe <$>
         (js_createExpression (self) (toJSString expression)
            (maybeToNullable resolver)))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        XPathEvaluator -> Nullable Node -> IO (Nullable XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsNode nodeResolver) =>
                   XPathEvaluator -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftIO
      (nullableToMaybe <$>
         (js_createNSResolver (self)
            (maybeToNullable (fmap toNode nodeResolver))))
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        XPathEvaluator ->
          JSString ->
            Nullable Node ->
              Nullable XPathNSResolver ->
                Word -> Nullable XPathResult -> IO (Nullable XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate ::
         (MonadIO m, ToJSString expression, IsNode contextNode) =>
           XPathEvaluator ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftIO
      (nullableToMaybe <$>
         (js_evaluate (self) (toJSString expression)
            (maybeToNullable (fmap toNode contextNode))
            (maybeToNullable resolver)
            type'
            (maybeToNullable inResult)))