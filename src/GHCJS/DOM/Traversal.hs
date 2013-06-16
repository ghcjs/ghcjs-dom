{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Traversal (NodeFilter, NodeFilterClass) where
 
data NodeFilter = NodeFilter
 
class NodeFilterClass a
 
instance NodeFilterClass NodeFilter