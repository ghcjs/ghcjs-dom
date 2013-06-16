{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Xml (XMLHttpRequest, XMLHttpRequestClass) where
 
data XMLHttpRequest = XMLHttpRequest
 
class XMLHttpRequestClass a
 
instance XMLHttpRequestClass XMLHttpRequest