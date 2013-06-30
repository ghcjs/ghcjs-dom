{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Core (DOMAttr, IsDOMAttr) where
 
data DOMAttr = DOMAttr
 
class (IsNode a) => IsDOMAttr a
 
instance IsDOMAttr DOMAttr
 
instance IsNode DOMAttr