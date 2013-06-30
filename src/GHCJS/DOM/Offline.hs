{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Offline
       (DOMApplicationCache, IsDOMApplicationCache) where
 
data DOMApplicationCache = DOMApplicationCache
 
class IsDOMApplicationCache a
 
instance IsDOMApplicationCache DOMApplicationCache