{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
#else
{-# LANGUAGE ConstraintKinds #-}
#endif
module GHCJS.DOM.Types (
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
    maybeJSNull, propagateGError, GType(..)
  , GObject(..), GObjectClass, toGObject, unGObject, castToGObject, gTypeGObject, unsafeCastGObject

-- AUTO GENERATION STARTS HERE
  , DOMAttr(DOMAttr), unDOMAttr, IsDOMAttr, toDOMAttr, castToDOMAttr, gTypeDOMAttr
  , BarInfo(BarInfo), unBarInfo, IsBarInfo, toBarInfo, castToBarInfo, gTypeBarInfo
  , Blob(Blob), unBlob, IsBlob, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, IsCDATASection, toCDATASection, castToCDATASection, gTypeCDATASection
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, IsCSSRuleList, toCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, IsCSSStyleDeclaration, toCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, IsCSSStyleSheet, toCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, castToCSSValue, gTypeCSSValue
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, castToCharacterData, gTypeCharacterData
  , Comment(Comment), unComment, IsComment, toComment, castToComment, gTypeComment
  , Console(Console), unConsole, IsConsole, toConsole, castToConsole, gTypeConsole
  , DOMApplicationCache(DOMApplicationCache), unDOMApplicationCache, IsDOMApplicationCache, toDOMApplicationCache, castToDOMApplicationCache, gTypeDOMApplicationCache
  , DOMImplementation(DOMImplementation), unDOMImplementation, IsDOMImplementation, toDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMMimeType(DOMMimeType), unDOMMimeType, IsDOMMimeType, toDOMMimeType, castToDOMMimeType, gTypeDOMMimeType
  , DOMMimeTypeArray(DOMMimeTypeArray), unDOMMimeTypeArray, IsDOMMimeTypeArray, toDOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray
  , DOMPlugin(DOMPlugin), unDOMPlugin, IsDOMPlugin, toDOMPlugin, castToDOMPlugin, gTypeDOMPlugin
  , DOMPluginArray(DOMPluginArray), unDOMPluginArray, IsDOMPluginArray, toDOMPluginArray, castToDOMPluginArray, gTypeDOMPluginArray
  , DOMSecurityPolicy(DOMSecurityPolicy), unDOMSecurityPolicy, IsDOMSecurityPolicy, toDOMSecurityPolicy, castToDOMSecurityPolicy, gTypeDOMSecurityPolicy
  , DOMSelection(DOMSelection), unDOMSelection, IsDOMSelection, toDOMSelection, castToDOMSelection, gTypeDOMSelection
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, IsDOMSettableTokenList, toDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, IsDOMStringList, toDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DOMWindow(DOMWindow), unDOMWindow, IsDOMWindow, toDOMWindow, castToDOMWindow, gTypeDOMWindow
  , Document(Document), unDocument, IsDocument, toDocument, castToDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, IsDocumentFragment, toDocumentFragment, castToDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, IsDocumentType, toDocumentType, castToDocumentType, gTypeDocumentType
  , Element(Element), unElement, IsElement, toElement, castToElement, gTypeElement
  , EntityReference(EntityReference), unEntityReference, IsEntityReference, toEntityReference, castToEntityReference, gTypeEntityReference
  , Event(Event), unEvent, IsEvent, toEvent, castToEvent, gTypeEvent
  , EventTarget(EventTarget), unEventTarget, IsEventTarget, toEventTarget, castToEventTarget, gTypeEventTarget
  , File(File), unFile, IsFile, toFile, castToFile, gTypeFile
  , FileList(FileList), unFileList, IsFileList, toFileList, castToFileList, gTypeFileList
  , Geolocation(Geolocation), unGeolocation, IsGeolocation, toGeolocation, castToGeolocation, gTypeGeolocation
  , HTMLAnchorElement(HTMLAnchorElement), unHTMLAnchorElement, IsHTMLAnchorElement, toHTMLAnchorElement, castToHTMLAnchorElement, gTypeHTMLAnchorElement
  , HTMLAppletElement(HTMLAppletElement), unHTMLAppletElement, IsHTMLAppletElement, toHTMLAppletElement, castToHTMLAppletElement, gTypeHTMLAppletElement
  , HTMLAreaElement(HTMLAreaElement), unHTMLAreaElement, IsHTMLAreaElement, toHTMLAreaElement, castToHTMLAreaElement, gTypeHTMLAreaElement
  , HTMLAudioElement(HTMLAudioElement), unHTMLAudioElement, IsHTMLAudioElement, toHTMLAudioElement, castToHTMLAudioElement, gTypeHTMLAudioElement
  , HTMLBRElement(HTMLBRElement), unHTMLBRElement, IsHTMLBRElement, toHTMLBRElement, castToHTMLBRElement, gTypeHTMLBRElement
  , HTMLBaseElement(HTMLBaseElement), unHTMLBaseElement, IsHTMLBaseElement, toHTMLBaseElement, castToHTMLBaseElement, gTypeHTMLBaseElement
  , HTMLBaseFontElement(HTMLBaseFontElement), unHTMLBaseFontElement, IsHTMLBaseFontElement, toHTMLBaseFontElement, castToHTMLBaseFontElement, gTypeHTMLBaseFontElement
  , HTMLBodyElement(HTMLBodyElement), unHTMLBodyElement, IsHTMLBodyElement, toHTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement
  , HTMLButtonElement(HTMLButtonElement), unHTMLButtonElement, IsHTMLButtonElement, toHTMLButtonElement, castToHTMLButtonElement, gTypeHTMLButtonElement
  , HTMLCanvasElement(HTMLCanvasElement), unHTMLCanvasElement, IsHTMLCanvasElement, toHTMLCanvasElement, castToHTMLCanvasElement, gTypeHTMLCanvasElement
  , HTMLCollection(HTMLCollection), unHTMLCollection, IsHTMLCollection, toHTMLCollection, castToHTMLCollection, gTypeHTMLCollection
  , HTMLDListElement(HTMLDListElement), unHTMLDListElement, IsHTMLDListElement, toHTMLDListElement, castToHTMLDListElement, gTypeHTMLDListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, IsHTMLDetailsElement, toHTMLDetailsElement, castToHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, IsHTMLDirectoryElement, toHTMLDirectoryElement, castToHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, IsHTMLDivElement, toHTMLDivElement, castToHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, IsHTMLDocument, toHTMLDocument, castToHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, IsHTMLElement, toHTMLElement, castToHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, IsHTMLEmbedElement, toHTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, IsHTMLFieldSetElement, toHTMLFieldSetElement, castToHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, IsHTMLFontElement, toHTMLFontElement, castToHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormElement(HTMLFormElement), unHTMLFormElement, IsHTMLFormElement, toHTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement
  , HTMLFrameElement(HTMLFrameElement), unHTMLFrameElement, IsHTMLFrameElement, toHTMLFrameElement, castToHTMLFrameElement, gTypeHTMLFrameElement
  , HTMLFrameSetElement(HTMLFrameSetElement), unHTMLFrameSetElement, IsHTMLFrameSetElement, toHTMLFrameSetElement, castToHTMLFrameSetElement, gTypeHTMLFrameSetElement
  , HTMLHRElement(HTMLHRElement), unHTMLHRElement, IsHTMLHRElement, toHTMLHRElement, castToHTMLHRElement, gTypeHTMLHRElement
  , HTMLHeadElement(HTMLHeadElement), unHTMLHeadElement, IsHTMLHeadElement, toHTMLHeadElement, castToHTMLHeadElement, gTypeHTMLHeadElement
  , HTMLHeadingElement(HTMLHeadingElement), unHTMLHeadingElement, IsHTMLHeadingElement, toHTMLHeadingElement, castToHTMLHeadingElement, gTypeHTMLHeadingElement
  , HTMLHtmlElement(HTMLHtmlElement), unHTMLHtmlElement, IsHTMLHtmlElement, toHTMLHtmlElement, castToHTMLHtmlElement, gTypeHTMLHtmlElement
  , HTMLIFrameElement(HTMLIFrameElement), unHTMLIFrameElement, IsHTMLIFrameElement, toHTMLIFrameElement, castToHTMLIFrameElement, gTypeHTMLIFrameElement
  , HTMLImageElement(HTMLImageElement), unHTMLImageElement, IsHTMLImageElement, toHTMLImageElement, castToHTMLImageElement, gTypeHTMLImageElement
  , HTMLInputElement(HTMLInputElement), unHTMLInputElement, IsHTMLInputElement, toHTMLInputElement, castToHTMLInputElement, gTypeHTMLInputElement
  , HTMLKeygenElement(HTMLKeygenElement), unHTMLKeygenElement, IsHTMLKeygenElement, toHTMLKeygenElement, castToHTMLKeygenElement, gTypeHTMLKeygenElement
  , HTMLLIElement(HTMLLIElement), unHTMLLIElement, IsHTMLLIElement, toHTMLLIElement, castToHTMLLIElement, gTypeHTMLLIElement
  , HTMLLabelElement(HTMLLabelElement), unHTMLLabelElement, IsHTMLLabelElement, toHTMLLabelElement, castToHTMLLabelElement, gTypeHTMLLabelElement
  , HTMLLegendElement(HTMLLegendElement), unHTMLLegendElement, IsHTMLLegendElement, toHTMLLegendElement, castToHTMLLegendElement, gTypeHTMLLegendElement
  , HTMLLinkElement(HTMLLinkElement), unHTMLLinkElement, IsHTMLLinkElement, toHTMLLinkElement, castToHTMLLinkElement, gTypeHTMLLinkElement
  , HTMLMapElement(HTMLMapElement), unHTMLMapElement, IsHTMLMapElement, toHTMLMapElement, castToHTMLMapElement, gTypeHTMLMapElement
  , HTMLMarqueeElement(HTMLMarqueeElement), unHTMLMarqueeElement, IsHTMLMarqueeElement, toHTMLMarqueeElement, castToHTMLMarqueeElement, gTypeHTMLMarqueeElement
  , HTMLMediaElement(HTMLMediaElement), unHTMLMediaElement, IsHTMLMediaElement, toHTMLMediaElement, castToHTMLMediaElement, gTypeHTMLMediaElement
  , HTMLMenuElement(HTMLMenuElement), unHTMLMenuElement, IsHTMLMenuElement, toHTMLMenuElement, castToHTMLMenuElement, gTypeHTMLMenuElement
  , HTMLMetaElement(HTMLMetaElement), unHTMLMetaElement, IsHTMLMetaElement, toHTMLMetaElement, castToHTMLMetaElement, gTypeHTMLMetaElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, IsHTMLModElement, toHTMLModElement, castToHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, IsHTMLOListElement, toHTMLOListElement, castToHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, IsHTMLObjectElement, toHTMLObjectElement, castToHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, IsHTMLOptGroupElement, toHTMLOptGroupElement, castToHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, IsHTMLOptionElement, toHTMLOptionElement, castToHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, IsHTMLOptionsCollection, toHTMLOptionsCollection, castToHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, IsHTMLParagraphElement, toHTMLParagraphElement, castToHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, IsHTMLParamElement, toHTMLParamElement, castToHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, IsHTMLPreElement, toHTMLPreElement, castToHTMLPreElement, gTypeHTMLPreElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, IsHTMLQuoteElement, toHTMLQuoteElement, castToHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, IsHTMLScriptElement, toHTMLScriptElement, castToHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, IsHTMLSelectElement, toHTMLSelectElement, castToHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, IsHTMLStyleElement, toHTMLStyleElement, castToHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, IsHTMLTableCaptionElement, toHTMLTableCaptionElement, castToHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, IsHTMLTableCellElement, toHTMLTableCellElement, castToHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, IsHTMLTableColElement, toHTMLTableColElement, castToHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, IsHTMLTableElement, toHTMLTableElement, castToHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, IsHTMLTableRowElement, toHTMLTableRowElement, castToHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, IsHTMLTableSectionElement, toHTMLTableSectionElement, castToHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, IsHTMLTextAreaElement, toHTMLTextAreaElement, castToHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, IsHTMLTitleElement, toHTMLTitleElement, castToHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, IsHTMLUListElement, toHTMLUListElement, castToHTMLUListElement, gTypeHTMLUListElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, IsHTMLVideoElement, toHTMLVideoElement, castToHTMLVideoElement, gTypeHTMLVideoElement
  , History(History), unHistory, IsHistory, toHistory, castToHistory, gTypeHistory
  , Location(Location), unLocation, IsLocation, toLocation, castToLocation, gTypeLocation
  , MediaError(MediaError), unMediaError, IsMediaError, toMediaError, castToMediaError, gTypeMediaError
  , MediaList(MediaList), unMediaList, IsMediaList, toMediaList, castToMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, IsMediaQueryList, toMediaQueryList, castToMediaQueryList, gTypeMediaQueryList
  , MemoryInfo(MemoryInfo), unMemoryInfo, IsMemoryInfo, toMemoryInfo, castToMemoryInfo, gTypeMemoryInfo
  , MessagePort(MessagePort), unMessagePort, IsMessagePort, toMessagePort, castToMessagePort, gTypeMessagePort
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, IsNamedNodeMap, toNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, IsNavigator, toNavigator, castToNavigator, gTypeNavigator
  , Node(Node), unNode, IsNode, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, IsNodeFilter, toNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, IsNodeIterator, toNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, castToNodeList, gTypeNodeList
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, IsProcessingInstruction, toProcessingInstruction, castToProcessingInstruction, gTypeProcessingInstruction
  , DOMRange(DOMRange), unDOMRange, IsDOMRange, toDOMRange, castToDOMRange, gTypeDOMRange
  , DOMScreen(DOMScreen), unDOMScreen, IsDOMScreen, toDOMScreen, castToDOMScreen, gTypeDOMScreen
  , Storage(Storage), unStorage, IsStorage, toStorage, castToStorage, gTypeStorage
  , StorageInfo(StorageInfo), unStorageInfo, IsStorageInfo, toStorageInfo, castToStorageInfo, gTypeStorageInfo
  , StyleMedia(StyleMedia), unStyleMedia, IsStyleMedia, toStyleMedia, castToStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, IsStyleSheet, toStyleSheet, castToStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, IsStyleSheetList, toStyleSheetList, castToStyleSheetList, gTypeStyleSheetList
  , Text(Text), unText, IsText, toText, castToText, gTypeText
  , TimeRanges(TimeRanges), unTimeRanges, IsTimeRanges, toTimeRanges, castToTimeRanges, gTypeTimeRanges
  , TreeWalker(TreeWalker), unTreeWalker, IsTreeWalker, toTreeWalker, castToTreeWalker, gTypeTreeWalker
  , UIEvent(UIEvent), unUIEvent, IsUIEvent, toUIEvent, castToUIEvent, gTypeUIEvent
  , ValidityState(ValidityState), unValidityState, IsValidityState, toValidityState, castToValidityState, gTypeValidityState
  , WebKitAnimation(WebKitAnimation), unWebKitAnimation, IsWebKitAnimation, toWebKitAnimation, castToWebKitAnimation, gTypeWebKitAnimation
  , WebKitAnimationList(WebKitAnimationList), unWebKitAnimationList, IsWebKitAnimationList, toWebKitAnimationList, castToWebKitAnimationList, gTypeWebKitAnimationList
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, IsWebKitNamedFlow, toWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitPoint(WebKitPoint), unWebKitPoint, IsWebKitPoint, toWebKitPoint, castToWebKitPoint, gTypeWebKitPoint
  , XPathExpression(XPathExpression), unXPathExpression, IsXPathExpression, toXPathExpression, castToXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, IsXPathNSResolver, toXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, IsXPathResult, toXPathResult, castToXPathResult, gTypeXPathResult
-- AUTO GENERATION ENDS HERE
#else
    propagateGError, GType(..)
  , module Graphics.UI.Gtk.WebKit.Types
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
  , IsWebKitNamedFlow
  , IsWebKitPoint
  , IsXPathExpression
  , IsXPathNSResolver
  , IsXPathResult
#endif
  ) where


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.Types (JSRef(..), castRef, isNull)
#else
import Graphics.UI.Gtk.WebKit.Types
import System.Glib (propagateGError, GType(..))
#endif

#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
#endif

-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMAttr = DOMAttr (JSRef DOMAttr)

unDOMAttr (DOMAttr o) = o

class IsNode o => IsDOMAttr o
toDOMAttr :: IsDOMAttr o => o -> DOMAttr
toDOMAttr = unsafeCastGObject . toGObject

instance IsDOMAttr DOMAttr
instance IsNode DOMAttr
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
#else
type IsDOMAttr o = DOMAttrClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data BarInfo = BarInfo (JSRef BarInfo)

unBarInfo (BarInfo o) = o

class GObjectClass o => IsBarInfo o
toBarInfo :: IsBarInfo o => o -> BarInfo
toBarInfo = unsafeCastGObject . toGObject

instance IsBarInfo BarInfo
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
#else
type IsBarInfo o = BarInfoClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Blob = Blob (JSRef Blob)

unBlob (Blob o) = o

class GObjectClass o => IsBlob o
toBlob :: IsBlob o => o -> Blob
toBlob = unsafeCastGObject . toGObject

instance IsBlob Blob
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
#else
type IsBlob o = BlobClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CDATASection = CDATASection (JSRef CDATASection)

unCDATASection (CDATASection o) = o

class IsText o => IsCDATASection o
toCDATASection :: IsCDATASection o => o -> CDATASection
toCDATASection = unsafeCastGObject . toGObject

instance IsCDATASection CDATASection
instance IsText CDATASection
instance IsCharacterData CDATASection
instance IsNode CDATASection
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
#else
type IsCDATASection o = CDATASectionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CSSRule = CSSRule (JSRef CSSRule)

unCSSRule (CSSRule o) = o

class GObjectClass o => IsCSSRule o
toCSSRule :: IsCSSRule o => o -> CSSRule
toCSSRule = unsafeCastGObject . toGObject

instance IsCSSRule CSSRule
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
#else
type IsCSSRule o = CSSRuleClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CSSRuleList = CSSRuleList (JSRef CSSRuleList)

unCSSRuleList (CSSRuleList o) = o

class GObjectClass o => IsCSSRuleList o
toCSSRuleList :: IsCSSRuleList o => o -> CSSRuleList
toCSSRuleList = unsafeCastGObject . toGObject

instance IsCSSRuleList CSSRuleList
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
#else
type IsCSSRuleList o = CSSRuleListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CSSStyleDeclaration = CSSStyleDeclaration (JSRef CSSStyleDeclaration)

unCSSStyleDeclaration (CSSStyleDeclaration o) = o

class GObjectClass o => IsCSSStyleDeclaration o
toCSSStyleDeclaration :: IsCSSStyleDeclaration o => o -> CSSStyleDeclaration
toCSSStyleDeclaration = unsafeCastGObject . toGObject

instance IsCSSStyleDeclaration CSSStyleDeclaration
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
#else
type IsCSSStyleDeclaration o = CSSStyleDeclarationClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CSSStyleSheet = CSSStyleSheet (JSRef CSSStyleSheet)

unCSSStyleSheet (CSSStyleSheet o) = o

class IsStyleSheet o => IsCSSStyleSheet o
toCSSStyleSheet :: IsCSSStyleSheet o => o -> CSSStyleSheet
toCSSStyleSheet = unsafeCastGObject . toGObject

instance IsCSSStyleSheet CSSStyleSheet
instance IsStyleSheet CSSStyleSheet
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
#else
type IsCSSStyleSheet o = CSSStyleSheetClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CSSValue = CSSValue (JSRef CSSValue)

unCSSValue (CSSValue o) = o

class GObjectClass o => IsCSSValue o
toCSSValue :: IsCSSValue o => o -> CSSValue
toCSSValue = unsafeCastGObject . toGObject

instance IsCSSValue CSSValue
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
#else
type IsCSSValue o = CSSValueClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data CharacterData = CharacterData (JSRef CharacterData)

unCharacterData (CharacterData o) = o

class IsNode o => IsCharacterData o
toCharacterData :: IsCharacterData o => o -> CharacterData
toCharacterData = unsafeCastGObject . toGObject

instance IsCharacterData CharacterData
instance IsNode CharacterData
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
#else
type IsCharacterData o = CharacterDataClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Comment = Comment (JSRef Comment)

unComment (Comment o) = o

class IsCharacterData o => IsComment o
toComment :: IsComment o => o -> Comment
toComment = unsafeCastGObject . toGObject

instance IsComment Comment
instance IsCharacterData Comment
instance IsNode Comment
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
#else
type IsComment o = CommentClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Console = Console (JSRef Console)

unConsole (Console o) = o

class GObjectClass o => IsConsole o
toConsole :: IsConsole o => o -> Console
toConsole = unsafeCastGObject . toGObject

instance IsConsole Console
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
#else
type IsConsole o = ConsoleClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMApplicationCache = DOMApplicationCache (JSRef DOMApplicationCache)

unDOMApplicationCache (DOMApplicationCache o) = o

class GObjectClass o => IsDOMApplicationCache o
toDOMApplicationCache :: IsDOMApplicationCache o => o -> DOMApplicationCache
toDOMApplicationCache = unsafeCastGObject . toGObject

instance IsDOMApplicationCache DOMApplicationCache
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
#else
type IsDOMApplicationCache o = DOMApplicationCacheClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMImplementation = DOMImplementation (JSRef DOMImplementation)

unDOMImplementation (DOMImplementation o) = o

class GObjectClass o => IsDOMImplementation o
toDOMImplementation :: IsDOMImplementation o => o -> DOMImplementation
toDOMImplementation = unsafeCastGObject . toGObject

instance IsDOMImplementation DOMImplementation
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
#else
type IsDOMImplementation o = DOMImplementationClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMMimeType = DOMMimeType (JSRef DOMMimeType)

unDOMMimeType (DOMMimeType o) = o

class GObjectClass o => IsDOMMimeType o
toDOMMimeType :: IsDOMMimeType o => o -> DOMMimeType
toDOMMimeType = unsafeCastGObject . toGObject

instance IsDOMMimeType DOMMimeType
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
#else
type IsDOMMimeType o = DOMMimeTypeClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMMimeTypeArray = DOMMimeTypeArray (JSRef DOMMimeTypeArray)

unDOMMimeTypeArray (DOMMimeTypeArray o) = o

class GObjectClass o => IsDOMMimeTypeArray o
toDOMMimeTypeArray :: IsDOMMimeTypeArray o => o -> DOMMimeTypeArray
toDOMMimeTypeArray = unsafeCastGObject . toGObject

instance IsDOMMimeTypeArray DOMMimeTypeArray
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
#else
type IsDOMMimeTypeArray o = DOMMimeTypeArrayClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMPlugin = DOMPlugin (JSRef DOMPlugin)

unDOMPlugin (DOMPlugin o) = o

class GObjectClass o => IsDOMPlugin o
toDOMPlugin :: IsDOMPlugin o => o -> DOMPlugin
toDOMPlugin = unsafeCastGObject . toGObject

instance IsDOMPlugin DOMPlugin
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
#else
type IsDOMPlugin o = DOMPluginClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMPluginArray = DOMPluginArray (JSRef DOMPluginArray)

unDOMPluginArray (DOMPluginArray o) = o

class GObjectClass o => IsDOMPluginArray o
toDOMPluginArray :: IsDOMPluginArray o => o -> DOMPluginArray
toDOMPluginArray = unsafeCastGObject . toGObject

instance IsDOMPluginArray DOMPluginArray
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
#else
type IsDOMPluginArray o = DOMPluginArrayClass o
#endif

#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMSecurityPolicy = DOMSecurityPolicy (JSRef DOMSecurityPolicy)

unDOMSecurityPolicy (DOMSecurityPolicy o) = o

class GObjectClass o => IsDOMSecurityPolicy o
toDOMSecurityPolicy :: IsDOMSecurityPolicy o => o -> DOMSecurityPolicy
toDOMSecurityPolicy = unsafeCastGObject . toGObject

instance IsDOMSecurityPolicy DOMSecurityPolicy
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
#else
#endif

#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMSelection = DOMSelection (JSRef DOMSelection)

unDOMSelection (DOMSelection o) = o

class GObjectClass o => IsDOMSelection o
toDOMSelection :: IsDOMSelection o => o -> DOMSelection
toDOMSelection = unsafeCastGObject . toGObject

instance IsDOMSelection DOMSelection
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
#else
type IsDOMSelection o = DOMSelectionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMSettableTokenList = DOMSettableTokenList (JSRef DOMSettableTokenList)

unDOMSettableTokenList (DOMSettableTokenList o) = o

class IsDOMTokenList o => IsDOMSettableTokenList o
toDOMSettableTokenList :: IsDOMSettableTokenList o => o -> DOMSettableTokenList
toDOMSettableTokenList = unsafeCastGObject . toGObject

instance IsDOMSettableTokenList DOMSettableTokenList
instance IsDOMTokenList DOMSettableTokenList
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
#else
type IsDOMSettableTokenList o = DOMSettableTokenListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMStringList = DOMStringList (JSRef DOMStringList)

unDOMStringList (DOMStringList o) = o

class GObjectClass o => IsDOMStringList o
toDOMStringList :: IsDOMStringList o => o -> DOMStringList
toDOMStringList = unsafeCastGObject . toGObject

instance IsDOMStringList DOMStringList
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
#else
type IsDOMStringList o = DOMStringListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMTokenList = DOMTokenList (JSRef DOMTokenList)

unDOMTokenList (DOMTokenList o) = o

class GObjectClass o => IsDOMTokenList o
toDOMTokenList :: IsDOMTokenList o => o -> DOMTokenList
toDOMTokenList = unsafeCastGObject . toGObject

instance IsDOMTokenList DOMTokenList
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
#else
type IsDOMTokenList o = DOMTokenListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMWindow = DOMWindow (JSRef DOMWindow)

unDOMWindow (DOMWindow o) = o

class GObjectClass o => IsDOMWindow o
toDOMWindow :: IsDOMWindow o => o -> DOMWindow
toDOMWindow = unsafeCastGObject . toGObject

instance IsDOMWindow DOMWindow
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
#else
type IsDOMWindow o = DOMWindowClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Document = Document (JSRef Document)

unDocument (Document o) = o

class IsNode o => IsDocument o
toDocument :: IsDocument o => o -> Document
toDocument = unsafeCastGObject . toGObject

instance IsDocument Document
instance IsNode Document
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
#else
type IsDocument o = DocumentClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DocumentFragment = DocumentFragment (JSRef DocumentFragment)

unDocumentFragment (DocumentFragment o) = o

class IsNode o => IsDocumentFragment o
toDocumentFragment :: IsDocumentFragment o => o -> DocumentFragment
toDocumentFragment = unsafeCastGObject . toGObject

instance IsDocumentFragment DocumentFragment
instance IsNode DocumentFragment
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
#else
type IsDocumentFragment o = DocumentFragmentClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DocumentType = DocumentType (JSRef DocumentType)

unDocumentType (DocumentType o) = o

class IsNode o => IsDocumentType o
toDocumentType :: IsDocumentType o => o -> DocumentType
toDocumentType = unsafeCastGObject . toGObject

instance IsDocumentType DocumentType
instance IsNode DocumentType
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
#else
type IsDocumentType o = DocumentTypeClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Element = Element (JSRef Element)

unElement (Element o) = o

class IsNode o => IsElement o
toElement :: IsElement o => o -> Element
toElement = unsafeCastGObject . toGObject

instance IsElement Element
instance IsNode Element
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
#else
type IsElement o = ElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data EntityReference = EntityReference (JSRef EntityReference)

unEntityReference (EntityReference o) = o

class IsNode o => IsEntityReference o
toEntityReference :: IsEntityReference o => o -> EntityReference
toEntityReference = unsafeCastGObject . toGObject

instance IsEntityReference EntityReference
instance IsNode EntityReference
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
#else
type IsEntityReference o = EntityReferenceClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Event = Event (JSRef Event)

unEvent (Event o) = o

class GObjectClass o => IsEvent o
toEvent :: IsEvent o => o -> Event
toEvent = unsafeCastGObject . toGObject

instance IsEvent Event
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
#else
type IsEvent o = EventClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data EventTarget = EventTarget (JSRef EventTarget)

unEventTarget (EventTarget o) = o

class GObjectClass o => IsEventTarget o
toEventTarget :: IsEventTarget o => o -> EventTarget
toEventTarget = unsafeCastGObject . toGObject

instance IsEventTarget EventTarget
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
#else
type IsEventTarget o = EventTargetClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data File = File (JSRef File)

unFile (File o) = o

class IsBlob o => IsFile o
toFile :: IsFile o => o -> File
toFile = unsafeCastGObject . toGObject

instance IsFile File
instance IsBlob File
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
#else
type IsFile o = FileClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data FileList = FileList (JSRef FileList)

unFileList (FileList o) = o

class GObjectClass o => IsFileList o
toFileList :: IsFileList o => o -> FileList
toFileList = unsafeCastGObject . toGObject

instance IsFileList FileList
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
#else
type IsFileList o = FileListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Geolocation = Geolocation (JSRef Geolocation)

unGeolocation (Geolocation o) = o

class GObjectClass o => IsGeolocation o
toGeolocation :: IsGeolocation o => o -> Geolocation
toGeolocation = unsafeCastGObject . toGObject

instance IsGeolocation Geolocation
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
#else
type IsGeolocation o = GeolocationClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLAnchorElement = HTMLAnchorElement (JSRef HTMLAnchorElement)

unHTMLAnchorElement (HTMLAnchorElement o) = o

class IsHTMLElement o => IsHTMLAnchorElement o
toHTMLAnchorElement :: IsHTMLAnchorElement o => o -> HTMLAnchorElement
toHTMLAnchorElement = unsafeCastGObject . toGObject

instance IsHTMLAnchorElement HTMLAnchorElement
instance IsHTMLElement HTMLAnchorElement
instance IsElement HTMLAnchorElement
instance IsNode HTMLAnchorElement
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
#else
type IsHTMLAnchorElement o = HTMLAnchorElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLAppletElement = HTMLAppletElement (JSRef HTMLAppletElement)

unHTMLAppletElement (HTMLAppletElement o) = o

class IsHTMLElement o => IsHTMLAppletElement o
toHTMLAppletElement :: IsHTMLAppletElement o => o -> HTMLAppletElement
toHTMLAppletElement = unsafeCastGObject . toGObject

instance IsHTMLAppletElement HTMLAppletElement
instance IsHTMLElement HTMLAppletElement
instance IsElement HTMLAppletElement
instance IsNode HTMLAppletElement
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
#else
type IsHTMLAppletElement o = HTMLAppletElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLAreaElement = HTMLAreaElement (JSRef HTMLAreaElement)

unHTMLAreaElement (HTMLAreaElement o) = o

class IsHTMLElement o => IsHTMLAreaElement o
toHTMLAreaElement :: IsHTMLAreaElement o => o -> HTMLAreaElement
toHTMLAreaElement = unsafeCastGObject . toGObject

instance IsHTMLAreaElement HTMLAreaElement
instance IsHTMLElement HTMLAreaElement
instance IsElement HTMLAreaElement
instance IsNode HTMLAreaElement
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
#else
type IsHTMLAreaElement o = HTMLAreaElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLAudioElement = HTMLAudioElement (JSRef HTMLAudioElement)

unHTMLAudioElement (HTMLAudioElement o) = o

class IsHTMLMediaElement o => IsHTMLAudioElement o
toHTMLAudioElement :: IsHTMLAudioElement o => o -> HTMLAudioElement
toHTMLAudioElement = unsafeCastGObject . toGObject

instance IsHTMLAudioElement HTMLAudioElement
instance IsHTMLMediaElement HTMLAudioElement
instance IsHTMLElement HTMLAudioElement
instance IsElement HTMLAudioElement
instance IsNode HTMLAudioElement
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
#else
type IsHTMLAudioElement o = HTMLAudioElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLBRElement = HTMLBRElement (JSRef HTMLBRElement)

unHTMLBRElement (HTMLBRElement o) = o

class IsHTMLElement o => IsHTMLBRElement o
toHTMLBRElement :: IsHTMLBRElement o => o -> HTMLBRElement
toHTMLBRElement = unsafeCastGObject . toGObject

instance IsHTMLBRElement HTMLBRElement
instance IsHTMLElement HTMLBRElement
instance IsElement HTMLBRElement
instance IsNode HTMLBRElement
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
#else
type IsHTMLBRElement o = HTMLBRElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLBaseElement = HTMLBaseElement (JSRef HTMLBaseElement)

unHTMLBaseElement (HTMLBaseElement o) = o

class IsHTMLElement o => IsHTMLBaseElement o
toHTMLBaseElement :: IsHTMLBaseElement o => o -> HTMLBaseElement
toHTMLBaseElement = unsafeCastGObject . toGObject

instance IsHTMLBaseElement HTMLBaseElement
instance IsHTMLElement HTMLBaseElement
instance IsElement HTMLBaseElement
instance IsNode HTMLBaseElement
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
#else
type IsHTMLBaseElement o = HTMLBaseElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLBaseFontElement = HTMLBaseFontElement (JSRef HTMLBaseFontElement)

unHTMLBaseFontElement (HTMLBaseFontElement o) = o

class IsHTMLElement o => IsHTMLBaseFontElement o
toHTMLBaseFontElement :: IsHTMLBaseFontElement o => o -> HTMLBaseFontElement
toHTMLBaseFontElement = unsafeCastGObject . toGObject

instance IsHTMLBaseFontElement HTMLBaseFontElement
instance IsHTMLElement HTMLBaseFontElement
instance IsElement HTMLBaseFontElement
instance IsNode HTMLBaseFontElement
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
#else
type IsHTMLBaseFontElement o = HTMLBaseFontElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLBodyElement = HTMLBodyElement (JSRef HTMLBodyElement)

unHTMLBodyElement (HTMLBodyElement o) = o

class IsHTMLElement o => IsHTMLBodyElement o
toHTMLBodyElement :: IsHTMLBodyElement o => o -> HTMLBodyElement
toHTMLBodyElement = unsafeCastGObject . toGObject

instance IsHTMLBodyElement HTMLBodyElement
instance IsHTMLElement HTMLBodyElement
instance IsElement HTMLBodyElement
instance IsNode HTMLBodyElement
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
#else
type IsHTMLBodyElement o = HTMLBodyElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLButtonElement = HTMLButtonElement (JSRef HTMLButtonElement)

unHTMLButtonElement (HTMLButtonElement o) = o

class IsHTMLElement o => IsHTMLButtonElement o
toHTMLButtonElement :: IsHTMLButtonElement o => o -> HTMLButtonElement
toHTMLButtonElement = unsafeCastGObject . toGObject

instance IsHTMLButtonElement HTMLButtonElement
instance IsHTMLElement HTMLButtonElement
instance IsElement HTMLButtonElement
instance IsNode HTMLButtonElement
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
#else
type IsHTMLButtonElement o = HTMLButtonElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLCanvasElement = HTMLCanvasElement (JSRef HTMLCanvasElement)

unHTMLCanvasElement (HTMLCanvasElement o) = o

class IsHTMLElement o => IsHTMLCanvasElement o
toHTMLCanvasElement :: IsHTMLCanvasElement o => o -> HTMLCanvasElement
toHTMLCanvasElement = unsafeCastGObject . toGObject

instance IsHTMLCanvasElement HTMLCanvasElement
instance IsHTMLElement HTMLCanvasElement
instance IsElement HTMLCanvasElement
instance IsNode HTMLCanvasElement
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
#else
type IsHTMLCanvasElement o = HTMLCanvasElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLCollection = HTMLCollection (JSRef HTMLCollection)

unHTMLCollection (HTMLCollection o) = o

class GObjectClass o => IsHTMLCollection o
toHTMLCollection :: IsHTMLCollection o => o -> HTMLCollection
toHTMLCollection = unsafeCastGObject . toGObject

instance IsHTMLCollection HTMLCollection
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
#else
type IsHTMLCollection o = HTMLCollectionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLDListElement = HTMLDListElement (JSRef HTMLDListElement)

unHTMLDListElement (HTMLDListElement o) = o

class IsHTMLElement o => IsHTMLDListElement o
toHTMLDListElement :: IsHTMLDListElement o => o -> HTMLDListElement
toHTMLDListElement = unsafeCastGObject . toGObject

instance IsHTMLDListElement HTMLDListElement
instance IsHTMLElement HTMLDListElement
instance IsElement HTMLDListElement
instance IsNode HTMLDListElement
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
#else
type IsHTMLDListElement o = HTMLDListElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLDetailsElement = HTMLDetailsElement (JSRef HTMLDetailsElement)

unHTMLDetailsElement (HTMLDetailsElement o) = o

class IsHTMLElement o => IsHTMLDetailsElement o
toHTMLDetailsElement :: IsHTMLDetailsElement o => o -> HTMLDetailsElement
toHTMLDetailsElement = unsafeCastGObject . toGObject

instance IsHTMLDetailsElement HTMLDetailsElement
instance IsHTMLElement HTMLDetailsElement
instance IsElement HTMLDetailsElement
instance IsNode HTMLDetailsElement
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
#else
type IsHTMLDetailsElement o = HTMLDetailsElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLDirectoryElement = HTMLDirectoryElement (JSRef HTMLDirectoryElement)

unHTMLDirectoryElement (HTMLDirectoryElement o) = o

class IsHTMLElement o => IsHTMLDirectoryElement o
toHTMLDirectoryElement :: IsHTMLDirectoryElement o => o -> HTMLDirectoryElement
toHTMLDirectoryElement = unsafeCastGObject . toGObject

instance IsHTMLDirectoryElement HTMLDirectoryElement
instance IsHTMLElement HTMLDirectoryElement
instance IsElement HTMLDirectoryElement
instance IsNode HTMLDirectoryElement
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
#else
type IsHTMLDirectoryElement o = HTMLDirectoryElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLDivElement = HTMLDivElement (JSRef HTMLDivElement)

unHTMLDivElement (HTMLDivElement o) = o

class IsHTMLElement o => IsHTMLDivElement o
toHTMLDivElement :: IsHTMLDivElement o => o -> HTMLDivElement
toHTMLDivElement = unsafeCastGObject . toGObject

instance IsHTMLDivElement HTMLDivElement
instance IsHTMLElement HTMLDivElement
instance IsElement HTMLDivElement
instance IsNode HTMLDivElement
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
#else
type IsHTMLDivElement o = HTMLDivElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLDocument = HTMLDocument (JSRef HTMLDocument)

unHTMLDocument (HTMLDocument o) = o

class IsDocument o => IsHTMLDocument o
toHTMLDocument :: IsHTMLDocument o => o -> HTMLDocument
toHTMLDocument = unsafeCastGObject . toGObject

instance IsHTMLDocument HTMLDocument
instance IsDocument HTMLDocument
instance IsNode HTMLDocument
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
#else
type IsHTMLDocument o = HTMLDocumentClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLElement = HTMLElement (JSRef HTMLElement)

unHTMLElement (HTMLElement o) = o

class IsElement o => IsHTMLElement o
toHTMLElement :: IsHTMLElement o => o -> HTMLElement
toHTMLElement = unsafeCastGObject . toGObject

instance IsHTMLElement HTMLElement
instance IsElement HTMLElement
instance IsNode HTMLElement
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
#else
type IsHTMLElement o = HTMLElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLEmbedElement = HTMLEmbedElement (JSRef HTMLEmbedElement)

unHTMLEmbedElement (HTMLEmbedElement o) = o

class IsHTMLElement o => IsHTMLEmbedElement o
toHTMLEmbedElement :: IsHTMLEmbedElement o => o -> HTMLEmbedElement
toHTMLEmbedElement = unsafeCastGObject . toGObject

instance IsHTMLEmbedElement HTMLEmbedElement
instance IsHTMLElement HTMLEmbedElement
instance IsElement HTMLEmbedElement
instance IsNode HTMLEmbedElement
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
#else
type IsHTMLEmbedElement o = HTMLEmbedElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLFieldSetElement = HTMLFieldSetElement (JSRef HTMLFieldSetElement)

unHTMLFieldSetElement (HTMLFieldSetElement o) = o

class IsHTMLElement o => IsHTMLFieldSetElement o
toHTMLFieldSetElement :: IsHTMLFieldSetElement o => o -> HTMLFieldSetElement
toHTMLFieldSetElement = unsafeCastGObject . toGObject

instance IsHTMLFieldSetElement HTMLFieldSetElement
instance IsHTMLElement HTMLFieldSetElement
instance IsElement HTMLFieldSetElement
instance IsNode HTMLFieldSetElement
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
#else
type IsHTMLFieldSetElement o = HTMLFieldSetElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLFontElement = HTMLFontElement (JSRef HTMLFontElement)

unHTMLFontElement (HTMLFontElement o) = o

class IsHTMLElement o => IsHTMLFontElement o
toHTMLFontElement :: IsHTMLFontElement o => o -> HTMLFontElement
toHTMLFontElement = unsafeCastGObject . toGObject

instance IsHTMLFontElement HTMLFontElement
instance IsHTMLElement HTMLFontElement
instance IsElement HTMLFontElement
instance IsNode HTMLFontElement
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
#else
type IsHTMLFontElement o = HTMLFontElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLFormElement = HTMLFormElement (JSRef HTMLFormElement)

unHTMLFormElement (HTMLFormElement o) = o

class IsHTMLElement o => IsHTMLFormElement o
toHTMLFormElement :: IsHTMLFormElement o => o -> HTMLFormElement
toHTMLFormElement = unsafeCastGObject . toGObject

instance IsHTMLFormElement HTMLFormElement
instance IsHTMLElement HTMLFormElement
instance IsElement HTMLFormElement
instance IsNode HTMLFormElement
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
#else
type IsHTMLFormElement o = HTMLFormElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLFrameElement = HTMLFrameElement (JSRef HTMLFrameElement)

unHTMLFrameElement (HTMLFrameElement o) = o

class IsHTMLElement o => IsHTMLFrameElement o
toHTMLFrameElement :: IsHTMLFrameElement o => o -> HTMLFrameElement
toHTMLFrameElement = unsafeCastGObject . toGObject

instance IsHTMLFrameElement HTMLFrameElement
instance IsHTMLElement HTMLFrameElement
instance IsElement HTMLFrameElement
instance IsNode HTMLFrameElement
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
#else
type IsHTMLFrameElement o = HTMLFrameElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLFrameSetElement = HTMLFrameSetElement (JSRef HTMLFrameSetElement)

unHTMLFrameSetElement (HTMLFrameSetElement o) = o

class IsHTMLElement o => IsHTMLFrameSetElement o
toHTMLFrameSetElement :: IsHTMLFrameSetElement o => o -> HTMLFrameSetElement
toHTMLFrameSetElement = unsafeCastGObject . toGObject

instance IsHTMLFrameSetElement HTMLFrameSetElement
instance IsHTMLElement HTMLFrameSetElement
instance IsElement HTMLFrameSetElement
instance IsNode HTMLFrameSetElement
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
#else
type IsHTMLFrameSetElement o = HTMLFrameSetElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLHRElement = HTMLHRElement (JSRef HTMLHRElement)

unHTMLHRElement (HTMLHRElement o) = o

class IsHTMLElement o => IsHTMLHRElement o
toHTMLHRElement :: IsHTMLHRElement o => o -> HTMLHRElement
toHTMLHRElement = unsafeCastGObject . toGObject

instance IsHTMLHRElement HTMLHRElement
instance IsHTMLElement HTMLHRElement
instance IsElement HTMLHRElement
instance IsNode HTMLHRElement
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
#else
type IsHTMLHRElement o = HTMLHRElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLHeadElement = HTMLHeadElement (JSRef HTMLHeadElement)

unHTMLHeadElement (HTMLHeadElement o) = o

class IsHTMLElement o => IsHTMLHeadElement o
toHTMLHeadElement :: IsHTMLHeadElement o => o -> HTMLHeadElement
toHTMLHeadElement = unsafeCastGObject . toGObject

instance IsHTMLHeadElement HTMLHeadElement
instance IsHTMLElement HTMLHeadElement
instance IsElement HTMLHeadElement
instance IsNode HTMLHeadElement
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
#else
type IsHTMLHeadElement o = HTMLHeadElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLHeadingElement = HTMLHeadingElement (JSRef HTMLHeadingElement)

unHTMLHeadingElement (HTMLHeadingElement o) = o

class IsHTMLElement o => IsHTMLHeadingElement o
toHTMLHeadingElement :: IsHTMLHeadingElement o => o -> HTMLHeadingElement
toHTMLHeadingElement = unsafeCastGObject . toGObject

instance IsHTMLHeadingElement HTMLHeadingElement
instance IsHTMLElement HTMLHeadingElement
instance IsElement HTMLHeadingElement
instance IsNode HTMLHeadingElement
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
#else
type IsHTMLHeadingElement o = HTMLHeadingElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLHtmlElement = HTMLHtmlElement (JSRef HTMLHtmlElement)

unHTMLHtmlElement (HTMLHtmlElement o) = o

class IsHTMLElement o => IsHTMLHtmlElement o
toHTMLHtmlElement :: IsHTMLHtmlElement o => o -> HTMLHtmlElement
toHTMLHtmlElement = unsafeCastGObject . toGObject

instance IsHTMLHtmlElement HTMLHtmlElement
instance IsHTMLElement HTMLHtmlElement
instance IsElement HTMLHtmlElement
instance IsNode HTMLHtmlElement
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
#else
type IsHTMLHtmlElement o = HTMLHtmlElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLIFrameElement = HTMLIFrameElement (JSRef HTMLIFrameElement)

unHTMLIFrameElement (HTMLIFrameElement o) = o

class IsHTMLElement o => IsHTMLIFrameElement o
toHTMLIFrameElement :: IsHTMLIFrameElement o => o -> HTMLIFrameElement
toHTMLIFrameElement = unsafeCastGObject . toGObject

instance IsHTMLIFrameElement HTMLIFrameElement
instance IsHTMLElement HTMLIFrameElement
instance IsElement HTMLIFrameElement
instance IsNode HTMLIFrameElement
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
#else
type IsHTMLIFrameElement o = HTMLIFrameElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLImageElement = HTMLImageElement (JSRef HTMLImageElement)

unHTMLImageElement (HTMLImageElement o) = o

class IsHTMLElement o => IsHTMLImageElement o
toHTMLImageElement :: IsHTMLImageElement o => o -> HTMLImageElement
toHTMLImageElement = unsafeCastGObject . toGObject

instance IsHTMLImageElement HTMLImageElement
instance IsHTMLElement HTMLImageElement
instance IsElement HTMLImageElement
instance IsNode HTMLImageElement
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
#else
type IsHTMLImageElement o = HTMLImageElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLInputElement = HTMLInputElement (JSRef HTMLInputElement)

unHTMLInputElement (HTMLInputElement o) = o

class IsHTMLElement o => IsHTMLInputElement o
toHTMLInputElement :: IsHTMLInputElement o => o -> HTMLInputElement
toHTMLInputElement = unsafeCastGObject . toGObject

instance IsHTMLInputElement HTMLInputElement
instance IsHTMLElement HTMLInputElement
instance IsElement HTMLInputElement
instance IsNode HTMLInputElement
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
#else
type IsHTMLInputElement o = HTMLInputElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLKeygenElement = HTMLKeygenElement (JSRef HTMLKeygenElement)

unHTMLKeygenElement (HTMLKeygenElement o) = o

class IsHTMLElement o => IsHTMLKeygenElement o
toHTMLKeygenElement :: IsHTMLKeygenElement o => o -> HTMLKeygenElement
toHTMLKeygenElement = unsafeCastGObject . toGObject

instance IsHTMLKeygenElement HTMLKeygenElement
instance IsHTMLElement HTMLKeygenElement
instance IsElement HTMLKeygenElement
instance IsNode HTMLKeygenElement
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
#else
type IsHTMLKeygenElement o = HTMLKeygenElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLLIElement = HTMLLIElement (JSRef HTMLLIElement)

unHTMLLIElement (HTMLLIElement o) = o

class IsHTMLElement o => IsHTMLLIElement o
toHTMLLIElement :: IsHTMLLIElement o => o -> HTMLLIElement
toHTMLLIElement = unsafeCastGObject . toGObject

instance IsHTMLLIElement HTMLLIElement
instance IsHTMLElement HTMLLIElement
instance IsElement HTMLLIElement
instance IsNode HTMLLIElement
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
#else
type IsHTMLLIElement o = HTMLLIElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLLabelElement = HTMLLabelElement (JSRef HTMLLabelElement)

unHTMLLabelElement (HTMLLabelElement o) = o

class IsHTMLElement o => IsHTMLLabelElement o
toHTMLLabelElement :: IsHTMLLabelElement o => o -> HTMLLabelElement
toHTMLLabelElement = unsafeCastGObject . toGObject

instance IsHTMLLabelElement HTMLLabelElement
instance IsHTMLElement HTMLLabelElement
instance IsElement HTMLLabelElement
instance IsNode HTMLLabelElement
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
#else
type IsHTMLLabelElement o = HTMLLabelElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLLegendElement = HTMLLegendElement (JSRef HTMLLegendElement)

unHTMLLegendElement (HTMLLegendElement o) = o

class IsHTMLElement o => IsHTMLLegendElement o
toHTMLLegendElement :: IsHTMLLegendElement o => o -> HTMLLegendElement
toHTMLLegendElement = unsafeCastGObject . toGObject

instance IsHTMLLegendElement HTMLLegendElement
instance IsHTMLElement HTMLLegendElement
instance IsElement HTMLLegendElement
instance IsNode HTMLLegendElement
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
#else
type IsHTMLLegendElement o = HTMLLegendElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLLinkElement = HTMLLinkElement (JSRef HTMLLinkElement)

unHTMLLinkElement (HTMLLinkElement o) = o

class IsHTMLElement o => IsHTMLLinkElement o
toHTMLLinkElement :: IsHTMLLinkElement o => o -> HTMLLinkElement
toHTMLLinkElement = unsafeCastGObject . toGObject

instance IsHTMLLinkElement HTMLLinkElement
instance IsHTMLElement HTMLLinkElement
instance IsElement HTMLLinkElement
instance IsNode HTMLLinkElement
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
#else
type IsHTMLLinkElement o = HTMLLinkElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLMapElement = HTMLMapElement (JSRef HTMLMapElement)

unHTMLMapElement (HTMLMapElement o) = o

class IsHTMLElement o => IsHTMLMapElement o
toHTMLMapElement :: IsHTMLMapElement o => o -> HTMLMapElement
toHTMLMapElement = unsafeCastGObject . toGObject

instance IsHTMLMapElement HTMLMapElement
instance IsHTMLElement HTMLMapElement
instance IsElement HTMLMapElement
instance IsNode HTMLMapElement
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
#else
type IsHTMLMapElement o = HTMLMapElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLMarqueeElement = HTMLMarqueeElement (JSRef HTMLMarqueeElement)

unHTMLMarqueeElement (HTMLMarqueeElement o) = o

class IsHTMLElement o => IsHTMLMarqueeElement o
toHTMLMarqueeElement :: IsHTMLMarqueeElement o => o -> HTMLMarqueeElement
toHTMLMarqueeElement = unsafeCastGObject . toGObject

instance IsHTMLMarqueeElement HTMLMarqueeElement
instance IsHTMLElement HTMLMarqueeElement
instance IsElement HTMLMarqueeElement
instance IsNode HTMLMarqueeElement
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
#else
type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLMediaElement = HTMLMediaElement (JSRef HTMLMediaElement)

unHTMLMediaElement (HTMLMediaElement o) = o

class IsHTMLElement o => IsHTMLMediaElement o
toHTMLMediaElement :: IsHTMLMediaElement o => o -> HTMLMediaElement
toHTMLMediaElement = unsafeCastGObject . toGObject

instance IsHTMLMediaElement HTMLMediaElement
instance IsHTMLElement HTMLMediaElement
instance IsElement HTMLMediaElement
instance IsNode HTMLMediaElement
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
#else
type IsHTMLMediaElement o = HTMLMediaElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLMenuElement = HTMLMenuElement (JSRef HTMLMenuElement)

unHTMLMenuElement (HTMLMenuElement o) = o

class IsHTMLElement o => IsHTMLMenuElement o
toHTMLMenuElement :: IsHTMLMenuElement o => o -> HTMLMenuElement
toHTMLMenuElement = unsafeCastGObject . toGObject

instance IsHTMLMenuElement HTMLMenuElement
instance IsHTMLElement HTMLMenuElement
instance IsElement HTMLMenuElement
instance IsNode HTMLMenuElement
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
#else
type IsHTMLMenuElement o = HTMLMenuElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLMetaElement = HTMLMetaElement (JSRef HTMLMetaElement)

unHTMLMetaElement (HTMLMetaElement o) = o

class IsHTMLElement o => IsHTMLMetaElement o
toHTMLMetaElement :: IsHTMLMetaElement o => o -> HTMLMetaElement
toHTMLMetaElement = unsafeCastGObject . toGObject

instance IsHTMLMetaElement HTMLMetaElement
instance IsHTMLElement HTMLMetaElement
instance IsElement HTMLMetaElement
instance IsNode HTMLMetaElement
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
#else
type IsHTMLMetaElement o = HTMLMetaElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLModElement = HTMLModElement (JSRef HTMLModElement)

unHTMLModElement (HTMLModElement o) = o

class IsHTMLElement o => IsHTMLModElement o
toHTMLModElement :: IsHTMLModElement o => o -> HTMLModElement
toHTMLModElement = unsafeCastGObject . toGObject

instance IsHTMLModElement HTMLModElement
instance IsHTMLElement HTMLModElement
instance IsElement HTMLModElement
instance IsNode HTMLModElement
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
#else
type IsHTMLModElement o = HTMLModElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLOListElement = HTMLOListElement (JSRef HTMLOListElement)

unHTMLOListElement (HTMLOListElement o) = o

class IsHTMLElement o => IsHTMLOListElement o
toHTMLOListElement :: IsHTMLOListElement o => o -> HTMLOListElement
toHTMLOListElement = unsafeCastGObject . toGObject

instance IsHTMLOListElement HTMLOListElement
instance IsHTMLElement HTMLOListElement
instance IsElement HTMLOListElement
instance IsNode HTMLOListElement
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
#else
type IsHTMLOListElement o = HTMLOListElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLObjectElement = HTMLObjectElement (JSRef HTMLObjectElement)

unHTMLObjectElement (HTMLObjectElement o) = o

class IsHTMLElement o => IsHTMLObjectElement o
toHTMLObjectElement :: IsHTMLObjectElement o => o -> HTMLObjectElement
toHTMLObjectElement = unsafeCastGObject . toGObject

instance IsHTMLObjectElement HTMLObjectElement
instance IsHTMLElement HTMLObjectElement
instance IsElement HTMLObjectElement
instance IsNode HTMLObjectElement
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
#else
type IsHTMLObjectElement o = HTMLObjectElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLOptGroupElement = HTMLOptGroupElement (JSRef HTMLOptGroupElement)

unHTMLOptGroupElement (HTMLOptGroupElement o) = o

class IsHTMLElement o => IsHTMLOptGroupElement o
toHTMLOptGroupElement :: IsHTMLOptGroupElement o => o -> HTMLOptGroupElement
toHTMLOptGroupElement = unsafeCastGObject . toGObject

instance IsHTMLOptGroupElement HTMLOptGroupElement
instance IsHTMLElement HTMLOptGroupElement
instance IsElement HTMLOptGroupElement
instance IsNode HTMLOptGroupElement
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
#else
type IsHTMLOptGroupElement o = HTMLOptGroupElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLOptionElement = HTMLOptionElement (JSRef HTMLOptionElement)

unHTMLOptionElement (HTMLOptionElement o) = o

class IsHTMLElement o => IsHTMLOptionElement o
toHTMLOptionElement :: IsHTMLOptionElement o => o -> HTMLOptionElement
toHTMLOptionElement = unsafeCastGObject . toGObject

instance IsHTMLOptionElement HTMLOptionElement
instance IsHTMLElement HTMLOptionElement
instance IsElement HTMLOptionElement
instance IsNode HTMLOptionElement
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
#else
type IsHTMLOptionElement o = HTMLOptionElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLOptionsCollection = HTMLOptionsCollection (JSRef HTMLOptionsCollection)

unHTMLOptionsCollection (HTMLOptionsCollection o) = o

class IsHTMLCollection o => IsHTMLOptionsCollection o
toHTMLOptionsCollection :: IsHTMLOptionsCollection o => o -> HTMLOptionsCollection
toHTMLOptionsCollection = unsafeCastGObject . toGObject

instance IsHTMLOptionsCollection HTMLOptionsCollection
instance IsHTMLCollection HTMLOptionsCollection
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
#else
type IsHTMLOptionsCollection o = HTMLOptionsCollectionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLParagraphElement = HTMLParagraphElement (JSRef HTMLParagraphElement)

unHTMLParagraphElement (HTMLParagraphElement o) = o

class IsHTMLElement o => IsHTMLParagraphElement o
toHTMLParagraphElement :: IsHTMLParagraphElement o => o -> HTMLParagraphElement
toHTMLParagraphElement = unsafeCastGObject . toGObject

instance IsHTMLParagraphElement HTMLParagraphElement
instance IsHTMLElement HTMLParagraphElement
instance IsElement HTMLParagraphElement
instance IsNode HTMLParagraphElement
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
#else
type IsHTMLParagraphElement o = HTMLParagraphElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLParamElement = HTMLParamElement (JSRef HTMLParamElement)

unHTMLParamElement (HTMLParamElement o) = o

class IsHTMLElement o => IsHTMLParamElement o
toHTMLParamElement :: IsHTMLParamElement o => o -> HTMLParamElement
toHTMLParamElement = unsafeCastGObject . toGObject

instance IsHTMLParamElement HTMLParamElement
instance IsHTMLElement HTMLParamElement
instance IsElement HTMLParamElement
instance IsNode HTMLParamElement
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
#else
type IsHTMLParamElement o = HTMLParamElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLPreElement = HTMLPreElement (JSRef HTMLPreElement)

unHTMLPreElement (HTMLPreElement o) = o

class IsHTMLElement o => IsHTMLPreElement o
toHTMLPreElement :: IsHTMLPreElement o => o -> HTMLPreElement
toHTMLPreElement = unsafeCastGObject . toGObject

instance IsHTMLPreElement HTMLPreElement
instance IsHTMLElement HTMLPreElement
instance IsElement HTMLPreElement
instance IsNode HTMLPreElement
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
#else
type IsHTMLPreElement o = HTMLPreElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLQuoteElement = HTMLQuoteElement (JSRef HTMLQuoteElement)

unHTMLQuoteElement (HTMLQuoteElement o) = o

class IsHTMLElement o => IsHTMLQuoteElement o
toHTMLQuoteElement :: IsHTMLQuoteElement o => o -> HTMLQuoteElement
toHTMLQuoteElement = unsafeCastGObject . toGObject

instance IsHTMLQuoteElement HTMLQuoteElement
instance IsHTMLElement HTMLQuoteElement
instance IsElement HTMLQuoteElement
instance IsNode HTMLQuoteElement
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
#else
type IsHTMLQuoteElement o = HTMLQuoteElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLScriptElement = HTMLScriptElement (JSRef HTMLScriptElement)

unHTMLScriptElement (HTMLScriptElement o) = o

class IsHTMLElement o => IsHTMLScriptElement o
toHTMLScriptElement :: IsHTMLScriptElement o => o -> HTMLScriptElement
toHTMLScriptElement = unsafeCastGObject . toGObject

instance IsHTMLScriptElement HTMLScriptElement
instance IsHTMLElement HTMLScriptElement
instance IsElement HTMLScriptElement
instance IsNode HTMLScriptElement
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
#else
type IsHTMLScriptElement o = HTMLScriptElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLSelectElement = HTMLSelectElement (JSRef HTMLSelectElement)

unHTMLSelectElement (HTMLSelectElement o) = o

class IsHTMLElement o => IsHTMLSelectElement o
toHTMLSelectElement :: IsHTMLSelectElement o => o -> HTMLSelectElement
toHTMLSelectElement = unsafeCastGObject . toGObject

instance IsHTMLSelectElement HTMLSelectElement
instance IsHTMLElement HTMLSelectElement
instance IsElement HTMLSelectElement
instance IsNode HTMLSelectElement
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
#else
type IsHTMLSelectElement o = HTMLSelectElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLStyleElement = HTMLStyleElement (JSRef HTMLStyleElement)

unHTMLStyleElement (HTMLStyleElement o) = o

class IsHTMLElement o => IsHTMLStyleElement o
toHTMLStyleElement :: IsHTMLStyleElement o => o -> HTMLStyleElement
toHTMLStyleElement = unsafeCastGObject . toGObject

instance IsHTMLStyleElement HTMLStyleElement
instance IsHTMLElement HTMLStyleElement
instance IsElement HTMLStyleElement
instance IsNode HTMLStyleElement
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
#else
type IsHTMLStyleElement o = HTMLStyleElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableCaptionElement = HTMLTableCaptionElement (JSRef HTMLTableCaptionElement)

unHTMLTableCaptionElement (HTMLTableCaptionElement o) = o

class IsHTMLElement o => IsHTMLTableCaptionElement o
toHTMLTableCaptionElement :: IsHTMLTableCaptionElement o => o -> HTMLTableCaptionElement
toHTMLTableCaptionElement = unsafeCastGObject . toGObject

instance IsHTMLTableCaptionElement HTMLTableCaptionElement
instance IsHTMLElement HTMLTableCaptionElement
instance IsElement HTMLTableCaptionElement
instance IsNode HTMLTableCaptionElement
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
#else
type IsHTMLTableCaptionElement o = HTMLTableCaptionElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableCellElement = HTMLTableCellElement (JSRef HTMLTableCellElement)

unHTMLTableCellElement (HTMLTableCellElement o) = o

class IsHTMLElement o => IsHTMLTableCellElement o
toHTMLTableCellElement :: IsHTMLTableCellElement o => o -> HTMLTableCellElement
toHTMLTableCellElement = unsafeCastGObject . toGObject

instance IsHTMLTableCellElement HTMLTableCellElement
instance IsHTMLElement HTMLTableCellElement
instance IsElement HTMLTableCellElement
instance IsNode HTMLTableCellElement
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
#else
type IsHTMLTableCellElement o = HTMLTableCellElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableColElement = HTMLTableColElement (JSRef HTMLTableColElement)

unHTMLTableColElement (HTMLTableColElement o) = o

class IsHTMLElement o => IsHTMLTableColElement o
toHTMLTableColElement :: IsHTMLTableColElement o => o -> HTMLTableColElement
toHTMLTableColElement = unsafeCastGObject . toGObject

instance IsHTMLTableColElement HTMLTableColElement
instance IsHTMLElement HTMLTableColElement
instance IsElement HTMLTableColElement
instance IsNode HTMLTableColElement
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
#else
type IsHTMLTableColElement o = HTMLTableColElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableElement = HTMLTableElement (JSRef HTMLTableElement)

unHTMLTableElement (HTMLTableElement o) = o

class IsHTMLElement o => IsHTMLTableElement o
toHTMLTableElement :: IsHTMLTableElement o => o -> HTMLTableElement
toHTMLTableElement = unsafeCastGObject . toGObject

instance IsHTMLTableElement HTMLTableElement
instance IsHTMLElement HTMLTableElement
instance IsElement HTMLTableElement
instance IsNode HTMLTableElement
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
#else
type IsHTMLTableElement o = HTMLTableElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableRowElement = HTMLTableRowElement (JSRef HTMLTableRowElement)

unHTMLTableRowElement (HTMLTableRowElement o) = o

class IsHTMLElement o => IsHTMLTableRowElement o
toHTMLTableRowElement :: IsHTMLTableRowElement o => o -> HTMLTableRowElement
toHTMLTableRowElement = unsafeCastGObject . toGObject

instance IsHTMLTableRowElement HTMLTableRowElement
instance IsHTMLElement HTMLTableRowElement
instance IsElement HTMLTableRowElement
instance IsNode HTMLTableRowElement
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
#else
type IsHTMLTableRowElement o = HTMLTableRowElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTableSectionElement = HTMLTableSectionElement (JSRef HTMLTableSectionElement)

unHTMLTableSectionElement (HTMLTableSectionElement o) = o

class IsHTMLElement o => IsHTMLTableSectionElement o
toHTMLTableSectionElement :: IsHTMLTableSectionElement o => o -> HTMLTableSectionElement
toHTMLTableSectionElement = unsafeCastGObject . toGObject

instance IsHTMLTableSectionElement HTMLTableSectionElement
instance IsHTMLElement HTMLTableSectionElement
instance IsElement HTMLTableSectionElement
instance IsNode HTMLTableSectionElement
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
#else
type IsHTMLTableSectionElement o = HTMLTableSectionElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTextAreaElement = HTMLTextAreaElement (JSRef HTMLTextAreaElement)

unHTMLTextAreaElement (HTMLTextAreaElement o) = o

class IsHTMLElement o => IsHTMLTextAreaElement o
toHTMLTextAreaElement :: IsHTMLTextAreaElement o => o -> HTMLTextAreaElement
toHTMLTextAreaElement = unsafeCastGObject . toGObject

instance IsHTMLTextAreaElement HTMLTextAreaElement
instance IsHTMLElement HTMLTextAreaElement
instance IsElement HTMLTextAreaElement
instance IsNode HTMLTextAreaElement
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
#else
type IsHTMLTextAreaElement o = HTMLTextAreaElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLTitleElement = HTMLTitleElement (JSRef HTMLTitleElement)

unHTMLTitleElement (HTMLTitleElement o) = o

class IsHTMLElement o => IsHTMLTitleElement o
toHTMLTitleElement :: IsHTMLTitleElement o => o -> HTMLTitleElement
toHTMLTitleElement = unsafeCastGObject . toGObject

instance IsHTMLTitleElement HTMLTitleElement
instance IsHTMLElement HTMLTitleElement
instance IsElement HTMLTitleElement
instance IsNode HTMLTitleElement
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
#else
type IsHTMLTitleElement o = HTMLTitleElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLUListElement = HTMLUListElement (JSRef HTMLUListElement)

unHTMLUListElement (HTMLUListElement o) = o

class IsHTMLElement o => IsHTMLUListElement o
toHTMLUListElement :: IsHTMLUListElement o => o -> HTMLUListElement
toHTMLUListElement = unsafeCastGObject . toGObject

instance IsHTMLUListElement HTMLUListElement
instance IsHTMLElement HTMLUListElement
instance IsElement HTMLUListElement
instance IsNode HTMLUListElement
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
#else
type IsHTMLUListElement o = HTMLUListElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data HTMLVideoElement = HTMLVideoElement (JSRef HTMLVideoElement)

unHTMLVideoElement (HTMLVideoElement o) = o

class IsHTMLMediaElement o => IsHTMLVideoElement o
toHTMLVideoElement :: IsHTMLVideoElement o => o -> HTMLVideoElement
toHTMLVideoElement = unsafeCastGObject . toGObject

instance IsHTMLVideoElement HTMLVideoElement
instance IsHTMLMediaElement HTMLVideoElement
instance IsHTMLElement HTMLVideoElement
instance IsElement HTMLVideoElement
instance IsNode HTMLVideoElement
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
#else
type IsHTMLVideoElement o = HTMLVideoElementClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data History = History (JSRef History)

unHistory (History o) = o

class GObjectClass o => IsHistory o
toHistory :: IsHistory o => o -> History
toHistory = unsafeCastGObject . toGObject

instance IsHistory History
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
#else
type IsHistory o = HistoryClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Location = Location (JSRef Location)

unLocation (Location o) = o

class GObjectClass o => IsLocation o
toLocation :: IsLocation o => o -> Location
toLocation = unsafeCastGObject . toGObject

instance IsLocation Location
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
#else
type IsLocation o = LocationClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MediaError = MediaError (JSRef MediaError)

unMediaError (MediaError o) = o

class GObjectClass o => IsMediaError o
toMediaError :: IsMediaError o => o -> MediaError
toMediaError = unsafeCastGObject . toGObject

instance IsMediaError MediaError
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
#else
type IsMediaError o = MediaErrorClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MediaList = MediaList (JSRef MediaList)

unMediaList (MediaList o) = o

class GObjectClass o => IsMediaList o
toMediaList :: IsMediaList o => o -> MediaList
toMediaList = unsafeCastGObject . toGObject

instance IsMediaList MediaList
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
#else
type IsMediaList o = MediaListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MediaQueryList = MediaQueryList (JSRef MediaQueryList)

unMediaQueryList (MediaQueryList o) = o

class GObjectClass o => IsMediaQueryList o
toMediaQueryList :: IsMediaQueryList o => o -> MediaQueryList
toMediaQueryList = unsafeCastGObject . toGObject

instance IsMediaQueryList MediaQueryList
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
#else
type IsMediaQueryList o = MediaQueryListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MemoryInfo = MemoryInfo (JSRef MemoryInfo)

unMemoryInfo (MemoryInfo o) = o

class GObjectClass o => IsMemoryInfo o
toMemoryInfo :: IsMemoryInfo o => o -> MemoryInfo
toMemoryInfo = unsafeCastGObject . toGObject

instance IsMemoryInfo MemoryInfo
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
#else
type IsMemoryInfo o = MemoryInfoClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MessagePort = MessagePort (JSRef MessagePort)

unMessagePort (MessagePort o) = o

class GObjectClass o => IsMessagePort o
toMessagePort :: IsMessagePort o => o -> MessagePort
toMessagePort = unsafeCastGObject . toGObject

instance IsMessagePort MessagePort
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
#else
type IsMessagePort o = MessagePortClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data MouseEvent = MouseEvent (JSRef MouseEvent)

unMouseEvent (MouseEvent o) = o

class IsUIEvent o => IsMouseEvent o
toMouseEvent :: IsMouseEvent o => o -> MouseEvent
toMouseEvent = unsafeCastGObject . toGObject

instance IsMouseEvent MouseEvent
instance IsUIEvent MouseEvent
instance IsEvent MouseEvent
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
#else
type IsMouseEvent o = MouseEventClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data NamedNodeMap = NamedNodeMap (JSRef NamedNodeMap)

unNamedNodeMap (NamedNodeMap o) = o

class GObjectClass o => IsNamedNodeMap o
toNamedNodeMap :: IsNamedNodeMap o => o -> NamedNodeMap
toNamedNodeMap = unsafeCastGObject . toGObject

instance IsNamedNodeMap NamedNodeMap
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
#else
type IsNamedNodeMap o = NamedNodeMapClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Navigator = Navigator (JSRef Navigator)

unNavigator (Navigator o) = o

class GObjectClass o => IsNavigator o
toNavigator :: IsNavigator o => o -> Navigator
toNavigator = unsafeCastGObject . toGObject

instance IsNavigator Navigator
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
#else
type IsNavigator o = NavigatorClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Node = Node (JSRef Node)

unNode (Node o) = o

class GObjectClass o => IsNode o
toNode :: IsNode o => o -> Node
toNode = unsafeCastGObject . toGObject

instance IsNode Node
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
#else
type IsNode o = NodeClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data NodeFilter = NodeFilter (JSRef NodeFilter)

unNodeFilter (NodeFilter o) = o

class GObjectClass o => IsNodeFilter o
toNodeFilter :: IsNodeFilter o => o -> NodeFilter
toNodeFilter = unsafeCastGObject . toGObject

instance IsNodeFilter NodeFilter
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
#else
type IsNodeFilter o = NodeFilterClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data NodeIterator = NodeIterator (JSRef NodeIterator)

unNodeIterator (NodeIterator o) = o

class GObjectClass o => IsNodeIterator o
toNodeIterator :: IsNodeIterator o => o -> NodeIterator
toNodeIterator = unsafeCastGObject . toGObject

instance IsNodeIterator NodeIterator
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
#else
type IsNodeIterator o = NodeIteratorClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data NodeList = NodeList (JSRef NodeList)

unNodeList (NodeList o) = o

class GObjectClass o => IsNodeList o
toNodeList :: IsNodeList o => o -> NodeList
toNodeList = unsafeCastGObject . toGObject

instance IsNodeList NodeList
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
#else
type IsNodeList o = NodeListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data ProcessingInstruction = ProcessingInstruction (JSRef ProcessingInstruction)

unProcessingInstruction (ProcessingInstruction o) = o

class IsNode o => IsProcessingInstruction o
toProcessingInstruction :: IsProcessingInstruction o => o -> ProcessingInstruction
toProcessingInstruction = unsafeCastGObject . toGObject

instance IsProcessingInstruction ProcessingInstruction
instance IsNode ProcessingInstruction
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
#else
type IsProcessingInstruction o = ProcessingInstructionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMRange = DOMRange (JSRef DOMRange)

unDOMRange (DOMRange o) = o

class GObjectClass o => IsDOMRange o
toDOMRange :: IsDOMRange o => o -> DOMRange
toDOMRange = unsafeCastGObject . toGObject

instance IsDOMRange DOMRange
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
#else
type IsDOMRange o = DOMRangeClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data DOMScreen = DOMScreen (JSRef DOMScreen)

unDOMScreen (DOMScreen o) = o

class GObjectClass o => IsDOMScreen o
toDOMScreen :: IsDOMScreen o => o -> DOMScreen
toDOMScreen = unsafeCastGObject . toGObject

instance IsDOMScreen DOMScreen
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
#else
type IsDOMScreen o = DOMScreenClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Storage = Storage (JSRef Storage)

unStorage (Storage o) = o

class GObjectClass o => IsStorage o
toStorage :: IsStorage o => o -> Storage
toStorage = unsafeCastGObject . toGObject

instance IsStorage Storage
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
#else
type IsStorage o = StorageClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data StorageInfo = StorageInfo (JSRef StorageInfo)

unStorageInfo (StorageInfo o) = o

class GObjectClass o => IsStorageInfo o
toStorageInfo :: IsStorageInfo o => o -> StorageInfo
toStorageInfo = unsafeCastGObject . toGObject

instance IsStorageInfo StorageInfo
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
#else
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data StyleMedia = StyleMedia (JSRef StyleMedia)

unStyleMedia (StyleMedia o) = o

class GObjectClass o => IsStyleMedia o
toStyleMedia :: IsStyleMedia o => o -> StyleMedia
toStyleMedia = unsafeCastGObject . toGObject

instance IsStyleMedia StyleMedia
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
#else
type IsStyleMedia o = StyleMediaClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data StyleSheet = StyleSheet (JSRef StyleSheet)

unStyleSheet (StyleSheet o) = o

class GObjectClass o => IsStyleSheet o
toStyleSheet :: IsStyleSheet o => o -> StyleSheet
toStyleSheet = unsafeCastGObject . toGObject

instance IsStyleSheet StyleSheet
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
#else
type IsStyleSheet o = StyleSheetClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data StyleSheetList = StyleSheetList (JSRef StyleSheetList)

unStyleSheetList (StyleSheetList o) = o

class GObjectClass o => IsStyleSheetList o
toStyleSheetList :: IsStyleSheetList o => o -> StyleSheetList
toStyleSheetList = unsafeCastGObject . toGObject

instance IsStyleSheetList StyleSheetList
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
#else
type IsStyleSheetList o = StyleSheetListClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data Text = Text (JSRef Text)

unText (Text o) = o

class IsCharacterData o => IsText o
toText :: IsText o => o -> Text
toText = unsafeCastGObject . toGObject

instance IsText Text
instance IsCharacterData Text
instance IsNode Text
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
#else
type IsText o = TextClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data TimeRanges = TimeRanges (JSRef TimeRanges)

unTimeRanges (TimeRanges o) = o

class GObjectClass o => IsTimeRanges o
toTimeRanges :: IsTimeRanges o => o -> TimeRanges
toTimeRanges = unsafeCastGObject . toGObject

instance IsTimeRanges TimeRanges
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
#else
type IsTimeRanges o = TimeRangesClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data TreeWalker = TreeWalker (JSRef TreeWalker)

unTreeWalker (TreeWalker o) = o

class GObjectClass o => IsTreeWalker o
toTreeWalker :: IsTreeWalker o => o -> TreeWalker
toTreeWalker = unsafeCastGObject . toGObject

instance IsTreeWalker TreeWalker
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
#else
type IsTreeWalker o = TreeWalkerClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data UIEvent = UIEvent (JSRef UIEvent)

unUIEvent (UIEvent o) = o

class IsEvent o => IsUIEvent o
toUIEvent :: IsUIEvent o => o -> UIEvent
toUIEvent = unsafeCastGObject . toGObject

instance IsUIEvent UIEvent
instance IsEvent UIEvent
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
#else
type IsUIEvent o = UIEventClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data ValidityState = ValidityState (JSRef ValidityState)

unValidityState (ValidityState o) = o

class GObjectClass o => IsValidityState o
toValidityState :: IsValidityState o => o -> ValidityState
toValidityState = unsafeCastGObject . toGObject

instance IsValidityState ValidityState
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
#else
type IsValidityState o = ValidityStateClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data WebKitAnimation = WebKitAnimation (JSRef WebKitAnimation)

unWebKitAnimation (WebKitAnimation o) = o

class GObjectClass o => IsWebKitAnimation o
toWebKitAnimation :: IsWebKitAnimation o => o -> WebKitAnimation
toWebKitAnimation = unsafeCastGObject . toGObject

instance IsWebKitAnimation WebKitAnimation
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
#else
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data WebKitAnimationList = WebKitAnimationList (JSRef WebKitAnimationList)

unWebKitAnimationList (WebKitAnimationList o) = o

class GObjectClass o => IsWebKitAnimationList o
toWebKitAnimationList :: IsWebKitAnimationList o => o -> WebKitAnimationList
toWebKitAnimationList = unsafeCastGObject . toGObject

instance IsWebKitAnimationList WebKitAnimationList
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
#else
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data WebKitNamedFlow = WebKitNamedFlow (JSRef WebKitNamedFlow)

unWebKitNamedFlow (WebKitNamedFlow o) = o

class GObjectClass o => IsWebKitNamedFlow o
toWebKitNamedFlow :: IsWebKitNamedFlow o => o -> WebKitNamedFlow
toWebKitNamedFlow = unsafeCastGObject . toGObject

instance IsWebKitNamedFlow WebKitNamedFlow
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
#else
type IsWebKitNamedFlow o = WebKitNamedFlowClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data WebKitPoint = WebKitPoint (JSRef WebKitPoint)

unWebKitPoint (WebKitPoint o) = o

class GObjectClass o => IsWebKitPoint o
toWebKitPoint :: IsWebKitPoint o => o -> WebKitPoint
toWebKitPoint = unsafeCastGObject . toGObject

instance IsWebKitPoint WebKitPoint
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
#else
type IsWebKitPoint o = WebKitPointClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data XPathExpression = XPathExpression (JSRef XPathExpression)

unXPathExpression (XPathExpression o) = o

class GObjectClass o => IsXPathExpression o
toXPathExpression :: IsXPathExpression o => o -> XPathExpression
toXPathExpression = unsafeCastGObject . toGObject

instance IsXPathExpression XPathExpression
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
#else
type IsXPathExpression o = XPathExpressionClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data XPathNSResolver = XPathNSResolver (JSRef XPathNSResolver)

unXPathNSResolver (XPathNSResolver o) = o

class GObjectClass o => IsXPathNSResolver o
toXPathNSResolver :: IsXPathNSResolver o => o -> XPathNSResolver
toXPathNSResolver = unsafeCastGObject . toGObject

instance IsXPathNSResolver XPathNSResolver
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
#else
type IsXPathNSResolver o = XPathNSResolverClass o
#endif


#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
data XPathResult = XPathResult (JSRef XPathResult)

unXPathResult (XPathResult o) = o

class GObjectClass o => IsXPathResult o
toXPathResult :: IsXPathResult o => o -> XPathResult
toXPathResult = unsafeCastGObject . toGObject

instance IsXPathResult XPathResult
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
#else
type IsXPathResult o = XPathResultClass o
#endif


