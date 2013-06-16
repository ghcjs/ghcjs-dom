{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.XPathExpression
       (webkit_dom_xpath_expression_evaluate, xPathExpressionEvaluate)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"evaluate\"]($2, $3, $4)"
        webkit_dom_xpath_expression_evaluate ::
        JSRef XPathExpression ->
          JSRef Node -> Word -> JSRef XPathResult -> IO (JSRef XPathResult)
#else 
webkit_dom_xpath_expression_evaluate ::
                                       JSRef XPathExpression ->
                                         JSRef Node ->
                                           Word -> JSRef XPathResult -> IO (JSRef XPathResult)
webkit_dom_xpath_expression_evaluate = undefined
#endif
 
xPathExpressionEvaluate ::
                        (XPathExpressionClass self, NodeClass contextNode,
                         XPathResultClass inResult) =>
                          self ->
                            Maybe contextNode ->
                              Word -> Maybe inResult -> IO (Maybe XPathResult)
xPathExpressionEvaluate self contextNode type' inResult
  = fmap XPathResult . maybeJSNull <$>
      (webkit_dom_xpath_expression_evaluate
         (unXPathExpression (toXPathExpression self))
         (maybe jsNull (unNode . toNode) contextNode)
         type'
         (maybe jsNull (unXPathResult . toXPathResult) inResult))