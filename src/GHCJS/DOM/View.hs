{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.View (MediaQueryList, MediaQueryListClass) where
 
data MediaQueryList = MediaQueryList
 
class MediaQueryListClass a
 
instance MediaQueryListClass MediaQueryList