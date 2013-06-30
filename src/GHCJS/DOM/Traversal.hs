{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Traversal (NodeFilter, IsNodeFilter) where
 
data NodeFilter = NodeFilter
 
class IsNodeFilter a
 
instance IsNodeFilter NodeFilter