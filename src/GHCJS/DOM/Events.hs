{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Events (Event, IsEvent) where
 
data Event = Event
 
class IsEvent a
 
instance IsEvent Event