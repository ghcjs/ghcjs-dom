{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Xpath (XPathExpression, IsXPathExpression) where
 
data XPathExpression = XPathExpression
 
class IsXPathExpression a
 
instance IsXPathExpression XPathExpression