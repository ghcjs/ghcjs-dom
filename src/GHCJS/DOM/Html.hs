{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Html (Blob, BlobClass) where
 
data Blob = Blob
 
class BlobClass a
 
instance BlobClass Blob