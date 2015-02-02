{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathEvaluator
       (ghcjs_dom_xpath_evaluator_new, xPathEvaluatorNew,
        ghcjs_dom_xpath_evaluator_create_expression,
        xPathEvaluatorCreateExpression,
        ghcjs_dom_xpath_evaluator_create_ns_resolver,
        xPathEvaluatorCreateNSResolver, ghcjs_dom_xpath_evaluator_evaluate,
        xPathEvaluatorEvaluate, XPathEvaluator, IsXPathEvaluator,
        castToXPathEvaluator, gTypeXPathEvaluator, toXPathEvaluator)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"XPathEvaluator\"]()"
        ghcjs_dom_xpath_evaluator_new :: IO (JSRef XPathEvaluator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
xPathEvaluatorNew :: IO XPathEvaluator
xPathEvaluatorNew
  = ghcjs_dom_xpath_evaluator_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        ghcjs_dom_xpath_evaluator_create_expression ::
        JSRef XPathEvaluator ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
xPathEvaluatorCreateExpression ::
                               (IsXPathEvaluator self, ToJSString expression,
                                IsXPathNSResolver resolver) =>
                                 self -> expression -> Maybe resolver -> IO (Maybe XPathExpression)
xPathEvaluatorCreateExpression self expression resolver
  = (ghcjs_dom_xpath_evaluator_create_expression
       (unXPathEvaluator (toXPathEvaluator self))
       (toJSString expression)
       (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        ghcjs_dom_xpath_evaluator_create_ns_resolver ::
        JSRef XPathEvaluator -> JSRef Node -> IO (JSRef XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
xPathEvaluatorCreateNSResolver ::
                               (IsXPathEvaluator self, IsNode nodeResolver) =>
                                 self -> Maybe nodeResolver -> IO (Maybe XPathNSResolver)
xPathEvaluatorCreateNSResolver self nodeResolver
  = (ghcjs_dom_xpath_evaluator_create_ns_resolver
       (unXPathEvaluator (toXPathEvaluator self))
       (maybe jsNull (unNode . toNode) nodeResolver))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_xpath_evaluator_evaluate ::
        JSRef XPathEvaluator ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
xPathEvaluatorEvaluate ::
                       (IsXPathEvaluator self, ToJSString expression, IsNode contextNode,
                        IsXPathNSResolver resolver, IsXPathResult inResult) =>
                         self ->
                           expression ->
                             Maybe contextNode ->
                               Maybe resolver -> Word -> Maybe inResult -> IO (Maybe XPathResult)
xPathEvaluatorEvaluate self expression contextNode resolver type'
  inResult
  = (ghcjs_dom_xpath_evaluator_evaluate
       (unXPathEvaluator (toXPathEvaluator self))
       (toJSString expression)
       (maybe jsNull (unNode . toNode) contextNode)
       (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver)
       type'
       (maybe jsNull (unXPathResult . toXPathResult) inResult))
      >>= fromJSRef
#else
module GHCJS.DOM.XPathEvaluator (
  ) where
#endif
