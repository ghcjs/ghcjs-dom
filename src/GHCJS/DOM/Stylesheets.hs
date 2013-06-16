{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Stylesheets (MediaList, MediaListClass) where
 
data MediaList = MediaList
 
class MediaListClass a
 
instance MediaListClass MediaList