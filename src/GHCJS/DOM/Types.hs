{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface, ConstraintKinds #-}
#else
{-# LANGUAGE ConstraintKinds #-}
#endif
module GHCJS.DOM.Types (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
    maybeJSNull, propagateGError, GType(..), DOMString(..), ToDOMString(..), FromDOMString(..)
  , GObject(..), GObjectClass, toGObject, unGObject, castToGObject, gTypeGObject, unsafeCastGObject, isA

-- AUTO GENERATION STARTS HERE
  , DOMAttr(DOMAttr), unDOMAttr, IsDOMAttr, toDOMAttr, castToDOMAttr, gTypeDOMAttr
  , BarProp(BarProp), unBarProp, IsBarProp, toBarProp, castToBarProp, gTypeBarProp
  , Blob(Blob), unBlob, IsBlob, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, IsCDATASection, toCDATASection, castToCDATASection, gTypeCDATASection
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, IsCSSRuleList, toCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, IsCSSStyleDeclaration, toCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, IsCSSStyleSheet, toCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, castToCSSValue, gTypeCSSValue
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, castToCharacterData, gTypeCharacterData
  , Comment(Comment), unComment, IsComment, toComment, castToComment, gTypeComment
  , DOMApplicationCache(DOMApplicationCache), unDOMApplicationCache, IsDOMApplicationCache, toDOMApplicationCache, castToDOMApplicationCache, gTypeDOMApplicationCache
  , DOMImplementation(DOMImplementation), unDOMImplementation, IsDOMImplementation, toDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMMimeType(DOMMimeType), unDOMMimeType, IsDOMMimeType, toDOMMimeType, castToDOMMimeType, gTypeDOMMimeType
  , DOMMimeTypeArray(DOMMimeTypeArray), unDOMMimeTypeArray, IsDOMMimeTypeArray, toDOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, IsDOMNamedFlowCollection, toDOMNamedFlowCollection, castToDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMPlugin(DOMPlugin), unDOMPlugin, IsDOMPlugin, toDOMPlugin, castToDOMPlugin, gTypeDOMPlugin
  , DOMPluginArray(DOMPluginArray), unDOMPluginArray, IsDOMPluginArray, toDOMPluginArray, castToDOMPluginArray, gTypeDOMPluginArray
  , DOMSecurityPolicy(DOMSecurityPolicy), unDOMSecurityPolicy, IsDOMSecurityPolicy, toDOMSecurityPolicy, castToDOMSecurityPolicy, gTypeDOMSecurityPolicy
  , DOMSelection(DOMSelection), unDOMSelection, IsDOMSelection, toDOMSelection, castToDOMSelection, gTypeDOMSelection
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, IsDOMSettableTokenList, toDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, IsDOMStringList, toDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DOMWindow(DOMWindow), unDOMWindow, IsDOMWindow, toDOMWindow, castToDOMWindow, gTypeDOMWindow
  , DOMWindowCSS(DOMWindowCSS), unDOMWindowCSS, IsDOMWindowCSS, toDOMWindowCSS, castToDOMWindowCSS, gTypeDOMWindowCSS
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
  , KeyboardEvent(KeyboardEvent), unKeyboardEvent, IsKeyboardEvent, toKeyboardEvent, castToKeyboardEvent, gTypeKeyboardEvent
  , Location(Location), unLocation, IsLocation, toLocation, castToLocation, gTypeLocation
  , MediaError(MediaError), unMediaError, IsMediaError, toMediaError, castToMediaError, gTypeMediaError
  , MediaList(MediaList), unMediaList, IsMediaList, toMediaList, castToMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, IsMediaQueryList, toMediaQueryList, castToMediaQueryList, gTypeMediaQueryList
  , MessagePort(MessagePort), unMessagePort, IsMessagePort, toMessagePort, castToMessagePort, gTypeMessagePort
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, IsMutationEvent, toMutationEvent, castToMutationEvent, gTypeMutationEvent
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, IsNamedNodeMap, toNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, IsNavigator, toNavigator, castToNavigator, gTypeNavigator
  , Node(Node), unNode, IsNode, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, IsNodeFilter, toNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, IsNodeIterator, toNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, castToNodeList, gTypeNodeList
  , Notation(Notation), unNotation, IsNotation, toNotation, castToNotation, gTypeNotation
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
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, IsWebKitNamedFlow, toWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitPoint(WebKitPoint), unWebKitPoint, IsWebKitPoint, toWebKitPoint, castToWebKitPoint, gTypeWebKitPoint
  , XMLHttpRequest(XMLHttpRequest), unXMLHttpRequest, IsXMLHttpRequest, toXMLHttpRequest, castToXMLHttpRequest, gTypeXMLHttpRequest
  , XMLHttpRequestUpload(XMLHttpRequestUpload), unXMLHttpRequestUpload, IsXMLHttpRequestUpload, toXMLHttpRequestUpload, castToXMLHttpRequestUpload, gTypeXMLHttpRequestUpload
  , XPathExpression(XPathExpression), unXPathExpression, IsXPathExpression, toXPathExpression, castToXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, IsXPathNSResolver, toXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, IsXPathResult, toXPathResult, castToXPathResult, gTypeXPathResult
-- AUTO GENERATION ENDS HERE
#else
    propagateGError, GType(..), DOMString(..), ToDOMString(..), FromDOMString(..)
  , module Graphics.UI.Gtk.WebKit.Types
  , IsDOMAttr
  , IsBlob
  , IsCDATASection
  , IsCSSRule
  , IsCSSRuleList
  , IsCSSStyleDeclaration
  , IsCSSStyleSheet
  , IsCSSValue
  , IsCharacterData
  , IsComment
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

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.Types (JSRef(..), castRef, nullRef, isNull, JSString(..))
import GHCJS.Foreign (ToJSString(..), FromJSString(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
#else
import Control.Applicative ((<$>))
import qualified Data.Text as T (Text)
import Data.Maybe (isNothing)
import Foreign.C (CString)
import Graphics.UI.Gtk.WebKit.Types
import System.Glib (propagateGError, GType(..))
import System.Glib.UTFString
       (readUTFString, GlibString(..))
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
maybeJSNull :: JSRef a -> Maybe (JSRef a)
maybeJSNull r | isNull r = Nothing
maybeJSNull r = Just r

propagateGError = id

data GType = GType (JSRef GType)

#ifdef ghcjs_HOST_OS
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

-- | Determine if this is an instance of a particular type
--
isA :: GObjectClass o => o -> GType -> Bool
isA obj = typeInstanceIsA (unGObject $ toGObject obj)

data GObject = GObject (JSRef GObject)

unGObject (GObject o) = o

class (ToJSRef o, FromJSRef o) => GObjectClass o where
  -- | Safe upcast.
  toGObject         :: o -> GObject
  -- | Unchecked downcast.
  unsafeCastGObject :: GObject -> o

instance ToJSRef GObject where
  toJSRef = return . unGObject
  {-# INLINE toJSRef #-}

instance FromJSRef GObject where
  fromJSRef = return . fmap GObject . maybeJSNull
  {-# INLINE fromJSRef #-}

instance GObjectClass GObject where
  toGObject = id
  unsafeCastGObject = id

castToGObject :: GObjectClass obj => obj -> obj
castToGObject = id

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "object" gTypeGObject' :: JSRef GType
#else
gTypeGObject' = error "gTypeGObject': only available in JavaScript"
#endif
gTypeGObject = GType gTypeGObject'

#ifdef ghcjs_HOST_OS
-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = JSString

type ToDOMString s = ToJSString s
type FromDOMString s = FromJSString s
#endif

#else
-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = T.Text

type ToDOMString s = GlibString s
type FromDOMString s = GlibString s
#endif

-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMAttr = DOMAttr (JSRef DOMAttr) deriving (Eq)

unDOMAttr (DOMAttr o) = o

instance ToJSRef DOMAttr where
  toJSRef = return . unDOMAttr
  {-# INLINE toJSRef #-}

instance FromJSRef DOMAttr where
  fromJSRef = return . fmap DOMAttr . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"DOMAttr\"]" gTypeDOMAttr' :: JSRef GType
gTypeDOMAttr = GType gTypeDOMAttr'
#else
type IsDOMAttr o = DOMAttrClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype BarProp = BarProp (JSRef BarProp) deriving (Eq)

unBarProp (BarProp o) = o

instance ToJSRef BarProp where
  toJSRef = return . unBarProp
  {-# INLINE toJSRef #-}

instance FromJSRef BarProp where
  fromJSRef = return . fmap BarProp . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsBarProp o
toBarProp :: IsBarProp o => o -> BarProp
toBarProp = unsafeCastGObject . toGObject

instance IsBarProp BarProp
instance GObjectClass BarProp where
  toGObject = GObject . castRef . unBarProp
  unsafeCastGObject = BarProp . castRef . unGObject

castToBarProp :: GObjectClass obj => obj -> BarProp
castToBarProp = castTo gTypeBarProp "BarProp"

foreign import javascript unsafe "window[\"BarProp\"]" gTypeBarProp' :: JSRef GType
gTypeBarProp = GType gTypeBarProp'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Blob = Blob (JSRef Blob) deriving (Eq)

unBlob (Blob o) = o

instance ToJSRef Blob where
  toJSRef = return . unBlob
  {-# INLINE toJSRef #-}

instance FromJSRef Blob where
  fromJSRef = return . fmap Blob . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsBlob o
toBlob :: IsBlob o => o -> Blob
toBlob = unsafeCastGObject . toGObject

instance IsBlob Blob
instance GObjectClass Blob where
  toGObject = GObject . castRef . unBlob
  unsafeCastGObject = Blob . castRef . unGObject

castToBlob :: GObjectClass obj => obj -> Blob
castToBlob = castTo gTypeBlob "Blob"

foreign import javascript unsafe "window[\"Blob\"]" gTypeBlob' :: JSRef GType
gTypeBlob = GType gTypeBlob'
#else
type IsBlob o = BlobClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CDATASection = CDATASection (JSRef CDATASection) deriving (Eq)

unCDATASection (CDATASection o) = o

instance ToJSRef CDATASection where
  toJSRef = return . unCDATASection
  {-# INLINE toJSRef #-}

instance FromJSRef CDATASection where
  fromJSRef = return . fmap CDATASection . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"CDATASection\"]" gTypeCDATASection' :: JSRef GType
gTypeCDATASection = GType gTypeCDATASection'
#else
type IsCDATASection o = CDATASectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CSSRule = CSSRule (JSRef CSSRule) deriving (Eq)

unCSSRule (CSSRule o) = o

instance ToJSRef CSSRule where
  toJSRef = return . unCSSRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSRule where
  fromJSRef = return . fmap CSSRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCSSRule o
toCSSRule :: IsCSSRule o => o -> CSSRule
toCSSRule = unsafeCastGObject . toGObject

instance IsCSSRule CSSRule
instance GObjectClass CSSRule where
  toGObject = GObject . castRef . unCSSRule
  unsafeCastGObject = CSSRule . castRef . unGObject

castToCSSRule :: GObjectClass obj => obj -> CSSRule
castToCSSRule = castTo gTypeCSSRule "CSSRule"

foreign import javascript unsafe "window[\"CSSRule\"]" gTypeCSSRule' :: JSRef GType
gTypeCSSRule = GType gTypeCSSRule'
#else
type IsCSSRule o = CSSRuleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CSSRuleList = CSSRuleList (JSRef CSSRuleList) deriving (Eq)

unCSSRuleList (CSSRuleList o) = o

instance ToJSRef CSSRuleList where
  toJSRef = return . unCSSRuleList
  {-# INLINE toJSRef #-}

instance FromJSRef CSSRuleList where
  fromJSRef = return . fmap CSSRuleList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCSSRuleList o
toCSSRuleList :: IsCSSRuleList o => o -> CSSRuleList
toCSSRuleList = unsafeCastGObject . toGObject

instance IsCSSRuleList CSSRuleList
instance GObjectClass CSSRuleList where
  toGObject = GObject . castRef . unCSSRuleList
  unsafeCastGObject = CSSRuleList . castRef . unGObject

castToCSSRuleList :: GObjectClass obj => obj -> CSSRuleList
castToCSSRuleList = castTo gTypeCSSRuleList "CSSRuleList"

foreign import javascript unsafe "window[\"CSSRuleList\"]" gTypeCSSRuleList' :: JSRef GType
gTypeCSSRuleList = GType gTypeCSSRuleList'
#else
type IsCSSRuleList o = CSSRuleListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CSSStyleDeclaration = CSSStyleDeclaration (JSRef CSSStyleDeclaration) deriving (Eq)

unCSSStyleDeclaration (CSSStyleDeclaration o) = o

instance ToJSRef CSSStyleDeclaration where
  toJSRef = return . unCSSStyleDeclaration
  {-# INLINE toJSRef #-}

instance FromJSRef CSSStyleDeclaration where
  fromJSRef = return . fmap CSSStyleDeclaration . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCSSStyleDeclaration o
toCSSStyleDeclaration :: IsCSSStyleDeclaration o => o -> CSSStyleDeclaration
toCSSStyleDeclaration = unsafeCastGObject . toGObject

instance IsCSSStyleDeclaration CSSStyleDeclaration
instance GObjectClass CSSStyleDeclaration where
  toGObject = GObject . castRef . unCSSStyleDeclaration
  unsafeCastGObject = CSSStyleDeclaration . castRef . unGObject

castToCSSStyleDeclaration :: GObjectClass obj => obj -> CSSStyleDeclaration
castToCSSStyleDeclaration = castTo gTypeCSSStyleDeclaration "CSSStyleDeclaration"

foreign import javascript unsafe "window[\"CSSStyleDeclaration\"]" gTypeCSSStyleDeclaration' :: JSRef GType
gTypeCSSStyleDeclaration = GType gTypeCSSStyleDeclaration'
#else
type IsCSSStyleDeclaration o = CSSStyleDeclarationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CSSStyleSheet = CSSStyleSheet (JSRef CSSStyleSheet) deriving (Eq)

unCSSStyleSheet (CSSStyleSheet o) = o

instance ToJSRef CSSStyleSheet where
  toJSRef = return . unCSSStyleSheet
  {-# INLINE toJSRef #-}

instance FromJSRef CSSStyleSheet where
  fromJSRef = return . fmap CSSStyleSheet . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"CSSStyleSheet\"]" gTypeCSSStyleSheet' :: JSRef GType
gTypeCSSStyleSheet = GType gTypeCSSStyleSheet'
#else
type IsCSSStyleSheet o = CSSStyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CSSValue = CSSValue (JSRef CSSValue) deriving (Eq)

unCSSValue (CSSValue o) = o

instance ToJSRef CSSValue where
  toJSRef = return . unCSSValue
  {-# INLINE toJSRef #-}

instance FromJSRef CSSValue where
  fromJSRef = return . fmap CSSValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCSSValue o
toCSSValue :: IsCSSValue o => o -> CSSValue
toCSSValue = unsafeCastGObject . toGObject

instance IsCSSValue CSSValue
instance GObjectClass CSSValue where
  toGObject = GObject . castRef . unCSSValue
  unsafeCastGObject = CSSValue . castRef . unGObject

castToCSSValue :: GObjectClass obj => obj -> CSSValue
castToCSSValue = castTo gTypeCSSValue "CSSValue"

foreign import javascript unsafe "window[\"CSSValue\"]" gTypeCSSValue' :: JSRef GType
gTypeCSSValue = GType gTypeCSSValue'
#else
type IsCSSValue o = CSSValueClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CharacterData = CharacterData (JSRef CharacterData) deriving (Eq)

unCharacterData (CharacterData o) = o

instance ToJSRef CharacterData where
  toJSRef = return . unCharacterData
  {-# INLINE toJSRef #-}

instance FromJSRef CharacterData where
  fromJSRef = return . fmap CharacterData . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"CharacterData\"]" gTypeCharacterData' :: JSRef GType
gTypeCharacterData = GType gTypeCharacterData'
#else
type IsCharacterData o = CharacterDataClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Comment = Comment (JSRef Comment) deriving (Eq)

unComment (Comment o) = o

instance ToJSRef Comment where
  toJSRef = return . unComment
  {-# INLINE toJSRef #-}

instance FromJSRef Comment where
  fromJSRef = return . fmap Comment . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"Comment\"]" gTypeComment' :: JSRef GType
gTypeComment = GType gTypeComment'
#else
type IsComment o = CommentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMApplicationCache = DOMApplicationCache (JSRef DOMApplicationCache) deriving (Eq)

unDOMApplicationCache (DOMApplicationCache o) = o

instance ToJSRef DOMApplicationCache where
  toJSRef = return . unDOMApplicationCache
  {-# INLINE toJSRef #-}

instance FromJSRef DOMApplicationCache where
  fromJSRef = return . fmap DOMApplicationCache . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMApplicationCache o
toDOMApplicationCache :: IsDOMApplicationCache o => o -> DOMApplicationCache
toDOMApplicationCache = unsafeCastGObject . toGObject

instance IsDOMApplicationCache DOMApplicationCache
instance GObjectClass DOMApplicationCache where
  toGObject = GObject . castRef . unDOMApplicationCache
  unsafeCastGObject = DOMApplicationCache . castRef . unGObject

castToDOMApplicationCache :: GObjectClass obj => obj -> DOMApplicationCache
castToDOMApplicationCache = castTo gTypeDOMApplicationCache "DOMApplicationCache"

foreign import javascript unsafe "window[\"DOMApplicationCache\"]" gTypeDOMApplicationCache' :: JSRef GType
gTypeDOMApplicationCache = GType gTypeDOMApplicationCache'
#else
type IsDOMApplicationCache o = DOMApplicationCacheClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMImplementation = DOMImplementation (JSRef DOMImplementation) deriving (Eq)

unDOMImplementation (DOMImplementation o) = o

instance ToJSRef DOMImplementation where
  toJSRef = return . unDOMImplementation
  {-# INLINE toJSRef #-}

instance FromJSRef DOMImplementation where
  fromJSRef = return . fmap DOMImplementation . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMImplementation o
toDOMImplementation :: IsDOMImplementation o => o -> DOMImplementation
toDOMImplementation = unsafeCastGObject . toGObject

instance IsDOMImplementation DOMImplementation
instance GObjectClass DOMImplementation where
  toGObject = GObject . castRef . unDOMImplementation
  unsafeCastGObject = DOMImplementation . castRef . unGObject

castToDOMImplementation :: GObjectClass obj => obj -> DOMImplementation
castToDOMImplementation = castTo gTypeDOMImplementation "DOMImplementation"

foreign import javascript unsafe "window[\"DOMImplementation\"]" gTypeDOMImplementation' :: JSRef GType
gTypeDOMImplementation = GType gTypeDOMImplementation'
#else
type IsDOMImplementation o = DOMImplementationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMMimeType = DOMMimeType (JSRef DOMMimeType) deriving (Eq)

unDOMMimeType (DOMMimeType o) = o

instance ToJSRef DOMMimeType where
  toJSRef = return . unDOMMimeType
  {-# INLINE toJSRef #-}

instance FromJSRef DOMMimeType where
  fromJSRef = return . fmap DOMMimeType . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMMimeType o
toDOMMimeType :: IsDOMMimeType o => o -> DOMMimeType
toDOMMimeType = unsafeCastGObject . toGObject

instance IsDOMMimeType DOMMimeType
instance GObjectClass DOMMimeType where
  toGObject = GObject . castRef . unDOMMimeType
  unsafeCastGObject = DOMMimeType . castRef . unGObject

castToDOMMimeType :: GObjectClass obj => obj -> DOMMimeType
castToDOMMimeType = castTo gTypeDOMMimeType "DOMMimeType"

foreign import javascript unsafe "window[\"DOMMimeType\"]" gTypeDOMMimeType' :: JSRef GType
gTypeDOMMimeType = GType gTypeDOMMimeType'
#else
type IsDOMMimeType o = DOMMimeTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMMimeTypeArray = DOMMimeTypeArray (JSRef DOMMimeTypeArray) deriving (Eq)

unDOMMimeTypeArray (DOMMimeTypeArray o) = o

instance ToJSRef DOMMimeTypeArray where
  toJSRef = return . unDOMMimeTypeArray
  {-# INLINE toJSRef #-}

instance FromJSRef DOMMimeTypeArray where
  fromJSRef = return . fmap DOMMimeTypeArray . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMMimeTypeArray o
toDOMMimeTypeArray :: IsDOMMimeTypeArray o => o -> DOMMimeTypeArray
toDOMMimeTypeArray = unsafeCastGObject . toGObject

instance IsDOMMimeTypeArray DOMMimeTypeArray
instance GObjectClass DOMMimeTypeArray where
  toGObject = GObject . castRef . unDOMMimeTypeArray
  unsafeCastGObject = DOMMimeTypeArray . castRef . unGObject

castToDOMMimeTypeArray :: GObjectClass obj => obj -> DOMMimeTypeArray
castToDOMMimeTypeArray = castTo gTypeDOMMimeTypeArray "DOMMimeTypeArray"

foreign import javascript unsafe "window[\"DOMMimeTypeArray\"]" gTypeDOMMimeTypeArray' :: JSRef GType
gTypeDOMMimeTypeArray = GType gTypeDOMMimeTypeArray'
#else
type IsDOMMimeTypeArray o = DOMMimeTypeArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMNamedFlowCollection = DOMNamedFlowCollection (JSRef DOMNamedFlowCollection) deriving (Eq)

unDOMNamedFlowCollection (DOMNamedFlowCollection o) = o

instance ToJSRef DOMNamedFlowCollection where
  toJSRef = return . unDOMNamedFlowCollection
  {-# INLINE toJSRef #-}

instance FromJSRef DOMNamedFlowCollection where
  fromJSRef = return . fmap DOMNamedFlowCollection . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMNamedFlowCollection o
toDOMNamedFlowCollection :: IsDOMNamedFlowCollection o => o -> DOMNamedFlowCollection
toDOMNamedFlowCollection = unsafeCastGObject . toGObject

instance IsDOMNamedFlowCollection DOMNamedFlowCollection
instance GObjectClass DOMNamedFlowCollection where
  toGObject = GObject . castRef . unDOMNamedFlowCollection
  unsafeCastGObject = DOMNamedFlowCollection . castRef . unGObject

castToDOMNamedFlowCollection :: GObjectClass obj => obj -> DOMNamedFlowCollection
castToDOMNamedFlowCollection = castTo gTypeDOMNamedFlowCollection "DOMNamedFlowCollection"

foreign import javascript unsafe "window[\"DOMNamedFlowCollection\"]" gTypeDOMNamedFlowCollection' :: JSRef GType
gTypeDOMNamedFlowCollection = GType gTypeDOMNamedFlowCollection'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMPlugin = DOMPlugin (JSRef DOMPlugin) deriving (Eq)

unDOMPlugin (DOMPlugin o) = o

instance ToJSRef DOMPlugin where
  toJSRef = return . unDOMPlugin
  {-# INLINE toJSRef #-}

instance FromJSRef DOMPlugin where
  fromJSRef = return . fmap DOMPlugin . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMPlugin o
toDOMPlugin :: IsDOMPlugin o => o -> DOMPlugin
toDOMPlugin = unsafeCastGObject . toGObject

instance IsDOMPlugin DOMPlugin
instance GObjectClass DOMPlugin where
  toGObject = GObject . castRef . unDOMPlugin
  unsafeCastGObject = DOMPlugin . castRef . unGObject

castToDOMPlugin :: GObjectClass obj => obj -> DOMPlugin
castToDOMPlugin = castTo gTypeDOMPlugin "DOMPlugin"

foreign import javascript unsafe "window[\"DOMPlugin\"]" gTypeDOMPlugin' :: JSRef GType
gTypeDOMPlugin = GType gTypeDOMPlugin'
#else
type IsDOMPlugin o = DOMPluginClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMPluginArray = DOMPluginArray (JSRef DOMPluginArray) deriving (Eq)

unDOMPluginArray (DOMPluginArray o) = o

instance ToJSRef DOMPluginArray where
  toJSRef = return . unDOMPluginArray
  {-# INLINE toJSRef #-}

instance FromJSRef DOMPluginArray where
  fromJSRef = return . fmap DOMPluginArray . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMPluginArray o
toDOMPluginArray :: IsDOMPluginArray o => o -> DOMPluginArray
toDOMPluginArray = unsafeCastGObject . toGObject

instance IsDOMPluginArray DOMPluginArray
instance GObjectClass DOMPluginArray where
  toGObject = GObject . castRef . unDOMPluginArray
  unsafeCastGObject = DOMPluginArray . castRef . unGObject

castToDOMPluginArray :: GObjectClass obj => obj -> DOMPluginArray
castToDOMPluginArray = castTo gTypeDOMPluginArray "DOMPluginArray"

foreign import javascript unsafe "window[\"DOMPluginArray\"]" gTypeDOMPluginArray' :: JSRef GType
gTypeDOMPluginArray = GType gTypeDOMPluginArray'
#else
type IsDOMPluginArray o = DOMPluginArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMSecurityPolicy = DOMSecurityPolicy (JSRef DOMSecurityPolicy) deriving (Eq)

unDOMSecurityPolicy (DOMSecurityPolicy o) = o

instance ToJSRef DOMSecurityPolicy where
  toJSRef = return . unDOMSecurityPolicy
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSecurityPolicy where
  fromJSRef = return . fmap DOMSecurityPolicy . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMSecurityPolicy o
toDOMSecurityPolicy :: IsDOMSecurityPolicy o => o -> DOMSecurityPolicy
toDOMSecurityPolicy = unsafeCastGObject . toGObject

instance IsDOMSecurityPolicy DOMSecurityPolicy
instance GObjectClass DOMSecurityPolicy where
  toGObject = GObject . castRef . unDOMSecurityPolicy
  unsafeCastGObject = DOMSecurityPolicy . castRef . unGObject

castToDOMSecurityPolicy :: GObjectClass obj => obj -> DOMSecurityPolicy
castToDOMSecurityPolicy = castTo gTypeDOMSecurityPolicy "DOMSecurityPolicy"

foreign import javascript unsafe "window[\"DOMSecurityPolicy\"]" gTypeDOMSecurityPolicy' :: JSRef GType
gTypeDOMSecurityPolicy = GType gTypeDOMSecurityPolicy'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMSelection = DOMSelection (JSRef DOMSelection) deriving (Eq)

unDOMSelection (DOMSelection o) = o

instance ToJSRef DOMSelection where
  toJSRef = return . unDOMSelection
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSelection where
  fromJSRef = return . fmap DOMSelection . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMSelection o
toDOMSelection :: IsDOMSelection o => o -> DOMSelection
toDOMSelection = unsafeCastGObject . toGObject

instance IsDOMSelection DOMSelection
instance GObjectClass DOMSelection where
  toGObject = GObject . castRef . unDOMSelection
  unsafeCastGObject = DOMSelection . castRef . unGObject

castToDOMSelection :: GObjectClass obj => obj -> DOMSelection
castToDOMSelection = castTo gTypeDOMSelection "DOMSelection"

foreign import javascript unsafe "window[\"DOMSelection\"]" gTypeDOMSelection' :: JSRef GType
gTypeDOMSelection = GType gTypeDOMSelection'
#else
type IsDOMSelection o = DOMSelectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMSettableTokenList = DOMSettableTokenList (JSRef DOMSettableTokenList) deriving (Eq)

unDOMSettableTokenList (DOMSettableTokenList o) = o

instance ToJSRef DOMSettableTokenList where
  toJSRef = return . unDOMSettableTokenList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSettableTokenList where
  fromJSRef = return . fmap DOMSettableTokenList . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"DOMSettableTokenList\"]" gTypeDOMSettableTokenList' :: JSRef GType
gTypeDOMSettableTokenList = GType gTypeDOMSettableTokenList'
#else
type IsDOMSettableTokenList o = DOMSettableTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMStringList = DOMStringList (JSRef DOMStringList) deriving (Eq)

unDOMStringList (DOMStringList o) = o

instance ToJSRef DOMStringList where
  toJSRef = return . unDOMStringList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMStringList where
  fromJSRef = return . fmap DOMStringList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMStringList o
toDOMStringList :: IsDOMStringList o => o -> DOMStringList
toDOMStringList = unsafeCastGObject . toGObject

instance IsDOMStringList DOMStringList
instance GObjectClass DOMStringList where
  toGObject = GObject . castRef . unDOMStringList
  unsafeCastGObject = DOMStringList . castRef . unGObject

castToDOMStringList :: GObjectClass obj => obj -> DOMStringList
castToDOMStringList = castTo gTypeDOMStringList "DOMStringList"

foreign import javascript unsafe "window[\"DOMStringList\"]" gTypeDOMStringList' :: JSRef GType
gTypeDOMStringList = GType gTypeDOMStringList'
#else
type IsDOMStringList o = DOMStringListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMTokenList = DOMTokenList (JSRef DOMTokenList) deriving (Eq)

unDOMTokenList (DOMTokenList o) = o

instance ToJSRef DOMTokenList where
  toJSRef = return . unDOMTokenList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMTokenList where
  fromJSRef = return . fmap DOMTokenList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMTokenList o
toDOMTokenList :: IsDOMTokenList o => o -> DOMTokenList
toDOMTokenList = unsafeCastGObject . toGObject

instance IsDOMTokenList DOMTokenList
instance GObjectClass DOMTokenList where
  toGObject = GObject . castRef . unDOMTokenList
  unsafeCastGObject = DOMTokenList . castRef . unGObject

castToDOMTokenList :: GObjectClass obj => obj -> DOMTokenList
castToDOMTokenList = castTo gTypeDOMTokenList "DOMTokenList"

foreign import javascript unsafe "window[\"DOMTokenList\"]" gTypeDOMTokenList' :: JSRef GType
gTypeDOMTokenList = GType gTypeDOMTokenList'
#else
type IsDOMTokenList o = DOMTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMWindow = DOMWindow (JSRef DOMWindow) deriving (Eq)

unDOMWindow (DOMWindow o) = o

instance ToJSRef DOMWindow where
  toJSRef = return . unDOMWindow
  {-# INLINE toJSRef #-}

instance FromJSRef DOMWindow where
  fromJSRef = return . fmap DOMWindow . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMWindow o
toDOMWindow :: IsDOMWindow o => o -> DOMWindow
toDOMWindow = unsafeCastGObject . toGObject

instance IsDOMWindow DOMWindow
instance GObjectClass DOMWindow where
  toGObject = GObject . castRef . unDOMWindow
  unsafeCastGObject = DOMWindow . castRef . unGObject

castToDOMWindow :: GObjectClass obj => obj -> DOMWindow
castToDOMWindow = castTo gTypeDOMWindow "DOMWindow"

foreign import javascript unsafe "window[\"DOMWindow\"]" gTypeDOMWindow' :: JSRef GType
gTypeDOMWindow = GType gTypeDOMWindow'
#else
type IsDOMWindow o = DOMWindowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMWindowCSS = DOMWindowCSS (JSRef DOMWindowCSS) deriving (Eq)

unDOMWindowCSS (DOMWindowCSS o) = o

instance ToJSRef DOMWindowCSS where
  toJSRef = return . unDOMWindowCSS
  {-# INLINE toJSRef #-}

instance FromJSRef DOMWindowCSS where
  fromJSRef = return . fmap DOMWindowCSS . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMWindowCSS o
toDOMWindowCSS :: IsDOMWindowCSS o => o -> DOMWindowCSS
toDOMWindowCSS = unsafeCastGObject . toGObject

instance IsDOMWindowCSS DOMWindowCSS
instance GObjectClass DOMWindowCSS where
  toGObject = GObject . castRef . unDOMWindowCSS
  unsafeCastGObject = DOMWindowCSS . castRef . unGObject

castToDOMWindowCSS :: GObjectClass obj => obj -> DOMWindowCSS
castToDOMWindowCSS = castTo gTypeDOMWindowCSS "DOMWindowCSS"

foreign import javascript unsafe "window[\"DOMWindowCSS\"]" gTypeDOMWindowCSS' :: JSRef GType
gTypeDOMWindowCSS = GType gTypeDOMWindowCSS'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Document = Document (JSRef Document) deriving (Eq)

unDocument (Document o) = o

instance ToJSRef Document where
  toJSRef = return . unDocument
  {-# INLINE toJSRef #-}

instance FromJSRef Document where
  fromJSRef = return . fmap Document . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"Document\"]" gTypeDocument' :: JSRef GType
gTypeDocument = GType gTypeDocument'
#else
type IsDocument o = DocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DocumentFragment = DocumentFragment (JSRef DocumentFragment) deriving (Eq)

unDocumentFragment (DocumentFragment o) = o

instance ToJSRef DocumentFragment where
  toJSRef = return . unDocumentFragment
  {-# INLINE toJSRef #-}

instance FromJSRef DocumentFragment where
  fromJSRef = return . fmap DocumentFragment . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"DocumentFragment\"]" gTypeDocumentFragment' :: JSRef GType
gTypeDocumentFragment = GType gTypeDocumentFragment'
#else
type IsDocumentFragment o = DocumentFragmentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DocumentType = DocumentType (JSRef DocumentType) deriving (Eq)

unDocumentType (DocumentType o) = o

instance ToJSRef DocumentType where
  toJSRef = return . unDocumentType
  {-# INLINE toJSRef #-}

instance FromJSRef DocumentType where
  fromJSRef = return . fmap DocumentType . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"DocumentType\"]" gTypeDocumentType' :: JSRef GType
gTypeDocumentType = GType gTypeDocumentType'
#else
type IsDocumentType o = DocumentTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Element = Element (JSRef Element) deriving (Eq)

unElement (Element o) = o

instance ToJSRef Element where
  toJSRef = return . unElement
  {-# INLINE toJSRef #-}

instance FromJSRef Element where
  fromJSRef = return . fmap Element . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"Element\"]" gTypeElement' :: JSRef GType
gTypeElement = GType gTypeElement'
#else
type IsElement o = ElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype EntityReference = EntityReference (JSRef EntityReference) deriving (Eq)

unEntityReference (EntityReference o) = o

instance ToJSRef EntityReference where
  toJSRef = return . unEntityReference
  {-# INLINE toJSRef #-}

instance FromJSRef EntityReference where
  fromJSRef = return . fmap EntityReference . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"EntityReference\"]" gTypeEntityReference' :: JSRef GType
gTypeEntityReference = GType gTypeEntityReference'
#else
type IsEntityReference o = EntityReferenceClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Event = Event (JSRef Event) deriving (Eq)

unEvent (Event o) = o

instance ToJSRef Event where
  toJSRef = return . unEvent
  {-# INLINE toJSRef #-}

instance FromJSRef Event where
  fromJSRef = return . fmap Event . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEvent o
toEvent :: IsEvent o => o -> Event
toEvent = unsafeCastGObject . toGObject

instance IsEvent Event
instance GObjectClass Event where
  toGObject = GObject . castRef . unEvent
  unsafeCastGObject = Event . castRef . unGObject

castToEvent :: GObjectClass obj => obj -> Event
castToEvent = castTo gTypeEvent "Event"

foreign import javascript unsafe "window[\"Event\"]" gTypeEvent' :: JSRef GType
gTypeEvent = GType gTypeEvent'
#else
type IsEvent o = EventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype EventTarget = EventTarget (JSRef EventTarget) deriving (Eq)

unEventTarget (EventTarget o) = o

instance ToJSRef EventTarget where
  toJSRef = return . unEventTarget
  {-# INLINE toJSRef #-}

instance FromJSRef EventTarget where
  fromJSRef = return . fmap EventTarget . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEventTarget o
toEventTarget :: IsEventTarget o => o -> EventTarget
toEventTarget = unsafeCastGObject . toGObject

instance IsEventTarget EventTarget
instance GObjectClass EventTarget where
  toGObject = GObject . castRef . unEventTarget
  unsafeCastGObject = EventTarget . castRef . unGObject

castToEventTarget :: GObjectClass obj => obj -> EventTarget
castToEventTarget = castTo gTypeEventTarget "EventTarget"

foreign import javascript unsafe "window[\"EventTarget\"]" gTypeEventTarget' :: JSRef GType
gTypeEventTarget = GType gTypeEventTarget'
#else
type IsEventTarget o = EventTargetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype File = File (JSRef File) deriving (Eq)

unFile (File o) = o

instance ToJSRef File where
  toJSRef = return . unFile
  {-# INLINE toJSRef #-}

instance FromJSRef File where
  fromJSRef = return . fmap File . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"File\"]" gTypeFile' :: JSRef GType
gTypeFile = GType gTypeFile'
#else
type IsFile o = FileClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype FileList = FileList (JSRef FileList) deriving (Eq)

unFileList (FileList o) = o

instance ToJSRef FileList where
  toJSRef = return . unFileList
  {-# INLINE toJSRef #-}

instance FromJSRef FileList where
  fromJSRef = return . fmap FileList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFileList o
toFileList :: IsFileList o => o -> FileList
toFileList = unsafeCastGObject . toGObject

instance IsFileList FileList
instance GObjectClass FileList where
  toGObject = GObject . castRef . unFileList
  unsafeCastGObject = FileList . castRef . unGObject

castToFileList :: GObjectClass obj => obj -> FileList
castToFileList = castTo gTypeFileList "FileList"

foreign import javascript unsafe "window[\"FileList\"]" gTypeFileList' :: JSRef GType
gTypeFileList = GType gTypeFileList'
#else
type IsFileList o = FileListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Geolocation = Geolocation (JSRef Geolocation) deriving (Eq)

unGeolocation (Geolocation o) = o

instance ToJSRef Geolocation where
  toJSRef = return . unGeolocation
  {-# INLINE toJSRef #-}

instance FromJSRef Geolocation where
  fromJSRef = return . fmap Geolocation . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsGeolocation o
toGeolocation :: IsGeolocation o => o -> Geolocation
toGeolocation = unsafeCastGObject . toGObject

instance IsGeolocation Geolocation
instance GObjectClass Geolocation where
  toGObject = GObject . castRef . unGeolocation
  unsafeCastGObject = Geolocation . castRef . unGObject

castToGeolocation :: GObjectClass obj => obj -> Geolocation
castToGeolocation = castTo gTypeGeolocation "Geolocation"

foreign import javascript unsafe "window[\"Geolocation\"]" gTypeGeolocation' :: JSRef GType
gTypeGeolocation = GType gTypeGeolocation'
#else
type IsGeolocation o = GeolocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLAnchorElement = HTMLAnchorElement (JSRef HTMLAnchorElement) deriving (Eq)

unHTMLAnchorElement (HTMLAnchorElement o) = o

instance ToJSRef HTMLAnchorElement where
  toJSRef = return . unHTMLAnchorElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAnchorElement where
  fromJSRef = return . fmap HTMLAnchorElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLAnchorElement\"]" gTypeHTMLAnchorElement' :: JSRef GType
gTypeHTMLAnchorElement = GType gTypeHTMLAnchorElement'
#else
type IsHTMLAnchorElement o = HTMLAnchorElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLAppletElement = HTMLAppletElement (JSRef HTMLAppletElement) deriving (Eq)

unHTMLAppletElement (HTMLAppletElement o) = o

instance ToJSRef HTMLAppletElement where
  toJSRef = return . unHTMLAppletElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAppletElement where
  fromJSRef = return . fmap HTMLAppletElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLAppletElement\"]" gTypeHTMLAppletElement' :: JSRef GType
gTypeHTMLAppletElement = GType gTypeHTMLAppletElement'
#else
type IsHTMLAppletElement o = HTMLAppletElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLAreaElement = HTMLAreaElement (JSRef HTMLAreaElement) deriving (Eq)

unHTMLAreaElement (HTMLAreaElement o) = o

instance ToJSRef HTMLAreaElement where
  toJSRef = return . unHTMLAreaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAreaElement where
  fromJSRef = return . fmap HTMLAreaElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLAreaElement\"]" gTypeHTMLAreaElement' :: JSRef GType
gTypeHTMLAreaElement = GType gTypeHTMLAreaElement'
#else
type IsHTMLAreaElement o = HTMLAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLAudioElement = HTMLAudioElement (JSRef HTMLAudioElement) deriving (Eq)

unHTMLAudioElement (HTMLAudioElement o) = o

instance ToJSRef HTMLAudioElement where
  toJSRef = return . unHTMLAudioElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAudioElement where
  fromJSRef = return . fmap HTMLAudioElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLAudioElement\"]" gTypeHTMLAudioElement' :: JSRef GType
gTypeHTMLAudioElement = GType gTypeHTMLAudioElement'
#else
type IsHTMLAudioElement o = HTMLAudioElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLBRElement = HTMLBRElement (JSRef HTMLBRElement) deriving (Eq)

unHTMLBRElement (HTMLBRElement o) = o

instance ToJSRef HTMLBRElement where
  toJSRef = return . unHTMLBRElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBRElement where
  fromJSRef = return . fmap HTMLBRElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLBRElement\"]" gTypeHTMLBRElement' :: JSRef GType
gTypeHTMLBRElement = GType gTypeHTMLBRElement'
#else
type IsHTMLBRElement o = HTMLBRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLBaseElement = HTMLBaseElement (JSRef HTMLBaseElement) deriving (Eq)

unHTMLBaseElement (HTMLBaseElement o) = o

instance ToJSRef HTMLBaseElement where
  toJSRef = return . unHTMLBaseElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBaseElement where
  fromJSRef = return . fmap HTMLBaseElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLBaseElement\"]" gTypeHTMLBaseElement' :: JSRef GType
gTypeHTMLBaseElement = GType gTypeHTMLBaseElement'
#else
type IsHTMLBaseElement o = HTMLBaseElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLBaseFontElement = HTMLBaseFontElement (JSRef HTMLBaseFontElement) deriving (Eq)

unHTMLBaseFontElement (HTMLBaseFontElement o) = o

instance ToJSRef HTMLBaseFontElement where
  toJSRef = return . unHTMLBaseFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBaseFontElement where
  fromJSRef = return . fmap HTMLBaseFontElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLBaseFontElement\"]" gTypeHTMLBaseFontElement' :: JSRef GType
gTypeHTMLBaseFontElement = GType gTypeHTMLBaseFontElement'
#else
type IsHTMLBaseFontElement o = HTMLBaseFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLBodyElement = HTMLBodyElement (JSRef HTMLBodyElement) deriving (Eq)

unHTMLBodyElement (HTMLBodyElement o) = o

instance ToJSRef HTMLBodyElement where
  toJSRef = return . unHTMLBodyElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBodyElement where
  fromJSRef = return . fmap HTMLBodyElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLBodyElement\"]" gTypeHTMLBodyElement' :: JSRef GType
gTypeHTMLBodyElement = GType gTypeHTMLBodyElement'
#else
type IsHTMLBodyElement o = HTMLBodyElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLButtonElement = HTMLButtonElement (JSRef HTMLButtonElement) deriving (Eq)

unHTMLButtonElement (HTMLButtonElement o) = o

instance ToJSRef HTMLButtonElement where
  toJSRef = return . unHTMLButtonElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLButtonElement where
  fromJSRef = return . fmap HTMLButtonElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLButtonElement\"]" gTypeHTMLButtonElement' :: JSRef GType
gTypeHTMLButtonElement = GType gTypeHTMLButtonElement'
#else
type IsHTMLButtonElement o = HTMLButtonElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLCanvasElement = HTMLCanvasElement (JSRef HTMLCanvasElement) deriving (Eq)

unHTMLCanvasElement (HTMLCanvasElement o) = o

instance ToJSRef HTMLCanvasElement where
  toJSRef = return . unHTMLCanvasElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLCanvasElement where
  fromJSRef = return . fmap HTMLCanvasElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLCanvasElement\"]" gTypeHTMLCanvasElement' :: JSRef GType
gTypeHTMLCanvasElement = GType gTypeHTMLCanvasElement'
#else
type IsHTMLCanvasElement o = HTMLCanvasElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLCollection = HTMLCollection (JSRef HTMLCollection) deriving (Eq)

unHTMLCollection (HTMLCollection o) = o

instance ToJSRef HTMLCollection where
  toJSRef = return . unHTMLCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLCollection where
  fromJSRef = return . fmap HTMLCollection . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsHTMLCollection o
toHTMLCollection :: IsHTMLCollection o => o -> HTMLCollection
toHTMLCollection = unsafeCastGObject . toGObject

instance IsHTMLCollection HTMLCollection
instance GObjectClass HTMLCollection where
  toGObject = GObject . castRef . unHTMLCollection
  unsafeCastGObject = HTMLCollection . castRef . unGObject

castToHTMLCollection :: GObjectClass obj => obj -> HTMLCollection
castToHTMLCollection = castTo gTypeHTMLCollection "HTMLCollection"

foreign import javascript unsafe "window[\"HTMLCollection\"]" gTypeHTMLCollection' :: JSRef GType
gTypeHTMLCollection = GType gTypeHTMLCollection'
#else
type IsHTMLCollection o = HTMLCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLDListElement = HTMLDListElement (JSRef HTMLDListElement) deriving (Eq)

unHTMLDListElement (HTMLDListElement o) = o

instance ToJSRef HTMLDListElement where
  toJSRef = return . unHTMLDListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDListElement where
  fromJSRef = return . fmap HTMLDListElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLDListElement\"]" gTypeHTMLDListElement' :: JSRef GType
gTypeHTMLDListElement = GType gTypeHTMLDListElement'
#else
type IsHTMLDListElement o = HTMLDListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLDetailsElement = HTMLDetailsElement (JSRef HTMLDetailsElement) deriving (Eq)

unHTMLDetailsElement (HTMLDetailsElement o) = o

instance ToJSRef HTMLDetailsElement where
  toJSRef = return . unHTMLDetailsElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDetailsElement where
  fromJSRef = return . fmap HTMLDetailsElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLDetailsElement\"]" gTypeHTMLDetailsElement' :: JSRef GType
gTypeHTMLDetailsElement = GType gTypeHTMLDetailsElement'
#else
type IsHTMLDetailsElement o = HTMLDetailsElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLDirectoryElement = HTMLDirectoryElement (JSRef HTMLDirectoryElement) deriving (Eq)

unHTMLDirectoryElement (HTMLDirectoryElement o) = o

instance ToJSRef HTMLDirectoryElement where
  toJSRef = return . unHTMLDirectoryElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDirectoryElement where
  fromJSRef = return . fmap HTMLDirectoryElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLDirectoryElement\"]" gTypeHTMLDirectoryElement' :: JSRef GType
gTypeHTMLDirectoryElement = GType gTypeHTMLDirectoryElement'
#else
type IsHTMLDirectoryElement o = HTMLDirectoryElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLDivElement = HTMLDivElement (JSRef HTMLDivElement) deriving (Eq)

unHTMLDivElement (HTMLDivElement o) = o

instance ToJSRef HTMLDivElement where
  toJSRef = return . unHTMLDivElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDivElement where
  fromJSRef = return . fmap HTMLDivElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLDivElement\"]" gTypeHTMLDivElement' :: JSRef GType
gTypeHTMLDivElement = GType gTypeHTMLDivElement'
#else
type IsHTMLDivElement o = HTMLDivElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLDocument = HTMLDocument (JSRef HTMLDocument) deriving (Eq)

unHTMLDocument (HTMLDocument o) = o

instance ToJSRef HTMLDocument where
  toJSRef = return . unHTMLDocument
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDocument where
  fromJSRef = return . fmap HTMLDocument . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLDocument\"]" gTypeHTMLDocument' :: JSRef GType
gTypeHTMLDocument = GType gTypeHTMLDocument'
#else
type IsHTMLDocument o = HTMLDocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLElement = HTMLElement (JSRef HTMLElement) deriving (Eq)

unHTMLElement (HTMLElement o) = o

instance ToJSRef HTMLElement where
  toJSRef = return . unHTMLElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLElement where
  fromJSRef = return . fmap HTMLElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLElement\"]" gTypeHTMLElement' :: JSRef GType
gTypeHTMLElement = GType gTypeHTMLElement'
#else
type IsHTMLElement o = HTMLElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLEmbedElement = HTMLEmbedElement (JSRef HTMLEmbedElement) deriving (Eq)

unHTMLEmbedElement (HTMLEmbedElement o) = o

instance ToJSRef HTMLEmbedElement where
  toJSRef = return . unHTMLEmbedElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLEmbedElement where
  fromJSRef = return . fmap HTMLEmbedElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLEmbedElement\"]" gTypeHTMLEmbedElement' :: JSRef GType
gTypeHTMLEmbedElement = GType gTypeHTMLEmbedElement'
#else
type IsHTMLEmbedElement o = HTMLEmbedElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLFieldSetElement = HTMLFieldSetElement (JSRef HTMLFieldSetElement) deriving (Eq)

unHTMLFieldSetElement (HTMLFieldSetElement o) = o

instance ToJSRef HTMLFieldSetElement where
  toJSRef = return . unHTMLFieldSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFieldSetElement where
  fromJSRef = return . fmap HTMLFieldSetElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLFieldSetElement\"]" gTypeHTMLFieldSetElement' :: JSRef GType
gTypeHTMLFieldSetElement = GType gTypeHTMLFieldSetElement'
#else
type IsHTMLFieldSetElement o = HTMLFieldSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLFontElement = HTMLFontElement (JSRef HTMLFontElement) deriving (Eq)

unHTMLFontElement (HTMLFontElement o) = o

instance ToJSRef HTMLFontElement where
  toJSRef = return . unHTMLFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFontElement where
  fromJSRef = return . fmap HTMLFontElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLFontElement\"]" gTypeHTMLFontElement' :: JSRef GType
gTypeHTMLFontElement = GType gTypeHTMLFontElement'
#else
type IsHTMLFontElement o = HTMLFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLFormElement = HTMLFormElement (JSRef HTMLFormElement) deriving (Eq)

unHTMLFormElement (HTMLFormElement o) = o

instance ToJSRef HTMLFormElement where
  toJSRef = return . unHTMLFormElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFormElement where
  fromJSRef = return . fmap HTMLFormElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLFormElement\"]" gTypeHTMLFormElement' :: JSRef GType
gTypeHTMLFormElement = GType gTypeHTMLFormElement'
#else
type IsHTMLFormElement o = HTMLFormElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLFrameElement = HTMLFrameElement (JSRef HTMLFrameElement) deriving (Eq)

unHTMLFrameElement (HTMLFrameElement o) = o

instance ToJSRef HTMLFrameElement where
  toJSRef = return . unHTMLFrameElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFrameElement where
  fromJSRef = return . fmap HTMLFrameElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLFrameElement\"]" gTypeHTMLFrameElement' :: JSRef GType
gTypeHTMLFrameElement = GType gTypeHTMLFrameElement'
#else
type IsHTMLFrameElement o = HTMLFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLFrameSetElement = HTMLFrameSetElement (JSRef HTMLFrameSetElement) deriving (Eq)

unHTMLFrameSetElement (HTMLFrameSetElement o) = o

instance ToJSRef HTMLFrameSetElement where
  toJSRef = return . unHTMLFrameSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFrameSetElement where
  fromJSRef = return . fmap HTMLFrameSetElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLFrameSetElement\"]" gTypeHTMLFrameSetElement' :: JSRef GType
gTypeHTMLFrameSetElement = GType gTypeHTMLFrameSetElement'
#else
type IsHTMLFrameSetElement o = HTMLFrameSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLHRElement = HTMLHRElement (JSRef HTMLHRElement) deriving (Eq)

unHTMLHRElement (HTMLHRElement o) = o

instance ToJSRef HTMLHRElement where
  toJSRef = return . unHTMLHRElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHRElement where
  fromJSRef = return . fmap HTMLHRElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLHRElement\"]" gTypeHTMLHRElement' :: JSRef GType
gTypeHTMLHRElement = GType gTypeHTMLHRElement'
#else
type IsHTMLHRElement o = HTMLHRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLHeadElement = HTMLHeadElement (JSRef HTMLHeadElement) deriving (Eq)

unHTMLHeadElement (HTMLHeadElement o) = o

instance ToJSRef HTMLHeadElement where
  toJSRef = return . unHTMLHeadElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHeadElement where
  fromJSRef = return . fmap HTMLHeadElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLHeadElement\"]" gTypeHTMLHeadElement' :: JSRef GType
gTypeHTMLHeadElement = GType gTypeHTMLHeadElement'
#else
type IsHTMLHeadElement o = HTMLHeadElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLHeadingElement = HTMLHeadingElement (JSRef HTMLHeadingElement) deriving (Eq)

unHTMLHeadingElement (HTMLHeadingElement o) = o

instance ToJSRef HTMLHeadingElement where
  toJSRef = return . unHTMLHeadingElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHeadingElement where
  fromJSRef = return . fmap HTMLHeadingElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLHeadingElement\"]" gTypeHTMLHeadingElement' :: JSRef GType
gTypeHTMLHeadingElement = GType gTypeHTMLHeadingElement'
#else
type IsHTMLHeadingElement o = HTMLHeadingElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLHtmlElement = HTMLHtmlElement (JSRef HTMLHtmlElement) deriving (Eq)

unHTMLHtmlElement (HTMLHtmlElement o) = o

instance ToJSRef HTMLHtmlElement where
  toJSRef = return . unHTMLHtmlElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHtmlElement where
  fromJSRef = return . fmap HTMLHtmlElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLHtmlElement\"]" gTypeHTMLHtmlElement' :: JSRef GType
gTypeHTMLHtmlElement = GType gTypeHTMLHtmlElement'
#else
type IsHTMLHtmlElement o = HTMLHtmlElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLIFrameElement = HTMLIFrameElement (JSRef HTMLIFrameElement) deriving (Eq)

unHTMLIFrameElement (HTMLIFrameElement o) = o

instance ToJSRef HTMLIFrameElement where
  toJSRef = return . unHTMLIFrameElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLIFrameElement where
  fromJSRef = return . fmap HTMLIFrameElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLIFrameElement\"]" gTypeHTMLIFrameElement' :: JSRef GType
gTypeHTMLIFrameElement = GType gTypeHTMLIFrameElement'
#else
type IsHTMLIFrameElement o = HTMLIFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLImageElement = HTMLImageElement (JSRef HTMLImageElement) deriving (Eq)

unHTMLImageElement (HTMLImageElement o) = o

instance ToJSRef HTMLImageElement where
  toJSRef = return . unHTMLImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLImageElement where
  fromJSRef = return . fmap HTMLImageElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLImageElement\"]" gTypeHTMLImageElement' :: JSRef GType
gTypeHTMLImageElement = GType gTypeHTMLImageElement'
#else
type IsHTMLImageElement o = HTMLImageElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLInputElement = HTMLInputElement (JSRef HTMLInputElement) deriving (Eq)

unHTMLInputElement (HTMLInputElement o) = o

instance ToJSRef HTMLInputElement where
  toJSRef = return . unHTMLInputElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLInputElement where
  fromJSRef = return . fmap HTMLInputElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLInputElement\"]" gTypeHTMLInputElement' :: JSRef GType
gTypeHTMLInputElement = GType gTypeHTMLInputElement'
#else
type IsHTMLInputElement o = HTMLInputElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLKeygenElement = HTMLKeygenElement (JSRef HTMLKeygenElement) deriving (Eq)

unHTMLKeygenElement (HTMLKeygenElement o) = o

instance ToJSRef HTMLKeygenElement where
  toJSRef = return . unHTMLKeygenElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLKeygenElement where
  fromJSRef = return . fmap HTMLKeygenElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLKeygenElement\"]" gTypeHTMLKeygenElement' :: JSRef GType
gTypeHTMLKeygenElement = GType gTypeHTMLKeygenElement'
#else
type IsHTMLKeygenElement o = HTMLKeygenElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLLIElement = HTMLLIElement (JSRef HTMLLIElement) deriving (Eq)

unHTMLLIElement (HTMLLIElement o) = o

instance ToJSRef HTMLLIElement where
  toJSRef = return . unHTMLLIElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLIElement where
  fromJSRef = return . fmap HTMLLIElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLLIElement\"]" gTypeHTMLLIElement' :: JSRef GType
gTypeHTMLLIElement = GType gTypeHTMLLIElement'
#else
type IsHTMLLIElement o = HTMLLIElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLLabelElement = HTMLLabelElement (JSRef HTMLLabelElement) deriving (Eq)

unHTMLLabelElement (HTMLLabelElement o) = o

instance ToJSRef HTMLLabelElement where
  toJSRef = return . unHTMLLabelElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLabelElement where
  fromJSRef = return . fmap HTMLLabelElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLLabelElement\"]" gTypeHTMLLabelElement' :: JSRef GType
gTypeHTMLLabelElement = GType gTypeHTMLLabelElement'
#else
type IsHTMLLabelElement o = HTMLLabelElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLLegendElement = HTMLLegendElement (JSRef HTMLLegendElement) deriving (Eq)

unHTMLLegendElement (HTMLLegendElement o) = o

instance ToJSRef HTMLLegendElement where
  toJSRef = return . unHTMLLegendElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLegendElement where
  fromJSRef = return . fmap HTMLLegendElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLLegendElement\"]" gTypeHTMLLegendElement' :: JSRef GType
gTypeHTMLLegendElement = GType gTypeHTMLLegendElement'
#else
type IsHTMLLegendElement o = HTMLLegendElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLLinkElement = HTMLLinkElement (JSRef HTMLLinkElement) deriving (Eq)

unHTMLLinkElement (HTMLLinkElement o) = o

instance ToJSRef HTMLLinkElement where
  toJSRef = return . unHTMLLinkElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLinkElement where
  fromJSRef = return . fmap HTMLLinkElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLLinkElement\"]" gTypeHTMLLinkElement' :: JSRef GType
gTypeHTMLLinkElement = GType gTypeHTMLLinkElement'
#else
type IsHTMLLinkElement o = HTMLLinkElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLMapElement = HTMLMapElement (JSRef HTMLMapElement) deriving (Eq)

unHTMLMapElement (HTMLMapElement o) = o

instance ToJSRef HTMLMapElement where
  toJSRef = return . unHTMLMapElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMapElement where
  fromJSRef = return . fmap HTMLMapElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLMapElement\"]" gTypeHTMLMapElement' :: JSRef GType
gTypeHTMLMapElement = GType gTypeHTMLMapElement'
#else
type IsHTMLMapElement o = HTMLMapElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLMarqueeElement = HTMLMarqueeElement (JSRef HTMLMarqueeElement) deriving (Eq)

unHTMLMarqueeElement (HTMLMarqueeElement o) = o

instance ToJSRef HTMLMarqueeElement where
  toJSRef = return . unHTMLMarqueeElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMarqueeElement where
  fromJSRef = return . fmap HTMLMarqueeElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLMarqueeElement\"]" gTypeHTMLMarqueeElement' :: JSRef GType
gTypeHTMLMarqueeElement = GType gTypeHTMLMarqueeElement'
#else
type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLMediaElement = HTMLMediaElement (JSRef HTMLMediaElement) deriving (Eq)

unHTMLMediaElement (HTMLMediaElement o) = o

instance ToJSRef HTMLMediaElement where
  toJSRef = return . unHTMLMediaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMediaElement where
  fromJSRef = return . fmap HTMLMediaElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLMediaElement\"]" gTypeHTMLMediaElement' :: JSRef GType
gTypeHTMLMediaElement = GType gTypeHTMLMediaElement'
#else
type IsHTMLMediaElement o = HTMLMediaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLMenuElement = HTMLMenuElement (JSRef HTMLMenuElement) deriving (Eq)

unHTMLMenuElement (HTMLMenuElement o) = o

instance ToJSRef HTMLMenuElement where
  toJSRef = return . unHTMLMenuElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMenuElement where
  fromJSRef = return . fmap HTMLMenuElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLMenuElement\"]" gTypeHTMLMenuElement' :: JSRef GType
gTypeHTMLMenuElement = GType gTypeHTMLMenuElement'
#else
type IsHTMLMenuElement o = HTMLMenuElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLMetaElement = HTMLMetaElement (JSRef HTMLMetaElement) deriving (Eq)

unHTMLMetaElement (HTMLMetaElement o) = o

instance ToJSRef HTMLMetaElement where
  toJSRef = return . unHTMLMetaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMetaElement where
  fromJSRef = return . fmap HTMLMetaElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLMetaElement\"]" gTypeHTMLMetaElement' :: JSRef GType
gTypeHTMLMetaElement = GType gTypeHTMLMetaElement'
#else
type IsHTMLMetaElement o = HTMLMetaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLModElement = HTMLModElement (JSRef HTMLModElement) deriving (Eq)

unHTMLModElement (HTMLModElement o) = o

instance ToJSRef HTMLModElement where
  toJSRef = return . unHTMLModElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLModElement where
  fromJSRef = return . fmap HTMLModElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLModElement\"]" gTypeHTMLModElement' :: JSRef GType
gTypeHTMLModElement = GType gTypeHTMLModElement'
#else
type IsHTMLModElement o = HTMLModElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLOListElement = HTMLOListElement (JSRef HTMLOListElement) deriving (Eq)

unHTMLOListElement (HTMLOListElement o) = o

instance ToJSRef HTMLOListElement where
  toJSRef = return . unHTMLOListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOListElement where
  fromJSRef = return . fmap HTMLOListElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLOListElement\"]" gTypeHTMLOListElement' :: JSRef GType
gTypeHTMLOListElement = GType gTypeHTMLOListElement'
#else
type IsHTMLOListElement o = HTMLOListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLObjectElement = HTMLObjectElement (JSRef HTMLObjectElement) deriving (Eq)

unHTMLObjectElement (HTMLObjectElement o) = o

instance ToJSRef HTMLObjectElement where
  toJSRef = return . unHTMLObjectElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLObjectElement where
  fromJSRef = return . fmap HTMLObjectElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLObjectElement\"]" gTypeHTMLObjectElement' :: JSRef GType
gTypeHTMLObjectElement = GType gTypeHTMLObjectElement'
#else
type IsHTMLObjectElement o = HTMLObjectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLOptGroupElement = HTMLOptGroupElement (JSRef HTMLOptGroupElement) deriving (Eq)

unHTMLOptGroupElement (HTMLOptGroupElement o) = o

instance ToJSRef HTMLOptGroupElement where
  toJSRef = return . unHTMLOptGroupElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptGroupElement where
  fromJSRef = return . fmap HTMLOptGroupElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLOptGroupElement\"]" gTypeHTMLOptGroupElement' :: JSRef GType
gTypeHTMLOptGroupElement = GType gTypeHTMLOptGroupElement'
#else
type IsHTMLOptGroupElement o = HTMLOptGroupElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLOptionElement = HTMLOptionElement (JSRef HTMLOptionElement) deriving (Eq)

unHTMLOptionElement (HTMLOptionElement o) = o

instance ToJSRef HTMLOptionElement where
  toJSRef = return . unHTMLOptionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptionElement where
  fromJSRef = return . fmap HTMLOptionElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLOptionElement\"]" gTypeHTMLOptionElement' :: JSRef GType
gTypeHTMLOptionElement = GType gTypeHTMLOptionElement'
#else
type IsHTMLOptionElement o = HTMLOptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLOptionsCollection = HTMLOptionsCollection (JSRef HTMLOptionsCollection) deriving (Eq)

unHTMLOptionsCollection (HTMLOptionsCollection o) = o

instance ToJSRef HTMLOptionsCollection where
  toJSRef = return . unHTMLOptionsCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptionsCollection where
  fromJSRef = return . fmap HTMLOptionsCollection . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLOptionsCollection\"]" gTypeHTMLOptionsCollection' :: JSRef GType
gTypeHTMLOptionsCollection = GType gTypeHTMLOptionsCollection'
#else
type IsHTMLOptionsCollection o = HTMLOptionsCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLParagraphElement = HTMLParagraphElement (JSRef HTMLParagraphElement) deriving (Eq)

unHTMLParagraphElement (HTMLParagraphElement o) = o

instance ToJSRef HTMLParagraphElement where
  toJSRef = return . unHTMLParagraphElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLParagraphElement where
  fromJSRef = return . fmap HTMLParagraphElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLParagraphElement\"]" gTypeHTMLParagraphElement' :: JSRef GType
gTypeHTMLParagraphElement = GType gTypeHTMLParagraphElement'
#else
type IsHTMLParagraphElement o = HTMLParagraphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLParamElement = HTMLParamElement (JSRef HTMLParamElement) deriving (Eq)

unHTMLParamElement (HTMLParamElement o) = o

instance ToJSRef HTMLParamElement where
  toJSRef = return . unHTMLParamElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLParamElement where
  fromJSRef = return . fmap HTMLParamElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLParamElement\"]" gTypeHTMLParamElement' :: JSRef GType
gTypeHTMLParamElement = GType gTypeHTMLParamElement'
#else
type IsHTMLParamElement o = HTMLParamElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLPreElement = HTMLPreElement (JSRef HTMLPreElement) deriving (Eq)

unHTMLPreElement (HTMLPreElement o) = o

instance ToJSRef HTMLPreElement where
  toJSRef = return . unHTMLPreElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLPreElement where
  fromJSRef = return . fmap HTMLPreElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLPreElement\"]" gTypeHTMLPreElement' :: JSRef GType
gTypeHTMLPreElement = GType gTypeHTMLPreElement'
#else
type IsHTMLPreElement o = HTMLPreElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLQuoteElement = HTMLQuoteElement (JSRef HTMLQuoteElement) deriving (Eq)

unHTMLQuoteElement (HTMLQuoteElement o) = o

instance ToJSRef HTMLQuoteElement where
  toJSRef = return . unHTMLQuoteElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLQuoteElement where
  fromJSRef = return . fmap HTMLQuoteElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLQuoteElement\"]" gTypeHTMLQuoteElement' :: JSRef GType
gTypeHTMLQuoteElement = GType gTypeHTMLQuoteElement'
#else
type IsHTMLQuoteElement o = HTMLQuoteElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLScriptElement = HTMLScriptElement (JSRef HTMLScriptElement) deriving (Eq)

unHTMLScriptElement (HTMLScriptElement o) = o

instance ToJSRef HTMLScriptElement where
  toJSRef = return . unHTMLScriptElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLScriptElement where
  fromJSRef = return . fmap HTMLScriptElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLScriptElement\"]" gTypeHTMLScriptElement' :: JSRef GType
gTypeHTMLScriptElement = GType gTypeHTMLScriptElement'
#else
type IsHTMLScriptElement o = HTMLScriptElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLSelectElement = HTMLSelectElement (JSRef HTMLSelectElement) deriving (Eq)

unHTMLSelectElement (HTMLSelectElement o) = o

instance ToJSRef HTMLSelectElement where
  toJSRef = return . unHTMLSelectElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSelectElement where
  fromJSRef = return . fmap HTMLSelectElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLSelectElement\"]" gTypeHTMLSelectElement' :: JSRef GType
gTypeHTMLSelectElement = GType gTypeHTMLSelectElement'
#else
type IsHTMLSelectElement o = HTMLSelectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLStyleElement = HTMLStyleElement (JSRef HTMLStyleElement) deriving (Eq)

unHTMLStyleElement (HTMLStyleElement o) = o

instance ToJSRef HTMLStyleElement where
  toJSRef = return . unHTMLStyleElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLStyleElement where
  fromJSRef = return . fmap HTMLStyleElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLStyleElement\"]" gTypeHTMLStyleElement' :: JSRef GType
gTypeHTMLStyleElement = GType gTypeHTMLStyleElement'
#else
type IsHTMLStyleElement o = HTMLStyleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableCaptionElement = HTMLTableCaptionElement (JSRef HTMLTableCaptionElement) deriving (Eq)

unHTMLTableCaptionElement (HTMLTableCaptionElement o) = o

instance ToJSRef HTMLTableCaptionElement where
  toJSRef = return . unHTMLTableCaptionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableCaptionElement where
  fromJSRef = return . fmap HTMLTableCaptionElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableCaptionElement\"]" gTypeHTMLTableCaptionElement' :: JSRef GType
gTypeHTMLTableCaptionElement = GType gTypeHTMLTableCaptionElement'
#else
type IsHTMLTableCaptionElement o = HTMLTableCaptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableCellElement = HTMLTableCellElement (JSRef HTMLTableCellElement) deriving (Eq)

unHTMLTableCellElement (HTMLTableCellElement o) = o

instance ToJSRef HTMLTableCellElement where
  toJSRef = return . unHTMLTableCellElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableCellElement where
  fromJSRef = return . fmap HTMLTableCellElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableCellElement\"]" gTypeHTMLTableCellElement' :: JSRef GType
gTypeHTMLTableCellElement = GType gTypeHTMLTableCellElement'
#else
type IsHTMLTableCellElement o = HTMLTableCellElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableColElement = HTMLTableColElement (JSRef HTMLTableColElement) deriving (Eq)

unHTMLTableColElement (HTMLTableColElement o) = o

instance ToJSRef HTMLTableColElement where
  toJSRef = return . unHTMLTableColElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableColElement where
  fromJSRef = return . fmap HTMLTableColElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableColElement\"]" gTypeHTMLTableColElement' :: JSRef GType
gTypeHTMLTableColElement = GType gTypeHTMLTableColElement'
#else
type IsHTMLTableColElement o = HTMLTableColElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableElement = HTMLTableElement (JSRef HTMLTableElement) deriving (Eq)

unHTMLTableElement (HTMLTableElement o) = o

instance ToJSRef HTMLTableElement where
  toJSRef = return . unHTMLTableElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableElement where
  fromJSRef = return . fmap HTMLTableElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableElement\"]" gTypeHTMLTableElement' :: JSRef GType
gTypeHTMLTableElement = GType gTypeHTMLTableElement'
#else
type IsHTMLTableElement o = HTMLTableElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableRowElement = HTMLTableRowElement (JSRef HTMLTableRowElement) deriving (Eq)

unHTMLTableRowElement (HTMLTableRowElement o) = o

instance ToJSRef HTMLTableRowElement where
  toJSRef = return . unHTMLTableRowElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableRowElement where
  fromJSRef = return . fmap HTMLTableRowElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableRowElement\"]" gTypeHTMLTableRowElement' :: JSRef GType
gTypeHTMLTableRowElement = GType gTypeHTMLTableRowElement'
#else
type IsHTMLTableRowElement o = HTMLTableRowElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTableSectionElement = HTMLTableSectionElement (JSRef HTMLTableSectionElement) deriving (Eq)

unHTMLTableSectionElement (HTMLTableSectionElement o) = o

instance ToJSRef HTMLTableSectionElement where
  toJSRef = return . unHTMLTableSectionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableSectionElement where
  fromJSRef = return . fmap HTMLTableSectionElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTableSectionElement\"]" gTypeHTMLTableSectionElement' :: JSRef GType
gTypeHTMLTableSectionElement = GType gTypeHTMLTableSectionElement'
#else
type IsHTMLTableSectionElement o = HTMLTableSectionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTextAreaElement = HTMLTextAreaElement (JSRef HTMLTextAreaElement) deriving (Eq)

unHTMLTextAreaElement (HTMLTextAreaElement o) = o

instance ToJSRef HTMLTextAreaElement where
  toJSRef = return . unHTMLTextAreaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTextAreaElement where
  fromJSRef = return . fmap HTMLTextAreaElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTextAreaElement\"]" gTypeHTMLTextAreaElement' :: JSRef GType
gTypeHTMLTextAreaElement = GType gTypeHTMLTextAreaElement'
#else
type IsHTMLTextAreaElement o = HTMLTextAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLTitleElement = HTMLTitleElement (JSRef HTMLTitleElement) deriving (Eq)

unHTMLTitleElement (HTMLTitleElement o) = o

instance ToJSRef HTMLTitleElement where
  toJSRef = return . unHTMLTitleElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTitleElement where
  fromJSRef = return . fmap HTMLTitleElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLTitleElement\"]" gTypeHTMLTitleElement' :: JSRef GType
gTypeHTMLTitleElement = GType gTypeHTMLTitleElement'
#else
type IsHTMLTitleElement o = HTMLTitleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLUListElement = HTMLUListElement (JSRef HTMLUListElement) deriving (Eq)

unHTMLUListElement (HTMLUListElement o) = o

instance ToJSRef HTMLUListElement where
  toJSRef = return . unHTMLUListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLUListElement where
  fromJSRef = return . fmap HTMLUListElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLUListElement\"]" gTypeHTMLUListElement' :: JSRef GType
gTypeHTMLUListElement = GType gTypeHTMLUListElement'
#else
type IsHTMLUListElement o = HTMLUListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype HTMLVideoElement = HTMLVideoElement (JSRef HTMLVideoElement) deriving (Eq)

unHTMLVideoElement (HTMLVideoElement o) = o

instance ToJSRef HTMLVideoElement where
  toJSRef = return . unHTMLVideoElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLVideoElement where
  fromJSRef = return . fmap HTMLVideoElement . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"HTMLVideoElement\"]" gTypeHTMLVideoElement' :: JSRef GType
gTypeHTMLVideoElement = GType gTypeHTMLVideoElement'
#else
type IsHTMLVideoElement o = HTMLVideoElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype History = History (JSRef History) deriving (Eq)

unHistory (History o) = o

instance ToJSRef History where
  toJSRef = return . unHistory
  {-# INLINE toJSRef #-}

instance FromJSRef History where
  fromJSRef = return . fmap History . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsHistory o
toHistory :: IsHistory o => o -> History
toHistory = unsafeCastGObject . toGObject

instance IsHistory History
instance GObjectClass History where
  toGObject = GObject . castRef . unHistory
  unsafeCastGObject = History . castRef . unGObject

castToHistory :: GObjectClass obj => obj -> History
castToHistory = castTo gTypeHistory "History"

foreign import javascript unsafe "window[\"History\"]" gTypeHistory' :: JSRef GType
gTypeHistory = GType gTypeHistory'
#else
type IsHistory o = HistoryClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype KeyboardEvent = KeyboardEvent (JSRef KeyboardEvent) deriving (Eq)

unKeyboardEvent (KeyboardEvent o) = o

instance ToJSRef KeyboardEvent where
  toJSRef = return . unKeyboardEvent
  {-# INLINE toJSRef #-}

instance FromJSRef KeyboardEvent where
  fromJSRef = return . fmap KeyboardEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsKeyboardEvent o
toKeyboardEvent :: IsKeyboardEvent o => o -> KeyboardEvent
toKeyboardEvent = unsafeCastGObject . toGObject

instance IsKeyboardEvent KeyboardEvent
instance IsUIEvent KeyboardEvent
instance IsEvent KeyboardEvent
instance GObjectClass KeyboardEvent where
  toGObject = GObject . castRef . unKeyboardEvent
  unsafeCastGObject = KeyboardEvent . castRef . unGObject

castToKeyboardEvent :: GObjectClass obj => obj -> KeyboardEvent
castToKeyboardEvent = castTo gTypeKeyboardEvent "KeyboardEvent"

foreign import javascript unsafe "window[\"KeyboardEvent\"]" gTypeKeyboardEvent' :: JSRef GType
gTypeKeyboardEvent = GType gTypeKeyboardEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Location = Location (JSRef Location) deriving (Eq)

unLocation (Location o) = o

instance ToJSRef Location where
  toJSRef = return . unLocation
  {-# INLINE toJSRef #-}

instance FromJSRef Location where
  fromJSRef = return . fmap Location . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsLocation o
toLocation :: IsLocation o => o -> Location
toLocation = unsafeCastGObject . toGObject

instance IsLocation Location
instance GObjectClass Location where
  toGObject = GObject . castRef . unLocation
  unsafeCastGObject = Location . castRef . unGObject

castToLocation :: GObjectClass obj => obj -> Location
castToLocation = castTo gTypeLocation "Location"

foreign import javascript unsafe "window[\"Location\"]" gTypeLocation' :: JSRef GType
gTypeLocation = GType gTypeLocation'
#else
type IsLocation o = LocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MediaError = MediaError (JSRef MediaError) deriving (Eq)

unMediaError (MediaError o) = o

instance ToJSRef MediaError where
  toJSRef = return . unMediaError
  {-# INLINE toJSRef #-}

instance FromJSRef MediaError where
  fromJSRef = return . fmap MediaError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaError o
toMediaError :: IsMediaError o => o -> MediaError
toMediaError = unsafeCastGObject . toGObject

instance IsMediaError MediaError
instance GObjectClass MediaError where
  toGObject = GObject . castRef . unMediaError
  unsafeCastGObject = MediaError . castRef . unGObject

castToMediaError :: GObjectClass obj => obj -> MediaError
castToMediaError = castTo gTypeMediaError "MediaError"

foreign import javascript unsafe "window[\"MediaError\"]" gTypeMediaError' :: JSRef GType
gTypeMediaError = GType gTypeMediaError'
#else
type IsMediaError o = MediaErrorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MediaList = MediaList (JSRef MediaList) deriving (Eq)

unMediaList (MediaList o) = o

instance ToJSRef MediaList where
  toJSRef = return . unMediaList
  {-# INLINE toJSRef #-}

instance FromJSRef MediaList where
  fromJSRef = return . fmap MediaList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaList o
toMediaList :: IsMediaList o => o -> MediaList
toMediaList = unsafeCastGObject . toGObject

instance IsMediaList MediaList
instance GObjectClass MediaList where
  toGObject = GObject . castRef . unMediaList
  unsafeCastGObject = MediaList . castRef . unGObject

castToMediaList :: GObjectClass obj => obj -> MediaList
castToMediaList = castTo gTypeMediaList "MediaList"

foreign import javascript unsafe "window[\"MediaList\"]" gTypeMediaList' :: JSRef GType
gTypeMediaList = GType gTypeMediaList'
#else
type IsMediaList o = MediaListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MediaQueryList = MediaQueryList (JSRef MediaQueryList) deriving (Eq)

unMediaQueryList (MediaQueryList o) = o

instance ToJSRef MediaQueryList where
  toJSRef = return . unMediaQueryList
  {-# INLINE toJSRef #-}

instance FromJSRef MediaQueryList where
  fromJSRef = return . fmap MediaQueryList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaQueryList o
toMediaQueryList :: IsMediaQueryList o => o -> MediaQueryList
toMediaQueryList = unsafeCastGObject . toGObject

instance IsMediaQueryList MediaQueryList
instance GObjectClass MediaQueryList where
  toGObject = GObject . castRef . unMediaQueryList
  unsafeCastGObject = MediaQueryList . castRef . unGObject

castToMediaQueryList :: GObjectClass obj => obj -> MediaQueryList
castToMediaQueryList = castTo gTypeMediaQueryList "MediaQueryList"

foreign import javascript unsafe "window[\"MediaQueryList\"]" gTypeMediaQueryList' :: JSRef GType
gTypeMediaQueryList = GType gTypeMediaQueryList'
#else
type IsMediaQueryList o = MediaQueryListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MessagePort = MessagePort (JSRef MessagePort) deriving (Eq)

unMessagePort (MessagePort o) = o

instance ToJSRef MessagePort where
  toJSRef = return . unMessagePort
  {-# INLINE toJSRef #-}

instance FromJSRef MessagePort where
  fromJSRef = return . fmap MessagePort . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMessagePort o
toMessagePort :: IsMessagePort o => o -> MessagePort
toMessagePort = unsafeCastGObject . toGObject

instance IsMessagePort MessagePort
instance GObjectClass MessagePort where
  toGObject = GObject . castRef . unMessagePort
  unsafeCastGObject = MessagePort . castRef . unGObject

castToMessagePort :: GObjectClass obj => obj -> MessagePort
castToMessagePort = castTo gTypeMessagePort "MessagePort"

foreign import javascript unsafe "window[\"MessagePort\"]" gTypeMessagePort' :: JSRef GType
gTypeMessagePort = GType gTypeMessagePort'
#else
type IsMessagePort o = MessagePortClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MouseEvent = MouseEvent (JSRef MouseEvent) deriving (Eq)

unMouseEvent (MouseEvent o) = o

instance ToJSRef MouseEvent where
  toJSRef = return . unMouseEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MouseEvent where
  fromJSRef = return . fmap MouseEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"MouseEvent\"]" gTypeMouseEvent' :: JSRef GType
gTypeMouseEvent = GType gTypeMouseEvent'
#else
type IsMouseEvent o = MouseEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MutationEvent = MutationEvent (JSRef MutationEvent) deriving (Eq)

unMutationEvent (MutationEvent o) = o

instance ToJSRef MutationEvent where
  toJSRef = return . unMutationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MutationEvent where
  fromJSRef = return . fmap MutationEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMutationEvent o
toMutationEvent :: IsMutationEvent o => o -> MutationEvent
toMutationEvent = unsafeCastGObject . toGObject

instance IsMutationEvent MutationEvent
instance IsEvent MutationEvent
instance GObjectClass MutationEvent where
  toGObject = GObject . castRef . unMutationEvent
  unsafeCastGObject = MutationEvent . castRef . unGObject

castToMutationEvent :: GObjectClass obj => obj -> MutationEvent
castToMutationEvent = castTo gTypeMutationEvent "MutationEvent"

foreign import javascript unsafe "window[\"MutationEvent\"]" gTypeMutationEvent' :: JSRef GType
gTypeMutationEvent = GType gTypeMutationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype NamedNodeMap = NamedNodeMap (JSRef NamedNodeMap) deriving (Eq)

unNamedNodeMap (NamedNodeMap o) = o

instance ToJSRef NamedNodeMap where
  toJSRef = return . unNamedNodeMap
  {-# INLINE toJSRef #-}

instance FromJSRef NamedNodeMap where
  fromJSRef = return . fmap NamedNodeMap . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNamedNodeMap o
toNamedNodeMap :: IsNamedNodeMap o => o -> NamedNodeMap
toNamedNodeMap = unsafeCastGObject . toGObject

instance IsNamedNodeMap NamedNodeMap
instance GObjectClass NamedNodeMap where
  toGObject = GObject . castRef . unNamedNodeMap
  unsafeCastGObject = NamedNodeMap . castRef . unGObject

castToNamedNodeMap :: GObjectClass obj => obj -> NamedNodeMap
castToNamedNodeMap = castTo gTypeNamedNodeMap "NamedNodeMap"

foreign import javascript unsafe "window[\"NamedNodeMap\"]" gTypeNamedNodeMap' :: JSRef GType
gTypeNamedNodeMap = GType gTypeNamedNodeMap'
#else
type IsNamedNodeMap o = NamedNodeMapClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Navigator = Navigator (JSRef Navigator) deriving (Eq)

unNavigator (Navigator o) = o

instance ToJSRef Navigator where
  toJSRef = return . unNavigator
  {-# INLINE toJSRef #-}

instance FromJSRef Navigator where
  fromJSRef = return . fmap Navigator . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNavigator o
toNavigator :: IsNavigator o => o -> Navigator
toNavigator = unsafeCastGObject . toGObject

instance IsNavigator Navigator
instance GObjectClass Navigator where
  toGObject = GObject . castRef . unNavigator
  unsafeCastGObject = Navigator . castRef . unGObject

castToNavigator :: GObjectClass obj => obj -> Navigator
castToNavigator = castTo gTypeNavigator "Navigator"

foreign import javascript unsafe "window[\"Navigator\"]" gTypeNavigator' :: JSRef GType
gTypeNavigator = GType gTypeNavigator'
#else
type IsNavigator o = NavigatorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Node = Node (JSRef Node) deriving (Eq)

unNode (Node o) = o

instance ToJSRef Node where
  toJSRef = return . unNode
  {-# INLINE toJSRef #-}

instance FromJSRef Node where
  fromJSRef = return . fmap Node . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNode o
toNode :: IsNode o => o -> Node
toNode = unsafeCastGObject . toGObject

instance IsNode Node
instance GObjectClass Node where
  toGObject = GObject . castRef . unNode
  unsafeCastGObject = Node . castRef . unGObject

castToNode :: GObjectClass obj => obj -> Node
castToNode = castTo gTypeNode "Node"

foreign import javascript unsafe "window[\"Node\"]" gTypeNode' :: JSRef GType
gTypeNode = GType gTypeNode'
#else
type IsNode o = NodeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype NodeFilter = NodeFilter (JSRef NodeFilter) deriving (Eq)

unNodeFilter (NodeFilter o) = o

instance ToJSRef NodeFilter where
  toJSRef = return . unNodeFilter
  {-# INLINE toJSRef #-}

instance FromJSRef NodeFilter where
  fromJSRef = return . fmap NodeFilter . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNodeFilter o
toNodeFilter :: IsNodeFilter o => o -> NodeFilter
toNodeFilter = unsafeCastGObject . toGObject

instance IsNodeFilter NodeFilter
instance GObjectClass NodeFilter where
  toGObject = GObject . castRef . unNodeFilter
  unsafeCastGObject = NodeFilter . castRef . unGObject

castToNodeFilter :: GObjectClass obj => obj -> NodeFilter
castToNodeFilter = castTo gTypeNodeFilter "NodeFilter"

foreign import javascript unsafe "window[\"NodeFilter\"]" gTypeNodeFilter' :: JSRef GType
gTypeNodeFilter = GType gTypeNodeFilter'
#else
type IsNodeFilter o = NodeFilterClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype NodeIterator = NodeIterator (JSRef NodeIterator) deriving (Eq)

unNodeIterator (NodeIterator o) = o

instance ToJSRef NodeIterator where
  toJSRef = return . unNodeIterator
  {-# INLINE toJSRef #-}

instance FromJSRef NodeIterator where
  fromJSRef = return . fmap NodeIterator . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNodeIterator o
toNodeIterator :: IsNodeIterator o => o -> NodeIterator
toNodeIterator = unsafeCastGObject . toGObject

instance IsNodeIterator NodeIterator
instance GObjectClass NodeIterator where
  toGObject = GObject . castRef . unNodeIterator
  unsafeCastGObject = NodeIterator . castRef . unGObject

castToNodeIterator :: GObjectClass obj => obj -> NodeIterator
castToNodeIterator = castTo gTypeNodeIterator "NodeIterator"

foreign import javascript unsafe "window[\"NodeIterator\"]" gTypeNodeIterator' :: JSRef GType
gTypeNodeIterator = GType gTypeNodeIterator'
#else
type IsNodeIterator o = NodeIteratorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype NodeList = NodeList (JSRef NodeList) deriving (Eq)

unNodeList (NodeList o) = o

instance ToJSRef NodeList where
  toJSRef = return . unNodeList
  {-# INLINE toJSRef #-}

instance FromJSRef NodeList where
  fromJSRef = return . fmap NodeList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNodeList o
toNodeList :: IsNodeList o => o -> NodeList
toNodeList = unsafeCastGObject . toGObject

instance IsNodeList NodeList
instance GObjectClass NodeList where
  toGObject = GObject . castRef . unNodeList
  unsafeCastGObject = NodeList . castRef . unGObject

castToNodeList :: GObjectClass obj => obj -> NodeList
castToNodeList = castTo gTypeNodeList "NodeList"

foreign import javascript unsafe "window[\"NodeList\"]" gTypeNodeList' :: JSRef GType
gTypeNodeList = GType gTypeNodeList'
#else
type IsNodeList o = NodeListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Notation = Notation (JSRef Notation) deriving (Eq)

unNotation (Notation o) = o

instance ToJSRef Notation where
  toJSRef = return . unNotation
  {-# INLINE toJSRef #-}

instance FromJSRef Notation where
  fromJSRef = return . fmap Notation . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsNode o => IsNotation o
toNotation :: IsNotation o => o -> Notation
toNotation = unsafeCastGObject . toGObject

instance IsNotation Notation
instance IsNode Notation
instance GObjectClass Notation where
  toGObject = GObject . castRef . unNotation
  unsafeCastGObject = Notation . castRef . unGObject

castToNotation :: GObjectClass obj => obj -> Notation
castToNotation = castTo gTypeNotation "Notation"

foreign import javascript unsafe "window[\"Notation\"]" gTypeNotation' :: JSRef GType
gTypeNotation = GType gTypeNotation'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ProcessingInstruction = ProcessingInstruction (JSRef ProcessingInstruction) deriving (Eq)

unProcessingInstruction (ProcessingInstruction o) = o

instance ToJSRef ProcessingInstruction where
  toJSRef = return . unProcessingInstruction
  {-# INLINE toJSRef #-}

instance FromJSRef ProcessingInstruction where
  fromJSRef = return . fmap ProcessingInstruction . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCharacterData o => IsProcessingInstruction o
toProcessingInstruction :: IsProcessingInstruction o => o -> ProcessingInstruction
toProcessingInstruction = unsafeCastGObject . toGObject

instance IsProcessingInstruction ProcessingInstruction
instance IsCharacterData ProcessingInstruction
instance IsNode ProcessingInstruction
instance GObjectClass ProcessingInstruction where
  toGObject = GObject . castRef . unProcessingInstruction
  unsafeCastGObject = ProcessingInstruction . castRef . unGObject

castToProcessingInstruction :: GObjectClass obj => obj -> ProcessingInstruction
castToProcessingInstruction = castTo gTypeProcessingInstruction "ProcessingInstruction"

foreign import javascript unsafe "window[\"ProcessingInstruction\"]" gTypeProcessingInstruction' :: JSRef GType
gTypeProcessingInstruction = GType gTypeProcessingInstruction'
#else
type IsProcessingInstruction o = ProcessingInstructionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMRange = DOMRange (JSRef DOMRange) deriving (Eq)

unDOMRange (DOMRange o) = o

instance ToJSRef DOMRange where
  toJSRef = return . unDOMRange
  {-# INLINE toJSRef #-}

instance FromJSRef DOMRange where
  fromJSRef = return . fmap DOMRange . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMRange o
toDOMRange :: IsDOMRange o => o -> DOMRange
toDOMRange = unsafeCastGObject . toGObject

instance IsDOMRange DOMRange
instance GObjectClass DOMRange where
  toGObject = GObject . castRef . unDOMRange
  unsafeCastGObject = DOMRange . castRef . unGObject

castToDOMRange :: GObjectClass obj => obj -> DOMRange
castToDOMRange = castTo gTypeDOMRange "DOMRange"

foreign import javascript unsafe "window[\"DOMRange\"]" gTypeDOMRange' :: JSRef GType
gTypeDOMRange = GType gTypeDOMRange'
#else
type IsDOMRange o = DOMRangeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMScreen = DOMScreen (JSRef DOMScreen) deriving (Eq)

unDOMScreen (DOMScreen o) = o

instance ToJSRef DOMScreen where
  toJSRef = return . unDOMScreen
  {-# INLINE toJSRef #-}

instance FromJSRef DOMScreen where
  fromJSRef = return . fmap DOMScreen . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMScreen o
toDOMScreen :: IsDOMScreen o => o -> DOMScreen
toDOMScreen = unsafeCastGObject . toGObject

instance IsDOMScreen DOMScreen
instance GObjectClass DOMScreen where
  toGObject = GObject . castRef . unDOMScreen
  unsafeCastGObject = DOMScreen . castRef . unGObject

castToDOMScreen :: GObjectClass obj => obj -> DOMScreen
castToDOMScreen = castTo gTypeDOMScreen "DOMScreen"

foreign import javascript unsafe "window[\"DOMScreen\"]" gTypeDOMScreen' :: JSRef GType
gTypeDOMScreen = GType gTypeDOMScreen'
#else
type IsDOMScreen o = DOMScreenClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Storage = Storage (JSRef Storage) deriving (Eq)

unStorage (Storage o) = o

instance ToJSRef Storage where
  toJSRef = return . unStorage
  {-# INLINE toJSRef #-}

instance FromJSRef Storage where
  fromJSRef = return . fmap Storage . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorage o
toStorage :: IsStorage o => o -> Storage
toStorage = unsafeCastGObject . toGObject

instance IsStorage Storage
instance GObjectClass Storage where
  toGObject = GObject . castRef . unStorage
  unsafeCastGObject = Storage . castRef . unGObject

castToStorage :: GObjectClass obj => obj -> Storage
castToStorage = castTo gTypeStorage "Storage"

foreign import javascript unsafe "window[\"Storage\"]" gTypeStorage' :: JSRef GType
gTypeStorage = GType gTypeStorage'
#else
type IsStorage o = StorageClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype StorageInfo = StorageInfo (JSRef StorageInfo) deriving (Eq)

unStorageInfo (StorageInfo o) = o

instance ToJSRef StorageInfo where
  toJSRef = return . unStorageInfo
  {-# INLINE toJSRef #-}

instance FromJSRef StorageInfo where
  fromJSRef = return . fmap StorageInfo . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorageInfo o
toStorageInfo :: IsStorageInfo o => o -> StorageInfo
toStorageInfo = unsafeCastGObject . toGObject

instance IsStorageInfo StorageInfo
instance GObjectClass StorageInfo where
  toGObject = GObject . castRef . unStorageInfo
  unsafeCastGObject = StorageInfo . castRef . unGObject

castToStorageInfo :: GObjectClass obj => obj -> StorageInfo
castToStorageInfo = castTo gTypeStorageInfo "StorageInfo"

foreign import javascript unsafe "window[\"StorageInfo\"]" gTypeStorageInfo' :: JSRef GType
gTypeStorageInfo = GType gTypeStorageInfo'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype StyleMedia = StyleMedia (JSRef StyleMedia) deriving (Eq)

unStyleMedia (StyleMedia o) = o

instance ToJSRef StyleMedia where
  toJSRef = return . unStyleMedia
  {-# INLINE toJSRef #-}

instance FromJSRef StyleMedia where
  fromJSRef = return . fmap StyleMedia . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStyleMedia o
toStyleMedia :: IsStyleMedia o => o -> StyleMedia
toStyleMedia = unsafeCastGObject . toGObject

instance IsStyleMedia StyleMedia
instance GObjectClass StyleMedia where
  toGObject = GObject . castRef . unStyleMedia
  unsafeCastGObject = StyleMedia . castRef . unGObject

castToStyleMedia :: GObjectClass obj => obj -> StyleMedia
castToStyleMedia = castTo gTypeStyleMedia "StyleMedia"

foreign import javascript unsafe "window[\"StyleMedia\"]" gTypeStyleMedia' :: JSRef GType
gTypeStyleMedia = GType gTypeStyleMedia'
#else
type IsStyleMedia o = StyleMediaClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype StyleSheet = StyleSheet (JSRef StyleSheet) deriving (Eq)

unStyleSheet (StyleSheet o) = o

instance ToJSRef StyleSheet where
  toJSRef = return . unStyleSheet
  {-# INLINE toJSRef #-}

instance FromJSRef StyleSheet where
  fromJSRef = return . fmap StyleSheet . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStyleSheet o
toStyleSheet :: IsStyleSheet o => o -> StyleSheet
toStyleSheet = unsafeCastGObject . toGObject

instance IsStyleSheet StyleSheet
instance GObjectClass StyleSheet where
  toGObject = GObject . castRef . unStyleSheet
  unsafeCastGObject = StyleSheet . castRef . unGObject

castToStyleSheet :: GObjectClass obj => obj -> StyleSheet
castToStyleSheet = castTo gTypeStyleSheet "StyleSheet"

foreign import javascript unsafe "window[\"StyleSheet\"]" gTypeStyleSheet' :: JSRef GType
gTypeStyleSheet = GType gTypeStyleSheet'
#else
type IsStyleSheet o = StyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype StyleSheetList = StyleSheetList (JSRef StyleSheetList) deriving (Eq)

unStyleSheetList (StyleSheetList o) = o

instance ToJSRef StyleSheetList where
  toJSRef = return . unStyleSheetList
  {-# INLINE toJSRef #-}

instance FromJSRef StyleSheetList where
  fromJSRef = return . fmap StyleSheetList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStyleSheetList o
toStyleSheetList :: IsStyleSheetList o => o -> StyleSheetList
toStyleSheetList = unsafeCastGObject . toGObject

instance IsStyleSheetList StyleSheetList
instance GObjectClass StyleSheetList where
  toGObject = GObject . castRef . unStyleSheetList
  unsafeCastGObject = StyleSheetList . castRef . unGObject

castToStyleSheetList :: GObjectClass obj => obj -> StyleSheetList
castToStyleSheetList = castTo gTypeStyleSheetList "StyleSheetList"

foreign import javascript unsafe "window[\"StyleSheetList\"]" gTypeStyleSheetList' :: JSRef GType
gTypeStyleSheetList = GType gTypeStyleSheetList'
#else
type IsStyleSheetList o = StyleSheetListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Text = Text (JSRef Text) deriving (Eq)

unText (Text o) = o

instance ToJSRef Text where
  toJSRef = return . unText
  {-# INLINE toJSRef #-}

instance FromJSRef Text where
  fromJSRef = return . fmap Text . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"Text\"]" gTypeText' :: JSRef GType
gTypeText = GType gTypeText'
#else
type IsText o = TextClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype TimeRanges = TimeRanges (JSRef TimeRanges) deriving (Eq)

unTimeRanges (TimeRanges o) = o

instance ToJSRef TimeRanges where
  toJSRef = return . unTimeRanges
  {-# INLINE toJSRef #-}

instance FromJSRef TimeRanges where
  fromJSRef = return . fmap TimeRanges . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTimeRanges o
toTimeRanges :: IsTimeRanges o => o -> TimeRanges
toTimeRanges = unsafeCastGObject . toGObject

instance IsTimeRanges TimeRanges
instance GObjectClass TimeRanges where
  toGObject = GObject . castRef . unTimeRanges
  unsafeCastGObject = TimeRanges . castRef . unGObject

castToTimeRanges :: GObjectClass obj => obj -> TimeRanges
castToTimeRanges = castTo gTypeTimeRanges "TimeRanges"

foreign import javascript unsafe "window[\"TimeRanges\"]" gTypeTimeRanges' :: JSRef GType
gTypeTimeRanges = GType gTypeTimeRanges'
#else
type IsTimeRanges o = TimeRangesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype TreeWalker = TreeWalker (JSRef TreeWalker) deriving (Eq)

unTreeWalker (TreeWalker o) = o

instance ToJSRef TreeWalker where
  toJSRef = return . unTreeWalker
  {-# INLINE toJSRef #-}

instance FromJSRef TreeWalker where
  fromJSRef = return . fmap TreeWalker . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTreeWalker o
toTreeWalker :: IsTreeWalker o => o -> TreeWalker
toTreeWalker = unsafeCastGObject . toGObject

instance IsTreeWalker TreeWalker
instance GObjectClass TreeWalker where
  toGObject = GObject . castRef . unTreeWalker
  unsafeCastGObject = TreeWalker . castRef . unGObject

castToTreeWalker :: GObjectClass obj => obj -> TreeWalker
castToTreeWalker = castTo gTypeTreeWalker "TreeWalker"

foreign import javascript unsafe "window[\"TreeWalker\"]" gTypeTreeWalker' :: JSRef GType
gTypeTreeWalker = GType gTypeTreeWalker'
#else
type IsTreeWalker o = TreeWalkerClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype UIEvent = UIEvent (JSRef UIEvent) deriving (Eq)

unUIEvent (UIEvent o) = o

instance ToJSRef UIEvent where
  toJSRef = return . unUIEvent
  {-# INLINE toJSRef #-}

instance FromJSRef UIEvent where
  fromJSRef = return . fmap UIEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

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

foreign import javascript unsafe "window[\"UIEvent\"]" gTypeUIEvent' :: JSRef GType
gTypeUIEvent = GType gTypeUIEvent'
#else
type IsUIEvent o = UIEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ValidityState = ValidityState (JSRef ValidityState) deriving (Eq)

unValidityState (ValidityState o) = o

instance ToJSRef ValidityState where
  toJSRef = return . unValidityState
  {-# INLINE toJSRef #-}

instance FromJSRef ValidityState where
  fromJSRef = return . fmap ValidityState . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsValidityState o
toValidityState :: IsValidityState o => o -> ValidityState
toValidityState = unsafeCastGObject . toGObject

instance IsValidityState ValidityState
instance GObjectClass ValidityState where
  toGObject = GObject . castRef . unValidityState
  unsafeCastGObject = ValidityState . castRef . unGObject

castToValidityState :: GObjectClass obj => obj -> ValidityState
castToValidityState = castTo gTypeValidityState "ValidityState"

foreign import javascript unsafe "window[\"ValidityState\"]" gTypeValidityState' :: JSRef GType
gTypeValidityState = GType gTypeValidityState'
#else
type IsValidityState o = ValidityStateClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype WebKitNamedFlow = WebKitNamedFlow (JSRef WebKitNamedFlow) deriving (Eq)

unWebKitNamedFlow (WebKitNamedFlow o) = o

instance ToJSRef WebKitNamedFlow where
  toJSRef = return . unWebKitNamedFlow
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitNamedFlow where
  fromJSRef = return . fmap WebKitNamedFlow . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebKitNamedFlow o
toWebKitNamedFlow :: IsWebKitNamedFlow o => o -> WebKitNamedFlow
toWebKitNamedFlow = unsafeCastGObject . toGObject

instance IsWebKitNamedFlow WebKitNamedFlow
instance GObjectClass WebKitNamedFlow where
  toGObject = GObject . castRef . unWebKitNamedFlow
  unsafeCastGObject = WebKitNamedFlow . castRef . unGObject

castToWebKitNamedFlow :: GObjectClass obj => obj -> WebKitNamedFlow
castToWebKitNamedFlow = castTo gTypeWebKitNamedFlow "WebKitNamedFlow"

foreign import javascript unsafe "window[\"WebKitNamedFlow\"]" gTypeWebKitNamedFlow' :: JSRef GType
gTypeWebKitNamedFlow = GType gTypeWebKitNamedFlow'
#else
type IsWebKitNamedFlow o = WebKitNamedFlowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype WebKitPoint = WebKitPoint (JSRef WebKitPoint) deriving (Eq)

unWebKitPoint (WebKitPoint o) = o

instance ToJSRef WebKitPoint where
  toJSRef = return . unWebKitPoint
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitPoint where
  fromJSRef = return . fmap WebKitPoint . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebKitPoint o
toWebKitPoint :: IsWebKitPoint o => o -> WebKitPoint
toWebKitPoint = unsafeCastGObject . toGObject

instance IsWebKitPoint WebKitPoint
instance GObjectClass WebKitPoint where
  toGObject = GObject . castRef . unWebKitPoint
  unsafeCastGObject = WebKitPoint . castRef . unGObject

castToWebKitPoint :: GObjectClass obj => obj -> WebKitPoint
castToWebKitPoint = castTo gTypeWebKitPoint "WebKitPoint"

foreign import javascript unsafe "window[\"WebKitPoint\"]" gTypeWebKitPoint' :: JSRef GType
gTypeWebKitPoint = GType gTypeWebKitPoint'
#else
type IsWebKitPoint o = WebKitPointClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype XMLHttpRequest = XMLHttpRequest (JSRef XMLHttpRequest) deriving (Eq)

unXMLHttpRequest (XMLHttpRequest o) = o

instance ToJSRef XMLHttpRequest where
  toJSRef = return . unXMLHttpRequest
  {-# INLINE toJSRef #-}

instance FromJSRef XMLHttpRequest where
  fromJSRef = return . fmap XMLHttpRequest . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXMLHttpRequest o
toXMLHttpRequest :: IsXMLHttpRequest o => o -> XMLHttpRequest
toXMLHttpRequest = unsafeCastGObject . toGObject

instance IsXMLHttpRequest XMLHttpRequest
instance GObjectClass XMLHttpRequest where
  toGObject = GObject . castRef . unXMLHttpRequest
  unsafeCastGObject = XMLHttpRequest . castRef . unGObject

castToXMLHttpRequest :: GObjectClass obj => obj -> XMLHttpRequest
castToXMLHttpRequest = castTo gTypeXMLHttpRequest "XMLHttpRequest"

foreign import javascript unsafe "window[\"XMLHttpRequest\"]" gTypeXMLHttpRequest' :: JSRef GType
gTypeXMLHttpRequest = GType gTypeXMLHttpRequest'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype XMLHttpRequestUpload = XMLHttpRequestUpload (JSRef XMLHttpRequestUpload) deriving (Eq)

unXMLHttpRequestUpload (XMLHttpRequestUpload o) = o

instance ToJSRef XMLHttpRequestUpload where
  toJSRef = return . unXMLHttpRequestUpload
  {-# INLINE toJSRef #-}

instance FromJSRef XMLHttpRequestUpload where
  fromJSRef = return . fmap XMLHttpRequestUpload . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXMLHttpRequestUpload o
toXMLHttpRequestUpload :: IsXMLHttpRequestUpload o => o -> XMLHttpRequestUpload
toXMLHttpRequestUpload = unsafeCastGObject . toGObject

instance IsXMLHttpRequestUpload XMLHttpRequestUpload
instance GObjectClass XMLHttpRequestUpload where
  toGObject = GObject . castRef . unXMLHttpRequestUpload
  unsafeCastGObject = XMLHttpRequestUpload . castRef . unGObject

castToXMLHttpRequestUpload :: GObjectClass obj => obj -> XMLHttpRequestUpload
castToXMLHttpRequestUpload = castTo gTypeXMLHttpRequestUpload "XMLHttpRequestUpload"

foreign import javascript unsafe "window[\"XMLHttpRequestUpload\"]" gTypeXMLHttpRequestUpload' :: JSRef GType
gTypeXMLHttpRequestUpload = GType gTypeXMLHttpRequestUpload'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype XPathExpression = XPathExpression (JSRef XPathExpression) deriving (Eq)

unXPathExpression (XPathExpression o) = o

instance ToJSRef XPathExpression where
  toJSRef = return . unXPathExpression
  {-# INLINE toJSRef #-}

instance FromJSRef XPathExpression where
  fromJSRef = return . fmap XPathExpression . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXPathExpression o
toXPathExpression :: IsXPathExpression o => o -> XPathExpression
toXPathExpression = unsafeCastGObject . toGObject

instance IsXPathExpression XPathExpression
instance GObjectClass XPathExpression where
  toGObject = GObject . castRef . unXPathExpression
  unsafeCastGObject = XPathExpression . castRef . unGObject

castToXPathExpression :: GObjectClass obj => obj -> XPathExpression
castToXPathExpression = castTo gTypeXPathExpression "XPathExpression"

foreign import javascript unsafe "window[\"XPathExpression\"]" gTypeXPathExpression' :: JSRef GType
gTypeXPathExpression = GType gTypeXPathExpression'
#else
type IsXPathExpression o = XPathExpressionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype XPathNSResolver = XPathNSResolver (JSRef XPathNSResolver) deriving (Eq)

unXPathNSResolver (XPathNSResolver o) = o

instance ToJSRef XPathNSResolver where
  toJSRef = return . unXPathNSResolver
  {-# INLINE toJSRef #-}

instance FromJSRef XPathNSResolver where
  fromJSRef = return . fmap XPathNSResolver . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXPathNSResolver o
toXPathNSResolver :: IsXPathNSResolver o => o -> XPathNSResolver
toXPathNSResolver = unsafeCastGObject . toGObject

instance IsXPathNSResolver XPathNSResolver
instance GObjectClass XPathNSResolver where
  toGObject = GObject . castRef . unXPathNSResolver
  unsafeCastGObject = XPathNSResolver . castRef . unGObject

castToXPathNSResolver :: GObjectClass obj => obj -> XPathNSResolver
castToXPathNSResolver = castTo gTypeXPathNSResolver "XPathNSResolver"

foreign import javascript unsafe "window[\"XPathNSResolver\"]" gTypeXPathNSResolver' :: JSRef GType
gTypeXPathNSResolver = GType gTypeXPathNSResolver'
#else
type IsXPathNSResolver o = XPathNSResolverClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype XPathResult = XPathResult (JSRef XPathResult) deriving (Eq)

unXPathResult (XPathResult o) = o

instance ToJSRef XPathResult where
  toJSRef = return . unXPathResult
  {-# INLINE toJSRef #-}

instance FromJSRef XPathResult where
  fromJSRef = return . fmap XPathResult . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXPathResult o
toXPathResult :: IsXPathResult o => o -> XPathResult
toXPathResult = unsafeCastGObject . toGObject

instance IsXPathResult XPathResult
instance GObjectClass XPathResult where
  toGObject = GObject . castRef . unXPathResult
  unsafeCastGObject = XPathResult . castRef . unGObject

castToXPathResult :: GObjectClass obj => obj -> XPathResult
castToXPathResult = castTo gTypeXPathResult "XPathResult"

foreign import javascript unsafe "window[\"XPathResult\"]" gTypeXPathResult' :: JSRef GType
gTypeXPathResult = GType gTypeXPathResult'
#else
type IsXPathResult o = XPathResultClass o
#endif


