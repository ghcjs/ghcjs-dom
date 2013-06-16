{-# LANGUAGE CPP, JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.Types (
    maybeJSNull, propagateGError

  , GObject(GObject), GObjectClass, toGObject, unGObject, castToGObject, gTypeGObject
  , WebView(WebView), WebViewClass, toWebView, unWebView, castToWebView, gTypeWebView

-- AUTO GENERATION STARTS HERE
  , DOMAttr(DOMAttr), unDOMAttr, DOMAttrClass, toDOMAttr, castToDOMAttr, gTypeDOMAttr
  , BarInfo(BarInfo), unBarInfo, BarInfoClass, toBarInfo, castToBarInfo, gTypeBarInfo
  , Blob(Blob), unBlob, BlobClass, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, CDATASectionClass, toCDATASection, castToCDATASection, gTypeCDATASection
  , CSSRule(CSSRule), unCSSRule, CSSRuleClass, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, CSSRuleListClass, toCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, CSSStyleDeclarationClass, toCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, CSSStyleSheetClass, toCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSValue(CSSValue), unCSSValue, CSSValueClass, toCSSValue, castToCSSValue, gTypeCSSValue
  , CharacterData(CharacterData), unCharacterData, CharacterDataClass, toCharacterData, castToCharacterData, gTypeCharacterData
  , Comment(Comment), unComment, CommentClass, toComment, castToComment, gTypeComment
  , Console(Console), unConsole, ConsoleClass, toConsole, castToConsole, gTypeConsole
  , DOMApplicationCache(DOMApplicationCache), unDOMApplicationCache, DOMApplicationCacheClass, toDOMApplicationCache, castToDOMApplicationCache, gTypeDOMApplicationCache
  , DOMImplementation(DOMImplementation), unDOMImplementation, DOMImplementationClass, toDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMMimeType(DOMMimeType), unDOMMimeType, DOMMimeTypeClass, toDOMMimeType, castToDOMMimeType, gTypeDOMMimeType
  , DOMMimeTypeArray(DOMMimeTypeArray), unDOMMimeTypeArray, DOMMimeTypeArrayClass, toDOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray
  , DOMPlugin(DOMPlugin), unDOMPlugin, DOMPluginClass, toDOMPlugin, castToDOMPlugin, gTypeDOMPlugin
  , DOMPluginArray(DOMPluginArray), unDOMPluginArray, DOMPluginArrayClass, toDOMPluginArray, castToDOMPluginArray, gTypeDOMPluginArray
  , DOMSecurityPolicy(DOMSecurityPolicy), unDOMSecurityPolicy, DOMSecurityPolicyClass, toDOMSecurityPolicy, castToDOMSecurityPolicy, gTypeDOMSecurityPolicy
  , DOMSelection(DOMSelection), unDOMSelection, DOMSelectionClass, toDOMSelection, castToDOMSelection, gTypeDOMSelection
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, DOMSettableTokenListClass, toDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, DOMStringListClass, toDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMTokenList(DOMTokenList), unDOMTokenList, DOMTokenListClass, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DOMWindow(DOMWindow), unDOMWindow, DOMWindowClass, toDOMWindow, castToDOMWindow, gTypeDOMWindow
  , Document(Document), unDocument, DocumentClass, toDocument, castToDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, DocumentFragmentClass, toDocumentFragment, castToDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, DocumentTypeClass, toDocumentType, castToDocumentType, gTypeDocumentType
  , Element(Element), unElement, ElementClass, toElement, castToElement, gTypeElement
  , EntityReference(EntityReference), unEntityReference, EntityReferenceClass, toEntityReference, castToEntityReference, gTypeEntityReference
  , Event(Event), unEvent, EventClass, toEvent, castToEvent, gTypeEvent
  , EventTarget(EventTarget), unEventTarget, EventTargetClass, toEventTarget, castToEventTarget, gTypeEventTarget
  , File(File), unFile, FileClass, toFile, castToFile, gTypeFile
  , FileList(FileList), unFileList, FileListClass, toFileList, castToFileList, gTypeFileList
  , Geolocation(Geolocation), unGeolocation, GeolocationClass, toGeolocation, castToGeolocation, gTypeGeolocation
  , HTMLAnchorElement(HTMLAnchorElement), unHTMLAnchorElement, HTMLAnchorElementClass, toHTMLAnchorElement, castToHTMLAnchorElement, gTypeHTMLAnchorElement
  , HTMLAppletElement(HTMLAppletElement), unHTMLAppletElement, HTMLAppletElementClass, toHTMLAppletElement, castToHTMLAppletElement, gTypeHTMLAppletElement
  , HTMLAreaElement(HTMLAreaElement), unHTMLAreaElement, HTMLAreaElementClass, toHTMLAreaElement, castToHTMLAreaElement, gTypeHTMLAreaElement
  , HTMLAudioElement(HTMLAudioElement), unHTMLAudioElement, HTMLAudioElementClass, toHTMLAudioElement, castToHTMLAudioElement, gTypeHTMLAudioElement
  , HTMLBRElement(HTMLBRElement), unHTMLBRElement, HTMLBRElementClass, toHTMLBRElement, castToHTMLBRElement, gTypeHTMLBRElement
  , HTMLBaseElement(HTMLBaseElement), unHTMLBaseElement, HTMLBaseElementClass, toHTMLBaseElement, castToHTMLBaseElement, gTypeHTMLBaseElement
  , HTMLBaseFontElement(HTMLBaseFontElement), unHTMLBaseFontElement, HTMLBaseFontElementClass, toHTMLBaseFontElement, castToHTMLBaseFontElement, gTypeHTMLBaseFontElement
  , HTMLBodyElement(HTMLBodyElement), unHTMLBodyElement, HTMLBodyElementClass, toHTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement
  , HTMLButtonElement(HTMLButtonElement), unHTMLButtonElement, HTMLButtonElementClass, toHTMLButtonElement, castToHTMLButtonElement, gTypeHTMLButtonElement
  , HTMLCanvasElement(HTMLCanvasElement), unHTMLCanvasElement, HTMLCanvasElementClass, toHTMLCanvasElement, castToHTMLCanvasElement, gTypeHTMLCanvasElement
  , HTMLCollection(HTMLCollection), unHTMLCollection, HTMLCollectionClass, toHTMLCollection, castToHTMLCollection, gTypeHTMLCollection
  , HTMLDListElement(HTMLDListElement), unHTMLDListElement, HTMLDListElementClass, toHTMLDListElement, castToHTMLDListElement, gTypeHTMLDListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, HTMLDetailsElementClass, toHTMLDetailsElement, castToHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, HTMLDirectoryElementClass, toHTMLDirectoryElement, castToHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, HTMLDivElementClass, toHTMLDivElement, castToHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, HTMLDocumentClass, toHTMLDocument, castToHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, HTMLElementClass, toHTMLElement, castToHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, HTMLEmbedElementClass, toHTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, HTMLFieldSetElementClass, toHTMLFieldSetElement, castToHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, HTMLFontElementClass, toHTMLFontElement, castToHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormElement(HTMLFormElement), unHTMLFormElement, HTMLFormElementClass, toHTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement
  , HTMLFrameElement(HTMLFrameElement), unHTMLFrameElement, HTMLFrameElementClass, toHTMLFrameElement, castToHTMLFrameElement, gTypeHTMLFrameElement
  , HTMLFrameSetElement(HTMLFrameSetElement), unHTMLFrameSetElement, HTMLFrameSetElementClass, toHTMLFrameSetElement, castToHTMLFrameSetElement, gTypeHTMLFrameSetElement
  , HTMLHRElement(HTMLHRElement), unHTMLHRElement, HTMLHRElementClass, toHTMLHRElement, castToHTMLHRElement, gTypeHTMLHRElement
  , HTMLHeadElement(HTMLHeadElement), unHTMLHeadElement, HTMLHeadElementClass, toHTMLHeadElement, castToHTMLHeadElement, gTypeHTMLHeadElement
  , HTMLHeadingElement(HTMLHeadingElement), unHTMLHeadingElement, HTMLHeadingElementClass, toHTMLHeadingElement, castToHTMLHeadingElement, gTypeHTMLHeadingElement
  , HTMLHtmlElement(HTMLHtmlElement), unHTMLHtmlElement, HTMLHtmlElementClass, toHTMLHtmlElement, castToHTMLHtmlElement, gTypeHTMLHtmlElement
  , HTMLIFrameElement(HTMLIFrameElement), unHTMLIFrameElement, HTMLIFrameElementClass, toHTMLIFrameElement, castToHTMLIFrameElement, gTypeHTMLIFrameElement
  , HTMLImageElement(HTMLImageElement), unHTMLImageElement, HTMLImageElementClass, toHTMLImageElement, castToHTMLImageElement, gTypeHTMLImageElement
  , HTMLInputElement(HTMLInputElement), unHTMLInputElement, HTMLInputElementClass, toHTMLInputElement, castToHTMLInputElement, gTypeHTMLInputElement
  , HTMLKeygenElement(HTMLKeygenElement), unHTMLKeygenElement, HTMLKeygenElementClass, toHTMLKeygenElement, castToHTMLKeygenElement, gTypeHTMLKeygenElement
  , HTMLLIElement(HTMLLIElement), unHTMLLIElement, HTMLLIElementClass, toHTMLLIElement, castToHTMLLIElement, gTypeHTMLLIElement
  , HTMLLabelElement(HTMLLabelElement), unHTMLLabelElement, HTMLLabelElementClass, toHTMLLabelElement, castToHTMLLabelElement, gTypeHTMLLabelElement
  , HTMLLegendElement(HTMLLegendElement), unHTMLLegendElement, HTMLLegendElementClass, toHTMLLegendElement, castToHTMLLegendElement, gTypeHTMLLegendElement
  , HTMLLinkElement(HTMLLinkElement), unHTMLLinkElement, HTMLLinkElementClass, toHTMLLinkElement, castToHTMLLinkElement, gTypeHTMLLinkElement
  , HTMLMapElement(HTMLMapElement), unHTMLMapElement, HTMLMapElementClass, toHTMLMapElement, castToHTMLMapElement, gTypeHTMLMapElement
  , HTMLMarqueeElement(HTMLMarqueeElement), unHTMLMarqueeElement, HTMLMarqueeElementClass, toHTMLMarqueeElement, castToHTMLMarqueeElement, gTypeHTMLMarqueeElement
  , HTMLMediaElement(HTMLMediaElement), unHTMLMediaElement, HTMLMediaElementClass, toHTMLMediaElement, castToHTMLMediaElement, gTypeHTMLMediaElement
  , HTMLMenuElement(HTMLMenuElement), unHTMLMenuElement, HTMLMenuElementClass, toHTMLMenuElement, castToHTMLMenuElement, gTypeHTMLMenuElement
  , HTMLMetaElement(HTMLMetaElement), unHTMLMetaElement, HTMLMetaElementClass, toHTMLMetaElement, castToHTMLMetaElement, gTypeHTMLMetaElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, HTMLModElementClass, toHTMLModElement, castToHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, HTMLOListElementClass, toHTMLOListElement, castToHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, HTMLObjectElementClass, toHTMLObjectElement, castToHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, HTMLOptGroupElementClass, toHTMLOptGroupElement, castToHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, HTMLOptionElementClass, toHTMLOptionElement, castToHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, HTMLOptionsCollectionClass, toHTMLOptionsCollection, castToHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, HTMLParagraphElementClass, toHTMLParagraphElement, castToHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, HTMLParamElementClass, toHTMLParamElement, castToHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, HTMLPreElementClass, toHTMLPreElement, castToHTMLPreElement, gTypeHTMLPreElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, HTMLQuoteElementClass, toHTMLQuoteElement, castToHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, HTMLScriptElementClass, toHTMLScriptElement, castToHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, HTMLSelectElementClass, toHTMLSelectElement, castToHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, HTMLStyleElementClass, toHTMLStyleElement, castToHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, HTMLTableCaptionElementClass, toHTMLTableCaptionElement, castToHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, HTMLTableCellElementClass, toHTMLTableCellElement, castToHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, HTMLTableColElementClass, toHTMLTableColElement, castToHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, HTMLTableElementClass, toHTMLTableElement, castToHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, HTMLTableRowElementClass, toHTMLTableRowElement, castToHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, HTMLTableSectionElementClass, toHTMLTableSectionElement, castToHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, HTMLTextAreaElementClass, toHTMLTextAreaElement, castToHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, HTMLTitleElementClass, toHTMLTitleElement, castToHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, HTMLUListElementClass, toHTMLUListElement, castToHTMLUListElement, gTypeHTMLUListElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, HTMLVideoElementClass, toHTMLVideoElement, castToHTMLVideoElement, gTypeHTMLVideoElement
  , History(History), unHistory, HistoryClass, toHistory, castToHistory, gTypeHistory
  , Location(Location), unLocation, LocationClass, toLocation, castToLocation, gTypeLocation
  , MediaError(MediaError), unMediaError, MediaErrorClass, toMediaError, castToMediaError, gTypeMediaError
  , MediaList(MediaList), unMediaList, MediaListClass, toMediaList, castToMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, MediaQueryListClass, toMediaQueryList, castToMediaQueryList, gTypeMediaQueryList
  , MemoryInfo(MemoryInfo), unMemoryInfo, MemoryInfoClass, toMemoryInfo, castToMemoryInfo, gTypeMemoryInfo
  , MessagePort(MessagePort), unMessagePort, MessagePortClass, toMessagePort, castToMessagePort, gTypeMessagePort
  , MouseEvent(MouseEvent), unMouseEvent, MouseEventClass, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, NamedNodeMapClass, toNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, NavigatorClass, toNavigator, castToNavigator, gTypeNavigator
  , Node(Node), unNode, NodeClass, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, NodeFilterClass, toNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, NodeIteratorClass, toNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, NodeListClass, toNodeList, castToNodeList, gTypeNodeList
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, ProcessingInstructionClass, toProcessingInstruction, castToProcessingInstruction, gTypeProcessingInstruction
  , DOMRange(DOMRange), unDOMRange, DOMRangeClass, toDOMRange, castToDOMRange, gTypeDOMRange
  , DOMScreen(DOMScreen), unDOMScreen, DOMScreenClass, toDOMScreen, castToDOMScreen, gTypeDOMScreen
  , Storage(Storage), unStorage, StorageClass, toStorage, castToStorage, gTypeStorage
  , StorageInfo(StorageInfo), unStorageInfo, StorageInfoClass, toStorageInfo, castToStorageInfo, gTypeStorageInfo
  , StyleMedia(StyleMedia), unStyleMedia, StyleMediaClass, toStyleMedia, castToStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, StyleSheetClass, toStyleSheet, castToStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, StyleSheetListClass, toStyleSheetList, castToStyleSheetList, gTypeStyleSheetList
  , Text(Text), unText, TextClass, toText, castToText, gTypeText
  , TimeRanges(TimeRanges), unTimeRanges, TimeRangesClass, toTimeRanges, castToTimeRanges, gTypeTimeRanges
  , TreeWalker(TreeWalker), unTreeWalker, TreeWalkerClass, toTreeWalker, castToTreeWalker, gTypeTreeWalker
  , UIEvent(UIEvent), unUIEvent, UIEventClass, toUIEvent, castToUIEvent, gTypeUIEvent
  , ValidityState(ValidityState), unValidityState, ValidityStateClass, toValidityState, castToValidityState, gTypeValidityState
  , WebKitAnimation(WebKitAnimation), unWebKitAnimation, WebKitAnimationClass, toWebKitAnimation, castToWebKitAnimation, gTypeWebKitAnimation
  , WebKitAnimationList(WebKitAnimationList), unWebKitAnimationList, WebKitAnimationListClass, toWebKitAnimationList, castToWebKitAnimationList, gTypeWebKitAnimationList
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, WebKitNamedFlowClass, toWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitPoint(WebKitPoint), unWebKitPoint, WebKitPointClass, toWebKitPoint, castToWebKitPoint, gTypeWebKitPoint
  , XPathExpression(XPathExpression), unXPathExpression, XPathExpressionClass, toXPathExpression, castToXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, XPathNSResolverClass, toXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, XPathResultClass, toXPathResult, castToXPathResult, gTypeXPathResult
-- AUTO GENERATION ENDS HERE
  ) where


import GHCJS.Types (JSRef(..), castRef, isNull)

maybeJSNull :: JSRef a -> Maybe (JSRef a)
maybeJSNull r | isNull r = Nothing
maybeJSNull r = Just r

propagateGError = id

data GType = GType (JSRef GType)

#ifdef __GHCJS__
foreign import javascript unsafe "h$isInstanceOf $1 $2"
    typeInstanceIsA' :: JSRef a -> JSRef GType -> Bool
#else
typeInstanceIsA' :: JSRef a -> JSRef GType -> Bool
typeInstanceIsA' = error "typeInstanceIsA': only available in JavaScript"
#endif

typeInstanceIsA o (GType t) = typeInstanceIsA' o t

-- The usage of foreignPtrToPtr should be safe as the evaluation will only be
-- forced if the object is used afterwards
--
castTo :: (GObjectClass obj, GObjectClass obj') => GType -> String
                                                -> (obj -> obj')
castTo gtype objTypeName obj =
  case toGObject obj of
    gobj@(GObject objRef)
      | typeInstanceIsA objRef gtype
                  -> unsafeCastGObject gobj
      | otherwise -> error $ "Cannot cast object to " ++ objTypeName

data GObject = GObject (JSRef GObject)

unGObject (GObject o) = o

class GObjectClass o where
  -- | Safe upcast.
  toGObject         :: o -> GObject
  -- | Unchecked downcast.
  unsafeCastGObject :: GObject -> o

instance GObjectClass GObject where
  toGObject = id
  unsafeCastGObject = id

castToGObject :: GObjectClass obj => obj -> obj
castToGObject = id

#ifdef __GHCJS__
foreign import javascript unsafe "object" gTypeGObject' :: JSRef GType
#else
gTypeGObject' = error "gTypeGObject': only available in JavaScript"
#endif
gTypeGObject = GType gTypeGObject'

data WebView = WebView (JSRef WebView)

unWebView (WebView o) = o

class GObjectClass o => WebViewClass o
toWebView :: WebViewClass o => o -> WebView
toWebView = unsafeCastGObject . toGObject

instance WebViewClass WebView
instance GObjectClass WebView where
  toGObject = GObject . castRef . unWebView
  unsafeCastGObject = WebView . castRef . unGObject

castToWebView :: GObjectClass obj => obj -> WebView
castToWebView = castTo gTypeWebView "WebView"

#ifdef __GHCJS__
foreign import javascript unsafe "WebView" gTypeWebView' :: JSRef GType
#else
gTypeWebView' = error "gTypeWebView': only available in JavaScript"
#endif
gTypeWebView = GType gTypeWebView'

-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
data DOMAttr = DOMAttr (JSRef DOMAttr)

unDOMAttr (DOMAttr o) = o

class NodeClass o => DOMAttrClass o
toDOMAttr :: DOMAttrClass o => o -> DOMAttr
toDOMAttr = unsafeCastGObject . toGObject

instance DOMAttrClass DOMAttr
instance NodeClass DOMAttr
instance GObjectClass DOMAttr where
  toGObject = GObject . castRef . unDOMAttr
  unsafeCastGObject = DOMAttr . castRef . unGObject

castToDOMAttr :: GObjectClass obj => obj -> DOMAttr
castToDOMAttr = castTo gTypeDOMAttr "DOMAttr"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMAttr" gTypeDOMAttr' :: JSRef GType
#else
gTypeDOMAttr' = error "gTypeDOMAttr': only available in JavaScript"
#endif
gTypeDOMAttr = GType gTypeDOMAttr'


data BarInfo = BarInfo (JSRef BarInfo)

unBarInfo (BarInfo o) = o

class GObjectClass o => BarInfoClass o
toBarInfo :: BarInfoClass o => o -> BarInfo
toBarInfo = unsafeCastGObject . toGObject

instance BarInfoClass BarInfo
instance GObjectClass BarInfo where
  toGObject = GObject . castRef . unBarInfo
  unsafeCastGObject = BarInfo . castRef . unGObject

castToBarInfo :: GObjectClass obj => obj -> BarInfo
castToBarInfo = castTo gTypeBarInfo "BarInfo"

#ifdef __GHCJS__
foreign import javascript unsafe "window.BarInfo" gTypeBarInfo' :: JSRef GType
#else
gTypeBarInfo' = error "gTypeBarInfo': only available in JavaScript"
#endif
gTypeBarInfo = GType gTypeBarInfo'


data Blob = Blob (JSRef Blob)

unBlob (Blob o) = o

class GObjectClass o => BlobClass o
toBlob :: BlobClass o => o -> Blob
toBlob = unsafeCastGObject . toGObject

instance BlobClass Blob
instance GObjectClass Blob where
  toGObject = GObject . castRef . unBlob
  unsafeCastGObject = Blob . castRef . unGObject

castToBlob :: GObjectClass obj => obj -> Blob
castToBlob = castTo gTypeBlob "Blob"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Blob" gTypeBlob' :: JSRef GType
#else
gTypeBlob' = error "gTypeBlob': only available in JavaScript"
#endif
gTypeBlob = GType gTypeBlob'


data CDATASection = CDATASection (JSRef CDATASection)

unCDATASection (CDATASection o) = o

class TextClass o => CDATASectionClass o
toCDATASection :: CDATASectionClass o => o -> CDATASection
toCDATASection = unsafeCastGObject . toGObject

instance CDATASectionClass CDATASection
instance TextClass CDATASection
instance CharacterDataClass CDATASection
instance NodeClass CDATASection
instance GObjectClass CDATASection where
  toGObject = GObject . castRef . unCDATASection
  unsafeCastGObject = CDATASection . castRef . unGObject

castToCDATASection :: GObjectClass obj => obj -> CDATASection
castToCDATASection = castTo gTypeCDATASection "CDATASection"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CDATASection" gTypeCDATASection' :: JSRef GType
#else
gTypeCDATASection' = error "gTypeCDATASection': only available in JavaScript"
#endif
gTypeCDATASection = GType gTypeCDATASection'


data CSSRule = CSSRule (JSRef CSSRule)

unCSSRule (CSSRule o) = o

class GObjectClass o => CSSRuleClass o
toCSSRule :: CSSRuleClass o => o -> CSSRule
toCSSRule = unsafeCastGObject . toGObject

instance CSSRuleClass CSSRule
instance GObjectClass CSSRule where
  toGObject = GObject . castRef . unCSSRule
  unsafeCastGObject = CSSRule . castRef . unGObject

castToCSSRule :: GObjectClass obj => obj -> CSSRule
castToCSSRule = castTo gTypeCSSRule "CSSRule"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CSSRule" gTypeCSSRule' :: JSRef GType
#else
gTypeCSSRule' = error "gTypeCSSRule': only available in JavaScript"
#endif
gTypeCSSRule = GType gTypeCSSRule'


data CSSRuleList = CSSRuleList (JSRef CSSRuleList)

unCSSRuleList (CSSRuleList o) = o

class GObjectClass o => CSSRuleListClass o
toCSSRuleList :: CSSRuleListClass o => o -> CSSRuleList
toCSSRuleList = unsafeCastGObject . toGObject

instance CSSRuleListClass CSSRuleList
instance GObjectClass CSSRuleList where
  toGObject = GObject . castRef . unCSSRuleList
  unsafeCastGObject = CSSRuleList . castRef . unGObject

castToCSSRuleList :: GObjectClass obj => obj -> CSSRuleList
castToCSSRuleList = castTo gTypeCSSRuleList "CSSRuleList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CSSRuleList" gTypeCSSRuleList' :: JSRef GType
#else
gTypeCSSRuleList' = error "gTypeCSSRuleList': only available in JavaScript"
#endif
gTypeCSSRuleList = GType gTypeCSSRuleList'


data CSSStyleDeclaration = CSSStyleDeclaration (JSRef CSSStyleDeclaration)

unCSSStyleDeclaration (CSSStyleDeclaration o) = o

class GObjectClass o => CSSStyleDeclarationClass o
toCSSStyleDeclaration :: CSSStyleDeclarationClass o => o -> CSSStyleDeclaration
toCSSStyleDeclaration = unsafeCastGObject . toGObject

instance CSSStyleDeclarationClass CSSStyleDeclaration
instance GObjectClass CSSStyleDeclaration where
  toGObject = GObject . castRef . unCSSStyleDeclaration
  unsafeCastGObject = CSSStyleDeclaration . castRef . unGObject

castToCSSStyleDeclaration :: GObjectClass obj => obj -> CSSStyleDeclaration
castToCSSStyleDeclaration = castTo gTypeCSSStyleDeclaration "CSSStyleDeclaration"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CSSStyleDeclaration" gTypeCSSStyleDeclaration' :: JSRef GType
#else
gTypeCSSStyleDeclaration' = error "gTypeCSSStyleDeclaration': only available in JavaScript"
#endif
gTypeCSSStyleDeclaration = GType gTypeCSSStyleDeclaration'


data CSSStyleSheet = CSSStyleSheet (JSRef CSSStyleSheet)

unCSSStyleSheet (CSSStyleSheet o) = o

class StyleSheetClass o => CSSStyleSheetClass o
toCSSStyleSheet :: CSSStyleSheetClass o => o -> CSSStyleSheet
toCSSStyleSheet = unsafeCastGObject . toGObject

instance CSSStyleSheetClass CSSStyleSheet
instance StyleSheetClass CSSStyleSheet
instance GObjectClass CSSStyleSheet where
  toGObject = GObject . castRef . unCSSStyleSheet
  unsafeCastGObject = CSSStyleSheet . castRef . unGObject

castToCSSStyleSheet :: GObjectClass obj => obj -> CSSStyleSheet
castToCSSStyleSheet = castTo gTypeCSSStyleSheet "CSSStyleSheet"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CSSStyleSheet" gTypeCSSStyleSheet' :: JSRef GType
#else
gTypeCSSStyleSheet' = error "gTypeCSSStyleSheet': only available in JavaScript"
#endif
gTypeCSSStyleSheet = GType gTypeCSSStyleSheet'


data CSSValue = CSSValue (JSRef CSSValue)

unCSSValue (CSSValue o) = o

class GObjectClass o => CSSValueClass o
toCSSValue :: CSSValueClass o => o -> CSSValue
toCSSValue = unsafeCastGObject . toGObject

instance CSSValueClass CSSValue
instance GObjectClass CSSValue where
  toGObject = GObject . castRef . unCSSValue
  unsafeCastGObject = CSSValue . castRef . unGObject

castToCSSValue :: GObjectClass obj => obj -> CSSValue
castToCSSValue = castTo gTypeCSSValue "CSSValue"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CSSValue" gTypeCSSValue' :: JSRef GType
#else
gTypeCSSValue' = error "gTypeCSSValue': only available in JavaScript"
#endif
gTypeCSSValue = GType gTypeCSSValue'


data CharacterData = CharacterData (JSRef CharacterData)

unCharacterData (CharacterData o) = o

class NodeClass o => CharacterDataClass o
toCharacterData :: CharacterDataClass o => o -> CharacterData
toCharacterData = unsafeCastGObject . toGObject

instance CharacterDataClass CharacterData
instance NodeClass CharacterData
instance GObjectClass CharacterData where
  toGObject = GObject . castRef . unCharacterData
  unsafeCastGObject = CharacterData . castRef . unGObject

castToCharacterData :: GObjectClass obj => obj -> CharacterData
castToCharacterData = castTo gTypeCharacterData "CharacterData"

#ifdef __GHCJS__
foreign import javascript unsafe "window.CharacterData" gTypeCharacterData' :: JSRef GType
#else
gTypeCharacterData' = error "gTypeCharacterData': only available in JavaScript"
#endif
gTypeCharacterData = GType gTypeCharacterData'


data Comment = Comment (JSRef Comment)

unComment (Comment o) = o

class CharacterDataClass o => CommentClass o
toComment :: CommentClass o => o -> Comment
toComment = unsafeCastGObject . toGObject

instance CommentClass Comment
instance CharacterDataClass Comment
instance NodeClass Comment
instance GObjectClass Comment where
  toGObject = GObject . castRef . unComment
  unsafeCastGObject = Comment . castRef . unGObject

castToComment :: GObjectClass obj => obj -> Comment
castToComment = castTo gTypeComment "Comment"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Comment" gTypeComment' :: JSRef GType
#else
gTypeComment' = error "gTypeComment': only available in JavaScript"
#endif
gTypeComment = GType gTypeComment'


data Console = Console (JSRef Console)

unConsole (Console o) = o

class GObjectClass o => ConsoleClass o
toConsole :: ConsoleClass o => o -> Console
toConsole = unsafeCastGObject . toGObject

instance ConsoleClass Console
instance GObjectClass Console where
  toGObject = GObject . castRef . unConsole
  unsafeCastGObject = Console . castRef . unGObject

castToConsole :: GObjectClass obj => obj -> Console
castToConsole = castTo gTypeConsole "Console"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Console" gTypeConsole' :: JSRef GType
#else
gTypeConsole' = error "gTypeConsole': only available in JavaScript"
#endif
gTypeConsole = GType gTypeConsole'


data DOMApplicationCache = DOMApplicationCache (JSRef DOMApplicationCache)

unDOMApplicationCache (DOMApplicationCache o) = o

class GObjectClass o => DOMApplicationCacheClass o
toDOMApplicationCache :: DOMApplicationCacheClass o => o -> DOMApplicationCache
toDOMApplicationCache = unsafeCastGObject . toGObject

instance DOMApplicationCacheClass DOMApplicationCache
instance GObjectClass DOMApplicationCache where
  toGObject = GObject . castRef . unDOMApplicationCache
  unsafeCastGObject = DOMApplicationCache . castRef . unGObject

castToDOMApplicationCache :: GObjectClass obj => obj -> DOMApplicationCache
castToDOMApplicationCache = castTo gTypeDOMApplicationCache "DOMApplicationCache"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMApplicationCache" gTypeDOMApplicationCache' :: JSRef GType
#else
gTypeDOMApplicationCache' = error "gTypeDOMApplicationCache': only available in JavaScript"
#endif
gTypeDOMApplicationCache = GType gTypeDOMApplicationCache'


data DOMImplementation = DOMImplementation (JSRef DOMImplementation)

unDOMImplementation (DOMImplementation o) = o

class GObjectClass o => DOMImplementationClass o
toDOMImplementation :: DOMImplementationClass o => o -> DOMImplementation
toDOMImplementation = unsafeCastGObject . toGObject

instance DOMImplementationClass DOMImplementation
instance GObjectClass DOMImplementation where
  toGObject = GObject . castRef . unDOMImplementation
  unsafeCastGObject = DOMImplementation . castRef . unGObject

castToDOMImplementation :: GObjectClass obj => obj -> DOMImplementation
castToDOMImplementation = castTo gTypeDOMImplementation "DOMImplementation"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMImplementation" gTypeDOMImplementation' :: JSRef GType
#else
gTypeDOMImplementation' = error "gTypeDOMImplementation': only available in JavaScript"
#endif
gTypeDOMImplementation = GType gTypeDOMImplementation'


data DOMMimeType = DOMMimeType (JSRef DOMMimeType)

unDOMMimeType (DOMMimeType o) = o

class GObjectClass o => DOMMimeTypeClass o
toDOMMimeType :: DOMMimeTypeClass o => o -> DOMMimeType
toDOMMimeType = unsafeCastGObject . toGObject

instance DOMMimeTypeClass DOMMimeType
instance GObjectClass DOMMimeType where
  toGObject = GObject . castRef . unDOMMimeType
  unsafeCastGObject = DOMMimeType . castRef . unGObject

castToDOMMimeType :: GObjectClass obj => obj -> DOMMimeType
castToDOMMimeType = castTo gTypeDOMMimeType "DOMMimeType"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMMimeType" gTypeDOMMimeType' :: JSRef GType
#else
gTypeDOMMimeType' = error "gTypeDOMMimeType': only available in JavaScript"
#endif
gTypeDOMMimeType = GType gTypeDOMMimeType'


data DOMMimeTypeArray = DOMMimeTypeArray (JSRef DOMMimeTypeArray)

unDOMMimeTypeArray (DOMMimeTypeArray o) = o

class GObjectClass o => DOMMimeTypeArrayClass o
toDOMMimeTypeArray :: DOMMimeTypeArrayClass o => o -> DOMMimeTypeArray
toDOMMimeTypeArray = unsafeCastGObject . toGObject

instance DOMMimeTypeArrayClass DOMMimeTypeArray
instance GObjectClass DOMMimeTypeArray where
  toGObject = GObject . castRef . unDOMMimeTypeArray
  unsafeCastGObject = DOMMimeTypeArray . castRef . unGObject

castToDOMMimeTypeArray :: GObjectClass obj => obj -> DOMMimeTypeArray
castToDOMMimeTypeArray = castTo gTypeDOMMimeTypeArray "DOMMimeTypeArray"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMMimeTypeArray" gTypeDOMMimeTypeArray' :: JSRef GType
#else
gTypeDOMMimeTypeArray' = error "gTypeDOMMimeTypeArray': only available in JavaScript"
#endif
gTypeDOMMimeTypeArray = GType gTypeDOMMimeTypeArray'


data DOMPlugin = DOMPlugin (JSRef DOMPlugin)

unDOMPlugin (DOMPlugin o) = o

class GObjectClass o => DOMPluginClass o
toDOMPlugin :: DOMPluginClass o => o -> DOMPlugin
toDOMPlugin = unsafeCastGObject . toGObject

instance DOMPluginClass DOMPlugin
instance GObjectClass DOMPlugin where
  toGObject = GObject . castRef . unDOMPlugin
  unsafeCastGObject = DOMPlugin . castRef . unGObject

castToDOMPlugin :: GObjectClass obj => obj -> DOMPlugin
castToDOMPlugin = castTo gTypeDOMPlugin "DOMPlugin"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMPlugin" gTypeDOMPlugin' :: JSRef GType
#else
gTypeDOMPlugin' = error "gTypeDOMPlugin': only available in JavaScript"
#endif
gTypeDOMPlugin = GType gTypeDOMPlugin'


data DOMPluginArray = DOMPluginArray (JSRef DOMPluginArray)

unDOMPluginArray (DOMPluginArray o) = o

class GObjectClass o => DOMPluginArrayClass o
toDOMPluginArray :: DOMPluginArrayClass o => o -> DOMPluginArray
toDOMPluginArray = unsafeCastGObject . toGObject

instance DOMPluginArrayClass DOMPluginArray
instance GObjectClass DOMPluginArray where
  toGObject = GObject . castRef . unDOMPluginArray
  unsafeCastGObject = DOMPluginArray . castRef . unGObject

castToDOMPluginArray :: GObjectClass obj => obj -> DOMPluginArray
castToDOMPluginArray = castTo gTypeDOMPluginArray "DOMPluginArray"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMPluginArray" gTypeDOMPluginArray' :: JSRef GType
#else
gTypeDOMPluginArray' = error "gTypeDOMPluginArray': only available in JavaScript"
#endif
gTypeDOMPluginArray = GType gTypeDOMPluginArray'


data DOMSecurityPolicy = DOMSecurityPolicy (JSRef DOMSecurityPolicy)

unDOMSecurityPolicy (DOMSecurityPolicy o) = o

class GObjectClass o => DOMSecurityPolicyClass o
toDOMSecurityPolicy :: DOMSecurityPolicyClass o => o -> DOMSecurityPolicy
toDOMSecurityPolicy = unsafeCastGObject . toGObject

instance DOMSecurityPolicyClass DOMSecurityPolicy
instance GObjectClass DOMSecurityPolicy where
  toGObject = GObject . castRef . unDOMSecurityPolicy
  unsafeCastGObject = DOMSecurityPolicy . castRef . unGObject

castToDOMSecurityPolicy :: GObjectClass obj => obj -> DOMSecurityPolicy
castToDOMSecurityPolicy = castTo gTypeDOMSecurityPolicy "DOMSecurityPolicy"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMSecurityPolicy" gTypeDOMSecurityPolicy' :: JSRef GType
#else
gTypeDOMSecurityPolicy' = error "gTypeDOMSecurityPolicy': only available in JavaScript"
#endif
gTypeDOMSecurityPolicy = GType gTypeDOMSecurityPolicy'


data DOMSelection = DOMSelection (JSRef DOMSelection)

unDOMSelection (DOMSelection o) = o

class GObjectClass o => DOMSelectionClass o
toDOMSelection :: DOMSelectionClass o => o -> DOMSelection
toDOMSelection = unsafeCastGObject . toGObject

instance DOMSelectionClass DOMSelection
instance GObjectClass DOMSelection where
  toGObject = GObject . castRef . unDOMSelection
  unsafeCastGObject = DOMSelection . castRef . unGObject

castToDOMSelection :: GObjectClass obj => obj -> DOMSelection
castToDOMSelection = castTo gTypeDOMSelection "DOMSelection"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMSelection" gTypeDOMSelection' :: JSRef GType
#else
gTypeDOMSelection' = error "gTypeDOMSelection': only available in JavaScript"
#endif
gTypeDOMSelection = GType gTypeDOMSelection'


data DOMSettableTokenList = DOMSettableTokenList (JSRef DOMSettableTokenList)

unDOMSettableTokenList (DOMSettableTokenList o) = o

class DOMTokenListClass o => DOMSettableTokenListClass o
toDOMSettableTokenList :: DOMSettableTokenListClass o => o -> DOMSettableTokenList
toDOMSettableTokenList = unsafeCastGObject . toGObject

instance DOMSettableTokenListClass DOMSettableTokenList
instance DOMTokenListClass DOMSettableTokenList
instance GObjectClass DOMSettableTokenList where
  toGObject = GObject . castRef . unDOMSettableTokenList
  unsafeCastGObject = DOMSettableTokenList . castRef . unGObject

castToDOMSettableTokenList :: GObjectClass obj => obj -> DOMSettableTokenList
castToDOMSettableTokenList = castTo gTypeDOMSettableTokenList "DOMSettableTokenList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMSettableTokenList" gTypeDOMSettableTokenList' :: JSRef GType
#else
gTypeDOMSettableTokenList' = error "gTypeDOMSettableTokenList': only available in JavaScript"
#endif
gTypeDOMSettableTokenList = GType gTypeDOMSettableTokenList'


data DOMStringList = DOMStringList (JSRef DOMStringList)

unDOMStringList (DOMStringList o) = o

class GObjectClass o => DOMStringListClass o
toDOMStringList :: DOMStringListClass o => o -> DOMStringList
toDOMStringList = unsafeCastGObject . toGObject

instance DOMStringListClass DOMStringList
instance GObjectClass DOMStringList where
  toGObject = GObject . castRef . unDOMStringList
  unsafeCastGObject = DOMStringList . castRef . unGObject

castToDOMStringList :: GObjectClass obj => obj -> DOMStringList
castToDOMStringList = castTo gTypeDOMStringList "DOMStringList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMStringList" gTypeDOMStringList' :: JSRef GType
#else
gTypeDOMStringList' = error "gTypeDOMStringList': only available in JavaScript"
#endif
gTypeDOMStringList = GType gTypeDOMStringList'


data DOMTokenList = DOMTokenList (JSRef DOMTokenList)

unDOMTokenList (DOMTokenList o) = o

class GObjectClass o => DOMTokenListClass o
toDOMTokenList :: DOMTokenListClass o => o -> DOMTokenList
toDOMTokenList = unsafeCastGObject . toGObject

instance DOMTokenListClass DOMTokenList
instance GObjectClass DOMTokenList where
  toGObject = GObject . castRef . unDOMTokenList
  unsafeCastGObject = DOMTokenList . castRef . unGObject

castToDOMTokenList :: GObjectClass obj => obj -> DOMTokenList
castToDOMTokenList = castTo gTypeDOMTokenList "DOMTokenList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMTokenList" gTypeDOMTokenList' :: JSRef GType
#else
gTypeDOMTokenList' = error "gTypeDOMTokenList': only available in JavaScript"
#endif
gTypeDOMTokenList = GType gTypeDOMTokenList'


data DOMWindow = DOMWindow (JSRef DOMWindow)

unDOMWindow (DOMWindow o) = o

class GObjectClass o => DOMWindowClass o
toDOMWindow :: DOMWindowClass o => o -> DOMWindow
toDOMWindow = unsafeCastGObject . toGObject

instance DOMWindowClass DOMWindow
instance GObjectClass DOMWindow where
  toGObject = GObject . castRef . unDOMWindow
  unsafeCastGObject = DOMWindow . castRef . unGObject

castToDOMWindow :: GObjectClass obj => obj -> DOMWindow
castToDOMWindow = castTo gTypeDOMWindow "DOMWindow"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMWindow" gTypeDOMWindow' :: JSRef GType
#else
gTypeDOMWindow' = error "gTypeDOMWindow': only available in JavaScript"
#endif
gTypeDOMWindow = GType gTypeDOMWindow'


data Document = Document (JSRef Document)

unDocument (Document o) = o

class NodeClass o => DocumentClass o
toDocument :: DocumentClass o => o -> Document
toDocument = unsafeCastGObject . toGObject

instance DocumentClass Document
instance NodeClass Document
instance GObjectClass Document where
  toGObject = GObject . castRef . unDocument
  unsafeCastGObject = Document . castRef . unGObject

castToDocument :: GObjectClass obj => obj -> Document
castToDocument = castTo gTypeDocument "Document"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Document" gTypeDocument' :: JSRef GType
#else
gTypeDocument' = error "gTypeDocument': only available in JavaScript"
#endif
gTypeDocument = GType gTypeDocument'


data DocumentFragment = DocumentFragment (JSRef DocumentFragment)

unDocumentFragment (DocumentFragment o) = o

class NodeClass o => DocumentFragmentClass o
toDocumentFragment :: DocumentFragmentClass o => o -> DocumentFragment
toDocumentFragment = unsafeCastGObject . toGObject

instance DocumentFragmentClass DocumentFragment
instance NodeClass DocumentFragment
instance GObjectClass DocumentFragment where
  toGObject = GObject . castRef . unDocumentFragment
  unsafeCastGObject = DocumentFragment . castRef . unGObject

castToDocumentFragment :: GObjectClass obj => obj -> DocumentFragment
castToDocumentFragment = castTo gTypeDocumentFragment "DocumentFragment"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DocumentFragment" gTypeDocumentFragment' :: JSRef GType
#else
gTypeDocumentFragment' = error "gTypeDocumentFragment': only available in JavaScript"
#endif
gTypeDocumentFragment = GType gTypeDocumentFragment'


data DocumentType = DocumentType (JSRef DocumentType)

unDocumentType (DocumentType o) = o

class NodeClass o => DocumentTypeClass o
toDocumentType :: DocumentTypeClass o => o -> DocumentType
toDocumentType = unsafeCastGObject . toGObject

instance DocumentTypeClass DocumentType
instance NodeClass DocumentType
instance GObjectClass DocumentType where
  toGObject = GObject . castRef . unDocumentType
  unsafeCastGObject = DocumentType . castRef . unGObject

castToDocumentType :: GObjectClass obj => obj -> DocumentType
castToDocumentType = castTo gTypeDocumentType "DocumentType"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DocumentType" gTypeDocumentType' :: JSRef GType
#else
gTypeDocumentType' = error "gTypeDocumentType': only available in JavaScript"
#endif
gTypeDocumentType = GType gTypeDocumentType'


data Element = Element (JSRef Element)

unElement (Element o) = o

class NodeClass o => ElementClass o
toElement :: ElementClass o => o -> Element
toElement = unsafeCastGObject . toGObject

instance ElementClass Element
instance NodeClass Element
instance GObjectClass Element where
  toGObject = GObject . castRef . unElement
  unsafeCastGObject = Element . castRef . unGObject

castToElement :: GObjectClass obj => obj -> Element
castToElement = castTo gTypeElement "Element"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Element" gTypeElement' :: JSRef GType
#else
gTypeElement' = error "gTypeElement': only available in JavaScript"
#endif
gTypeElement = GType gTypeElement'


data EntityReference = EntityReference (JSRef EntityReference)

unEntityReference (EntityReference o) = o

class NodeClass o => EntityReferenceClass o
toEntityReference :: EntityReferenceClass o => o -> EntityReference
toEntityReference = unsafeCastGObject . toGObject

instance EntityReferenceClass EntityReference
instance NodeClass EntityReference
instance GObjectClass EntityReference where
  toGObject = GObject . castRef . unEntityReference
  unsafeCastGObject = EntityReference . castRef . unGObject

castToEntityReference :: GObjectClass obj => obj -> EntityReference
castToEntityReference = castTo gTypeEntityReference "EntityReference"

#ifdef __GHCJS__
foreign import javascript unsafe "window.EntityReference" gTypeEntityReference' :: JSRef GType
#else
gTypeEntityReference' = error "gTypeEntityReference': only available in JavaScript"
#endif
gTypeEntityReference = GType gTypeEntityReference'


data Event = Event (JSRef Event)

unEvent (Event o) = o

class GObjectClass o => EventClass o
toEvent :: EventClass o => o -> Event
toEvent = unsafeCastGObject . toGObject

instance EventClass Event
instance GObjectClass Event where
  toGObject = GObject . castRef . unEvent
  unsafeCastGObject = Event . castRef . unGObject

castToEvent :: GObjectClass obj => obj -> Event
castToEvent = castTo gTypeEvent "Event"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Event" gTypeEvent' :: JSRef GType
#else
gTypeEvent' = error "gTypeEvent': only available in JavaScript"
#endif
gTypeEvent = GType gTypeEvent'


data EventTarget = EventTarget (JSRef EventTarget)

unEventTarget (EventTarget o) = o

class GObjectClass o => EventTargetClass o
toEventTarget :: EventTargetClass o => o -> EventTarget
toEventTarget = unsafeCastGObject . toGObject

instance EventTargetClass EventTarget
instance GObjectClass EventTarget where
  toGObject = GObject . castRef . unEventTarget
  unsafeCastGObject = EventTarget . castRef . unGObject

castToEventTarget :: GObjectClass obj => obj -> EventTarget
castToEventTarget = castTo gTypeEventTarget "EventTarget"

#ifdef __GHCJS__
foreign import javascript unsafe "window.EventTarget" gTypeEventTarget' :: JSRef GType
#else
gTypeEventTarget' = error "gTypeEventTarget': only available in JavaScript"
#endif
gTypeEventTarget = GType gTypeEventTarget'


data File = File (JSRef File)

unFile (File o) = o

class BlobClass o => FileClass o
toFile :: FileClass o => o -> File
toFile = unsafeCastGObject . toGObject

instance FileClass File
instance BlobClass File
instance GObjectClass File where
  toGObject = GObject . castRef . unFile
  unsafeCastGObject = File . castRef . unGObject

castToFile :: GObjectClass obj => obj -> File
castToFile = castTo gTypeFile "File"

#ifdef __GHCJS__
foreign import javascript unsafe "window.File" gTypeFile' :: JSRef GType
#else
gTypeFile' = error "gTypeFile': only available in JavaScript"
#endif
gTypeFile = GType gTypeFile'


data FileList = FileList (JSRef FileList)

unFileList (FileList o) = o

class GObjectClass o => FileListClass o
toFileList :: FileListClass o => o -> FileList
toFileList = unsafeCastGObject . toGObject

instance FileListClass FileList
instance GObjectClass FileList where
  toGObject = GObject . castRef . unFileList
  unsafeCastGObject = FileList . castRef . unGObject

castToFileList :: GObjectClass obj => obj -> FileList
castToFileList = castTo gTypeFileList "FileList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.FileList" gTypeFileList' :: JSRef GType
#else
gTypeFileList' = error "gTypeFileList': only available in JavaScript"
#endif
gTypeFileList = GType gTypeFileList'


data Geolocation = Geolocation (JSRef Geolocation)

unGeolocation (Geolocation o) = o

class GObjectClass o => GeolocationClass o
toGeolocation :: GeolocationClass o => o -> Geolocation
toGeolocation = unsafeCastGObject . toGObject

instance GeolocationClass Geolocation
instance GObjectClass Geolocation where
  toGObject = GObject . castRef . unGeolocation
  unsafeCastGObject = Geolocation . castRef . unGObject

castToGeolocation :: GObjectClass obj => obj -> Geolocation
castToGeolocation = castTo gTypeGeolocation "Geolocation"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Geolocation" gTypeGeolocation' :: JSRef GType
#else
gTypeGeolocation' = error "gTypeGeolocation': only available in JavaScript"
#endif
gTypeGeolocation = GType gTypeGeolocation'


data HTMLAnchorElement = HTMLAnchorElement (JSRef HTMLAnchorElement)

unHTMLAnchorElement (HTMLAnchorElement o) = o

class HTMLElementClass o => HTMLAnchorElementClass o
toHTMLAnchorElement :: HTMLAnchorElementClass o => o -> HTMLAnchorElement
toHTMLAnchorElement = unsafeCastGObject . toGObject

instance HTMLAnchorElementClass HTMLAnchorElement
instance HTMLElementClass HTMLAnchorElement
instance ElementClass HTMLAnchorElement
instance NodeClass HTMLAnchorElement
instance GObjectClass HTMLAnchorElement where
  toGObject = GObject . castRef . unHTMLAnchorElement
  unsafeCastGObject = HTMLAnchorElement . castRef . unGObject

castToHTMLAnchorElement :: GObjectClass obj => obj -> HTMLAnchorElement
castToHTMLAnchorElement = castTo gTypeHTMLAnchorElement "HTMLAnchorElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLAnchorElement" gTypeHTMLAnchorElement' :: JSRef GType
#else
gTypeHTMLAnchorElement' = error "gTypeHTMLAnchorElement': only available in JavaScript"
#endif
gTypeHTMLAnchorElement = GType gTypeHTMLAnchorElement'


data HTMLAppletElement = HTMLAppletElement (JSRef HTMLAppletElement)

unHTMLAppletElement (HTMLAppletElement o) = o

class HTMLElementClass o => HTMLAppletElementClass o
toHTMLAppletElement :: HTMLAppletElementClass o => o -> HTMLAppletElement
toHTMLAppletElement = unsafeCastGObject . toGObject

instance HTMLAppletElementClass HTMLAppletElement
instance HTMLElementClass HTMLAppletElement
instance ElementClass HTMLAppletElement
instance NodeClass HTMLAppletElement
instance GObjectClass HTMLAppletElement where
  toGObject = GObject . castRef . unHTMLAppletElement
  unsafeCastGObject = HTMLAppletElement . castRef . unGObject

castToHTMLAppletElement :: GObjectClass obj => obj -> HTMLAppletElement
castToHTMLAppletElement = castTo gTypeHTMLAppletElement "HTMLAppletElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLAppletElement" gTypeHTMLAppletElement' :: JSRef GType
#else
gTypeHTMLAppletElement' = error "gTypeHTMLAppletElement': only available in JavaScript"
#endif
gTypeHTMLAppletElement = GType gTypeHTMLAppletElement'


data HTMLAreaElement = HTMLAreaElement (JSRef HTMLAreaElement)

unHTMLAreaElement (HTMLAreaElement o) = o

class HTMLElementClass o => HTMLAreaElementClass o
toHTMLAreaElement :: HTMLAreaElementClass o => o -> HTMLAreaElement
toHTMLAreaElement = unsafeCastGObject . toGObject

instance HTMLAreaElementClass HTMLAreaElement
instance HTMLElementClass HTMLAreaElement
instance ElementClass HTMLAreaElement
instance NodeClass HTMLAreaElement
instance GObjectClass HTMLAreaElement where
  toGObject = GObject . castRef . unHTMLAreaElement
  unsafeCastGObject = HTMLAreaElement . castRef . unGObject

castToHTMLAreaElement :: GObjectClass obj => obj -> HTMLAreaElement
castToHTMLAreaElement = castTo gTypeHTMLAreaElement "HTMLAreaElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLAreaElement" gTypeHTMLAreaElement' :: JSRef GType
#else
gTypeHTMLAreaElement' = error "gTypeHTMLAreaElement': only available in JavaScript"
#endif
gTypeHTMLAreaElement = GType gTypeHTMLAreaElement'


data HTMLAudioElement = HTMLAudioElement (JSRef HTMLAudioElement)

unHTMLAudioElement (HTMLAudioElement o) = o

class HTMLMediaElementClass o => HTMLAudioElementClass o
toHTMLAudioElement :: HTMLAudioElementClass o => o -> HTMLAudioElement
toHTMLAudioElement = unsafeCastGObject . toGObject

instance HTMLAudioElementClass HTMLAudioElement
instance HTMLMediaElementClass HTMLAudioElement
instance HTMLElementClass HTMLAudioElement
instance ElementClass HTMLAudioElement
instance NodeClass HTMLAudioElement
instance GObjectClass HTMLAudioElement where
  toGObject = GObject . castRef . unHTMLAudioElement
  unsafeCastGObject = HTMLAudioElement . castRef . unGObject

castToHTMLAudioElement :: GObjectClass obj => obj -> HTMLAudioElement
castToHTMLAudioElement = castTo gTypeHTMLAudioElement "HTMLAudioElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLAudioElement" gTypeHTMLAudioElement' :: JSRef GType
#else
gTypeHTMLAudioElement' = error "gTypeHTMLAudioElement': only available in JavaScript"
#endif
gTypeHTMLAudioElement = GType gTypeHTMLAudioElement'


data HTMLBRElement = HTMLBRElement (JSRef HTMLBRElement)

unHTMLBRElement (HTMLBRElement o) = o

class HTMLElementClass o => HTMLBRElementClass o
toHTMLBRElement :: HTMLBRElementClass o => o -> HTMLBRElement
toHTMLBRElement = unsafeCastGObject . toGObject

instance HTMLBRElementClass HTMLBRElement
instance HTMLElementClass HTMLBRElement
instance ElementClass HTMLBRElement
instance NodeClass HTMLBRElement
instance GObjectClass HTMLBRElement where
  toGObject = GObject . castRef . unHTMLBRElement
  unsafeCastGObject = HTMLBRElement . castRef . unGObject

castToHTMLBRElement :: GObjectClass obj => obj -> HTMLBRElement
castToHTMLBRElement = castTo gTypeHTMLBRElement "HTMLBRElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLBRElement" gTypeHTMLBRElement' :: JSRef GType
#else
gTypeHTMLBRElement' = error "gTypeHTMLBRElement': only available in JavaScript"
#endif
gTypeHTMLBRElement = GType gTypeHTMLBRElement'


data HTMLBaseElement = HTMLBaseElement (JSRef HTMLBaseElement)

unHTMLBaseElement (HTMLBaseElement o) = o

class HTMLElementClass o => HTMLBaseElementClass o
toHTMLBaseElement :: HTMLBaseElementClass o => o -> HTMLBaseElement
toHTMLBaseElement = unsafeCastGObject . toGObject

instance HTMLBaseElementClass HTMLBaseElement
instance HTMLElementClass HTMLBaseElement
instance ElementClass HTMLBaseElement
instance NodeClass HTMLBaseElement
instance GObjectClass HTMLBaseElement where
  toGObject = GObject . castRef . unHTMLBaseElement
  unsafeCastGObject = HTMLBaseElement . castRef . unGObject

castToHTMLBaseElement :: GObjectClass obj => obj -> HTMLBaseElement
castToHTMLBaseElement = castTo gTypeHTMLBaseElement "HTMLBaseElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLBaseElement" gTypeHTMLBaseElement' :: JSRef GType
#else
gTypeHTMLBaseElement' = error "gTypeHTMLBaseElement': only available in JavaScript"
#endif
gTypeHTMLBaseElement = GType gTypeHTMLBaseElement'


data HTMLBaseFontElement = HTMLBaseFontElement (JSRef HTMLBaseFontElement)

unHTMLBaseFontElement (HTMLBaseFontElement o) = o

class HTMLElementClass o => HTMLBaseFontElementClass o
toHTMLBaseFontElement :: HTMLBaseFontElementClass o => o -> HTMLBaseFontElement
toHTMLBaseFontElement = unsafeCastGObject . toGObject

instance HTMLBaseFontElementClass HTMLBaseFontElement
instance HTMLElementClass HTMLBaseFontElement
instance ElementClass HTMLBaseFontElement
instance NodeClass HTMLBaseFontElement
instance GObjectClass HTMLBaseFontElement where
  toGObject = GObject . castRef . unHTMLBaseFontElement
  unsafeCastGObject = HTMLBaseFontElement . castRef . unGObject

castToHTMLBaseFontElement :: GObjectClass obj => obj -> HTMLBaseFontElement
castToHTMLBaseFontElement = castTo gTypeHTMLBaseFontElement "HTMLBaseFontElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLBaseFontElement" gTypeHTMLBaseFontElement' :: JSRef GType
#else
gTypeHTMLBaseFontElement' = error "gTypeHTMLBaseFontElement': only available in JavaScript"
#endif
gTypeHTMLBaseFontElement = GType gTypeHTMLBaseFontElement'


data HTMLBodyElement = HTMLBodyElement (JSRef HTMLBodyElement)

unHTMLBodyElement (HTMLBodyElement o) = o

class HTMLElementClass o => HTMLBodyElementClass o
toHTMLBodyElement :: HTMLBodyElementClass o => o -> HTMLBodyElement
toHTMLBodyElement = unsafeCastGObject . toGObject

instance HTMLBodyElementClass HTMLBodyElement
instance HTMLElementClass HTMLBodyElement
instance ElementClass HTMLBodyElement
instance NodeClass HTMLBodyElement
instance GObjectClass HTMLBodyElement where
  toGObject = GObject . castRef . unHTMLBodyElement
  unsafeCastGObject = HTMLBodyElement . castRef . unGObject

castToHTMLBodyElement :: GObjectClass obj => obj -> HTMLBodyElement
castToHTMLBodyElement = castTo gTypeHTMLBodyElement "HTMLBodyElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLBodyElement" gTypeHTMLBodyElement' :: JSRef GType
#else
gTypeHTMLBodyElement' = error "gTypeHTMLBodyElement': only available in JavaScript"
#endif
gTypeHTMLBodyElement = GType gTypeHTMLBodyElement'


data HTMLButtonElement = HTMLButtonElement (JSRef HTMLButtonElement)

unHTMLButtonElement (HTMLButtonElement o) = o

class HTMLElementClass o => HTMLButtonElementClass o
toHTMLButtonElement :: HTMLButtonElementClass o => o -> HTMLButtonElement
toHTMLButtonElement = unsafeCastGObject . toGObject

instance HTMLButtonElementClass HTMLButtonElement
instance HTMLElementClass HTMLButtonElement
instance ElementClass HTMLButtonElement
instance NodeClass HTMLButtonElement
instance GObjectClass HTMLButtonElement where
  toGObject = GObject . castRef . unHTMLButtonElement
  unsafeCastGObject = HTMLButtonElement . castRef . unGObject

castToHTMLButtonElement :: GObjectClass obj => obj -> HTMLButtonElement
castToHTMLButtonElement = castTo gTypeHTMLButtonElement "HTMLButtonElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLButtonElement" gTypeHTMLButtonElement' :: JSRef GType
#else
gTypeHTMLButtonElement' = error "gTypeHTMLButtonElement': only available in JavaScript"
#endif
gTypeHTMLButtonElement = GType gTypeHTMLButtonElement'


data HTMLCanvasElement = HTMLCanvasElement (JSRef HTMLCanvasElement)

unHTMLCanvasElement (HTMLCanvasElement o) = o

class HTMLElementClass o => HTMLCanvasElementClass o
toHTMLCanvasElement :: HTMLCanvasElementClass o => o -> HTMLCanvasElement
toHTMLCanvasElement = unsafeCastGObject . toGObject

instance HTMLCanvasElementClass HTMLCanvasElement
instance HTMLElementClass HTMLCanvasElement
instance ElementClass HTMLCanvasElement
instance NodeClass HTMLCanvasElement
instance GObjectClass HTMLCanvasElement where
  toGObject = GObject . castRef . unHTMLCanvasElement
  unsafeCastGObject = HTMLCanvasElement . castRef . unGObject

castToHTMLCanvasElement :: GObjectClass obj => obj -> HTMLCanvasElement
castToHTMLCanvasElement = castTo gTypeHTMLCanvasElement "HTMLCanvasElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLCanvasElement" gTypeHTMLCanvasElement' :: JSRef GType
#else
gTypeHTMLCanvasElement' = error "gTypeHTMLCanvasElement': only available in JavaScript"
#endif
gTypeHTMLCanvasElement = GType gTypeHTMLCanvasElement'


data HTMLCollection = HTMLCollection (JSRef HTMLCollection)

unHTMLCollection (HTMLCollection o) = o

class GObjectClass o => HTMLCollectionClass o
toHTMLCollection :: HTMLCollectionClass o => o -> HTMLCollection
toHTMLCollection = unsafeCastGObject . toGObject

instance HTMLCollectionClass HTMLCollection
instance GObjectClass HTMLCollection where
  toGObject = GObject . castRef . unHTMLCollection
  unsafeCastGObject = HTMLCollection . castRef . unGObject

castToHTMLCollection :: GObjectClass obj => obj -> HTMLCollection
castToHTMLCollection = castTo gTypeHTMLCollection "HTMLCollection"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLCollection" gTypeHTMLCollection' :: JSRef GType
#else
gTypeHTMLCollection' = error "gTypeHTMLCollection': only available in JavaScript"
#endif
gTypeHTMLCollection = GType gTypeHTMLCollection'


data HTMLDListElement = HTMLDListElement (JSRef HTMLDListElement)

unHTMLDListElement (HTMLDListElement o) = o

class HTMLElementClass o => HTMLDListElementClass o
toHTMLDListElement :: HTMLDListElementClass o => o -> HTMLDListElement
toHTMLDListElement = unsafeCastGObject . toGObject

instance HTMLDListElementClass HTMLDListElement
instance HTMLElementClass HTMLDListElement
instance ElementClass HTMLDListElement
instance NodeClass HTMLDListElement
instance GObjectClass HTMLDListElement where
  toGObject = GObject . castRef . unHTMLDListElement
  unsafeCastGObject = HTMLDListElement . castRef . unGObject

castToHTMLDListElement :: GObjectClass obj => obj -> HTMLDListElement
castToHTMLDListElement = castTo gTypeHTMLDListElement "HTMLDListElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLDListElement" gTypeHTMLDListElement' :: JSRef GType
#else
gTypeHTMLDListElement' = error "gTypeHTMLDListElement': only available in JavaScript"
#endif
gTypeHTMLDListElement = GType gTypeHTMLDListElement'


data HTMLDetailsElement = HTMLDetailsElement (JSRef HTMLDetailsElement)

unHTMLDetailsElement (HTMLDetailsElement o) = o

class HTMLElementClass o => HTMLDetailsElementClass o
toHTMLDetailsElement :: HTMLDetailsElementClass o => o -> HTMLDetailsElement
toHTMLDetailsElement = unsafeCastGObject . toGObject

instance HTMLDetailsElementClass HTMLDetailsElement
instance HTMLElementClass HTMLDetailsElement
instance ElementClass HTMLDetailsElement
instance NodeClass HTMLDetailsElement
instance GObjectClass HTMLDetailsElement where
  toGObject = GObject . castRef . unHTMLDetailsElement
  unsafeCastGObject = HTMLDetailsElement . castRef . unGObject

castToHTMLDetailsElement :: GObjectClass obj => obj -> HTMLDetailsElement
castToHTMLDetailsElement = castTo gTypeHTMLDetailsElement "HTMLDetailsElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLDetailsElement" gTypeHTMLDetailsElement' :: JSRef GType
#else
gTypeHTMLDetailsElement' = error "gTypeHTMLDetailsElement': only available in JavaScript"
#endif
gTypeHTMLDetailsElement = GType gTypeHTMLDetailsElement'


data HTMLDirectoryElement = HTMLDirectoryElement (JSRef HTMLDirectoryElement)

unHTMLDirectoryElement (HTMLDirectoryElement o) = o

class HTMLElementClass o => HTMLDirectoryElementClass o
toHTMLDirectoryElement :: HTMLDirectoryElementClass o => o -> HTMLDirectoryElement
toHTMLDirectoryElement = unsafeCastGObject . toGObject

instance HTMLDirectoryElementClass HTMLDirectoryElement
instance HTMLElementClass HTMLDirectoryElement
instance ElementClass HTMLDirectoryElement
instance NodeClass HTMLDirectoryElement
instance GObjectClass HTMLDirectoryElement where
  toGObject = GObject . castRef . unHTMLDirectoryElement
  unsafeCastGObject = HTMLDirectoryElement . castRef . unGObject

castToHTMLDirectoryElement :: GObjectClass obj => obj -> HTMLDirectoryElement
castToHTMLDirectoryElement = castTo gTypeHTMLDirectoryElement "HTMLDirectoryElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLDirectoryElement" gTypeHTMLDirectoryElement' :: JSRef GType
#else
gTypeHTMLDirectoryElement' = error "gTypeHTMLDirectoryElement': only available in JavaScript"
#endif
gTypeHTMLDirectoryElement = GType gTypeHTMLDirectoryElement'


data HTMLDivElement = HTMLDivElement (JSRef HTMLDivElement)

unHTMLDivElement (HTMLDivElement o) = o

class HTMLElementClass o => HTMLDivElementClass o
toHTMLDivElement :: HTMLDivElementClass o => o -> HTMLDivElement
toHTMLDivElement = unsafeCastGObject . toGObject

instance HTMLDivElementClass HTMLDivElement
instance HTMLElementClass HTMLDivElement
instance ElementClass HTMLDivElement
instance NodeClass HTMLDivElement
instance GObjectClass HTMLDivElement where
  toGObject = GObject . castRef . unHTMLDivElement
  unsafeCastGObject = HTMLDivElement . castRef . unGObject

castToHTMLDivElement :: GObjectClass obj => obj -> HTMLDivElement
castToHTMLDivElement = castTo gTypeHTMLDivElement "HTMLDivElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLDivElement" gTypeHTMLDivElement' :: JSRef GType
#else
gTypeHTMLDivElement' = error "gTypeHTMLDivElement': only available in JavaScript"
#endif
gTypeHTMLDivElement = GType gTypeHTMLDivElement'


data HTMLDocument = HTMLDocument (JSRef HTMLDocument)

unHTMLDocument (HTMLDocument o) = o

class DocumentClass o => HTMLDocumentClass o
toHTMLDocument :: HTMLDocumentClass o => o -> HTMLDocument
toHTMLDocument = unsafeCastGObject . toGObject

instance HTMLDocumentClass HTMLDocument
instance DocumentClass HTMLDocument
instance NodeClass HTMLDocument
instance GObjectClass HTMLDocument where
  toGObject = GObject . castRef . unHTMLDocument
  unsafeCastGObject = HTMLDocument . castRef . unGObject

castToHTMLDocument :: GObjectClass obj => obj -> HTMLDocument
castToHTMLDocument = castTo gTypeHTMLDocument "HTMLDocument"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLDocument" gTypeHTMLDocument' :: JSRef GType
#else
gTypeHTMLDocument' = error "gTypeHTMLDocument': only available in JavaScript"
#endif
gTypeHTMLDocument = GType gTypeHTMLDocument'


data HTMLElement = HTMLElement (JSRef HTMLElement)

unHTMLElement (HTMLElement o) = o

class ElementClass o => HTMLElementClass o
toHTMLElement :: HTMLElementClass o => o -> HTMLElement
toHTMLElement = unsafeCastGObject . toGObject

instance HTMLElementClass HTMLElement
instance ElementClass HTMLElement
instance NodeClass HTMLElement
instance GObjectClass HTMLElement where
  toGObject = GObject . castRef . unHTMLElement
  unsafeCastGObject = HTMLElement . castRef . unGObject

castToHTMLElement :: GObjectClass obj => obj -> HTMLElement
castToHTMLElement = castTo gTypeHTMLElement "HTMLElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLElement" gTypeHTMLElement' :: JSRef GType
#else
gTypeHTMLElement' = error "gTypeHTMLElement': only available in JavaScript"
#endif
gTypeHTMLElement = GType gTypeHTMLElement'


data HTMLEmbedElement = HTMLEmbedElement (JSRef HTMLEmbedElement)

unHTMLEmbedElement (HTMLEmbedElement o) = o

class HTMLElementClass o => HTMLEmbedElementClass o
toHTMLEmbedElement :: HTMLEmbedElementClass o => o -> HTMLEmbedElement
toHTMLEmbedElement = unsafeCastGObject . toGObject

instance HTMLEmbedElementClass HTMLEmbedElement
instance HTMLElementClass HTMLEmbedElement
instance ElementClass HTMLEmbedElement
instance NodeClass HTMLEmbedElement
instance GObjectClass HTMLEmbedElement where
  toGObject = GObject . castRef . unHTMLEmbedElement
  unsafeCastGObject = HTMLEmbedElement . castRef . unGObject

castToHTMLEmbedElement :: GObjectClass obj => obj -> HTMLEmbedElement
castToHTMLEmbedElement = castTo gTypeHTMLEmbedElement "HTMLEmbedElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLEmbedElement" gTypeHTMLEmbedElement' :: JSRef GType
#else
gTypeHTMLEmbedElement' = error "gTypeHTMLEmbedElement': only available in JavaScript"
#endif
gTypeHTMLEmbedElement = GType gTypeHTMLEmbedElement'


data HTMLFieldSetElement = HTMLFieldSetElement (JSRef HTMLFieldSetElement)

unHTMLFieldSetElement (HTMLFieldSetElement o) = o

class HTMLElementClass o => HTMLFieldSetElementClass o
toHTMLFieldSetElement :: HTMLFieldSetElementClass o => o -> HTMLFieldSetElement
toHTMLFieldSetElement = unsafeCastGObject . toGObject

instance HTMLFieldSetElementClass HTMLFieldSetElement
instance HTMLElementClass HTMLFieldSetElement
instance ElementClass HTMLFieldSetElement
instance NodeClass HTMLFieldSetElement
instance GObjectClass HTMLFieldSetElement where
  toGObject = GObject . castRef . unHTMLFieldSetElement
  unsafeCastGObject = HTMLFieldSetElement . castRef . unGObject

castToHTMLFieldSetElement :: GObjectClass obj => obj -> HTMLFieldSetElement
castToHTMLFieldSetElement = castTo gTypeHTMLFieldSetElement "HTMLFieldSetElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLFieldSetElement" gTypeHTMLFieldSetElement' :: JSRef GType
#else
gTypeHTMLFieldSetElement' = error "gTypeHTMLFieldSetElement': only available in JavaScript"
#endif
gTypeHTMLFieldSetElement = GType gTypeHTMLFieldSetElement'


data HTMLFontElement = HTMLFontElement (JSRef HTMLFontElement)

unHTMLFontElement (HTMLFontElement o) = o

class HTMLElementClass o => HTMLFontElementClass o
toHTMLFontElement :: HTMLFontElementClass o => o -> HTMLFontElement
toHTMLFontElement = unsafeCastGObject . toGObject

instance HTMLFontElementClass HTMLFontElement
instance HTMLElementClass HTMLFontElement
instance ElementClass HTMLFontElement
instance NodeClass HTMLFontElement
instance GObjectClass HTMLFontElement where
  toGObject = GObject . castRef . unHTMLFontElement
  unsafeCastGObject = HTMLFontElement . castRef . unGObject

castToHTMLFontElement :: GObjectClass obj => obj -> HTMLFontElement
castToHTMLFontElement = castTo gTypeHTMLFontElement "HTMLFontElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLFontElement" gTypeHTMLFontElement' :: JSRef GType
#else
gTypeHTMLFontElement' = error "gTypeHTMLFontElement': only available in JavaScript"
#endif
gTypeHTMLFontElement = GType gTypeHTMLFontElement'


data HTMLFormElement = HTMLFormElement (JSRef HTMLFormElement)

unHTMLFormElement (HTMLFormElement o) = o

class HTMLElementClass o => HTMLFormElementClass o
toHTMLFormElement :: HTMLFormElementClass o => o -> HTMLFormElement
toHTMLFormElement = unsafeCastGObject . toGObject

instance HTMLFormElementClass HTMLFormElement
instance HTMLElementClass HTMLFormElement
instance ElementClass HTMLFormElement
instance NodeClass HTMLFormElement
instance GObjectClass HTMLFormElement where
  toGObject = GObject . castRef . unHTMLFormElement
  unsafeCastGObject = HTMLFormElement . castRef . unGObject

castToHTMLFormElement :: GObjectClass obj => obj -> HTMLFormElement
castToHTMLFormElement = castTo gTypeHTMLFormElement "HTMLFormElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLFormElement" gTypeHTMLFormElement' :: JSRef GType
#else
gTypeHTMLFormElement' = error "gTypeHTMLFormElement': only available in JavaScript"
#endif
gTypeHTMLFormElement = GType gTypeHTMLFormElement'


data HTMLFrameElement = HTMLFrameElement (JSRef HTMLFrameElement)

unHTMLFrameElement (HTMLFrameElement o) = o

class HTMLElementClass o => HTMLFrameElementClass o
toHTMLFrameElement :: HTMLFrameElementClass o => o -> HTMLFrameElement
toHTMLFrameElement = unsafeCastGObject . toGObject

instance HTMLFrameElementClass HTMLFrameElement
instance HTMLElementClass HTMLFrameElement
instance ElementClass HTMLFrameElement
instance NodeClass HTMLFrameElement
instance GObjectClass HTMLFrameElement where
  toGObject = GObject . castRef . unHTMLFrameElement
  unsafeCastGObject = HTMLFrameElement . castRef . unGObject

castToHTMLFrameElement :: GObjectClass obj => obj -> HTMLFrameElement
castToHTMLFrameElement = castTo gTypeHTMLFrameElement "HTMLFrameElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLFrameElement" gTypeHTMLFrameElement' :: JSRef GType
#else
gTypeHTMLFrameElement' = error "gTypeHTMLFrameElement': only available in JavaScript"
#endif
gTypeHTMLFrameElement = GType gTypeHTMLFrameElement'


data HTMLFrameSetElement = HTMLFrameSetElement (JSRef HTMLFrameSetElement)

unHTMLFrameSetElement (HTMLFrameSetElement o) = o

class HTMLElementClass o => HTMLFrameSetElementClass o
toHTMLFrameSetElement :: HTMLFrameSetElementClass o => o -> HTMLFrameSetElement
toHTMLFrameSetElement = unsafeCastGObject . toGObject

instance HTMLFrameSetElementClass HTMLFrameSetElement
instance HTMLElementClass HTMLFrameSetElement
instance ElementClass HTMLFrameSetElement
instance NodeClass HTMLFrameSetElement
instance GObjectClass HTMLFrameSetElement where
  toGObject = GObject . castRef . unHTMLFrameSetElement
  unsafeCastGObject = HTMLFrameSetElement . castRef . unGObject

castToHTMLFrameSetElement :: GObjectClass obj => obj -> HTMLFrameSetElement
castToHTMLFrameSetElement = castTo gTypeHTMLFrameSetElement "HTMLFrameSetElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLFrameSetElement" gTypeHTMLFrameSetElement' :: JSRef GType
#else
gTypeHTMLFrameSetElement' = error "gTypeHTMLFrameSetElement': only available in JavaScript"
#endif
gTypeHTMLFrameSetElement = GType gTypeHTMLFrameSetElement'


data HTMLHRElement = HTMLHRElement (JSRef HTMLHRElement)

unHTMLHRElement (HTMLHRElement o) = o

class HTMLElementClass o => HTMLHRElementClass o
toHTMLHRElement :: HTMLHRElementClass o => o -> HTMLHRElement
toHTMLHRElement = unsafeCastGObject . toGObject

instance HTMLHRElementClass HTMLHRElement
instance HTMLElementClass HTMLHRElement
instance ElementClass HTMLHRElement
instance NodeClass HTMLHRElement
instance GObjectClass HTMLHRElement where
  toGObject = GObject . castRef . unHTMLHRElement
  unsafeCastGObject = HTMLHRElement . castRef . unGObject

castToHTMLHRElement :: GObjectClass obj => obj -> HTMLHRElement
castToHTMLHRElement = castTo gTypeHTMLHRElement "HTMLHRElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLHRElement" gTypeHTMLHRElement' :: JSRef GType
#else
gTypeHTMLHRElement' = error "gTypeHTMLHRElement': only available in JavaScript"
#endif
gTypeHTMLHRElement = GType gTypeHTMLHRElement'


data HTMLHeadElement = HTMLHeadElement (JSRef HTMLHeadElement)

unHTMLHeadElement (HTMLHeadElement o) = o

class HTMLElementClass o => HTMLHeadElementClass o
toHTMLHeadElement :: HTMLHeadElementClass o => o -> HTMLHeadElement
toHTMLHeadElement = unsafeCastGObject . toGObject

instance HTMLHeadElementClass HTMLHeadElement
instance HTMLElementClass HTMLHeadElement
instance ElementClass HTMLHeadElement
instance NodeClass HTMLHeadElement
instance GObjectClass HTMLHeadElement where
  toGObject = GObject . castRef . unHTMLHeadElement
  unsafeCastGObject = HTMLHeadElement . castRef . unGObject

castToHTMLHeadElement :: GObjectClass obj => obj -> HTMLHeadElement
castToHTMLHeadElement = castTo gTypeHTMLHeadElement "HTMLHeadElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLHeadElement" gTypeHTMLHeadElement' :: JSRef GType
#else
gTypeHTMLHeadElement' = error "gTypeHTMLHeadElement': only available in JavaScript"
#endif
gTypeHTMLHeadElement = GType gTypeHTMLHeadElement'


data HTMLHeadingElement = HTMLHeadingElement (JSRef HTMLHeadingElement)

unHTMLHeadingElement (HTMLHeadingElement o) = o

class HTMLElementClass o => HTMLHeadingElementClass o
toHTMLHeadingElement :: HTMLHeadingElementClass o => o -> HTMLHeadingElement
toHTMLHeadingElement = unsafeCastGObject . toGObject

instance HTMLHeadingElementClass HTMLHeadingElement
instance HTMLElementClass HTMLHeadingElement
instance ElementClass HTMLHeadingElement
instance NodeClass HTMLHeadingElement
instance GObjectClass HTMLHeadingElement where
  toGObject = GObject . castRef . unHTMLHeadingElement
  unsafeCastGObject = HTMLHeadingElement . castRef . unGObject

castToHTMLHeadingElement :: GObjectClass obj => obj -> HTMLHeadingElement
castToHTMLHeadingElement = castTo gTypeHTMLHeadingElement "HTMLHeadingElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLHeadingElement" gTypeHTMLHeadingElement' :: JSRef GType
#else
gTypeHTMLHeadingElement' = error "gTypeHTMLHeadingElement': only available in JavaScript"
#endif
gTypeHTMLHeadingElement = GType gTypeHTMLHeadingElement'


data HTMLHtmlElement = HTMLHtmlElement (JSRef HTMLHtmlElement)

unHTMLHtmlElement (HTMLHtmlElement o) = o

class HTMLElementClass o => HTMLHtmlElementClass o
toHTMLHtmlElement :: HTMLHtmlElementClass o => o -> HTMLHtmlElement
toHTMLHtmlElement = unsafeCastGObject . toGObject

instance HTMLHtmlElementClass HTMLHtmlElement
instance HTMLElementClass HTMLHtmlElement
instance ElementClass HTMLHtmlElement
instance NodeClass HTMLHtmlElement
instance GObjectClass HTMLHtmlElement where
  toGObject = GObject . castRef . unHTMLHtmlElement
  unsafeCastGObject = HTMLHtmlElement . castRef . unGObject

castToHTMLHtmlElement :: GObjectClass obj => obj -> HTMLHtmlElement
castToHTMLHtmlElement = castTo gTypeHTMLHtmlElement "HTMLHtmlElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLHtmlElement" gTypeHTMLHtmlElement' :: JSRef GType
#else
gTypeHTMLHtmlElement' = error "gTypeHTMLHtmlElement': only available in JavaScript"
#endif
gTypeHTMLHtmlElement = GType gTypeHTMLHtmlElement'


data HTMLIFrameElement = HTMLIFrameElement (JSRef HTMLIFrameElement)

unHTMLIFrameElement (HTMLIFrameElement o) = o

class HTMLElementClass o => HTMLIFrameElementClass o
toHTMLIFrameElement :: HTMLIFrameElementClass o => o -> HTMLIFrameElement
toHTMLIFrameElement = unsafeCastGObject . toGObject

instance HTMLIFrameElementClass HTMLIFrameElement
instance HTMLElementClass HTMLIFrameElement
instance ElementClass HTMLIFrameElement
instance NodeClass HTMLIFrameElement
instance GObjectClass HTMLIFrameElement where
  toGObject = GObject . castRef . unHTMLIFrameElement
  unsafeCastGObject = HTMLIFrameElement . castRef . unGObject

castToHTMLIFrameElement :: GObjectClass obj => obj -> HTMLIFrameElement
castToHTMLIFrameElement = castTo gTypeHTMLIFrameElement "HTMLIFrameElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLIFrameElement" gTypeHTMLIFrameElement' :: JSRef GType
#else
gTypeHTMLIFrameElement' = error "gTypeHTMLIFrameElement': only available in JavaScript"
#endif
gTypeHTMLIFrameElement = GType gTypeHTMLIFrameElement'


data HTMLImageElement = HTMLImageElement (JSRef HTMLImageElement)

unHTMLImageElement (HTMLImageElement o) = o

class HTMLElementClass o => HTMLImageElementClass o
toHTMLImageElement :: HTMLImageElementClass o => o -> HTMLImageElement
toHTMLImageElement = unsafeCastGObject . toGObject

instance HTMLImageElementClass HTMLImageElement
instance HTMLElementClass HTMLImageElement
instance ElementClass HTMLImageElement
instance NodeClass HTMLImageElement
instance GObjectClass HTMLImageElement where
  toGObject = GObject . castRef . unHTMLImageElement
  unsafeCastGObject = HTMLImageElement . castRef . unGObject

castToHTMLImageElement :: GObjectClass obj => obj -> HTMLImageElement
castToHTMLImageElement = castTo gTypeHTMLImageElement "HTMLImageElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLImageElement" gTypeHTMLImageElement' :: JSRef GType
#else
gTypeHTMLImageElement' = error "gTypeHTMLImageElement': only available in JavaScript"
#endif
gTypeHTMLImageElement = GType gTypeHTMLImageElement'


data HTMLInputElement = HTMLInputElement (JSRef HTMLInputElement)

unHTMLInputElement (HTMLInputElement o) = o

class HTMLElementClass o => HTMLInputElementClass o
toHTMLInputElement :: HTMLInputElementClass o => o -> HTMLInputElement
toHTMLInputElement = unsafeCastGObject . toGObject

instance HTMLInputElementClass HTMLInputElement
instance HTMLElementClass HTMLInputElement
instance ElementClass HTMLInputElement
instance NodeClass HTMLInputElement
instance GObjectClass HTMLInputElement where
  toGObject = GObject . castRef . unHTMLInputElement
  unsafeCastGObject = HTMLInputElement . castRef . unGObject

castToHTMLInputElement :: GObjectClass obj => obj -> HTMLInputElement
castToHTMLInputElement = castTo gTypeHTMLInputElement "HTMLInputElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLInputElement" gTypeHTMLInputElement' :: JSRef GType
#else
gTypeHTMLInputElement' = error "gTypeHTMLInputElement': only available in JavaScript"
#endif
gTypeHTMLInputElement = GType gTypeHTMLInputElement'


data HTMLKeygenElement = HTMLKeygenElement (JSRef HTMLKeygenElement)

unHTMLKeygenElement (HTMLKeygenElement o) = o

class HTMLElementClass o => HTMLKeygenElementClass o
toHTMLKeygenElement :: HTMLKeygenElementClass o => o -> HTMLKeygenElement
toHTMLKeygenElement = unsafeCastGObject . toGObject

instance HTMLKeygenElementClass HTMLKeygenElement
instance HTMLElementClass HTMLKeygenElement
instance ElementClass HTMLKeygenElement
instance NodeClass HTMLKeygenElement
instance GObjectClass HTMLKeygenElement where
  toGObject = GObject . castRef . unHTMLKeygenElement
  unsafeCastGObject = HTMLKeygenElement . castRef . unGObject

castToHTMLKeygenElement :: GObjectClass obj => obj -> HTMLKeygenElement
castToHTMLKeygenElement = castTo gTypeHTMLKeygenElement "HTMLKeygenElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLKeygenElement" gTypeHTMLKeygenElement' :: JSRef GType
#else
gTypeHTMLKeygenElement' = error "gTypeHTMLKeygenElement': only available in JavaScript"
#endif
gTypeHTMLKeygenElement = GType gTypeHTMLKeygenElement'


data HTMLLIElement = HTMLLIElement (JSRef HTMLLIElement)

unHTMLLIElement (HTMLLIElement o) = o

class HTMLElementClass o => HTMLLIElementClass o
toHTMLLIElement :: HTMLLIElementClass o => o -> HTMLLIElement
toHTMLLIElement = unsafeCastGObject . toGObject

instance HTMLLIElementClass HTMLLIElement
instance HTMLElementClass HTMLLIElement
instance ElementClass HTMLLIElement
instance NodeClass HTMLLIElement
instance GObjectClass HTMLLIElement where
  toGObject = GObject . castRef . unHTMLLIElement
  unsafeCastGObject = HTMLLIElement . castRef . unGObject

castToHTMLLIElement :: GObjectClass obj => obj -> HTMLLIElement
castToHTMLLIElement = castTo gTypeHTMLLIElement "HTMLLIElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLLIElement" gTypeHTMLLIElement' :: JSRef GType
#else
gTypeHTMLLIElement' = error "gTypeHTMLLIElement': only available in JavaScript"
#endif
gTypeHTMLLIElement = GType gTypeHTMLLIElement'


data HTMLLabelElement = HTMLLabelElement (JSRef HTMLLabelElement)

unHTMLLabelElement (HTMLLabelElement o) = o

class HTMLElementClass o => HTMLLabelElementClass o
toHTMLLabelElement :: HTMLLabelElementClass o => o -> HTMLLabelElement
toHTMLLabelElement = unsafeCastGObject . toGObject

instance HTMLLabelElementClass HTMLLabelElement
instance HTMLElementClass HTMLLabelElement
instance ElementClass HTMLLabelElement
instance NodeClass HTMLLabelElement
instance GObjectClass HTMLLabelElement where
  toGObject = GObject . castRef . unHTMLLabelElement
  unsafeCastGObject = HTMLLabelElement . castRef . unGObject

castToHTMLLabelElement :: GObjectClass obj => obj -> HTMLLabelElement
castToHTMLLabelElement = castTo gTypeHTMLLabelElement "HTMLLabelElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLLabelElement" gTypeHTMLLabelElement' :: JSRef GType
#else
gTypeHTMLLabelElement' = error "gTypeHTMLLabelElement': only available in JavaScript"
#endif
gTypeHTMLLabelElement = GType gTypeHTMLLabelElement'


data HTMLLegendElement = HTMLLegendElement (JSRef HTMLLegendElement)

unHTMLLegendElement (HTMLLegendElement o) = o

class HTMLElementClass o => HTMLLegendElementClass o
toHTMLLegendElement :: HTMLLegendElementClass o => o -> HTMLLegendElement
toHTMLLegendElement = unsafeCastGObject . toGObject

instance HTMLLegendElementClass HTMLLegendElement
instance HTMLElementClass HTMLLegendElement
instance ElementClass HTMLLegendElement
instance NodeClass HTMLLegendElement
instance GObjectClass HTMLLegendElement where
  toGObject = GObject . castRef . unHTMLLegendElement
  unsafeCastGObject = HTMLLegendElement . castRef . unGObject

castToHTMLLegendElement :: GObjectClass obj => obj -> HTMLLegendElement
castToHTMLLegendElement = castTo gTypeHTMLLegendElement "HTMLLegendElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLLegendElement" gTypeHTMLLegendElement' :: JSRef GType
#else
gTypeHTMLLegendElement' = error "gTypeHTMLLegendElement': only available in JavaScript"
#endif
gTypeHTMLLegendElement = GType gTypeHTMLLegendElement'


data HTMLLinkElement = HTMLLinkElement (JSRef HTMLLinkElement)

unHTMLLinkElement (HTMLLinkElement o) = o

class HTMLElementClass o => HTMLLinkElementClass o
toHTMLLinkElement :: HTMLLinkElementClass o => o -> HTMLLinkElement
toHTMLLinkElement = unsafeCastGObject . toGObject

instance HTMLLinkElementClass HTMLLinkElement
instance HTMLElementClass HTMLLinkElement
instance ElementClass HTMLLinkElement
instance NodeClass HTMLLinkElement
instance GObjectClass HTMLLinkElement where
  toGObject = GObject . castRef . unHTMLLinkElement
  unsafeCastGObject = HTMLLinkElement . castRef . unGObject

castToHTMLLinkElement :: GObjectClass obj => obj -> HTMLLinkElement
castToHTMLLinkElement = castTo gTypeHTMLLinkElement "HTMLLinkElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLLinkElement" gTypeHTMLLinkElement' :: JSRef GType
#else
gTypeHTMLLinkElement' = error "gTypeHTMLLinkElement': only available in JavaScript"
#endif
gTypeHTMLLinkElement = GType gTypeHTMLLinkElement'


data HTMLMapElement = HTMLMapElement (JSRef HTMLMapElement)

unHTMLMapElement (HTMLMapElement o) = o

class HTMLElementClass o => HTMLMapElementClass o
toHTMLMapElement :: HTMLMapElementClass o => o -> HTMLMapElement
toHTMLMapElement = unsafeCastGObject . toGObject

instance HTMLMapElementClass HTMLMapElement
instance HTMLElementClass HTMLMapElement
instance ElementClass HTMLMapElement
instance NodeClass HTMLMapElement
instance GObjectClass HTMLMapElement where
  toGObject = GObject . castRef . unHTMLMapElement
  unsafeCastGObject = HTMLMapElement . castRef . unGObject

castToHTMLMapElement :: GObjectClass obj => obj -> HTMLMapElement
castToHTMLMapElement = castTo gTypeHTMLMapElement "HTMLMapElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLMapElement" gTypeHTMLMapElement' :: JSRef GType
#else
gTypeHTMLMapElement' = error "gTypeHTMLMapElement': only available in JavaScript"
#endif
gTypeHTMLMapElement = GType gTypeHTMLMapElement'


data HTMLMarqueeElement = HTMLMarqueeElement (JSRef HTMLMarqueeElement)

unHTMLMarqueeElement (HTMLMarqueeElement o) = o

class HTMLElementClass o => HTMLMarqueeElementClass o
toHTMLMarqueeElement :: HTMLMarqueeElementClass o => o -> HTMLMarqueeElement
toHTMLMarqueeElement = unsafeCastGObject . toGObject

instance HTMLMarqueeElementClass HTMLMarqueeElement
instance HTMLElementClass HTMLMarqueeElement
instance ElementClass HTMLMarqueeElement
instance NodeClass HTMLMarqueeElement
instance GObjectClass HTMLMarqueeElement where
  toGObject = GObject . castRef . unHTMLMarqueeElement
  unsafeCastGObject = HTMLMarqueeElement . castRef . unGObject

castToHTMLMarqueeElement :: GObjectClass obj => obj -> HTMLMarqueeElement
castToHTMLMarqueeElement = castTo gTypeHTMLMarqueeElement "HTMLMarqueeElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLMarqueeElement" gTypeHTMLMarqueeElement' :: JSRef GType
#else
gTypeHTMLMarqueeElement' = error "gTypeHTMLMarqueeElement': only available in JavaScript"
#endif
gTypeHTMLMarqueeElement = GType gTypeHTMLMarqueeElement'


data HTMLMediaElement = HTMLMediaElement (JSRef HTMLMediaElement)

unHTMLMediaElement (HTMLMediaElement o) = o

class HTMLElementClass o => HTMLMediaElementClass o
toHTMLMediaElement :: HTMLMediaElementClass o => o -> HTMLMediaElement
toHTMLMediaElement = unsafeCastGObject . toGObject

instance HTMLMediaElementClass HTMLMediaElement
instance HTMLElementClass HTMLMediaElement
instance ElementClass HTMLMediaElement
instance NodeClass HTMLMediaElement
instance GObjectClass HTMLMediaElement where
  toGObject = GObject . castRef . unHTMLMediaElement
  unsafeCastGObject = HTMLMediaElement . castRef . unGObject

castToHTMLMediaElement :: GObjectClass obj => obj -> HTMLMediaElement
castToHTMLMediaElement = castTo gTypeHTMLMediaElement "HTMLMediaElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLMediaElement" gTypeHTMLMediaElement' :: JSRef GType
#else
gTypeHTMLMediaElement' = error "gTypeHTMLMediaElement': only available in JavaScript"
#endif
gTypeHTMLMediaElement = GType gTypeHTMLMediaElement'


data HTMLMenuElement = HTMLMenuElement (JSRef HTMLMenuElement)

unHTMLMenuElement (HTMLMenuElement o) = o

class HTMLElementClass o => HTMLMenuElementClass o
toHTMLMenuElement :: HTMLMenuElementClass o => o -> HTMLMenuElement
toHTMLMenuElement = unsafeCastGObject . toGObject

instance HTMLMenuElementClass HTMLMenuElement
instance HTMLElementClass HTMLMenuElement
instance ElementClass HTMLMenuElement
instance NodeClass HTMLMenuElement
instance GObjectClass HTMLMenuElement where
  toGObject = GObject . castRef . unHTMLMenuElement
  unsafeCastGObject = HTMLMenuElement . castRef . unGObject

castToHTMLMenuElement :: GObjectClass obj => obj -> HTMLMenuElement
castToHTMLMenuElement = castTo gTypeHTMLMenuElement "HTMLMenuElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLMenuElement" gTypeHTMLMenuElement' :: JSRef GType
#else
gTypeHTMLMenuElement' = error "gTypeHTMLMenuElement': only available in JavaScript"
#endif
gTypeHTMLMenuElement = GType gTypeHTMLMenuElement'


data HTMLMetaElement = HTMLMetaElement (JSRef HTMLMetaElement)

unHTMLMetaElement (HTMLMetaElement o) = o

class HTMLElementClass o => HTMLMetaElementClass o
toHTMLMetaElement :: HTMLMetaElementClass o => o -> HTMLMetaElement
toHTMLMetaElement = unsafeCastGObject . toGObject

instance HTMLMetaElementClass HTMLMetaElement
instance HTMLElementClass HTMLMetaElement
instance ElementClass HTMLMetaElement
instance NodeClass HTMLMetaElement
instance GObjectClass HTMLMetaElement where
  toGObject = GObject . castRef . unHTMLMetaElement
  unsafeCastGObject = HTMLMetaElement . castRef . unGObject

castToHTMLMetaElement :: GObjectClass obj => obj -> HTMLMetaElement
castToHTMLMetaElement = castTo gTypeHTMLMetaElement "HTMLMetaElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLMetaElement" gTypeHTMLMetaElement' :: JSRef GType
#else
gTypeHTMLMetaElement' = error "gTypeHTMLMetaElement': only available in JavaScript"
#endif
gTypeHTMLMetaElement = GType gTypeHTMLMetaElement'


data HTMLModElement = HTMLModElement (JSRef HTMLModElement)

unHTMLModElement (HTMLModElement o) = o

class HTMLElementClass o => HTMLModElementClass o
toHTMLModElement :: HTMLModElementClass o => o -> HTMLModElement
toHTMLModElement = unsafeCastGObject . toGObject

instance HTMLModElementClass HTMLModElement
instance HTMLElementClass HTMLModElement
instance ElementClass HTMLModElement
instance NodeClass HTMLModElement
instance GObjectClass HTMLModElement where
  toGObject = GObject . castRef . unHTMLModElement
  unsafeCastGObject = HTMLModElement . castRef . unGObject

castToHTMLModElement :: GObjectClass obj => obj -> HTMLModElement
castToHTMLModElement = castTo gTypeHTMLModElement "HTMLModElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLModElement" gTypeHTMLModElement' :: JSRef GType
#else
gTypeHTMLModElement' = error "gTypeHTMLModElement': only available in JavaScript"
#endif
gTypeHTMLModElement = GType gTypeHTMLModElement'


data HTMLOListElement = HTMLOListElement (JSRef HTMLOListElement)

unHTMLOListElement (HTMLOListElement o) = o

class HTMLElementClass o => HTMLOListElementClass o
toHTMLOListElement :: HTMLOListElementClass o => o -> HTMLOListElement
toHTMLOListElement = unsafeCastGObject . toGObject

instance HTMLOListElementClass HTMLOListElement
instance HTMLElementClass HTMLOListElement
instance ElementClass HTMLOListElement
instance NodeClass HTMLOListElement
instance GObjectClass HTMLOListElement where
  toGObject = GObject . castRef . unHTMLOListElement
  unsafeCastGObject = HTMLOListElement . castRef . unGObject

castToHTMLOListElement :: GObjectClass obj => obj -> HTMLOListElement
castToHTMLOListElement = castTo gTypeHTMLOListElement "HTMLOListElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLOListElement" gTypeHTMLOListElement' :: JSRef GType
#else
gTypeHTMLOListElement' = error "gTypeHTMLOListElement': only available in JavaScript"
#endif
gTypeHTMLOListElement = GType gTypeHTMLOListElement'


data HTMLObjectElement = HTMLObjectElement (JSRef HTMLObjectElement)

unHTMLObjectElement (HTMLObjectElement o) = o

class HTMLElementClass o => HTMLObjectElementClass o
toHTMLObjectElement :: HTMLObjectElementClass o => o -> HTMLObjectElement
toHTMLObjectElement = unsafeCastGObject . toGObject

instance HTMLObjectElementClass HTMLObjectElement
instance HTMLElementClass HTMLObjectElement
instance ElementClass HTMLObjectElement
instance NodeClass HTMLObjectElement
instance GObjectClass HTMLObjectElement where
  toGObject = GObject . castRef . unHTMLObjectElement
  unsafeCastGObject = HTMLObjectElement . castRef . unGObject

castToHTMLObjectElement :: GObjectClass obj => obj -> HTMLObjectElement
castToHTMLObjectElement = castTo gTypeHTMLObjectElement "HTMLObjectElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLObjectElement" gTypeHTMLObjectElement' :: JSRef GType
#else
gTypeHTMLObjectElement' = error "gTypeHTMLObjectElement': only available in JavaScript"
#endif
gTypeHTMLObjectElement = GType gTypeHTMLObjectElement'


data HTMLOptGroupElement = HTMLOptGroupElement (JSRef HTMLOptGroupElement)

unHTMLOptGroupElement (HTMLOptGroupElement o) = o

class HTMLElementClass o => HTMLOptGroupElementClass o
toHTMLOptGroupElement :: HTMLOptGroupElementClass o => o -> HTMLOptGroupElement
toHTMLOptGroupElement = unsafeCastGObject . toGObject

instance HTMLOptGroupElementClass HTMLOptGroupElement
instance HTMLElementClass HTMLOptGroupElement
instance ElementClass HTMLOptGroupElement
instance NodeClass HTMLOptGroupElement
instance GObjectClass HTMLOptGroupElement where
  toGObject = GObject . castRef . unHTMLOptGroupElement
  unsafeCastGObject = HTMLOptGroupElement . castRef . unGObject

castToHTMLOptGroupElement :: GObjectClass obj => obj -> HTMLOptGroupElement
castToHTMLOptGroupElement = castTo gTypeHTMLOptGroupElement "HTMLOptGroupElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLOptGroupElement" gTypeHTMLOptGroupElement' :: JSRef GType
#else
gTypeHTMLOptGroupElement' = error "gTypeHTMLOptGroupElement': only available in JavaScript"
#endif
gTypeHTMLOptGroupElement = GType gTypeHTMLOptGroupElement'


data HTMLOptionElement = HTMLOptionElement (JSRef HTMLOptionElement)

unHTMLOptionElement (HTMLOptionElement o) = o

class HTMLElementClass o => HTMLOptionElementClass o
toHTMLOptionElement :: HTMLOptionElementClass o => o -> HTMLOptionElement
toHTMLOptionElement = unsafeCastGObject . toGObject

instance HTMLOptionElementClass HTMLOptionElement
instance HTMLElementClass HTMLOptionElement
instance ElementClass HTMLOptionElement
instance NodeClass HTMLOptionElement
instance GObjectClass HTMLOptionElement where
  toGObject = GObject . castRef . unHTMLOptionElement
  unsafeCastGObject = HTMLOptionElement . castRef . unGObject

castToHTMLOptionElement :: GObjectClass obj => obj -> HTMLOptionElement
castToHTMLOptionElement = castTo gTypeHTMLOptionElement "HTMLOptionElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLOptionElement" gTypeHTMLOptionElement' :: JSRef GType
#else
gTypeHTMLOptionElement' = error "gTypeHTMLOptionElement': only available in JavaScript"
#endif
gTypeHTMLOptionElement = GType gTypeHTMLOptionElement'


data HTMLOptionsCollection = HTMLOptionsCollection (JSRef HTMLOptionsCollection)

unHTMLOptionsCollection (HTMLOptionsCollection o) = o

class HTMLCollectionClass o => HTMLOptionsCollectionClass o
toHTMLOptionsCollection :: HTMLOptionsCollectionClass o => o -> HTMLOptionsCollection
toHTMLOptionsCollection = unsafeCastGObject . toGObject

instance HTMLOptionsCollectionClass HTMLOptionsCollection
instance HTMLCollectionClass HTMLOptionsCollection
instance GObjectClass HTMLOptionsCollection where
  toGObject = GObject . castRef . unHTMLOptionsCollection
  unsafeCastGObject = HTMLOptionsCollection . castRef . unGObject

castToHTMLOptionsCollection :: GObjectClass obj => obj -> HTMLOptionsCollection
castToHTMLOptionsCollection = castTo gTypeHTMLOptionsCollection "HTMLOptionsCollection"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLOptionsCollection" gTypeHTMLOptionsCollection' :: JSRef GType
#else
gTypeHTMLOptionsCollection' = error "gTypeHTMLOptionsCollection': only available in JavaScript"
#endif
gTypeHTMLOptionsCollection = GType gTypeHTMLOptionsCollection'


data HTMLParagraphElement = HTMLParagraphElement (JSRef HTMLParagraphElement)

unHTMLParagraphElement (HTMLParagraphElement o) = o

class HTMLElementClass o => HTMLParagraphElementClass o
toHTMLParagraphElement :: HTMLParagraphElementClass o => o -> HTMLParagraphElement
toHTMLParagraphElement = unsafeCastGObject . toGObject

instance HTMLParagraphElementClass HTMLParagraphElement
instance HTMLElementClass HTMLParagraphElement
instance ElementClass HTMLParagraphElement
instance NodeClass HTMLParagraphElement
instance GObjectClass HTMLParagraphElement where
  toGObject = GObject . castRef . unHTMLParagraphElement
  unsafeCastGObject = HTMLParagraphElement . castRef . unGObject

castToHTMLParagraphElement :: GObjectClass obj => obj -> HTMLParagraphElement
castToHTMLParagraphElement = castTo gTypeHTMLParagraphElement "HTMLParagraphElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLParagraphElement" gTypeHTMLParagraphElement' :: JSRef GType
#else
gTypeHTMLParagraphElement' = error "gTypeHTMLParagraphElement': only available in JavaScript"
#endif
gTypeHTMLParagraphElement = GType gTypeHTMLParagraphElement'


data HTMLParamElement = HTMLParamElement (JSRef HTMLParamElement)

unHTMLParamElement (HTMLParamElement o) = o

class HTMLElementClass o => HTMLParamElementClass o
toHTMLParamElement :: HTMLParamElementClass o => o -> HTMLParamElement
toHTMLParamElement = unsafeCastGObject . toGObject

instance HTMLParamElementClass HTMLParamElement
instance HTMLElementClass HTMLParamElement
instance ElementClass HTMLParamElement
instance NodeClass HTMLParamElement
instance GObjectClass HTMLParamElement where
  toGObject = GObject . castRef . unHTMLParamElement
  unsafeCastGObject = HTMLParamElement . castRef . unGObject

castToHTMLParamElement :: GObjectClass obj => obj -> HTMLParamElement
castToHTMLParamElement = castTo gTypeHTMLParamElement "HTMLParamElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLParamElement" gTypeHTMLParamElement' :: JSRef GType
#else
gTypeHTMLParamElement' = error "gTypeHTMLParamElement': only available in JavaScript"
#endif
gTypeHTMLParamElement = GType gTypeHTMLParamElement'


data HTMLPreElement = HTMLPreElement (JSRef HTMLPreElement)

unHTMLPreElement (HTMLPreElement o) = o

class HTMLElementClass o => HTMLPreElementClass o
toHTMLPreElement :: HTMLPreElementClass o => o -> HTMLPreElement
toHTMLPreElement = unsafeCastGObject . toGObject

instance HTMLPreElementClass HTMLPreElement
instance HTMLElementClass HTMLPreElement
instance ElementClass HTMLPreElement
instance NodeClass HTMLPreElement
instance GObjectClass HTMLPreElement where
  toGObject = GObject . castRef . unHTMLPreElement
  unsafeCastGObject = HTMLPreElement . castRef . unGObject

castToHTMLPreElement :: GObjectClass obj => obj -> HTMLPreElement
castToHTMLPreElement = castTo gTypeHTMLPreElement "HTMLPreElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLPreElement" gTypeHTMLPreElement' :: JSRef GType
#else
gTypeHTMLPreElement' = error "gTypeHTMLPreElement': only available in JavaScript"
#endif
gTypeHTMLPreElement = GType gTypeHTMLPreElement'


data HTMLQuoteElement = HTMLQuoteElement (JSRef HTMLQuoteElement)

unHTMLQuoteElement (HTMLQuoteElement o) = o

class HTMLElementClass o => HTMLQuoteElementClass o
toHTMLQuoteElement :: HTMLQuoteElementClass o => o -> HTMLQuoteElement
toHTMLQuoteElement = unsafeCastGObject . toGObject

instance HTMLQuoteElementClass HTMLQuoteElement
instance HTMLElementClass HTMLQuoteElement
instance ElementClass HTMLQuoteElement
instance NodeClass HTMLQuoteElement
instance GObjectClass HTMLQuoteElement where
  toGObject = GObject . castRef . unHTMLQuoteElement
  unsafeCastGObject = HTMLQuoteElement . castRef . unGObject

castToHTMLQuoteElement :: GObjectClass obj => obj -> HTMLQuoteElement
castToHTMLQuoteElement = castTo gTypeHTMLQuoteElement "HTMLQuoteElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLQuoteElement" gTypeHTMLQuoteElement' :: JSRef GType
#else
gTypeHTMLQuoteElement' = error "gTypeHTMLQuoteElement': only available in JavaScript"
#endif
gTypeHTMLQuoteElement = GType gTypeHTMLQuoteElement'


data HTMLScriptElement = HTMLScriptElement (JSRef HTMLScriptElement)

unHTMLScriptElement (HTMLScriptElement o) = o

class HTMLElementClass o => HTMLScriptElementClass o
toHTMLScriptElement :: HTMLScriptElementClass o => o -> HTMLScriptElement
toHTMLScriptElement = unsafeCastGObject . toGObject

instance HTMLScriptElementClass HTMLScriptElement
instance HTMLElementClass HTMLScriptElement
instance ElementClass HTMLScriptElement
instance NodeClass HTMLScriptElement
instance GObjectClass HTMLScriptElement where
  toGObject = GObject . castRef . unHTMLScriptElement
  unsafeCastGObject = HTMLScriptElement . castRef . unGObject

castToHTMLScriptElement :: GObjectClass obj => obj -> HTMLScriptElement
castToHTMLScriptElement = castTo gTypeHTMLScriptElement "HTMLScriptElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLScriptElement" gTypeHTMLScriptElement' :: JSRef GType
#else
gTypeHTMLScriptElement' = error "gTypeHTMLScriptElement': only available in JavaScript"
#endif
gTypeHTMLScriptElement = GType gTypeHTMLScriptElement'


data HTMLSelectElement = HTMLSelectElement (JSRef HTMLSelectElement)

unHTMLSelectElement (HTMLSelectElement o) = o

class HTMLElementClass o => HTMLSelectElementClass o
toHTMLSelectElement :: HTMLSelectElementClass o => o -> HTMLSelectElement
toHTMLSelectElement = unsafeCastGObject . toGObject

instance HTMLSelectElementClass HTMLSelectElement
instance HTMLElementClass HTMLSelectElement
instance ElementClass HTMLSelectElement
instance NodeClass HTMLSelectElement
instance GObjectClass HTMLSelectElement where
  toGObject = GObject . castRef . unHTMLSelectElement
  unsafeCastGObject = HTMLSelectElement . castRef . unGObject

castToHTMLSelectElement :: GObjectClass obj => obj -> HTMLSelectElement
castToHTMLSelectElement = castTo gTypeHTMLSelectElement "HTMLSelectElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLSelectElement" gTypeHTMLSelectElement' :: JSRef GType
#else
gTypeHTMLSelectElement' = error "gTypeHTMLSelectElement': only available in JavaScript"
#endif
gTypeHTMLSelectElement = GType gTypeHTMLSelectElement'


data HTMLStyleElement = HTMLStyleElement (JSRef HTMLStyleElement)

unHTMLStyleElement (HTMLStyleElement o) = o

class HTMLElementClass o => HTMLStyleElementClass o
toHTMLStyleElement :: HTMLStyleElementClass o => o -> HTMLStyleElement
toHTMLStyleElement = unsafeCastGObject . toGObject

instance HTMLStyleElementClass HTMLStyleElement
instance HTMLElementClass HTMLStyleElement
instance ElementClass HTMLStyleElement
instance NodeClass HTMLStyleElement
instance GObjectClass HTMLStyleElement where
  toGObject = GObject . castRef . unHTMLStyleElement
  unsafeCastGObject = HTMLStyleElement . castRef . unGObject

castToHTMLStyleElement :: GObjectClass obj => obj -> HTMLStyleElement
castToHTMLStyleElement = castTo gTypeHTMLStyleElement "HTMLStyleElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLStyleElement" gTypeHTMLStyleElement' :: JSRef GType
#else
gTypeHTMLStyleElement' = error "gTypeHTMLStyleElement': only available in JavaScript"
#endif
gTypeHTMLStyleElement = GType gTypeHTMLStyleElement'


data HTMLTableCaptionElement = HTMLTableCaptionElement (JSRef HTMLTableCaptionElement)

unHTMLTableCaptionElement (HTMLTableCaptionElement o) = o

class HTMLElementClass o => HTMLTableCaptionElementClass o
toHTMLTableCaptionElement :: HTMLTableCaptionElementClass o => o -> HTMLTableCaptionElement
toHTMLTableCaptionElement = unsafeCastGObject . toGObject

instance HTMLTableCaptionElementClass HTMLTableCaptionElement
instance HTMLElementClass HTMLTableCaptionElement
instance ElementClass HTMLTableCaptionElement
instance NodeClass HTMLTableCaptionElement
instance GObjectClass HTMLTableCaptionElement where
  toGObject = GObject . castRef . unHTMLTableCaptionElement
  unsafeCastGObject = HTMLTableCaptionElement . castRef . unGObject

castToHTMLTableCaptionElement :: GObjectClass obj => obj -> HTMLTableCaptionElement
castToHTMLTableCaptionElement = castTo gTypeHTMLTableCaptionElement "HTMLTableCaptionElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableCaptionElement" gTypeHTMLTableCaptionElement' :: JSRef GType
#else
gTypeHTMLTableCaptionElement' = error "gTypeHTMLTableCaptionElement': only available in JavaScript"
#endif
gTypeHTMLTableCaptionElement = GType gTypeHTMLTableCaptionElement'


data HTMLTableCellElement = HTMLTableCellElement (JSRef HTMLTableCellElement)

unHTMLTableCellElement (HTMLTableCellElement o) = o

class HTMLElementClass o => HTMLTableCellElementClass o
toHTMLTableCellElement :: HTMLTableCellElementClass o => o -> HTMLTableCellElement
toHTMLTableCellElement = unsafeCastGObject . toGObject

instance HTMLTableCellElementClass HTMLTableCellElement
instance HTMLElementClass HTMLTableCellElement
instance ElementClass HTMLTableCellElement
instance NodeClass HTMLTableCellElement
instance GObjectClass HTMLTableCellElement where
  toGObject = GObject . castRef . unHTMLTableCellElement
  unsafeCastGObject = HTMLTableCellElement . castRef . unGObject

castToHTMLTableCellElement :: GObjectClass obj => obj -> HTMLTableCellElement
castToHTMLTableCellElement = castTo gTypeHTMLTableCellElement "HTMLTableCellElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableCellElement" gTypeHTMLTableCellElement' :: JSRef GType
#else
gTypeHTMLTableCellElement' = error "gTypeHTMLTableCellElement': only available in JavaScript"
#endif
gTypeHTMLTableCellElement = GType gTypeHTMLTableCellElement'


data HTMLTableColElement = HTMLTableColElement (JSRef HTMLTableColElement)

unHTMLTableColElement (HTMLTableColElement o) = o

class HTMLElementClass o => HTMLTableColElementClass o
toHTMLTableColElement :: HTMLTableColElementClass o => o -> HTMLTableColElement
toHTMLTableColElement = unsafeCastGObject . toGObject

instance HTMLTableColElementClass HTMLTableColElement
instance HTMLElementClass HTMLTableColElement
instance ElementClass HTMLTableColElement
instance NodeClass HTMLTableColElement
instance GObjectClass HTMLTableColElement where
  toGObject = GObject . castRef . unHTMLTableColElement
  unsafeCastGObject = HTMLTableColElement . castRef . unGObject

castToHTMLTableColElement :: GObjectClass obj => obj -> HTMLTableColElement
castToHTMLTableColElement = castTo gTypeHTMLTableColElement "HTMLTableColElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableColElement" gTypeHTMLTableColElement' :: JSRef GType
#else
gTypeHTMLTableColElement' = error "gTypeHTMLTableColElement': only available in JavaScript"
#endif
gTypeHTMLTableColElement = GType gTypeHTMLTableColElement'


data HTMLTableElement = HTMLTableElement (JSRef HTMLTableElement)

unHTMLTableElement (HTMLTableElement o) = o

class HTMLElementClass o => HTMLTableElementClass o
toHTMLTableElement :: HTMLTableElementClass o => o -> HTMLTableElement
toHTMLTableElement = unsafeCastGObject . toGObject

instance HTMLTableElementClass HTMLTableElement
instance HTMLElementClass HTMLTableElement
instance ElementClass HTMLTableElement
instance NodeClass HTMLTableElement
instance GObjectClass HTMLTableElement where
  toGObject = GObject . castRef . unHTMLTableElement
  unsafeCastGObject = HTMLTableElement . castRef . unGObject

castToHTMLTableElement :: GObjectClass obj => obj -> HTMLTableElement
castToHTMLTableElement = castTo gTypeHTMLTableElement "HTMLTableElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableElement" gTypeHTMLTableElement' :: JSRef GType
#else
gTypeHTMLTableElement' = error "gTypeHTMLTableElement': only available in JavaScript"
#endif
gTypeHTMLTableElement = GType gTypeHTMLTableElement'


data HTMLTableRowElement = HTMLTableRowElement (JSRef HTMLTableRowElement)

unHTMLTableRowElement (HTMLTableRowElement o) = o

class HTMLElementClass o => HTMLTableRowElementClass o
toHTMLTableRowElement :: HTMLTableRowElementClass o => o -> HTMLTableRowElement
toHTMLTableRowElement = unsafeCastGObject . toGObject

instance HTMLTableRowElementClass HTMLTableRowElement
instance HTMLElementClass HTMLTableRowElement
instance ElementClass HTMLTableRowElement
instance NodeClass HTMLTableRowElement
instance GObjectClass HTMLTableRowElement where
  toGObject = GObject . castRef . unHTMLTableRowElement
  unsafeCastGObject = HTMLTableRowElement . castRef . unGObject

castToHTMLTableRowElement :: GObjectClass obj => obj -> HTMLTableRowElement
castToHTMLTableRowElement = castTo gTypeHTMLTableRowElement "HTMLTableRowElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableRowElement" gTypeHTMLTableRowElement' :: JSRef GType
#else
gTypeHTMLTableRowElement' = error "gTypeHTMLTableRowElement': only available in JavaScript"
#endif
gTypeHTMLTableRowElement = GType gTypeHTMLTableRowElement'


data HTMLTableSectionElement = HTMLTableSectionElement (JSRef HTMLTableSectionElement)

unHTMLTableSectionElement (HTMLTableSectionElement o) = o

class HTMLElementClass o => HTMLTableSectionElementClass o
toHTMLTableSectionElement :: HTMLTableSectionElementClass o => o -> HTMLTableSectionElement
toHTMLTableSectionElement = unsafeCastGObject . toGObject

instance HTMLTableSectionElementClass HTMLTableSectionElement
instance HTMLElementClass HTMLTableSectionElement
instance ElementClass HTMLTableSectionElement
instance NodeClass HTMLTableSectionElement
instance GObjectClass HTMLTableSectionElement where
  toGObject = GObject . castRef . unHTMLTableSectionElement
  unsafeCastGObject = HTMLTableSectionElement . castRef . unGObject

castToHTMLTableSectionElement :: GObjectClass obj => obj -> HTMLTableSectionElement
castToHTMLTableSectionElement = castTo gTypeHTMLTableSectionElement "HTMLTableSectionElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTableSectionElement" gTypeHTMLTableSectionElement' :: JSRef GType
#else
gTypeHTMLTableSectionElement' = error "gTypeHTMLTableSectionElement': only available in JavaScript"
#endif
gTypeHTMLTableSectionElement = GType gTypeHTMLTableSectionElement'


data HTMLTextAreaElement = HTMLTextAreaElement (JSRef HTMLTextAreaElement)

unHTMLTextAreaElement (HTMLTextAreaElement o) = o

class HTMLElementClass o => HTMLTextAreaElementClass o
toHTMLTextAreaElement :: HTMLTextAreaElementClass o => o -> HTMLTextAreaElement
toHTMLTextAreaElement = unsafeCastGObject . toGObject

instance HTMLTextAreaElementClass HTMLTextAreaElement
instance HTMLElementClass HTMLTextAreaElement
instance ElementClass HTMLTextAreaElement
instance NodeClass HTMLTextAreaElement
instance GObjectClass HTMLTextAreaElement where
  toGObject = GObject . castRef . unHTMLTextAreaElement
  unsafeCastGObject = HTMLTextAreaElement . castRef . unGObject

castToHTMLTextAreaElement :: GObjectClass obj => obj -> HTMLTextAreaElement
castToHTMLTextAreaElement = castTo gTypeHTMLTextAreaElement "HTMLTextAreaElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTextAreaElement" gTypeHTMLTextAreaElement' :: JSRef GType
#else
gTypeHTMLTextAreaElement' = error "gTypeHTMLTextAreaElement': only available in JavaScript"
#endif
gTypeHTMLTextAreaElement = GType gTypeHTMLTextAreaElement'


data HTMLTitleElement = HTMLTitleElement (JSRef HTMLTitleElement)

unHTMLTitleElement (HTMLTitleElement o) = o

class HTMLElementClass o => HTMLTitleElementClass o
toHTMLTitleElement :: HTMLTitleElementClass o => o -> HTMLTitleElement
toHTMLTitleElement = unsafeCastGObject . toGObject

instance HTMLTitleElementClass HTMLTitleElement
instance HTMLElementClass HTMLTitleElement
instance ElementClass HTMLTitleElement
instance NodeClass HTMLTitleElement
instance GObjectClass HTMLTitleElement where
  toGObject = GObject . castRef . unHTMLTitleElement
  unsafeCastGObject = HTMLTitleElement . castRef . unGObject

castToHTMLTitleElement :: GObjectClass obj => obj -> HTMLTitleElement
castToHTMLTitleElement = castTo gTypeHTMLTitleElement "HTMLTitleElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLTitleElement" gTypeHTMLTitleElement' :: JSRef GType
#else
gTypeHTMLTitleElement' = error "gTypeHTMLTitleElement': only available in JavaScript"
#endif
gTypeHTMLTitleElement = GType gTypeHTMLTitleElement'


data HTMLUListElement = HTMLUListElement (JSRef HTMLUListElement)

unHTMLUListElement (HTMLUListElement o) = o

class HTMLElementClass o => HTMLUListElementClass o
toHTMLUListElement :: HTMLUListElementClass o => o -> HTMLUListElement
toHTMLUListElement = unsafeCastGObject . toGObject

instance HTMLUListElementClass HTMLUListElement
instance HTMLElementClass HTMLUListElement
instance ElementClass HTMLUListElement
instance NodeClass HTMLUListElement
instance GObjectClass HTMLUListElement where
  toGObject = GObject . castRef . unHTMLUListElement
  unsafeCastGObject = HTMLUListElement . castRef . unGObject

castToHTMLUListElement :: GObjectClass obj => obj -> HTMLUListElement
castToHTMLUListElement = castTo gTypeHTMLUListElement "HTMLUListElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLUListElement" gTypeHTMLUListElement' :: JSRef GType
#else
gTypeHTMLUListElement' = error "gTypeHTMLUListElement': only available in JavaScript"
#endif
gTypeHTMLUListElement = GType gTypeHTMLUListElement'


data HTMLVideoElement = HTMLVideoElement (JSRef HTMLVideoElement)

unHTMLVideoElement (HTMLVideoElement o) = o

class HTMLMediaElementClass o => HTMLVideoElementClass o
toHTMLVideoElement :: HTMLVideoElementClass o => o -> HTMLVideoElement
toHTMLVideoElement = unsafeCastGObject . toGObject

instance HTMLVideoElementClass HTMLVideoElement
instance HTMLMediaElementClass HTMLVideoElement
instance HTMLElementClass HTMLVideoElement
instance ElementClass HTMLVideoElement
instance NodeClass HTMLVideoElement
instance GObjectClass HTMLVideoElement where
  toGObject = GObject . castRef . unHTMLVideoElement
  unsafeCastGObject = HTMLVideoElement . castRef . unGObject

castToHTMLVideoElement :: GObjectClass obj => obj -> HTMLVideoElement
castToHTMLVideoElement = castTo gTypeHTMLVideoElement "HTMLVideoElement"

#ifdef __GHCJS__
foreign import javascript unsafe "window.HTMLVideoElement" gTypeHTMLVideoElement' :: JSRef GType
#else
gTypeHTMLVideoElement' = error "gTypeHTMLVideoElement': only available in JavaScript"
#endif
gTypeHTMLVideoElement = GType gTypeHTMLVideoElement'


data History = History (JSRef History)

unHistory (History o) = o

class GObjectClass o => HistoryClass o
toHistory :: HistoryClass o => o -> History
toHistory = unsafeCastGObject . toGObject

instance HistoryClass History
instance GObjectClass History where
  toGObject = GObject . castRef . unHistory
  unsafeCastGObject = History . castRef . unGObject

castToHistory :: GObjectClass obj => obj -> History
castToHistory = castTo gTypeHistory "History"

#ifdef __GHCJS__
foreign import javascript unsafe "window.History" gTypeHistory' :: JSRef GType
#else
gTypeHistory' = error "gTypeHistory': only available in JavaScript"
#endif
gTypeHistory = GType gTypeHistory'


data Location = Location (JSRef Location)

unLocation (Location o) = o

class GObjectClass o => LocationClass o
toLocation :: LocationClass o => o -> Location
toLocation = unsafeCastGObject . toGObject

instance LocationClass Location
instance GObjectClass Location where
  toGObject = GObject . castRef . unLocation
  unsafeCastGObject = Location . castRef . unGObject

castToLocation :: GObjectClass obj => obj -> Location
castToLocation = castTo gTypeLocation "Location"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Location" gTypeLocation' :: JSRef GType
#else
gTypeLocation' = error "gTypeLocation': only available in JavaScript"
#endif
gTypeLocation = GType gTypeLocation'


data MediaError = MediaError (JSRef MediaError)

unMediaError (MediaError o) = o

class GObjectClass o => MediaErrorClass o
toMediaError :: MediaErrorClass o => o -> MediaError
toMediaError = unsafeCastGObject . toGObject

instance MediaErrorClass MediaError
instance GObjectClass MediaError where
  toGObject = GObject . castRef . unMediaError
  unsafeCastGObject = MediaError . castRef . unGObject

castToMediaError :: GObjectClass obj => obj -> MediaError
castToMediaError = castTo gTypeMediaError "MediaError"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MediaError" gTypeMediaError' :: JSRef GType
#else
gTypeMediaError' = error "gTypeMediaError': only available in JavaScript"
#endif
gTypeMediaError = GType gTypeMediaError'


data MediaList = MediaList (JSRef MediaList)

unMediaList (MediaList o) = o

class GObjectClass o => MediaListClass o
toMediaList :: MediaListClass o => o -> MediaList
toMediaList = unsafeCastGObject . toGObject

instance MediaListClass MediaList
instance GObjectClass MediaList where
  toGObject = GObject . castRef . unMediaList
  unsafeCastGObject = MediaList . castRef . unGObject

castToMediaList :: GObjectClass obj => obj -> MediaList
castToMediaList = castTo gTypeMediaList "MediaList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MediaList" gTypeMediaList' :: JSRef GType
#else
gTypeMediaList' = error "gTypeMediaList': only available in JavaScript"
#endif
gTypeMediaList = GType gTypeMediaList'


data MediaQueryList = MediaQueryList (JSRef MediaQueryList)

unMediaQueryList (MediaQueryList o) = o

class GObjectClass o => MediaQueryListClass o
toMediaQueryList :: MediaQueryListClass o => o -> MediaQueryList
toMediaQueryList = unsafeCastGObject . toGObject

instance MediaQueryListClass MediaQueryList
instance GObjectClass MediaQueryList where
  toGObject = GObject . castRef . unMediaQueryList
  unsafeCastGObject = MediaQueryList . castRef . unGObject

castToMediaQueryList :: GObjectClass obj => obj -> MediaQueryList
castToMediaQueryList = castTo gTypeMediaQueryList "MediaQueryList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MediaQueryList" gTypeMediaQueryList' :: JSRef GType
#else
gTypeMediaQueryList' = error "gTypeMediaQueryList': only available in JavaScript"
#endif
gTypeMediaQueryList = GType gTypeMediaQueryList'


data MemoryInfo = MemoryInfo (JSRef MemoryInfo)

unMemoryInfo (MemoryInfo o) = o

class GObjectClass o => MemoryInfoClass o
toMemoryInfo :: MemoryInfoClass o => o -> MemoryInfo
toMemoryInfo = unsafeCastGObject . toGObject

instance MemoryInfoClass MemoryInfo
instance GObjectClass MemoryInfo where
  toGObject = GObject . castRef . unMemoryInfo
  unsafeCastGObject = MemoryInfo . castRef . unGObject

castToMemoryInfo :: GObjectClass obj => obj -> MemoryInfo
castToMemoryInfo = castTo gTypeMemoryInfo "MemoryInfo"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MemoryInfo" gTypeMemoryInfo' :: JSRef GType
#else
gTypeMemoryInfo' = error "gTypeMemoryInfo': only available in JavaScript"
#endif
gTypeMemoryInfo = GType gTypeMemoryInfo'


data MessagePort = MessagePort (JSRef MessagePort)

unMessagePort (MessagePort o) = o

class GObjectClass o => MessagePortClass o
toMessagePort :: MessagePortClass o => o -> MessagePort
toMessagePort = unsafeCastGObject . toGObject

instance MessagePortClass MessagePort
instance GObjectClass MessagePort where
  toGObject = GObject . castRef . unMessagePort
  unsafeCastGObject = MessagePort . castRef . unGObject

castToMessagePort :: GObjectClass obj => obj -> MessagePort
castToMessagePort = castTo gTypeMessagePort "MessagePort"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MessagePort" gTypeMessagePort' :: JSRef GType
#else
gTypeMessagePort' = error "gTypeMessagePort': only available in JavaScript"
#endif
gTypeMessagePort = GType gTypeMessagePort'


data MouseEvent = MouseEvent (JSRef MouseEvent)

unMouseEvent (MouseEvent o) = o

class UIEventClass o => MouseEventClass o
toMouseEvent :: MouseEventClass o => o -> MouseEvent
toMouseEvent = unsafeCastGObject . toGObject

instance MouseEventClass MouseEvent
instance UIEventClass MouseEvent
instance EventClass MouseEvent
instance GObjectClass MouseEvent where
  toGObject = GObject . castRef . unMouseEvent
  unsafeCastGObject = MouseEvent . castRef . unGObject

castToMouseEvent :: GObjectClass obj => obj -> MouseEvent
castToMouseEvent = castTo gTypeMouseEvent "MouseEvent"

#ifdef __GHCJS__
foreign import javascript unsafe "window.MouseEvent" gTypeMouseEvent' :: JSRef GType
#else
gTypeMouseEvent' = error "gTypeMouseEvent': only available in JavaScript"
#endif
gTypeMouseEvent = GType gTypeMouseEvent'


data NamedNodeMap = NamedNodeMap (JSRef NamedNodeMap)

unNamedNodeMap (NamedNodeMap o) = o

class GObjectClass o => NamedNodeMapClass o
toNamedNodeMap :: NamedNodeMapClass o => o -> NamedNodeMap
toNamedNodeMap = unsafeCastGObject . toGObject

instance NamedNodeMapClass NamedNodeMap
instance GObjectClass NamedNodeMap where
  toGObject = GObject . castRef . unNamedNodeMap
  unsafeCastGObject = NamedNodeMap . castRef . unGObject

castToNamedNodeMap :: GObjectClass obj => obj -> NamedNodeMap
castToNamedNodeMap = castTo gTypeNamedNodeMap "NamedNodeMap"

#ifdef __GHCJS__
foreign import javascript unsafe "window.NamedNodeMap" gTypeNamedNodeMap' :: JSRef GType
#else
gTypeNamedNodeMap' = error "gTypeNamedNodeMap': only available in JavaScript"
#endif
gTypeNamedNodeMap = GType gTypeNamedNodeMap'


data Navigator = Navigator (JSRef Navigator)

unNavigator (Navigator o) = o

class GObjectClass o => NavigatorClass o
toNavigator :: NavigatorClass o => o -> Navigator
toNavigator = unsafeCastGObject . toGObject

instance NavigatorClass Navigator
instance GObjectClass Navigator where
  toGObject = GObject . castRef . unNavigator
  unsafeCastGObject = Navigator . castRef . unGObject

castToNavigator :: GObjectClass obj => obj -> Navigator
castToNavigator = castTo gTypeNavigator "Navigator"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Navigator" gTypeNavigator' :: JSRef GType
#else
gTypeNavigator' = error "gTypeNavigator': only available in JavaScript"
#endif
gTypeNavigator = GType gTypeNavigator'


data Node = Node (JSRef Node)

unNode (Node o) = o

class GObjectClass o => NodeClass o
toNode :: NodeClass o => o -> Node
toNode = unsafeCastGObject . toGObject

instance NodeClass Node
instance GObjectClass Node where
  toGObject = GObject . castRef . unNode
  unsafeCastGObject = Node . castRef . unGObject

castToNode :: GObjectClass obj => obj -> Node
castToNode = castTo gTypeNode "Node"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Node" gTypeNode' :: JSRef GType
#else
gTypeNode' = error "gTypeNode': only available in JavaScript"
#endif
gTypeNode = GType gTypeNode'


data NodeFilter = NodeFilter (JSRef NodeFilter)

unNodeFilter (NodeFilter o) = o

class GObjectClass o => NodeFilterClass o
toNodeFilter :: NodeFilterClass o => o -> NodeFilter
toNodeFilter = unsafeCastGObject . toGObject

instance NodeFilterClass NodeFilter
instance GObjectClass NodeFilter where
  toGObject = GObject . castRef . unNodeFilter
  unsafeCastGObject = NodeFilter . castRef . unGObject

castToNodeFilter :: GObjectClass obj => obj -> NodeFilter
castToNodeFilter = castTo gTypeNodeFilter "NodeFilter"

#ifdef __GHCJS__
foreign import javascript unsafe "window.NodeFilter" gTypeNodeFilter' :: JSRef GType
#else
gTypeNodeFilter' = error "gTypeNodeFilter': only available in JavaScript"
#endif
gTypeNodeFilter = GType gTypeNodeFilter'


data NodeIterator = NodeIterator (JSRef NodeIterator)

unNodeIterator (NodeIterator o) = o

class GObjectClass o => NodeIteratorClass o
toNodeIterator :: NodeIteratorClass o => o -> NodeIterator
toNodeIterator = unsafeCastGObject . toGObject

instance NodeIteratorClass NodeIterator
instance GObjectClass NodeIterator where
  toGObject = GObject . castRef . unNodeIterator
  unsafeCastGObject = NodeIterator . castRef . unGObject

castToNodeIterator :: GObjectClass obj => obj -> NodeIterator
castToNodeIterator = castTo gTypeNodeIterator "NodeIterator"

#ifdef __GHCJS__
foreign import javascript unsafe "window.NodeIterator" gTypeNodeIterator' :: JSRef GType
#else
gTypeNodeIterator' = error "gTypeNodeIterator': only available in JavaScript"
#endif
gTypeNodeIterator = GType gTypeNodeIterator'


data NodeList = NodeList (JSRef NodeList)

unNodeList (NodeList o) = o

class GObjectClass o => NodeListClass o
toNodeList :: NodeListClass o => o -> NodeList
toNodeList = unsafeCastGObject . toGObject

instance NodeListClass NodeList
instance GObjectClass NodeList where
  toGObject = GObject . castRef . unNodeList
  unsafeCastGObject = NodeList . castRef . unGObject

castToNodeList :: GObjectClass obj => obj -> NodeList
castToNodeList = castTo gTypeNodeList "NodeList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.NodeList" gTypeNodeList' :: JSRef GType
#else
gTypeNodeList' = error "gTypeNodeList': only available in JavaScript"
#endif
gTypeNodeList = GType gTypeNodeList'


data ProcessingInstruction = ProcessingInstruction (JSRef ProcessingInstruction)

unProcessingInstruction (ProcessingInstruction o) = o

class NodeClass o => ProcessingInstructionClass o
toProcessingInstruction :: ProcessingInstructionClass o => o -> ProcessingInstruction
toProcessingInstruction = unsafeCastGObject . toGObject

instance ProcessingInstructionClass ProcessingInstruction
instance NodeClass ProcessingInstruction
instance GObjectClass ProcessingInstruction where
  toGObject = GObject . castRef . unProcessingInstruction
  unsafeCastGObject = ProcessingInstruction . castRef . unGObject

castToProcessingInstruction :: GObjectClass obj => obj -> ProcessingInstruction
castToProcessingInstruction = castTo gTypeProcessingInstruction "ProcessingInstruction"

#ifdef __GHCJS__
foreign import javascript unsafe "window.ProcessingInstruction" gTypeProcessingInstruction' :: JSRef GType
#else
gTypeProcessingInstruction' = error "gTypeProcessingInstruction': only available in JavaScript"
#endif
gTypeProcessingInstruction = GType gTypeProcessingInstruction'


data DOMRange = DOMRange (JSRef DOMRange)

unDOMRange (DOMRange o) = o

class GObjectClass o => DOMRangeClass o
toDOMRange :: DOMRangeClass o => o -> DOMRange
toDOMRange = unsafeCastGObject . toGObject

instance DOMRangeClass DOMRange
instance GObjectClass DOMRange where
  toGObject = GObject . castRef . unDOMRange
  unsafeCastGObject = DOMRange . castRef . unGObject

castToDOMRange :: GObjectClass obj => obj -> DOMRange
castToDOMRange = castTo gTypeDOMRange "DOMRange"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMRange" gTypeDOMRange' :: JSRef GType
#else
gTypeDOMRange' = error "gTypeDOMRange': only available in JavaScript"
#endif
gTypeDOMRange = GType gTypeDOMRange'


data DOMScreen = DOMScreen (JSRef DOMScreen)

unDOMScreen (DOMScreen o) = o

class GObjectClass o => DOMScreenClass o
toDOMScreen :: DOMScreenClass o => o -> DOMScreen
toDOMScreen = unsafeCastGObject . toGObject

instance DOMScreenClass DOMScreen
instance GObjectClass DOMScreen where
  toGObject = GObject . castRef . unDOMScreen
  unsafeCastGObject = DOMScreen . castRef . unGObject

castToDOMScreen :: GObjectClass obj => obj -> DOMScreen
castToDOMScreen = castTo gTypeDOMScreen "DOMScreen"

#ifdef __GHCJS__
foreign import javascript unsafe "window.DOMScreen" gTypeDOMScreen' :: JSRef GType
#else
gTypeDOMScreen' = error "gTypeDOMScreen': only available in JavaScript"
#endif
gTypeDOMScreen = GType gTypeDOMScreen'


data Storage = Storage (JSRef Storage)

unStorage (Storage o) = o

class GObjectClass o => StorageClass o
toStorage :: StorageClass o => o -> Storage
toStorage = unsafeCastGObject . toGObject

instance StorageClass Storage
instance GObjectClass Storage where
  toGObject = GObject . castRef . unStorage
  unsafeCastGObject = Storage . castRef . unGObject

castToStorage :: GObjectClass obj => obj -> Storage
castToStorage = castTo gTypeStorage "Storage"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Storage" gTypeStorage' :: JSRef GType
#else
gTypeStorage' = error "gTypeStorage': only available in JavaScript"
#endif
gTypeStorage = GType gTypeStorage'


data StorageInfo = StorageInfo (JSRef StorageInfo)

unStorageInfo (StorageInfo o) = o

class GObjectClass o => StorageInfoClass o
toStorageInfo :: StorageInfoClass o => o -> StorageInfo
toStorageInfo = unsafeCastGObject . toGObject

instance StorageInfoClass StorageInfo
instance GObjectClass StorageInfo where
  toGObject = GObject . castRef . unStorageInfo
  unsafeCastGObject = StorageInfo . castRef . unGObject

castToStorageInfo :: GObjectClass obj => obj -> StorageInfo
castToStorageInfo = castTo gTypeStorageInfo "StorageInfo"

#ifdef __GHCJS__
foreign import javascript unsafe "window.StorageInfo" gTypeStorageInfo' :: JSRef GType
#else
gTypeStorageInfo' = error "gTypeStorageInfo': only available in JavaScript"
#endif
gTypeStorageInfo = GType gTypeStorageInfo'


data StyleMedia = StyleMedia (JSRef StyleMedia)

unStyleMedia (StyleMedia o) = o

class GObjectClass o => StyleMediaClass o
toStyleMedia :: StyleMediaClass o => o -> StyleMedia
toStyleMedia = unsafeCastGObject . toGObject

instance StyleMediaClass StyleMedia
instance GObjectClass StyleMedia where
  toGObject = GObject . castRef . unStyleMedia
  unsafeCastGObject = StyleMedia . castRef . unGObject

castToStyleMedia :: GObjectClass obj => obj -> StyleMedia
castToStyleMedia = castTo gTypeStyleMedia "StyleMedia"

#ifdef __GHCJS__
foreign import javascript unsafe "window.StyleMedia" gTypeStyleMedia' :: JSRef GType
#else
gTypeStyleMedia' = error "gTypeStyleMedia': only available in JavaScript"
#endif
gTypeStyleMedia = GType gTypeStyleMedia'


data StyleSheet = StyleSheet (JSRef StyleSheet)

unStyleSheet (StyleSheet o) = o

class GObjectClass o => StyleSheetClass o
toStyleSheet :: StyleSheetClass o => o -> StyleSheet
toStyleSheet = unsafeCastGObject . toGObject

instance StyleSheetClass StyleSheet
instance GObjectClass StyleSheet where
  toGObject = GObject . castRef . unStyleSheet
  unsafeCastGObject = StyleSheet . castRef . unGObject

castToStyleSheet :: GObjectClass obj => obj -> StyleSheet
castToStyleSheet = castTo gTypeStyleSheet "StyleSheet"

#ifdef __GHCJS__
foreign import javascript unsafe "window.StyleSheet" gTypeStyleSheet' :: JSRef GType
#else
gTypeStyleSheet' = error "gTypeStyleSheet': only available in JavaScript"
#endif
gTypeStyleSheet = GType gTypeStyleSheet'


data StyleSheetList = StyleSheetList (JSRef StyleSheetList)

unStyleSheetList (StyleSheetList o) = o

class GObjectClass o => StyleSheetListClass o
toStyleSheetList :: StyleSheetListClass o => o -> StyleSheetList
toStyleSheetList = unsafeCastGObject . toGObject

instance StyleSheetListClass StyleSheetList
instance GObjectClass StyleSheetList where
  toGObject = GObject . castRef . unStyleSheetList
  unsafeCastGObject = StyleSheetList . castRef . unGObject

castToStyleSheetList :: GObjectClass obj => obj -> StyleSheetList
castToStyleSheetList = castTo gTypeStyleSheetList "StyleSheetList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.StyleSheetList" gTypeStyleSheetList' :: JSRef GType
#else
gTypeStyleSheetList' = error "gTypeStyleSheetList': only available in JavaScript"
#endif
gTypeStyleSheetList = GType gTypeStyleSheetList'


data Text = Text (JSRef Text)

unText (Text o) = o

class CharacterDataClass o => TextClass o
toText :: TextClass o => o -> Text
toText = unsafeCastGObject . toGObject

instance TextClass Text
instance CharacterDataClass Text
instance NodeClass Text
instance GObjectClass Text where
  toGObject = GObject . castRef . unText
  unsafeCastGObject = Text . castRef . unGObject

castToText :: GObjectClass obj => obj -> Text
castToText = castTo gTypeText "Text"

#ifdef __GHCJS__
foreign import javascript unsafe "window.Text" gTypeText' :: JSRef GType
#else
gTypeText' = error "gTypeText': only available in JavaScript"
#endif
gTypeText = GType gTypeText'


data TimeRanges = TimeRanges (JSRef TimeRanges)

unTimeRanges (TimeRanges o) = o

class GObjectClass o => TimeRangesClass o
toTimeRanges :: TimeRangesClass o => o -> TimeRanges
toTimeRanges = unsafeCastGObject . toGObject

instance TimeRangesClass TimeRanges
instance GObjectClass TimeRanges where
  toGObject = GObject . castRef . unTimeRanges
  unsafeCastGObject = TimeRanges . castRef . unGObject

castToTimeRanges :: GObjectClass obj => obj -> TimeRanges
castToTimeRanges = castTo gTypeTimeRanges "TimeRanges"

#ifdef __GHCJS__
foreign import javascript unsafe "window.TimeRanges" gTypeTimeRanges' :: JSRef GType
#else
gTypeTimeRanges' = error "gTypeTimeRanges': only available in JavaScript"
#endif
gTypeTimeRanges = GType gTypeTimeRanges'


data TreeWalker = TreeWalker (JSRef TreeWalker)

unTreeWalker (TreeWalker o) = o

class GObjectClass o => TreeWalkerClass o
toTreeWalker :: TreeWalkerClass o => o -> TreeWalker
toTreeWalker = unsafeCastGObject . toGObject

instance TreeWalkerClass TreeWalker
instance GObjectClass TreeWalker where
  toGObject = GObject . castRef . unTreeWalker
  unsafeCastGObject = TreeWalker . castRef . unGObject

castToTreeWalker :: GObjectClass obj => obj -> TreeWalker
castToTreeWalker = castTo gTypeTreeWalker "TreeWalker"

#ifdef __GHCJS__
foreign import javascript unsafe "window.TreeWalker" gTypeTreeWalker' :: JSRef GType
#else
gTypeTreeWalker' = error "gTypeTreeWalker': only available in JavaScript"
#endif
gTypeTreeWalker = GType gTypeTreeWalker'


data UIEvent = UIEvent (JSRef UIEvent)

unUIEvent (UIEvent o) = o

class EventClass o => UIEventClass o
toUIEvent :: UIEventClass o => o -> UIEvent
toUIEvent = unsafeCastGObject . toGObject

instance UIEventClass UIEvent
instance EventClass UIEvent
instance GObjectClass UIEvent where
  toGObject = GObject . castRef . unUIEvent
  unsafeCastGObject = UIEvent . castRef . unGObject

castToUIEvent :: GObjectClass obj => obj -> UIEvent
castToUIEvent = castTo gTypeUIEvent "UIEvent"

#ifdef __GHCJS__
foreign import javascript unsafe "window.UIEvent" gTypeUIEvent' :: JSRef GType
#else
gTypeUIEvent' = error "gTypeUIEvent': only available in JavaScript"
#endif
gTypeUIEvent = GType gTypeUIEvent'


data ValidityState = ValidityState (JSRef ValidityState)

unValidityState (ValidityState o) = o

class GObjectClass o => ValidityStateClass o
toValidityState :: ValidityStateClass o => o -> ValidityState
toValidityState = unsafeCastGObject . toGObject

instance ValidityStateClass ValidityState
instance GObjectClass ValidityState where
  toGObject = GObject . castRef . unValidityState
  unsafeCastGObject = ValidityState . castRef . unGObject

castToValidityState :: GObjectClass obj => obj -> ValidityState
castToValidityState = castTo gTypeValidityState "ValidityState"

#ifdef __GHCJS__
foreign import javascript unsafe "window.ValidityState" gTypeValidityState' :: JSRef GType
#else
gTypeValidityState' = error "gTypeValidityState': only available in JavaScript"
#endif
gTypeValidityState = GType gTypeValidityState'


data WebKitAnimation = WebKitAnimation (JSRef WebKitAnimation)

unWebKitAnimation (WebKitAnimation o) = o

class GObjectClass o => WebKitAnimationClass o
toWebKitAnimation :: WebKitAnimationClass o => o -> WebKitAnimation
toWebKitAnimation = unsafeCastGObject . toGObject

instance WebKitAnimationClass WebKitAnimation
instance GObjectClass WebKitAnimation where
  toGObject = GObject . castRef . unWebKitAnimation
  unsafeCastGObject = WebKitAnimation . castRef . unGObject

castToWebKitAnimation :: GObjectClass obj => obj -> WebKitAnimation
castToWebKitAnimation = castTo gTypeWebKitAnimation "WebKitAnimation"

#ifdef __GHCJS__
foreign import javascript unsafe "window.WebKitAnimation" gTypeWebKitAnimation' :: JSRef GType
#else
gTypeWebKitAnimation' = error "gTypeWebKitAnimation': only available in JavaScript"
#endif
gTypeWebKitAnimation = GType gTypeWebKitAnimation'


data WebKitAnimationList = WebKitAnimationList (JSRef WebKitAnimationList)

unWebKitAnimationList (WebKitAnimationList o) = o

class GObjectClass o => WebKitAnimationListClass o
toWebKitAnimationList :: WebKitAnimationListClass o => o -> WebKitAnimationList
toWebKitAnimationList = unsafeCastGObject . toGObject

instance WebKitAnimationListClass WebKitAnimationList
instance GObjectClass WebKitAnimationList where
  toGObject = GObject . castRef . unWebKitAnimationList
  unsafeCastGObject = WebKitAnimationList . castRef . unGObject

castToWebKitAnimationList :: GObjectClass obj => obj -> WebKitAnimationList
castToWebKitAnimationList = castTo gTypeWebKitAnimationList "WebKitAnimationList"

#ifdef __GHCJS__
foreign import javascript unsafe "window.WebKitAnimationList" gTypeWebKitAnimationList' :: JSRef GType
#else
gTypeWebKitAnimationList' = error "gTypeWebKitAnimationList': only available in JavaScript"
#endif
gTypeWebKitAnimationList = GType gTypeWebKitAnimationList'


data WebKitNamedFlow = WebKitNamedFlow (JSRef WebKitNamedFlow)

unWebKitNamedFlow (WebKitNamedFlow o) = o

class GObjectClass o => WebKitNamedFlowClass o
toWebKitNamedFlow :: WebKitNamedFlowClass o => o -> WebKitNamedFlow
toWebKitNamedFlow = unsafeCastGObject . toGObject

instance WebKitNamedFlowClass WebKitNamedFlow
instance GObjectClass WebKitNamedFlow where
  toGObject = GObject . castRef . unWebKitNamedFlow
  unsafeCastGObject = WebKitNamedFlow . castRef . unGObject

castToWebKitNamedFlow :: GObjectClass obj => obj -> WebKitNamedFlow
castToWebKitNamedFlow = castTo gTypeWebKitNamedFlow "WebKitNamedFlow"

#ifdef __GHCJS__
foreign import javascript unsafe "window.WebKitNamedFlow" gTypeWebKitNamedFlow' :: JSRef GType
#else
gTypeWebKitNamedFlow' = error "gTypeWebKitNamedFlow': only available in JavaScript"
#endif
gTypeWebKitNamedFlow = GType gTypeWebKitNamedFlow'


data WebKitPoint = WebKitPoint (JSRef WebKitPoint)

unWebKitPoint (WebKitPoint o) = o

class GObjectClass o => WebKitPointClass o
toWebKitPoint :: WebKitPointClass o => o -> WebKitPoint
toWebKitPoint = unsafeCastGObject . toGObject

instance WebKitPointClass WebKitPoint
instance GObjectClass WebKitPoint where
  toGObject = GObject . castRef . unWebKitPoint
  unsafeCastGObject = WebKitPoint . castRef . unGObject

castToWebKitPoint :: GObjectClass obj => obj -> WebKitPoint
castToWebKitPoint = castTo gTypeWebKitPoint "WebKitPoint"

#ifdef __GHCJS__
foreign import javascript unsafe "window.WebKitPoint" gTypeWebKitPoint' :: JSRef GType
#else
gTypeWebKitPoint' = error "gTypeWebKitPoint': only available in JavaScript"
#endif
gTypeWebKitPoint = GType gTypeWebKitPoint'


data XPathExpression = XPathExpression (JSRef XPathExpression)

unXPathExpression (XPathExpression o) = o

class GObjectClass o => XPathExpressionClass o
toXPathExpression :: XPathExpressionClass o => o -> XPathExpression
toXPathExpression = unsafeCastGObject . toGObject

instance XPathExpressionClass XPathExpression
instance GObjectClass XPathExpression where
  toGObject = GObject . castRef . unXPathExpression
  unsafeCastGObject = XPathExpression . castRef . unGObject

castToXPathExpression :: GObjectClass obj => obj -> XPathExpression
castToXPathExpression = castTo gTypeXPathExpression "XPathExpression"

#ifdef __GHCJS__
foreign import javascript unsafe "window.XPathExpression" gTypeXPathExpression' :: JSRef GType
#else
gTypeXPathExpression' = error "gTypeXPathExpression': only available in JavaScript"
#endif
gTypeXPathExpression = GType gTypeXPathExpression'


data XPathNSResolver = XPathNSResolver (JSRef XPathNSResolver)

unXPathNSResolver (XPathNSResolver o) = o

class GObjectClass o => XPathNSResolverClass o
toXPathNSResolver :: XPathNSResolverClass o => o -> XPathNSResolver
toXPathNSResolver = unsafeCastGObject . toGObject

instance XPathNSResolverClass XPathNSResolver
instance GObjectClass XPathNSResolver where
  toGObject = GObject . castRef . unXPathNSResolver
  unsafeCastGObject = XPathNSResolver . castRef . unGObject

castToXPathNSResolver :: GObjectClass obj => obj -> XPathNSResolver
castToXPathNSResolver = castTo gTypeXPathNSResolver "XPathNSResolver"

#ifdef __GHCJS__
foreign import javascript unsafe "window.XPathNSResolver" gTypeXPathNSResolver' :: JSRef GType
#else
gTypeXPathNSResolver' = error "gTypeXPathNSResolver': only available in JavaScript"
#endif
gTypeXPathNSResolver = GType gTypeXPathNSResolver'


data XPathResult = XPathResult (JSRef XPathResult)

unXPathResult (XPathResult o) = o

class GObjectClass o => XPathResultClass o
toXPathResult :: XPathResultClass o => o -> XPathResult
toXPathResult = unsafeCastGObject . toGObject

instance XPathResultClass XPathResult
instance GObjectClass XPathResult where
  toGObject = GObject . castRef . unXPathResult
  unsafeCastGObject = XPathResult . castRef . unGObject

castToXPathResult :: GObjectClass obj => obj -> XPathResult
castToXPathResult = castTo gTypeXPathResult "XPathResult"

#ifdef __GHCJS__
foreign import javascript unsafe "window.XPathResult" gTypeXPathResult' :: JSRef GType
#else
gTypeXPathResult' = error "gTypeXPathResult': only available in JavaScript"
#endif
gTypeXPathResult = GType gTypeXPathResult'


