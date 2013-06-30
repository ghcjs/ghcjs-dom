{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Ranges (DOMRange, IsDOMRange) where
 
data DOMRange = DOMRange
 
class IsDOMRange a
 
instance IsDOMRange DOMRange