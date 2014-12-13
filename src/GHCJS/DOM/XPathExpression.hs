{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathExpression
       (ghcjs_dom_xpath_expression_evaluate, xPathExpressionEvaluate,
        XPathExpression, IsXPathExpression, castToXPathExpression,
        gTypeXPathExpression, toXPathExpression)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"evaluate\"]($2, $3, $4)"
        ghcjs_dom_xpath_expression_evaluate ::
        JSRef XPathExpression ->
          JSRef Node -> Word -> JSRef XPathResult -> IO (JSRef XPathResult)
#else 
ghcjs_dom_xpath_expression_evaluate ::
                                      JSRef XPathExpression ->
                                        JSRef Node ->
                                          Word -> JSRef XPathResult -> IO (JSRef XPathResult)
ghcjs_dom_xpath_expression_evaluate = undefined
#endif
 
xPathExpressionEvaluate ::
                        (IsXPathExpression self, IsNode contextNode,
                         IsXPathResult inResult) =>
                          self ->
                            Maybe contextNode ->
                              Word -> Maybe inResult -> IO (Maybe XPathResult)
xPathExpressionEvaluate self contextNode type' inResult
  = fmap XPathResult . maybeJSNull <$>
      (ghcjs_dom_xpath_expression_evaluate
         (unXPathExpression (toXPathExpression self))
         (maybe jsNull (unNode . toNode) contextNode)
         type'
         (maybe jsNull (unXPathResult . toXPathResult) inResult))
#else
module GHCJS.DOM.XPathExpression (
  module Graphics.UI.Gtk.WebKit.DOM.XPathExpression
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XPathExpression
#endif
