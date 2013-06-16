{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Offline
       (DOMApplicationCache, DOMApplicationCacheClass) where
 
data DOMApplicationCache = DOMApplicationCache
 
class DOMApplicationCacheClass a
 
instance DOMApplicationCacheClass DOMApplicationCache