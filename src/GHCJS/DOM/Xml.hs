{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Xml (XMLHttpRequest, IsXMLHttpRequest) where
 
data XMLHttpRequest = XMLHttpRequest
 
class IsXMLHttpRequest a
 
instance IsXMLHttpRequest XMLHttpRequest