{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Ranges (DOMRange, DOMRangeClass) where
 
data DOMRange = DOMRange
 
class DOMRangeClass a
 
instance DOMRangeClass DOMRange