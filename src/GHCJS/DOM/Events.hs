{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Events (Event, EventClass) where
 
data Event = Event
 
class EventClass a
 
instance EventClass Event