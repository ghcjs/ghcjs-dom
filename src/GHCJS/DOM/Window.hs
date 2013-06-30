{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Window (BarInfo, IsBarInfo) where
 
data BarInfo = BarInfo
 
class IsBarInfo a
 
instance IsBarInfo BarInfo