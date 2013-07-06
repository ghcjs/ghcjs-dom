{-# LANGUAGE ConstraintKinds #-}
module GHCJS.DOM.Types (
    module Graphics.UI.Gtk.WebKit.Types

-- AUTO GENERATION STARTS HERE
  , IsDOMAttr
  , IsBarInfo
  , IsBlob
  , IsCDATASection
  , IsCSSRule
  , IsCSSRuleList
  , IsCSSStyleDeclaration
  , IsCSSStyleSheet
  , IsCSSValue
  , IsCharacterData
  , IsComment
  , IsConsole
  , IsDOMApplicationCache
  , IsDOMImplementation
  , IsDOMMimeType
  , IsDOMMimeTypeArray
  , IsDOMPlugin
  , IsDOMPluginArray
  , IsDOMSelection
  , IsDOMSettableTokenList
  , IsDOMStringList
  , IsDOMTokenList
  , IsDOMWindow
  , IsDocument
  , IsDocumentFragment
  , IsDocumentType
  , IsElement
  , IsEntityReference
  , IsEvent
  , IsEventTarget
  , IsFile
  , IsFileList
  , IsGeolocation
  , IsHTMLAnchorElement
  , IsHTMLAppletElement
  , IsHTMLAreaElement
  , IsHTMLAudioElement
  , IsHTMLBRElement
  , IsHTMLBaseElement
  , IsHTMLBaseFontElement
  , IsHTMLBodyElement
  , IsHTMLButtonElement
  , IsHTMLCanvasElement
  , IsHTMLCollection
  , IsHTMLDListElement
  , IsHTMLDetailsElement
  , IsHTMLDirectoryElement
  , IsHTMLDivElement
  , IsHTMLDocument
  , IsHTMLElement
  , IsHTMLEmbedElement
  , IsHTMLFieldSetElement
  , IsHTMLFontElement
  , IsHTMLFormElement
  , IsHTMLFrameElement
  , IsHTMLFrameSetElement
  , IsHTMLHRElement
  , IsHTMLHeadElement
  , IsHTMLHeadingElement
  , IsHTMLHtmlElement
  , IsHTMLIFrameElement
  , IsHTMLImageElement
  , IsHTMLInputElement
  , IsHTMLKeygenElement
  , IsHTMLLIElement
  , IsHTMLLabelElement
  , IsHTMLLegendElement
  , IsHTMLLinkElement
  , IsHTMLMapElement
  , IsHTMLMarqueeElement
  , IsHTMLMediaElement
  , IsHTMLMenuElement
  , IsHTMLMetaElement
  , IsHTMLModElement
  , IsHTMLOListElement
  , IsHTMLObjectElement
  , IsHTMLOptGroupElement
  , IsHTMLOptionElement
  , IsHTMLOptionsCollection
  , IsHTMLParagraphElement
  , IsHTMLParamElement
  , IsHTMLPreElement
  , IsHTMLQuoteElement
  , IsHTMLScriptElement
  , IsHTMLSelectElement
  , IsHTMLStyleElement
  , IsHTMLTableCaptionElement
  , IsHTMLTableCellElement
  , IsHTMLTableColElement
  , IsHTMLTableElement
  , IsHTMLTableRowElement
  , IsHTMLTableSectionElement
  , IsHTMLTextAreaElement
  , IsHTMLTitleElement
  , IsHTMLUListElement
  , IsHTMLVideoElement
  , IsHistory
  , IsLocation
  , IsMediaError
  , IsMediaList
  , IsMediaQueryList
  , IsMemoryInfo
  , IsMessagePort
  , IsMouseEvent
  , IsNamedNodeMap
  , IsNavigator
  , IsNode
  , IsNodeFilter
  , IsNodeIterator
  , IsNodeList
  , IsProcessingInstruction
  , IsDOMRange
  , IsDOMScreen
  , IsStorage
  , IsStyleMedia
  , IsStyleSheet
  , IsStyleSheetList
  , IsText
  , IsTimeRanges
  , IsTreeWalker
  , IsUIEvent
  , IsValidityState
  , IsWebKitAnimation
  , IsWebKitAnimationList
  , IsWebKitNamedFlow
  , IsWebKitPoint
  , IsXPathExpression
  , IsXPathNSResolver
  , IsXPathResult
-- AUTO GENERATION ENDS HERE
  ) where


import Graphics.UI.Gtk.WebKit.Types


-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
type IsDOMAttr o = DOMAttrClass o

type IsBarInfo o = BarInfoClass o

type IsBlob o = BlobClass o

type IsCDATASection o = CDATASectionClass o

type IsCSSRule o = CSSRuleClass o

type IsCSSRuleList o = CSSRuleListClass o

type IsCSSStyleDeclaration o = CSSStyleDeclarationClass o

type IsCSSStyleSheet o = CSSStyleSheetClass o

type IsCSSValue o = CSSValueClass o

type IsCharacterData o = CharacterDataClass o

type IsComment o = CommentClass o

type IsConsole o = ConsoleClass o

type IsDOMApplicationCache o = DOMApplicationCacheClass o

type IsDOMImplementation o = DOMImplementationClass o

type IsDOMMimeType o = DOMMimeTypeClass o

type IsDOMMimeTypeArray o = DOMMimeTypeArrayClass o

type IsDOMPlugin o = DOMPluginClass o

type IsDOMPluginArray o = DOMPluginArrayClass o

type IsDOMSelection o = DOMSelectionClass o

type IsDOMSettableTokenList o = DOMSettableTokenListClass o

type IsDOMStringList o = DOMStringListClass o

type IsDOMTokenList o = DOMTokenListClass o

type IsDOMWindow o = DOMWindowClass o

type IsDocument o = DocumentClass o

type IsDocumentFragment o = DocumentFragmentClass o

type IsDocumentType o = DocumentTypeClass o

type IsElement o = ElementClass o

type IsEntityReference o = EntityReferenceClass o

type IsEvent o = EventClass o

type IsEventTarget o = EventTargetClass o

type IsFile o = FileClass o

type IsFileList o = FileListClass o

type IsGeolocation o = GeolocationClass o

type IsHTMLAnchorElement o = HTMLAnchorElementClass o

type IsHTMLAppletElement o = HTMLAppletElementClass o

type IsHTMLAreaElement o = HTMLAreaElementClass o

type IsHTMLAudioElement o = HTMLAudioElementClass o

type IsHTMLBRElement o = HTMLBRElementClass o

type IsHTMLBaseElement o = HTMLBaseElementClass o

type IsHTMLBaseFontElement o = HTMLBaseFontElementClass o

type IsHTMLBodyElement o = HTMLBodyElementClass o

type IsHTMLButtonElement o = HTMLButtonElementClass o

type IsHTMLCanvasElement o = HTMLCanvasElementClass o

type IsHTMLCollection o = HTMLCollectionClass o

type IsHTMLDListElement o = HTMLDListElementClass o

type IsHTMLDetailsElement o = HTMLDetailsElementClass o

type IsHTMLDirectoryElement o = HTMLDirectoryElementClass o

type IsHTMLDivElement o = HTMLDivElementClass o

type IsHTMLDocument o = HTMLDocumentClass o

type IsHTMLElement o = HTMLElementClass o

type IsHTMLEmbedElement o = HTMLEmbedElementClass o

type IsHTMLFieldSetElement o = HTMLFieldSetElementClass o

type IsHTMLFontElement o = HTMLFontElementClass o

type IsHTMLFormElement o = HTMLFormElementClass o

type IsHTMLFrameElement o = HTMLFrameElementClass o

type IsHTMLFrameSetElement o = HTMLFrameSetElementClass o

type IsHTMLHRElement o = HTMLHRElementClass o

type IsHTMLHeadElement o = HTMLHeadElementClass o

type IsHTMLHeadingElement o = HTMLHeadingElementClass o

type IsHTMLHtmlElement o = HTMLHtmlElementClass o

type IsHTMLIFrameElement o = HTMLIFrameElementClass o

type IsHTMLImageElement o = HTMLImageElementClass o

type IsHTMLInputElement o = HTMLInputElementClass o

type IsHTMLKeygenElement o = HTMLKeygenElementClass o

type IsHTMLLIElement o = HTMLLIElementClass o

type IsHTMLLabelElement o = HTMLLabelElementClass o

type IsHTMLLegendElement o = HTMLLegendElementClass o

type IsHTMLLinkElement o = HTMLLinkElementClass o

type IsHTMLMapElement o = HTMLMapElementClass o

type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o

type IsHTMLMediaElement o = HTMLMediaElementClass o

type IsHTMLMenuElement o = HTMLMenuElementClass o

type IsHTMLMetaElement o = HTMLMetaElementClass o

type IsHTMLModElement o = HTMLModElementClass o

type IsHTMLOListElement o = HTMLOListElementClass o

type IsHTMLObjectElement o = HTMLObjectElementClass o

type IsHTMLOptGroupElement o = HTMLOptGroupElementClass o

type IsHTMLOptionElement o = HTMLOptionElementClass o

type IsHTMLOptionsCollection o = HTMLOptionsCollectionClass o

type IsHTMLParagraphElement o = HTMLParagraphElementClass o

type IsHTMLParamElement o = HTMLParamElementClass o

type IsHTMLPreElement o = HTMLPreElementClass o

type IsHTMLQuoteElement o = HTMLQuoteElementClass o

type IsHTMLScriptElement o = HTMLScriptElementClass o

type IsHTMLSelectElement o = HTMLSelectElementClass o

type IsHTMLStyleElement o = HTMLStyleElementClass o

type IsHTMLTableCaptionElement o = HTMLTableCaptionElementClass o

type IsHTMLTableCellElement o = HTMLTableCellElementClass o

type IsHTMLTableColElement o = HTMLTableColElementClass o

type IsHTMLTableElement o = HTMLTableElementClass o

type IsHTMLTableRowElement o = HTMLTableRowElementClass o

type IsHTMLTableSectionElement o = HTMLTableSectionElementClass o

type IsHTMLTextAreaElement o = HTMLTextAreaElementClass o

type IsHTMLTitleElement o = HTMLTitleElementClass o

type IsHTMLUListElement o = HTMLUListElementClass o

type IsHTMLVideoElement o = HTMLVideoElementClass o

type IsHistory o = HistoryClass o

type IsLocation o = LocationClass o

type IsMediaError o = MediaErrorClass o

type IsMediaList o = MediaListClass o

type IsMediaQueryList o = MediaQueryListClass o

type IsMemoryInfo o = MemoryInfoClass o

type IsMessagePort o = MessagePortClass o

type IsMouseEvent o = MouseEventClass o

type IsNamedNodeMap o = NamedNodeMapClass o

type IsNavigator o = NavigatorClass o

type IsNode o = NodeClass o

type IsNodeFilter o = NodeFilterClass o

type IsNodeIterator o = NodeIteratorClass o

type IsNodeList o = NodeListClass o

type IsProcessingInstruction o = ProcessingInstructionClass o

type IsDOMRange o = DOMRangeClass o

type IsDOMScreen o = DOMScreenClass o

type IsStorage o = StorageClass o

type IsStyleMedia o = StyleMediaClass o

type IsStyleSheet o = StyleSheetClass o

type IsStyleSheetList o = StyleSheetListClass o

type IsText o = TextClass o

type IsTimeRanges o = TimeRangesClass o

type IsTreeWalker o = TreeWalkerClass o

type IsUIEvent o = UIEventClass o

type IsValidityState o = ValidityStateClass o

type IsWebKitAnimation o = WebKitAnimationClass o

type IsWebKitAnimationList o = WebKitAnimationListClass o

type IsWebKitNamedFlow o = WebKitNamedFlowClass o

type IsWebKitPoint o = WebKitPointClass o

type IsXPathExpression o = XPathExpressionClass o

type IsXPathNSResolver o = XPathNSResolverClass o

type IsXPathResult o = XPathResultClass o

