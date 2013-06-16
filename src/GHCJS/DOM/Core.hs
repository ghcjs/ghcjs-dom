{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Core (DOMAttr, DOMAttrClass) where
 
data DOMAttr = DOMAttr
 
class (NodeClass a) => DOMAttrClass a
 
instance DOMAttrClass DOMAttr
 
instance NodeClass DOMAttr