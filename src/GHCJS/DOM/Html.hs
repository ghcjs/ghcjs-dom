{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Html (Blob, IsBlob) where
 
data Blob = Blob
 
class IsBlob a
 
instance IsBlob Blob