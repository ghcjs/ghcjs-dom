{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Xpath (XPathExpression, XPathExpressionClass)
       where
 
data XPathExpression = XPathExpression
 
class XPathExpressionClass a
 
instance XPathExpressionClass XPathExpression