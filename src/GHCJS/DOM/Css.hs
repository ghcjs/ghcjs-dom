{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Css (CSSRule, CSSRuleClass) where
 
data CSSRule = CSSRule
 
class CSSRuleClass a
 
instance CSSRuleClass CSSRule