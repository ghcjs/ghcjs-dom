{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.View (MediaQueryList, IsMediaQueryList) where
 
data MediaQueryList = MediaQueryList
 
class IsMediaQueryList a
 
instance IsMediaQueryList MediaQueryList