{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Stylesheets (MediaList, IsMediaList) where
 
data MediaList = MediaList
 
class IsMediaList a
 
instance IsMediaList MediaList