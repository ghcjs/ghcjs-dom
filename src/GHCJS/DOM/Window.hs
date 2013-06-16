{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Window (BarInfo, BarInfoClass) where
 
data BarInfo = BarInfo
 
class BarInfoClass a
 
instance BarInfoClass BarInfo