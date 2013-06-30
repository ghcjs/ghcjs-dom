{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Css (CSSRule, IsCSSRule) where
 
data CSSRule = CSSRule
 
class IsCSSRule a
 
instance IsCSSRule CSSRule