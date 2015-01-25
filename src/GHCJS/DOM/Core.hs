{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Core
       (DOMAttr, BarProp, Blob, CDATASection, CharacterData, Comment,
        CSSPrimitiveValue, CSSRule, CSSRuleList, CSSStyleDeclaration,
        CSSStyleSheet, CSSValue, Counter, Document, DocumentFragment,
        DocumentType, DOMApplicationCache, DOMImplementation, DOMMimeType,
        DOMMimeTypeArray, DOMNamedFlowCollection, DOMPlugin,
        DOMPluginArray, DOMSecurityPolicy, DOMSelection,
        DOMSettableTokenList, DOMStringList, DOMTokenList, DOMWindow,
        DOMWindowCSS, Element, EntityReference, Event, EventTarget, File,
        FileList, Geolocation, PositionError, History, HTMLAnchorElement,
        HTMLAppletElement, HTMLAreaElement, HTMLBaseElement,
        HTMLBaseFontElement, HTMLBodyElement, HTMLBRElement,
        HTMLButtonElement, HTMLCanvasElement, HTMLCollection,
        HTMLDetailsElement, HTMLDirectoryElement, HTMLDivElement,
        HTMLDListElement, HTMLDocument, HTMLElement, HTMLEmbedElement,
        HTMLFieldSetElement, HTMLFontElement, HTMLFormElement,
        HTMLFrameElement, HTMLFrameSetElement, HTMLHeadElement,
        HTMLHeadingElement, HTMLHRElement, HTMLHtmlElement,
        HTMLIFrameElement, HTMLImageElement, HTMLInputElement,
        HTMLKeygenElement, HTMLLabelElement, HTMLLegendElement,
        HTMLLIElement, HTMLLinkElement, HTMLMapElement, HTMLMarqueeElement,
        HTMLMediaElement, HTMLAudioElement, HTMLMenuElement,
        HTMLMetaElement, HTMLModElement, HTMLObjectElement,
        HTMLOListElement, HTMLOptGroupElement, HTMLOptionElement,
        HTMLOptionsCollection, HTMLParagraphElement, HTMLParamElement,
        HTMLPreElement, HTMLQuoteElement, HTMLScriptElement,
        HTMLSelectElement, HTMLStyleElement, HTMLTableCaptionElement,
        HTMLTableCellElement, HTMLTableColElement, HTMLTableElement,
        HTMLTableRowElement, HTMLTableSectionElement, HTMLTextAreaElement,
        HTMLTitleElement, HTMLUListElement, HTMLVideoElement,
        MediaController, KeyboardEvent, Location, MediaError, MediaList,
        MediaQueryList, MouseEvent, MessagePort, MutationEvent,
        NamedNodeMap, Navigator, Node, NodeFilter, NodeIterator, NodeList,
        Notation, ProcessingInstruction, DOMRange, Rect, DOMScreen,
        StyleMedia, StyleSheet, StyleSheetList, Storage, StorageInfo,
        Text(..), TimeRanges(..), TreeWalker(..), ValidityState, UIEvent,
        WebKitNamedFlow, WebKitPoint, XMLHttpRequest, XMLHttpRequestUpload,
        XPathExpression, XPathNSResolver, XPathResult, RGBColor,
        SVGAElement, SVGAltGlyphDefElement, SVGAltGlyphElement,
        SVGAltGlyphItemElement, SVGAngle, SVGAnimateColorElement,
        SVGAnimatedAngle, SVGAnimatedBoolean, SVGAnimatedEnumeration,
        SVGAnimatedInteger, SVGAnimatedLength, SVGAnimatedLengthList,
        SVGAnimatedNumber, SVGAnimatedNumberList,
        SVGAnimatedPreserveAspectRatio, SVGAnimatedRect, SVGAnimatedString,
        SVGAnimatedTransformList, SVGAnimateElement,
        SVGAnimateMotionElement, SVGAnimateTransformElement,
        SVGAnimationElement, SVGCircleElement, SVGClipPathElement,
        SVGColor, SVGComponentTransferFunctionElement, SVGCursorElement,
        SVGDefsElement, SVGDescElement, SVGDocument, SVGElement,
        SVGElementInstance, SVGElementInstanceList, SVGEllipseElement,
        SVGExternalResourcesRequired, SVGFEBlendElement,
        SVGFEColorMatrixElement, SVGFEComponentTransferElement,
        SVGFECompositeElement, SVGFEConvolveMatrixElement,
        SVGFEDiffuseLightingElement, SVGFEDisplacementMapElement,
        SVGFEDistantLightElement, SVGFEDropShadowElement,
        SVGFEFloodElement, SVGFEFuncAElement, SVGFEFuncBElement,
        SVGFEFuncGElement, SVGFEFuncRElement, SVGFEGaussianBlurElement,
        SVGFEImageElement, SVGFEMergeElement, SVGFEMergeNodeElement,
        SVGFEMorphologyElement, SVGFEOffsetElement, SVGFEPointLightElement,
        SVGFESpecularLightingElement, SVGFESpotLightElement,
        SVGFETileElement, SVGFETurbulenceElement, SVGFilterElement,
        SVGFilterPrimitiveStandardAttributes, SVGFitToViewBox,
        SVGFontElement, SVGFontFaceElement, SVGFontFaceFormatElement,
        SVGFontFaceNameElement, SVGFontFaceSrcElement,
        SVGFontFaceUriElement, SVGForeignObjectElement, SVGGElement,
        SVGGlyphElement, SVGGlyphRefElement, SVGGradientElement,
        SVGGraphicsElement, SVGHKernElement, SVGImageElement, SVGLength,
        SVGLengthList, SVGLinearGradientElement, SVGLineElement,
        SVGMarkerElement, SVGMaskElement, SVGMatrix, SVGMetadataElement,
        SVGMissingGlyphElement, SVGMPathElement, SVGNumber, SVGNumberList,
        SVGPaint, SVGPathElement, SVGPathSeg, SVGPathSegArcAbs,
        SVGPathSegArcRel, SVGPathSegClosePath, SVGPathSegCurvetoCubicAbs,
        SVGPathSegCurvetoCubicRel, SVGPathSegCurvetoCubicSmoothAbs,
        SVGPathSegCurvetoCubicSmoothRel, SVGPathSegCurvetoQuadraticAbs,
        SVGPathSegCurvetoQuadraticRel, SVGPathSegCurvetoQuadraticSmoothAbs,
        SVGPathSegCurvetoQuadraticSmoothRel, SVGPathSegLinetoAbs,
        SVGPathSegLinetoHorizontalAbs, SVGPathSegLinetoHorizontalRel,
        SVGPathSegLinetoRel, SVGPathSegLinetoVerticalAbs,
        SVGPathSegLinetoVerticalRel, SVGPathSegList, SVGPathSegMovetoAbs,
        SVGPathSegMovetoRel, SVGPatternElement, SVGPoint, SVGPointList,
        SVGPolygonElement, SVGPolylineElement, SVGPreserveAspectRatio,
        SVGRadialGradientElement, SVGRect, SVGRectElement,
        SVGRenderingIntent, SVGScriptElement, SVGSetElement,
        SVGStopElement, SVGStringList, SVGStyleElement, SVGSVGElement,
        SVGSwitchElement, SVGSymbolElement, SVGTests,
        SVGTextContentElement, SVGTextElement, SVGTextPathElement,
        SVGTextPositioningElement, SVGTitleElement, SVGTransform,
        SVGTransformList, SVGTRefElement, SVGTSpanElement, SVGUnitTypes,
        SVGURIReference, SVGUseElement, SVGViewElement, SVGViewSpec,
        SVGVKernElement, SVGZoomAndPan, SVGZoomEvent, IsDOMAttr, IsBarProp,
        IsBlob, IsCDATASection, IsCharacterData, IsComment,
        IsCSSPrimitiveValue, IsCSSRule, IsCSSRuleList,
        IsCSSStyleDeclaration, IsCSSStyleSheet, IsCSSValue, IsCounter,
        IsDocument, IsDocumentFragment, IsDocumentType,
        IsDOMApplicationCache, IsDOMImplementation, IsDOMMimeType,
        IsDOMMimeTypeArray, IsDOMNamedFlowCollection, IsDOMPlugin,
        IsDOMPluginArray, IsDOMSecurityPolicy, IsDOMSelection,
        IsDOMSettableTokenList, IsDOMStringList, IsDOMTokenList,
        IsDOMWindow, IsDOMWindowCSS, IsElement, IsEntityReference, IsEvent,
        IsEventTarget, IsFile, IsFileList, IsGeolocation, IsPositionError,
        IsHistory, IsHTMLAnchorElement, IsHTMLAppletElement,
        IsHTMLAreaElement, IsHTMLBaseElement, IsHTMLBaseFontElement,
        IsHTMLBodyElement, IsHTMLBRElement, IsHTMLButtonElement,
        IsHTMLCanvasElement, IsHTMLCollection, IsHTMLDetailsElement,
        IsHTMLDirectoryElement, IsHTMLDivElement, IsHTMLDListElement,
        IsHTMLDocument, IsHTMLElement, IsHTMLEmbedElement,
        IsHTMLFieldSetElement, IsHTMLFontElement, IsHTMLFormElement,
        IsHTMLFrameElement, IsHTMLFrameSetElement, IsHTMLHeadElement,
        IsHTMLHeadingElement, IsHTMLHRElement, IsHTMLHtmlElement,
        IsHTMLIFrameElement, IsHTMLImageElement, IsHTMLInputElement,
        IsHTMLKeygenElement, IsHTMLLabelElement, IsHTMLLegendElement,
        IsHTMLLIElement, IsHTMLLinkElement, IsHTMLMapElement,
        IsHTMLMarqueeElement, IsHTMLMediaElement, IsHTMLAudioElement,
        IsHTMLMenuElement, IsHTMLMetaElement, IsHTMLModElement,
        IsHTMLObjectElement, IsHTMLOListElement, IsHTMLOptGroupElement,
        IsHTMLOptionElement, IsHTMLOptionsCollection,
        IsHTMLParagraphElement, IsHTMLParamElement, IsHTMLPreElement,
        IsHTMLQuoteElement, IsHTMLScriptElement, IsHTMLSelectElement,
        IsHTMLStyleElement, IsHTMLTableCaptionElement,
        IsHTMLTableCellElement, IsHTMLTableColElement, IsHTMLTableElement,
        IsHTMLTableRowElement, IsHTMLTableSectionElement,
        IsHTMLTextAreaElement, IsHTMLTitleElement, IsHTMLUListElement,
        IsHTMLVideoElement, IsMediaController, IsKeyboardEvent, IsLocation,
        IsMediaError, IsMediaList, IsMediaQueryList, IsMouseEvent,
        IsMessagePort, IsMutationEvent, IsNamedNodeMap, IsNavigator,
        IsNode, IsNodeFilter, IsNodeIterator, IsNodeList, IsNotation,
        IsProcessingInstruction, IsDOMRange, IsRect, IsDOMScreen,
        IsStyleMedia, IsStyleSheet, IsStyleSheetList, IsStorage,
        IsStorageInfo, IsText, IsTimeRanges, IsTreeWalker, IsValidityState,
        IsUIEvent, IsWebKitNamedFlow, IsWebKitPoint, IsXMLHttpRequest,
        IsXMLHttpRequestUpload, IsXPathExpression, IsXPathNSResolver,
        IsXPathResult, IsRGBColor, IsSVGAElement, IsSVGAltGlyphDefElement,
        IsSVGAltGlyphElement, IsSVGAltGlyphItemElement, IsSVGAngle,
        IsSVGAnimateColorElement, IsSVGAnimatedAngle, IsSVGAnimatedBoolean,
        IsSVGAnimatedEnumeration, IsSVGAnimatedInteger,
        IsSVGAnimatedLength, IsSVGAnimatedLengthList, IsSVGAnimatedNumber,
        IsSVGAnimatedNumberList, IsSVGAnimatedPreserveAspectRatio,
        IsSVGAnimatedRect, IsSVGAnimatedString, IsSVGAnimatedTransformList,
        IsSVGAnimateElement, IsSVGAnimateMotionElement,
        IsSVGAnimateTransformElement, IsSVGAnimationElement,
        IsSVGCircleElement, IsSVGClipPathElement, IsSVGColor,
        IsSVGComponentTransferFunctionElement, IsSVGCursorElement,
        IsSVGDefsElement, IsSVGDescElement, IsSVGDocument, IsSVGElement,
        IsSVGElementInstance, IsSVGElementInstanceList,
        IsSVGEllipseElement, IsSVGExternalResourcesRequired,
        IsSVGFEBlendElement, IsSVGFEColorMatrixElement,
        IsSVGFEComponentTransferElement, IsSVGFECompositeElement,
        IsSVGFEConvolveMatrixElement, IsSVGFEDiffuseLightingElement,
        IsSVGFEDisplacementMapElement, IsSVGFEDistantLightElement,
        IsSVGFEDropShadowElement, IsSVGFEFloodElement, IsSVGFEFuncAElement,
        IsSVGFEFuncBElement, IsSVGFEFuncGElement, IsSVGFEFuncRElement,
        IsSVGFEGaussianBlurElement, IsSVGFEImageElement,
        IsSVGFEMergeElement, IsSVGFEMergeNodeElement,
        IsSVGFEMorphologyElement, IsSVGFEOffsetElement,
        IsSVGFEPointLightElement, IsSVGFESpecularLightingElement,
        IsSVGFESpotLightElement, IsSVGFETileElement,
        IsSVGFETurbulenceElement, IsSVGFilterElement,
        IsSVGFilterPrimitiveStandardAttributes, IsSVGFitToViewBox,
        IsSVGFontElement, IsSVGFontFaceElement, IsSVGFontFaceFormatElement,
        IsSVGFontFaceNameElement, IsSVGFontFaceSrcElement,
        IsSVGFontFaceUriElement, IsSVGForeignObjectElement, IsSVGGElement,
        IsSVGGlyphElement, IsSVGGlyphRefElement, IsSVGGradientElement,
        IsSVGGraphicsElement, IsSVGHKernElement, IsSVGImageElement,
        IsSVGLength, IsSVGLengthList, IsSVGLinearGradientElement,
        IsSVGLineElement, IsSVGMarkerElement, IsSVGMaskElement,
        IsSVGMatrix, IsSVGMetadataElement, IsSVGMissingGlyphElement,
        IsSVGMPathElement, IsSVGNumber, IsSVGNumberList, IsSVGPaint,
        IsSVGPathElement, IsSVGPathSeg, IsSVGPathSegArcAbs,
        IsSVGPathSegArcRel, IsSVGPathSegClosePath,
        IsSVGPathSegCurvetoCubicAbs, IsSVGPathSegCurvetoCubicRel,
        IsSVGPathSegCurvetoCubicSmoothAbs,
        IsSVGPathSegCurvetoCubicSmoothRel, IsSVGPathSegCurvetoQuadraticAbs,
        IsSVGPathSegCurvetoQuadraticRel,
        IsSVGPathSegCurvetoQuadraticSmoothAbs,
        IsSVGPathSegCurvetoQuadraticSmoothRel, IsSVGPathSegLinetoAbs,
        IsSVGPathSegLinetoHorizontalAbs, IsSVGPathSegLinetoHorizontalRel,
        IsSVGPathSegLinetoRel, IsSVGPathSegLinetoVerticalAbs,
        IsSVGPathSegLinetoVerticalRel, IsSVGPathSegList,
        IsSVGPathSegMovetoAbs, IsSVGPathSegMovetoRel, IsSVGPatternElement,
        IsSVGPoint, IsSVGPointList, IsSVGPolygonElement,
        IsSVGPolylineElement, IsSVGPreserveAspectRatio,
        IsSVGRadialGradientElement, IsSVGRect, IsSVGRectElement,
        IsSVGRenderingIntent, IsSVGScriptElement, IsSVGSetElement,
        IsSVGStopElement, IsSVGStringList, IsSVGStyleElement,
        IsSVGSVGElement, IsSVGSwitchElement, IsSVGSymbolElement,
        IsSVGTests, IsSVGTextContentElement, IsSVGTextElement,
        IsSVGTextPathElement, IsSVGTextPositioningElement,
        IsSVGTitleElement, IsSVGTransform, IsSVGTransformList,
        IsSVGTRefElement, IsSVGTSpanElement, IsSVGUnitTypes,
        IsSVGURIReference, IsSVGUseElement, IsSVGViewElement,
        IsSVGViewSpec, IsSVGVKernElement, IsSVGZoomAndPan, IsSVGZoomEvent)
       where
 
data DOMAttr = DOMAttr
 
data BarProp = BarProp
 
data Blob = Blob
 
data CDATASection = CDATASection
 
data CharacterData = CharacterData
 
data Comment = Comment
 
data CSSPrimitiveValue = CSSPrimitiveValue
 
data CSSRule = CSSRule
 
data CSSRuleList = CSSRuleList
 
data CSSStyleDeclaration = CSSStyleDeclaration
 
data CSSStyleSheet = CSSStyleSheet
 
data CSSValue = CSSValue
 
data Counter = Counter
 
data Document = Document
 
data DocumentFragment = DocumentFragment
 
data DocumentType = DocumentType
 
data DOMApplicationCache = DOMApplicationCache
 
data DOMImplementation = DOMImplementation
 
data DOMMimeType = DOMMimeType
 
data DOMMimeTypeArray = DOMMimeTypeArray
 
data DOMNamedFlowCollection = DOMNamedFlowCollection
 
data DOMPlugin = DOMPlugin
 
data DOMPluginArray = DOMPluginArray
 
data DOMSecurityPolicy = DOMSecurityPolicy
 
data DOMSelection = DOMSelection
 
data DOMSettableTokenList = DOMSettableTokenList
 
data DOMStringList = DOMStringList
 
data DOMTokenList = DOMTokenList
 
data DOMWindow = DOMWindow
 
data DOMWindowCSS = DOMWindowCSS
 
data Element = Element
 
data EntityReference = EntityReference
 
data Event = Event
 
data EventTarget = EventTarget
 
data File = File
 
data FileList = FileList
 
data Geolocation = Geolocation
 
data PositionError = PositionError
 
data History = History
 
data HTMLAnchorElement = HTMLAnchorElement
 
data HTMLAppletElement = HTMLAppletElement
 
data HTMLAreaElement = HTMLAreaElement
 
data HTMLBaseElement = HTMLBaseElement
 
data HTMLBaseFontElement = HTMLBaseFontElement
 
data HTMLBodyElement = HTMLBodyElement
 
data HTMLBRElement = HTMLBRElement
 
data HTMLButtonElement = HTMLButtonElement
 
data HTMLCanvasElement = HTMLCanvasElement
 
data HTMLCollection = HTMLCollection
 
data HTMLDetailsElement = HTMLDetailsElement
 
data HTMLDirectoryElement = HTMLDirectoryElement
 
data HTMLDivElement = HTMLDivElement
 
data HTMLDListElement = HTMLDListElement
 
data HTMLDocument = HTMLDocument
 
data HTMLElement = HTMLElement
 
data HTMLEmbedElement = HTMLEmbedElement
 
data HTMLFieldSetElement = HTMLFieldSetElement
 
data HTMLFontElement = HTMLFontElement
 
data HTMLFormElement = HTMLFormElement
 
data HTMLFrameElement = HTMLFrameElement
 
data HTMLFrameSetElement = HTMLFrameSetElement
 
data HTMLHeadElement = HTMLHeadElement
 
data HTMLHeadingElement = HTMLHeadingElement
 
data HTMLHRElement = HTMLHRElement
 
data HTMLHtmlElement = HTMLHtmlElement
 
data HTMLIFrameElement = HTMLIFrameElement
 
data HTMLImageElement = HTMLImageElement
 
data HTMLInputElement = HTMLInputElement
 
data HTMLKeygenElement = HTMLKeygenElement
 
data HTMLLabelElement = HTMLLabelElement
 
data HTMLLegendElement = HTMLLegendElement
 
data HTMLLIElement = HTMLLIElement
 
data HTMLLinkElement = HTMLLinkElement
 
data HTMLMapElement = HTMLMapElement
 
data HTMLMarqueeElement = HTMLMarqueeElement
 
data HTMLMediaElement = HTMLMediaElement
 
data HTMLAudioElement = HTMLAudioElement
 
data HTMLMenuElement = HTMLMenuElement
 
data HTMLMetaElement = HTMLMetaElement
 
data HTMLModElement = HTMLModElement
 
data HTMLObjectElement = HTMLObjectElement
 
data HTMLOListElement = HTMLOListElement
 
data HTMLOptGroupElement = HTMLOptGroupElement
 
data HTMLOptionElement = HTMLOptionElement
 
data HTMLOptionsCollection = HTMLOptionsCollection
 
data HTMLParagraphElement = HTMLParagraphElement
 
data HTMLParamElement = HTMLParamElement
 
data HTMLPreElement = HTMLPreElement
 
data HTMLQuoteElement = HTMLQuoteElement
 
data HTMLScriptElement = HTMLScriptElement
 
data HTMLSelectElement = HTMLSelectElement
 
data HTMLStyleElement = HTMLStyleElement
 
data HTMLTableCaptionElement = HTMLTableCaptionElement
 
data HTMLTableCellElement = HTMLTableCellElement
 
data HTMLTableColElement = HTMLTableColElement
 
data HTMLTableElement = HTMLTableElement
 
data HTMLTableRowElement = HTMLTableRowElement
 
data HTMLTableSectionElement = HTMLTableSectionElement
 
data HTMLTextAreaElement = HTMLTextAreaElement
 
data HTMLTitleElement = HTMLTitleElement
 
data HTMLUListElement = HTMLUListElement
 
data HTMLVideoElement = HTMLVideoElement
 
data MediaController = MediaController
 
data KeyboardEvent = KeyboardEvent
 
data Location = Location
 
data MediaError = MediaError
 
data MediaList = MediaList
 
data MediaQueryList = MediaQueryList
 
data MouseEvent = MouseEvent
 
data MessagePort = MessagePort
 
data MutationEvent = MutationEvent
 
data NamedNodeMap = NamedNodeMap
 
data Navigator = Navigator
 
data Node = Node
 
data NodeFilter = NodeFilter
 
data NodeIterator = NodeIterator
 
data NodeList = NodeList
 
data Notation = Notation
 
data ProcessingInstruction = ProcessingInstruction
 
data DOMRange = DOMRange
 
data Rect = Rect
 
data DOMScreen = DOMScreen
 
data StyleMedia = StyleMedia
 
data StyleSheet = StyleSheet
 
data StyleSheetList = StyleSheetList
 
data Storage = Storage
 
data StorageInfo = StorageInfo
 
data Text = Text
 
data TimeRanges = TimeRanges
 
data TreeWalker = TreeWalker
 
data ValidityState = ValidityState
 
data UIEvent = UIEvent
 
data WebKitNamedFlow = WebKitNamedFlow
 
data WebKitPoint = WebKitPoint
 
data XMLHttpRequest = XMLHttpRequest
 
data XMLHttpRequestUpload = XMLHttpRequestUpload
 
data XPathExpression = XPathExpression
 
data XPathNSResolver = XPathNSResolver
 
data XPathResult = XPathResult
 
data RGBColor = RGBColor
 
data SVGAElement = SVGAElement
 
data SVGAltGlyphDefElement = SVGAltGlyphDefElement
 
data SVGAltGlyphElement = SVGAltGlyphElement
 
data SVGAltGlyphItemElement = SVGAltGlyphItemElement
 
data SVGAngle = SVGAngle
 
data SVGAnimateColorElement = SVGAnimateColorElement
 
data SVGAnimatedAngle = SVGAnimatedAngle
 
data SVGAnimatedBoolean = SVGAnimatedBoolean
 
data SVGAnimatedEnumeration = SVGAnimatedEnumeration
 
data SVGAnimatedInteger = SVGAnimatedInteger
 
data SVGAnimatedLength = SVGAnimatedLength
 
data SVGAnimatedLengthList = SVGAnimatedLengthList
 
data SVGAnimatedNumber = SVGAnimatedNumber
 
data SVGAnimatedNumberList = SVGAnimatedNumberList
 
data SVGAnimatedPreserveAspectRatio = SVGAnimatedPreserveAspectRatio
 
data SVGAnimatedRect = SVGAnimatedRect
 
data SVGAnimatedString = SVGAnimatedString
 
data SVGAnimatedTransformList = SVGAnimatedTransformList
 
data SVGAnimateElement = SVGAnimateElement
 
data SVGAnimateMotionElement = SVGAnimateMotionElement
 
data SVGAnimateTransformElement = SVGAnimateTransformElement
 
data SVGAnimationElement = SVGAnimationElement
 
data SVGCircleElement = SVGCircleElement
 
data SVGClipPathElement = SVGClipPathElement
 
data SVGColor = SVGColor
 
data SVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement
 
data SVGCursorElement = SVGCursorElement
 
data SVGDefsElement = SVGDefsElement
 
data SVGDescElement = SVGDescElement
 
data SVGDocument = SVGDocument
 
data SVGElement = SVGElement
 
data SVGElementInstance = SVGElementInstance
 
data SVGElementInstanceList = SVGElementInstanceList
 
data SVGEllipseElement = SVGEllipseElement
 
data SVGExternalResourcesRequired = SVGExternalResourcesRequired
 
data SVGFEBlendElement = SVGFEBlendElement
 
data SVGFEColorMatrixElement = SVGFEColorMatrixElement
 
data SVGFEComponentTransferElement = SVGFEComponentTransferElement
 
data SVGFECompositeElement = SVGFECompositeElement
 
data SVGFEConvolveMatrixElement = SVGFEConvolveMatrixElement
 
data SVGFEDiffuseLightingElement = SVGFEDiffuseLightingElement
 
data SVGFEDisplacementMapElement = SVGFEDisplacementMapElement
 
data SVGFEDistantLightElement = SVGFEDistantLightElement
 
data SVGFEDropShadowElement = SVGFEDropShadowElement
 
data SVGFEFloodElement = SVGFEFloodElement
 
data SVGFEFuncAElement = SVGFEFuncAElement
 
data SVGFEFuncBElement = SVGFEFuncBElement
 
data SVGFEFuncGElement = SVGFEFuncGElement
 
data SVGFEFuncRElement = SVGFEFuncRElement
 
data SVGFEGaussianBlurElement = SVGFEGaussianBlurElement
 
data SVGFEImageElement = SVGFEImageElement
 
data SVGFEMergeElement = SVGFEMergeElement
 
data SVGFEMergeNodeElement = SVGFEMergeNodeElement
 
data SVGFEMorphologyElement = SVGFEMorphologyElement
 
data SVGFEOffsetElement = SVGFEOffsetElement
 
data SVGFEPointLightElement = SVGFEPointLightElement
 
data SVGFESpecularLightingElement = SVGFESpecularLightingElement
 
data SVGFESpotLightElement = SVGFESpotLightElement
 
data SVGFETileElement = SVGFETileElement
 
data SVGFETurbulenceElement = SVGFETurbulenceElement
 
data SVGFilterElement = SVGFilterElement
 
data SVGFilterPrimitiveStandardAttributes = SVGFilterPrimitiveStandardAttributes
 
data SVGFitToViewBox = SVGFitToViewBox
 
data SVGFontElement = SVGFontElement
 
data SVGFontFaceElement = SVGFontFaceElement
 
data SVGFontFaceFormatElement = SVGFontFaceFormatElement
 
data SVGFontFaceNameElement = SVGFontFaceNameElement
 
data SVGFontFaceSrcElement = SVGFontFaceSrcElement
 
data SVGFontFaceUriElement = SVGFontFaceUriElement
 
data SVGForeignObjectElement = SVGForeignObjectElement
 
data SVGGElement = SVGGElement
 
data SVGGlyphElement = SVGGlyphElement
 
data SVGGlyphRefElement = SVGGlyphRefElement
 
data SVGGradientElement = SVGGradientElement
 
data SVGGraphicsElement = SVGGraphicsElement
 
data SVGHKernElement = SVGHKernElement
 
data SVGImageElement = SVGImageElement
 
data SVGLength = SVGLength
 
data SVGLengthList = SVGLengthList
 
data SVGLinearGradientElement = SVGLinearGradientElement
 
data SVGLineElement = SVGLineElement
 
data SVGMarkerElement = SVGMarkerElement
 
data SVGMaskElement = SVGMaskElement
 
data SVGMatrix = SVGMatrix
 
data SVGMetadataElement = SVGMetadataElement
 
data SVGMissingGlyphElement = SVGMissingGlyphElement
 
data SVGMPathElement = SVGMPathElement
 
data SVGNumber = SVGNumber
 
data SVGNumberList = SVGNumberList
 
data SVGPaint = SVGPaint
 
data SVGPathElement = SVGPathElement
 
data SVGPathSeg = SVGPathSeg
 
data SVGPathSegArcAbs = SVGPathSegArcAbs
 
data SVGPathSegArcRel = SVGPathSegArcRel
 
data SVGPathSegClosePath = SVGPathSegClosePath
 
data SVGPathSegCurvetoCubicAbs = SVGPathSegCurvetoCubicAbs
 
data SVGPathSegCurvetoCubicRel = SVGPathSegCurvetoCubicRel
 
data SVGPathSegCurvetoCubicSmoothAbs = SVGPathSegCurvetoCubicSmoothAbs
 
data SVGPathSegCurvetoCubicSmoothRel = SVGPathSegCurvetoCubicSmoothRel
 
data SVGPathSegCurvetoQuadraticAbs = SVGPathSegCurvetoQuadraticAbs
 
data SVGPathSegCurvetoQuadraticRel = SVGPathSegCurvetoQuadraticRel
 
data SVGPathSegCurvetoQuadraticSmoothAbs = SVGPathSegCurvetoQuadraticSmoothAbs
 
data SVGPathSegCurvetoQuadraticSmoothRel = SVGPathSegCurvetoQuadraticSmoothRel
 
data SVGPathSegLinetoAbs = SVGPathSegLinetoAbs
 
data SVGPathSegLinetoHorizontalAbs = SVGPathSegLinetoHorizontalAbs
 
data SVGPathSegLinetoHorizontalRel = SVGPathSegLinetoHorizontalRel
 
data SVGPathSegLinetoRel = SVGPathSegLinetoRel
 
data SVGPathSegLinetoVerticalAbs = SVGPathSegLinetoVerticalAbs
 
data SVGPathSegLinetoVerticalRel = SVGPathSegLinetoVerticalRel
 
data SVGPathSegList = SVGPathSegList
 
data SVGPathSegMovetoAbs = SVGPathSegMovetoAbs
 
data SVGPathSegMovetoRel = SVGPathSegMovetoRel
 
data SVGPatternElement = SVGPatternElement
 
data SVGPoint = SVGPoint
 
data SVGPointList = SVGPointList
 
data SVGPolygonElement = SVGPolygonElement
 
data SVGPolylineElement = SVGPolylineElement
 
data SVGPreserveAspectRatio = SVGPreserveAspectRatio
 
data SVGRadialGradientElement = SVGRadialGradientElement
 
data SVGRect = SVGRect
 
data SVGRectElement = SVGRectElement
 
data SVGRenderingIntent = SVGRenderingIntent
 
data SVGScriptElement = SVGScriptElement
 
data SVGSetElement = SVGSetElement
 
data SVGStopElement = SVGStopElement
 
data SVGStringList = SVGStringList
 
data SVGStyleElement = SVGStyleElement
 
data SVGSVGElement = SVGSVGElement
 
data SVGSwitchElement = SVGSwitchElement
 
data SVGSymbolElement = SVGSymbolElement
 
data SVGTests = SVGTests
 
data SVGTextContentElement = SVGTextContentElement
 
data SVGTextElement = SVGTextElement
 
data SVGTextPathElement = SVGTextPathElement
 
data SVGTextPositioningElement = SVGTextPositioningElement
 
data SVGTitleElement = SVGTitleElement
 
data SVGTransform = SVGTransform
 
data SVGTransformList = SVGTransformList
 
data SVGTRefElement = SVGTRefElement
 
data SVGTSpanElement = SVGTSpanElement
 
data SVGUnitTypes = SVGUnitTypes
 
data SVGURIReference = SVGURIReference
 
data SVGUseElement = SVGUseElement
 
data SVGViewElement = SVGViewElement
 
data SVGViewSpec = SVGViewSpec
 
data SVGVKernElement = SVGVKernElement
 
data SVGZoomAndPan = SVGZoomAndPan
 
data SVGZoomEvent = SVGZoomEvent
 
class (IsNode a) => IsDOMAttr a
 
class IsBarProp a
 
class IsBlob a
 
class (IsText a) => IsCDATASection a
 
class (IsNode a) => IsCharacterData a
 
class (IsCharacterData a) => IsComment a
 
class (IsCSSValue a) => IsCSSPrimitiveValue a
 
class IsCSSRule a
 
class IsCSSRuleList a
 
class IsCSSStyleDeclaration a
 
class (IsStyleSheet a) => IsCSSStyleSheet a
 
class IsCSSValue a
 
class IsCounter a
 
class (IsNode a) => IsDocument a
 
class (IsNode a) => IsDocumentFragment a
 
class (IsNode a) => IsDocumentType a
 
class IsDOMApplicationCache a
 
class IsDOMImplementation a
 
class IsDOMMimeType a
 
class IsDOMMimeTypeArray a
 
class IsDOMNamedFlowCollection a
 
class IsDOMPlugin a
 
class IsDOMPluginArray a
 
class IsDOMSecurityPolicy a
 
class IsDOMSelection a
 
class (IsDOMTokenList a) => IsDOMSettableTokenList a
 
class IsDOMStringList a
 
class IsDOMTokenList a
 
class IsDOMWindow a
 
class IsDOMWindowCSS a
 
class (IsNode a) => IsElement a
 
class (IsNode a) => IsEntityReference a
 
class IsEvent a
 
class IsEventTarget a
 
class (IsBlob a) => IsFile a
 
class IsFileList a
 
class IsGeolocation a
 
class IsPositionError a
 
class IsHistory a
 
class (IsHTMLElement a) => IsHTMLAnchorElement a
 
class (IsHTMLElement a) => IsHTMLAppletElement a
 
class (IsHTMLElement a) => IsHTMLAreaElement a
 
class (IsHTMLElement a) => IsHTMLBaseElement a
 
class (IsHTMLElement a) => IsHTMLBaseFontElement a
 
class (IsHTMLElement a) => IsHTMLBodyElement a
 
class (IsHTMLElement a) => IsHTMLBRElement a
 
class (IsHTMLElement a) => IsHTMLButtonElement a
 
class (IsHTMLElement a) => IsHTMLCanvasElement a
 
class IsHTMLCollection a
 
class (IsHTMLElement a) => IsHTMLDetailsElement a
 
class (IsHTMLElement a) => IsHTMLDirectoryElement a
 
class (IsHTMLElement a) => IsHTMLDivElement a
 
class (IsHTMLElement a) => IsHTMLDListElement a
 
class (IsDocument a) => IsHTMLDocument a
 
class (IsElement a) => IsHTMLElement a
 
class (IsHTMLElement a) => IsHTMLEmbedElement a
 
class (IsHTMLElement a) => IsHTMLFieldSetElement a
 
class (IsHTMLElement a) => IsHTMLFontElement a
 
class (IsHTMLElement a) => IsHTMLFormElement a
 
class (IsHTMLElement a) => IsHTMLFrameElement a
 
class (IsHTMLElement a) => IsHTMLFrameSetElement a
 
class (IsHTMLElement a) => IsHTMLHeadElement a
 
class (IsHTMLElement a) => IsHTMLHeadingElement a
 
class (IsHTMLElement a) => IsHTMLHRElement a
 
class (IsHTMLElement a) => IsHTMLHtmlElement a
 
class (IsHTMLElement a) => IsHTMLIFrameElement a
 
class (IsHTMLElement a) => IsHTMLImageElement a
 
class (IsHTMLElement a) => IsHTMLInputElement a
 
class (IsHTMLElement a) => IsHTMLKeygenElement a
 
class (IsHTMLElement a) => IsHTMLLabelElement a
 
class (IsHTMLElement a) => IsHTMLLegendElement a
 
class (IsHTMLElement a) => IsHTMLLIElement a
 
class (IsHTMLElement a) => IsHTMLLinkElement a
 
class (IsHTMLElement a) => IsHTMLMapElement a
 
class (IsHTMLElement a) => IsHTMLMarqueeElement a
 
class (IsHTMLElement a) => IsHTMLMediaElement a
 
class (IsHTMLMediaElement a) => IsHTMLAudioElement a
 
class (IsHTMLElement a) => IsHTMLMenuElement a
 
class (IsHTMLElement a) => IsHTMLMetaElement a
 
class (IsHTMLElement a) => IsHTMLModElement a
 
class (IsHTMLElement a) => IsHTMLObjectElement a
 
class (IsHTMLElement a) => IsHTMLOListElement a
 
class (IsHTMLElement a) => IsHTMLOptGroupElement a
 
class (IsHTMLElement a) => IsHTMLOptionElement a
 
class (IsHTMLCollection a) => IsHTMLOptionsCollection a
 
class (IsHTMLElement a) => IsHTMLParagraphElement a
 
class (IsHTMLElement a) => IsHTMLParamElement a
 
class (IsHTMLElement a) => IsHTMLPreElement a
 
class (IsHTMLElement a) => IsHTMLQuoteElement a
 
class (IsHTMLElement a) => IsHTMLScriptElement a
 
class (IsHTMLElement a) => IsHTMLSelectElement a
 
class (IsHTMLElement a) => IsHTMLStyleElement a
 
class (IsHTMLElement a) => IsHTMLTableCaptionElement a
 
class (IsHTMLElement a) => IsHTMLTableCellElement a
 
class (IsHTMLElement a) => IsHTMLTableColElement a
 
class (IsHTMLElement a) => IsHTMLTableElement a
 
class (IsHTMLElement a) => IsHTMLTableRowElement a
 
class (IsHTMLElement a) => IsHTMLTableSectionElement a
 
class (IsHTMLElement a) => IsHTMLTextAreaElement a
 
class (IsHTMLElement a) => IsHTMLTitleElement a
 
class (IsHTMLElement a) => IsHTMLUListElement a
 
class (IsHTMLMediaElement a) => IsHTMLVideoElement a
 
class IsMediaController a
 
class (IsUIEvent a) => IsKeyboardEvent a
 
class IsLocation a
 
class IsMediaError a
 
class IsMediaList a
 
class IsMediaQueryList a
 
class (IsUIEvent a) => IsMouseEvent a
 
class IsMessagePort a
 
class (IsEvent a) => IsMutationEvent a
 
class IsNamedNodeMap a
 
class IsNavigator a
 
class IsNode a
 
class IsNodeFilter a
 
class IsNodeIterator a
 
class IsNodeList a
 
class (IsNode a) => IsNotation a
 
class (IsCharacterData a) => IsProcessingInstruction a
 
class IsDOMRange a
 
class IsRect a
 
class IsDOMScreen a
 
class IsStyleMedia a
 
class IsStyleSheet a
 
class IsStyleSheetList a
 
class IsStorage a
 
class IsStorageInfo a
 
class (IsCharacterData a) => IsText a
 
class IsTimeRanges a
 
class IsTreeWalker a
 
class IsValidityState a
 
class (IsEvent a) => IsUIEvent a
 
class IsWebKitNamedFlow a
 
class IsWebKitPoint a
 
class IsXMLHttpRequest a
 
class IsXMLHttpRequestUpload a
 
class IsXPathExpression a
 
class IsXPathNSResolver a
 
class IsXPathResult a
 
class IsRGBColor a
 
class (IsSVGGraphicsElement a) => IsSVGAElement a
 
class (IsSVGElement a) => IsSVGAltGlyphDefElement a
 
class (IsSVGTextPositioningElement a) => IsSVGAltGlyphElement a
 
class (IsSVGElement a) => IsSVGAltGlyphItemElement a
 
class IsSVGAngle a
 
class (IsSVGAnimationElement a) => IsSVGAnimateColorElement a
 
class IsSVGAnimatedAngle a
 
class IsSVGAnimatedBoolean a
 
class IsSVGAnimatedEnumeration a
 
class IsSVGAnimatedInteger a
 
class IsSVGAnimatedLength a
 
class IsSVGAnimatedLengthList a
 
class IsSVGAnimatedNumber a
 
class IsSVGAnimatedNumberList a
 
class IsSVGAnimatedPreserveAspectRatio a
 
class IsSVGAnimatedRect a
 
class IsSVGAnimatedString a
 
class IsSVGAnimatedTransformList a
 
class (IsSVGAnimationElement a) => IsSVGAnimateElement a
 
class (IsSVGAnimationElement a) => IsSVGAnimateMotionElement a
 
class (IsSVGAnimationElement a) => IsSVGAnimateTransformElement a
 
class (IsSVGElement a) => IsSVGAnimationElement a
 
class (IsSVGGraphicsElement a) => IsSVGCircleElement a
 
class (IsSVGGraphicsElement a) => IsSVGClipPathElement a
 
class (IsCSSValue a) => IsSVGColor a
 
class (IsSVGElement a) => IsSVGComponentTransferFunctionElement a
 
class (IsSVGElement a) => IsSVGCursorElement a
 
class (IsSVGGraphicsElement a) => IsSVGDefsElement a
 
class (IsSVGElement a) => IsSVGDescElement a
 
class (IsDocument a) => IsSVGDocument a
 
class (IsElement a) => IsSVGElement a
 
class (IsEventTarget a) => IsSVGElementInstance a
 
class IsSVGElementInstanceList a
 
class (IsSVGGraphicsElement a) => IsSVGEllipseElement a
 
class IsSVGExternalResourcesRequired a
 
class (IsSVGElement a) => IsSVGFEBlendElement a
 
class (IsSVGElement a) => IsSVGFEColorMatrixElement a
 
class (IsSVGElement a) => IsSVGFEComponentTransferElement a
 
class (IsSVGElement a) => IsSVGFECompositeElement a
 
class (IsSVGElement a) => IsSVGFEConvolveMatrixElement a
 
class (IsSVGElement a) => IsSVGFEDiffuseLightingElement a
 
class (IsSVGElement a) => IsSVGFEDisplacementMapElement a
 
class (IsSVGElement a) => IsSVGFEDistantLightElement a
 
class (IsSVGElement a) => IsSVGFEDropShadowElement a
 
class (IsSVGElement a) => IsSVGFEFloodElement a
 
class (IsSVGComponentTransferFunctionElement a) =>
      IsSVGFEFuncAElement a
 
class (IsSVGComponentTransferFunctionElement a) =>
      IsSVGFEFuncBElement a
 
class (IsSVGComponentTransferFunctionElement a) =>
      IsSVGFEFuncGElement a
 
class (IsSVGComponentTransferFunctionElement a) =>
      IsSVGFEFuncRElement a
 
class (IsSVGElement a) => IsSVGFEGaussianBlurElement a
 
class (IsSVGElement a) => IsSVGFEImageElement a
 
class (IsSVGElement a) => IsSVGFEMergeElement a
 
class (IsSVGElement a) => IsSVGFEMergeNodeElement a
 
class (IsSVGElement a) => IsSVGFEMorphologyElement a
 
class (IsSVGElement a) => IsSVGFEOffsetElement a
 
class (IsSVGElement a) => IsSVGFEPointLightElement a
 
class (IsSVGElement a) => IsSVGFESpecularLightingElement a
 
class (IsSVGElement a) => IsSVGFESpotLightElement a
 
class (IsSVGElement a) => IsSVGFETileElement a
 
class (IsSVGElement a) => IsSVGFETurbulenceElement a
 
class (IsSVGElement a) => IsSVGFilterElement a
 
class IsSVGFilterPrimitiveStandardAttributes a
 
class IsSVGFitToViewBox a
 
class (IsSVGElement a) => IsSVGFontElement a
 
class (IsSVGElement a) => IsSVGFontFaceElement a
 
class (IsSVGElement a) => IsSVGFontFaceFormatElement a
 
class (IsSVGElement a) => IsSVGFontFaceNameElement a
 
class (IsSVGElement a) => IsSVGFontFaceSrcElement a
 
class (IsSVGElement a) => IsSVGFontFaceUriElement a
 
class (IsSVGGraphicsElement a) => IsSVGForeignObjectElement a
 
class (IsSVGGraphicsElement a) => IsSVGGElement a
 
class (IsSVGElement a) => IsSVGGlyphElement a
 
class (IsSVGElement a) => IsSVGGlyphRefElement a
 
class (IsSVGElement a) => IsSVGGradientElement a
 
class (IsSVGElement a) => IsSVGGraphicsElement a
 
class (IsSVGElement a) => IsSVGHKernElement a
 
class (IsSVGGraphicsElement a) => IsSVGImageElement a
 
class IsSVGLength a
 
class IsSVGLengthList a
 
class (IsSVGGradientElement a) => IsSVGLinearGradientElement a
 
class (IsSVGGraphicsElement a) => IsSVGLineElement a
 
class (IsSVGElement a) => IsSVGMarkerElement a
 
class (IsSVGElement a) => IsSVGMaskElement a
 
class IsSVGMatrix a
 
class (IsSVGElement a) => IsSVGMetadataElement a
 
class (IsSVGElement a) => IsSVGMissingGlyphElement a
 
class (IsSVGElement a) => IsSVGMPathElement a
 
class IsSVGNumber a
 
class IsSVGNumberList a
 
class (IsSVGColor a) => IsSVGPaint a
 
class (IsSVGGraphicsElement a) => IsSVGPathElement a
 
class IsSVGPathSeg a
 
class (IsSVGPathSeg a) => IsSVGPathSegArcAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegArcRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegClosePath a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoCubicAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoCubicRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoCubicSmoothAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoCubicSmoothRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoQuadraticAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoQuadraticRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoQuadraticSmoothAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegCurvetoQuadraticSmoothRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoHorizontalAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoHorizontalRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoRel a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoVerticalAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegLinetoVerticalRel a
 
class IsSVGPathSegList a
 
class (IsSVGPathSeg a) => IsSVGPathSegMovetoAbs a
 
class (IsSVGPathSeg a) => IsSVGPathSegMovetoRel a
 
class (IsSVGElement a) => IsSVGPatternElement a
 
class IsSVGPoint a
 
class IsSVGPointList a
 
class (IsSVGGraphicsElement a) => IsSVGPolygonElement a
 
class (IsSVGGraphicsElement a) => IsSVGPolylineElement a
 
class IsSVGPreserveAspectRatio a
 
class (IsSVGGradientElement a) => IsSVGRadialGradientElement a
 
class IsSVGRect a
 
class (IsSVGGraphicsElement a) => IsSVGRectElement a
 
class IsSVGRenderingIntent a
 
class (IsSVGElement a) => IsSVGScriptElement a
 
class (IsSVGAnimationElement a) => IsSVGSetElement a
 
class (IsSVGElement a) => IsSVGStopElement a
 
class IsSVGStringList a
 
class (IsSVGElement a) => IsSVGStyleElement a
 
class (IsSVGGraphicsElement a) => IsSVGSVGElement a
 
class (IsSVGGraphicsElement a) => IsSVGSwitchElement a
 
class (IsSVGElement a) => IsSVGSymbolElement a
 
class IsSVGTests a
 
class (IsSVGGraphicsElement a) => IsSVGTextContentElement a
 
class (IsSVGTextPositioningElement a) => IsSVGTextElement a
 
class (IsSVGTextContentElement a) => IsSVGTextPathElement a
 
class (IsSVGTextContentElement a) => IsSVGTextPositioningElement a
 
class (IsSVGElement a) => IsSVGTitleElement a
 
class IsSVGTransform a
 
class IsSVGTransformList a
 
class (IsSVGTextPositioningElement a) => IsSVGTRefElement a
 
class (IsSVGTextPositioningElement a) => IsSVGTSpanElement a
 
class IsSVGUnitTypes a
 
class IsSVGURIReference a
 
class (IsSVGGraphicsElement a) => IsSVGUseElement a
 
class (IsSVGElement a) => IsSVGViewElement a
 
class IsSVGViewSpec a
 
class (IsSVGElement a) => IsSVGVKernElement a
 
class IsSVGZoomAndPan a
 
class (IsUIEvent a) => IsSVGZoomEvent a
 
instance IsDOMAttr DOMAttr
 
instance IsNode DOMAttr
 
instance IsBarProp BarProp
 
instance IsBlob Blob
 
instance IsCDATASection CDATASection
 
instance IsText CDATASection
 
instance IsCharacterData CDATASection
 
instance IsNode CDATASection
 
instance IsCharacterData CharacterData
 
instance IsNode CharacterData
 
instance IsComment Comment
 
instance IsCharacterData Comment
 
instance IsNode Comment
 
instance IsCSSPrimitiveValue CSSPrimitiveValue
 
instance IsCSSValue CSSPrimitiveValue
 
instance IsCSSRule CSSRule
 
instance IsCSSRuleList CSSRuleList
 
instance IsCSSStyleDeclaration CSSStyleDeclaration
 
instance IsCSSStyleSheet CSSStyleSheet
 
instance IsStyleSheet CSSStyleSheet
 
instance IsCSSValue CSSValue
 
instance IsCounter Counter
 
instance IsDocument Document
 
instance IsNode Document
 
instance IsDocumentFragment DocumentFragment
 
instance IsNode DocumentFragment
 
instance IsDocumentType DocumentType
 
instance IsNode DocumentType
 
instance IsDOMApplicationCache DOMApplicationCache
 
instance IsDOMImplementation DOMImplementation
 
instance IsDOMMimeType DOMMimeType
 
instance IsDOMMimeTypeArray DOMMimeTypeArray
 
instance IsDOMNamedFlowCollection DOMNamedFlowCollection
 
instance IsDOMPlugin DOMPlugin
 
instance IsDOMPluginArray DOMPluginArray
 
instance IsDOMSecurityPolicy DOMSecurityPolicy
 
instance IsDOMSelection DOMSelection
 
instance IsDOMSettableTokenList DOMSettableTokenList
 
instance IsDOMTokenList DOMSettableTokenList
 
instance IsDOMStringList DOMStringList
 
instance IsDOMTokenList DOMTokenList
 
instance IsDOMWindow DOMWindow
 
instance IsDOMWindowCSS DOMWindowCSS
 
instance IsElement Element
 
instance IsNode Element
 
instance IsEntityReference EntityReference
 
instance IsNode EntityReference
 
instance IsEvent Event
 
instance IsEventTarget EventTarget
 
instance IsFile File
 
instance IsBlob File
 
instance IsFileList FileList
 
instance IsGeolocation Geolocation
 
instance IsPositionError PositionError
 
instance IsHistory History
 
instance IsHTMLAnchorElement HTMLAnchorElement
 
instance IsHTMLElement HTMLAnchorElement
 
instance IsElement HTMLAnchorElement
 
instance IsNode HTMLAnchorElement
 
instance IsHTMLAppletElement HTMLAppletElement
 
instance IsHTMLElement HTMLAppletElement
 
instance IsElement HTMLAppletElement
 
instance IsNode HTMLAppletElement
 
instance IsHTMLAreaElement HTMLAreaElement
 
instance IsHTMLElement HTMLAreaElement
 
instance IsElement HTMLAreaElement
 
instance IsNode HTMLAreaElement
 
instance IsHTMLBaseElement HTMLBaseElement
 
instance IsHTMLElement HTMLBaseElement
 
instance IsElement HTMLBaseElement
 
instance IsNode HTMLBaseElement
 
instance IsHTMLBaseFontElement HTMLBaseFontElement
 
instance IsHTMLElement HTMLBaseFontElement
 
instance IsElement HTMLBaseFontElement
 
instance IsNode HTMLBaseFontElement
 
instance IsHTMLBodyElement HTMLBodyElement
 
instance IsHTMLElement HTMLBodyElement
 
instance IsElement HTMLBodyElement
 
instance IsNode HTMLBodyElement
 
instance IsHTMLBRElement HTMLBRElement
 
instance IsHTMLElement HTMLBRElement
 
instance IsElement HTMLBRElement
 
instance IsNode HTMLBRElement
 
instance IsHTMLButtonElement HTMLButtonElement
 
instance IsHTMLElement HTMLButtonElement
 
instance IsElement HTMLButtonElement
 
instance IsNode HTMLButtonElement
 
instance IsHTMLCanvasElement HTMLCanvasElement
 
instance IsHTMLElement HTMLCanvasElement
 
instance IsElement HTMLCanvasElement
 
instance IsNode HTMLCanvasElement
 
instance IsHTMLCollection HTMLCollection
 
instance IsHTMLDetailsElement HTMLDetailsElement
 
instance IsHTMLElement HTMLDetailsElement
 
instance IsElement HTMLDetailsElement
 
instance IsNode HTMLDetailsElement
 
instance IsHTMLDirectoryElement HTMLDirectoryElement
 
instance IsHTMLElement HTMLDirectoryElement
 
instance IsElement HTMLDirectoryElement
 
instance IsNode HTMLDirectoryElement
 
instance IsHTMLDivElement HTMLDivElement
 
instance IsHTMLElement HTMLDivElement
 
instance IsElement HTMLDivElement
 
instance IsNode HTMLDivElement
 
instance IsHTMLDListElement HTMLDListElement
 
instance IsHTMLElement HTMLDListElement
 
instance IsElement HTMLDListElement
 
instance IsNode HTMLDListElement
 
instance IsHTMLDocument HTMLDocument
 
instance IsDocument HTMLDocument
 
instance IsNode HTMLDocument
 
instance IsHTMLElement HTMLElement
 
instance IsElement HTMLElement
 
instance IsNode HTMLElement
 
instance IsHTMLEmbedElement HTMLEmbedElement
 
instance IsHTMLElement HTMLEmbedElement
 
instance IsElement HTMLEmbedElement
 
instance IsNode HTMLEmbedElement
 
instance IsHTMLFieldSetElement HTMLFieldSetElement
 
instance IsHTMLElement HTMLFieldSetElement
 
instance IsElement HTMLFieldSetElement
 
instance IsNode HTMLFieldSetElement
 
instance IsHTMLFontElement HTMLFontElement
 
instance IsHTMLElement HTMLFontElement
 
instance IsElement HTMLFontElement
 
instance IsNode HTMLFontElement
 
instance IsHTMLFormElement HTMLFormElement
 
instance IsHTMLElement HTMLFormElement
 
instance IsElement HTMLFormElement
 
instance IsNode HTMLFormElement
 
instance IsHTMLFrameElement HTMLFrameElement
 
instance IsHTMLElement HTMLFrameElement
 
instance IsElement HTMLFrameElement
 
instance IsNode HTMLFrameElement
 
instance IsHTMLFrameSetElement HTMLFrameSetElement
 
instance IsHTMLElement HTMLFrameSetElement
 
instance IsElement HTMLFrameSetElement
 
instance IsNode HTMLFrameSetElement
 
instance IsHTMLHeadElement HTMLHeadElement
 
instance IsHTMLElement HTMLHeadElement
 
instance IsElement HTMLHeadElement
 
instance IsNode HTMLHeadElement
 
instance IsHTMLHeadingElement HTMLHeadingElement
 
instance IsHTMLElement HTMLHeadingElement
 
instance IsElement HTMLHeadingElement
 
instance IsNode HTMLHeadingElement
 
instance IsHTMLHRElement HTMLHRElement
 
instance IsHTMLElement HTMLHRElement
 
instance IsElement HTMLHRElement
 
instance IsNode HTMLHRElement
 
instance IsHTMLHtmlElement HTMLHtmlElement
 
instance IsHTMLElement HTMLHtmlElement
 
instance IsElement HTMLHtmlElement
 
instance IsNode HTMLHtmlElement
 
instance IsHTMLIFrameElement HTMLIFrameElement
 
instance IsHTMLElement HTMLIFrameElement
 
instance IsElement HTMLIFrameElement
 
instance IsNode HTMLIFrameElement
 
instance IsHTMLImageElement HTMLImageElement
 
instance IsHTMLElement HTMLImageElement
 
instance IsElement HTMLImageElement
 
instance IsNode HTMLImageElement
 
instance IsHTMLInputElement HTMLInputElement
 
instance IsHTMLElement HTMLInputElement
 
instance IsElement HTMLInputElement
 
instance IsNode HTMLInputElement
 
instance IsHTMLKeygenElement HTMLKeygenElement
 
instance IsHTMLElement HTMLKeygenElement
 
instance IsElement HTMLKeygenElement
 
instance IsNode HTMLKeygenElement
 
instance IsHTMLLabelElement HTMLLabelElement
 
instance IsHTMLElement HTMLLabelElement
 
instance IsElement HTMLLabelElement
 
instance IsNode HTMLLabelElement
 
instance IsHTMLLegendElement HTMLLegendElement
 
instance IsHTMLElement HTMLLegendElement
 
instance IsElement HTMLLegendElement
 
instance IsNode HTMLLegendElement
 
instance IsHTMLLIElement HTMLLIElement
 
instance IsHTMLElement HTMLLIElement
 
instance IsElement HTMLLIElement
 
instance IsNode HTMLLIElement
 
instance IsHTMLLinkElement HTMLLinkElement
 
instance IsHTMLElement HTMLLinkElement
 
instance IsElement HTMLLinkElement
 
instance IsNode HTMLLinkElement
 
instance IsHTMLMapElement HTMLMapElement
 
instance IsHTMLElement HTMLMapElement
 
instance IsElement HTMLMapElement
 
instance IsNode HTMLMapElement
 
instance IsHTMLMarqueeElement HTMLMarqueeElement
 
instance IsHTMLElement HTMLMarqueeElement
 
instance IsElement HTMLMarqueeElement
 
instance IsNode HTMLMarqueeElement
 
instance IsHTMLMediaElement HTMLMediaElement
 
instance IsHTMLElement HTMLMediaElement
 
instance IsElement HTMLMediaElement
 
instance IsNode HTMLMediaElement
 
instance IsHTMLAudioElement HTMLAudioElement
 
instance IsHTMLMediaElement HTMLAudioElement
 
instance IsHTMLElement HTMLAudioElement
 
instance IsElement HTMLAudioElement
 
instance IsNode HTMLAudioElement
 
instance IsHTMLMenuElement HTMLMenuElement
 
instance IsHTMLElement HTMLMenuElement
 
instance IsElement HTMLMenuElement
 
instance IsNode HTMLMenuElement
 
instance IsHTMLMetaElement HTMLMetaElement
 
instance IsHTMLElement HTMLMetaElement
 
instance IsElement HTMLMetaElement
 
instance IsNode HTMLMetaElement
 
instance IsHTMLModElement HTMLModElement
 
instance IsHTMLElement HTMLModElement
 
instance IsElement HTMLModElement
 
instance IsNode HTMLModElement
 
instance IsHTMLObjectElement HTMLObjectElement
 
instance IsHTMLElement HTMLObjectElement
 
instance IsElement HTMLObjectElement
 
instance IsNode HTMLObjectElement
 
instance IsHTMLOListElement HTMLOListElement
 
instance IsHTMLElement HTMLOListElement
 
instance IsElement HTMLOListElement
 
instance IsNode HTMLOListElement
 
instance IsHTMLOptGroupElement HTMLOptGroupElement
 
instance IsHTMLElement HTMLOptGroupElement
 
instance IsElement HTMLOptGroupElement
 
instance IsNode HTMLOptGroupElement
 
instance IsHTMLOptionElement HTMLOptionElement
 
instance IsHTMLElement HTMLOptionElement
 
instance IsElement HTMLOptionElement
 
instance IsNode HTMLOptionElement
 
instance IsHTMLOptionsCollection HTMLOptionsCollection
 
instance IsHTMLCollection HTMLOptionsCollection
 
instance IsHTMLParagraphElement HTMLParagraphElement
 
instance IsHTMLElement HTMLParagraphElement
 
instance IsElement HTMLParagraphElement
 
instance IsNode HTMLParagraphElement
 
instance IsHTMLParamElement HTMLParamElement
 
instance IsHTMLElement HTMLParamElement
 
instance IsElement HTMLParamElement
 
instance IsNode HTMLParamElement
 
instance IsHTMLPreElement HTMLPreElement
 
instance IsHTMLElement HTMLPreElement
 
instance IsElement HTMLPreElement
 
instance IsNode HTMLPreElement
 
instance IsHTMLQuoteElement HTMLQuoteElement
 
instance IsHTMLElement HTMLQuoteElement
 
instance IsElement HTMLQuoteElement
 
instance IsNode HTMLQuoteElement
 
instance IsHTMLScriptElement HTMLScriptElement
 
instance IsHTMLElement HTMLScriptElement
 
instance IsElement HTMLScriptElement
 
instance IsNode HTMLScriptElement
 
instance IsHTMLSelectElement HTMLSelectElement
 
instance IsHTMLElement HTMLSelectElement
 
instance IsElement HTMLSelectElement
 
instance IsNode HTMLSelectElement
 
instance IsHTMLStyleElement HTMLStyleElement
 
instance IsHTMLElement HTMLStyleElement
 
instance IsElement HTMLStyleElement
 
instance IsNode HTMLStyleElement
 
instance IsHTMLTableCaptionElement HTMLTableCaptionElement
 
instance IsHTMLElement HTMLTableCaptionElement
 
instance IsElement HTMLTableCaptionElement
 
instance IsNode HTMLTableCaptionElement
 
instance IsHTMLTableCellElement HTMLTableCellElement
 
instance IsHTMLElement HTMLTableCellElement
 
instance IsElement HTMLTableCellElement
 
instance IsNode HTMLTableCellElement
 
instance IsHTMLTableColElement HTMLTableColElement
 
instance IsHTMLElement HTMLTableColElement
 
instance IsElement HTMLTableColElement
 
instance IsNode HTMLTableColElement
 
instance IsHTMLTableElement HTMLTableElement
 
instance IsHTMLElement HTMLTableElement
 
instance IsElement HTMLTableElement
 
instance IsNode HTMLTableElement
 
instance IsHTMLTableRowElement HTMLTableRowElement
 
instance IsHTMLElement HTMLTableRowElement
 
instance IsElement HTMLTableRowElement
 
instance IsNode HTMLTableRowElement
 
instance IsHTMLTableSectionElement HTMLTableSectionElement
 
instance IsHTMLElement HTMLTableSectionElement
 
instance IsElement HTMLTableSectionElement
 
instance IsNode HTMLTableSectionElement
 
instance IsHTMLTextAreaElement HTMLTextAreaElement
 
instance IsHTMLElement HTMLTextAreaElement
 
instance IsElement HTMLTextAreaElement
 
instance IsNode HTMLTextAreaElement
 
instance IsHTMLTitleElement HTMLTitleElement
 
instance IsHTMLElement HTMLTitleElement
 
instance IsElement HTMLTitleElement
 
instance IsNode HTMLTitleElement
 
instance IsHTMLUListElement HTMLUListElement
 
instance IsHTMLElement HTMLUListElement
 
instance IsElement HTMLUListElement
 
instance IsNode HTMLUListElement
 
instance IsHTMLVideoElement HTMLVideoElement
 
instance IsHTMLMediaElement HTMLVideoElement
 
instance IsHTMLElement HTMLVideoElement
 
instance IsElement HTMLVideoElement
 
instance IsNode HTMLVideoElement
 
instance IsMediaController MediaController
 
instance IsKeyboardEvent KeyboardEvent
 
instance IsUIEvent KeyboardEvent
 
instance IsEvent KeyboardEvent
 
instance IsLocation Location
 
instance IsMediaError MediaError
 
instance IsMediaList MediaList
 
instance IsMediaQueryList MediaQueryList
 
instance IsMouseEvent MouseEvent
 
instance IsUIEvent MouseEvent
 
instance IsEvent MouseEvent
 
instance IsMessagePort MessagePort
 
instance IsMutationEvent MutationEvent
 
instance IsEvent MutationEvent
 
instance IsNamedNodeMap NamedNodeMap
 
instance IsNavigator Navigator
 
instance IsNode Node
 
instance IsNodeFilter NodeFilter
 
instance IsNodeIterator NodeIterator
 
instance IsNodeList NodeList
 
instance IsNotation Notation
 
instance IsNode Notation
 
instance IsProcessingInstruction ProcessingInstruction
 
instance IsCharacterData ProcessingInstruction
 
instance IsNode ProcessingInstruction
 
instance IsDOMRange DOMRange
 
instance IsRect Rect
 
instance IsDOMScreen DOMScreen
 
instance IsStyleMedia StyleMedia
 
instance IsStyleSheet StyleSheet
 
instance IsStyleSheetList StyleSheetList
 
instance IsStorage Storage
 
instance IsStorageInfo StorageInfo
 
instance IsText Text
 
instance IsCharacterData Text
 
instance IsNode Text
 
instance IsTimeRanges TimeRanges
 
instance IsTreeWalker TreeWalker
 
instance IsValidityState ValidityState
 
instance IsUIEvent UIEvent
 
instance IsEvent UIEvent
 
instance IsWebKitNamedFlow WebKitNamedFlow
 
instance IsWebKitPoint WebKitPoint
 
instance IsXMLHttpRequest XMLHttpRequest
 
instance IsXMLHttpRequestUpload XMLHttpRequestUpload
 
instance IsXPathExpression XPathExpression
 
instance IsXPathNSResolver XPathNSResolver
 
instance IsXPathResult XPathResult
 
instance IsRGBColor RGBColor
 
instance IsSVGAElement SVGAElement
 
instance IsSVGGraphicsElement SVGAElement
 
instance IsSVGElement SVGAElement
 
instance IsElement SVGAElement
 
instance IsNode SVGAElement
 
instance IsSVGAltGlyphDefElement SVGAltGlyphDefElement
 
instance IsSVGElement SVGAltGlyphDefElement
 
instance IsElement SVGAltGlyphDefElement
 
instance IsNode SVGAltGlyphDefElement
 
instance IsSVGAltGlyphElement SVGAltGlyphElement
 
instance IsSVGTextPositioningElement SVGAltGlyphElement
 
instance IsSVGTextContentElement SVGAltGlyphElement
 
instance IsSVGGraphicsElement SVGAltGlyphElement
 
instance IsSVGElement SVGAltGlyphElement
 
instance IsElement SVGAltGlyphElement
 
instance IsNode SVGAltGlyphElement
 
instance IsSVGAltGlyphItemElement SVGAltGlyphItemElement
 
instance IsSVGElement SVGAltGlyphItemElement
 
instance IsElement SVGAltGlyphItemElement
 
instance IsNode SVGAltGlyphItemElement
 
instance IsSVGAngle SVGAngle
 
instance IsSVGAnimateColorElement SVGAnimateColorElement
 
instance IsSVGAnimationElement SVGAnimateColorElement
 
instance IsSVGElement SVGAnimateColorElement
 
instance IsElement SVGAnimateColorElement
 
instance IsNode SVGAnimateColorElement
 
instance IsSVGAnimatedAngle SVGAnimatedAngle
 
instance IsSVGAnimatedBoolean SVGAnimatedBoolean
 
instance IsSVGAnimatedEnumeration SVGAnimatedEnumeration
 
instance IsSVGAnimatedInteger SVGAnimatedInteger
 
instance IsSVGAnimatedLength SVGAnimatedLength
 
instance IsSVGAnimatedLengthList SVGAnimatedLengthList
 
instance IsSVGAnimatedNumber SVGAnimatedNumber
 
instance IsSVGAnimatedNumberList SVGAnimatedNumberList
 
instance IsSVGAnimatedPreserveAspectRatio
         SVGAnimatedPreserveAspectRatio
 
instance IsSVGAnimatedRect SVGAnimatedRect
 
instance IsSVGAnimatedString SVGAnimatedString
 
instance IsSVGAnimatedTransformList SVGAnimatedTransformList
 
instance IsSVGAnimateElement SVGAnimateElement
 
instance IsSVGAnimationElement SVGAnimateElement
 
instance IsSVGElement SVGAnimateElement
 
instance IsElement SVGAnimateElement
 
instance IsNode SVGAnimateElement
 
instance IsSVGAnimateMotionElement SVGAnimateMotionElement
 
instance IsSVGAnimationElement SVGAnimateMotionElement
 
instance IsSVGElement SVGAnimateMotionElement
 
instance IsElement SVGAnimateMotionElement
 
instance IsNode SVGAnimateMotionElement
 
instance IsSVGAnimateTransformElement SVGAnimateTransformElement
 
instance IsSVGAnimationElement SVGAnimateTransformElement
 
instance IsSVGElement SVGAnimateTransformElement
 
instance IsElement SVGAnimateTransformElement
 
instance IsNode SVGAnimateTransformElement
 
instance IsSVGAnimationElement SVGAnimationElement
 
instance IsSVGElement SVGAnimationElement
 
instance IsElement SVGAnimationElement
 
instance IsNode SVGAnimationElement
 
instance IsSVGCircleElement SVGCircleElement
 
instance IsSVGGraphicsElement SVGCircleElement
 
instance IsSVGElement SVGCircleElement
 
instance IsElement SVGCircleElement
 
instance IsNode SVGCircleElement
 
instance IsSVGClipPathElement SVGClipPathElement
 
instance IsSVGGraphicsElement SVGClipPathElement
 
instance IsSVGElement SVGClipPathElement
 
instance IsElement SVGClipPathElement
 
instance IsNode SVGClipPathElement
 
instance IsSVGColor SVGColor
 
instance IsCSSValue SVGColor
 
instance IsSVGComponentTransferFunctionElement
         SVGComponentTransferFunctionElement
 
instance IsSVGElement SVGComponentTransferFunctionElement
 
instance IsElement SVGComponentTransferFunctionElement
 
instance IsNode SVGComponentTransferFunctionElement
 
instance IsSVGCursorElement SVGCursorElement
 
instance IsSVGElement SVGCursorElement
 
instance IsElement SVGCursorElement
 
instance IsNode SVGCursorElement
 
instance IsSVGDefsElement SVGDefsElement
 
instance IsSVGGraphicsElement SVGDefsElement
 
instance IsSVGElement SVGDefsElement
 
instance IsElement SVGDefsElement
 
instance IsNode SVGDefsElement
 
instance IsSVGDescElement SVGDescElement
 
instance IsSVGElement SVGDescElement
 
instance IsElement SVGDescElement
 
instance IsNode SVGDescElement
 
instance IsSVGDocument SVGDocument
 
instance IsDocument SVGDocument
 
instance IsNode SVGDocument
 
instance IsSVGElement SVGElement
 
instance IsElement SVGElement
 
instance IsNode SVGElement
 
instance IsSVGElementInstance SVGElementInstance
 
instance IsEventTarget SVGElementInstance
 
instance IsSVGElementInstanceList SVGElementInstanceList
 
instance IsSVGEllipseElement SVGEllipseElement
 
instance IsSVGGraphicsElement SVGEllipseElement
 
instance IsSVGElement SVGEllipseElement
 
instance IsElement SVGEllipseElement
 
instance IsNode SVGEllipseElement
 
instance IsSVGExternalResourcesRequired
         SVGExternalResourcesRequired
 
instance IsSVGFEBlendElement SVGFEBlendElement
 
instance IsSVGElement SVGFEBlendElement
 
instance IsElement SVGFEBlendElement
 
instance IsNode SVGFEBlendElement
 
instance IsSVGFEColorMatrixElement SVGFEColorMatrixElement
 
instance IsSVGElement SVGFEColorMatrixElement
 
instance IsElement SVGFEColorMatrixElement
 
instance IsNode SVGFEColorMatrixElement
 
instance IsSVGFEComponentTransferElement
         SVGFEComponentTransferElement
 
instance IsSVGElement SVGFEComponentTransferElement
 
instance IsElement SVGFEComponentTransferElement
 
instance IsNode SVGFEComponentTransferElement
 
instance IsSVGFECompositeElement SVGFECompositeElement
 
instance IsSVGElement SVGFECompositeElement
 
instance IsElement SVGFECompositeElement
 
instance IsNode SVGFECompositeElement
 
instance IsSVGFEConvolveMatrixElement SVGFEConvolveMatrixElement
 
instance IsSVGElement SVGFEConvolveMatrixElement
 
instance IsElement SVGFEConvolveMatrixElement
 
instance IsNode SVGFEConvolveMatrixElement
 
instance IsSVGFEDiffuseLightingElement SVGFEDiffuseLightingElement
 
instance IsSVGElement SVGFEDiffuseLightingElement
 
instance IsElement SVGFEDiffuseLightingElement
 
instance IsNode SVGFEDiffuseLightingElement
 
instance IsSVGFEDisplacementMapElement SVGFEDisplacementMapElement
 
instance IsSVGElement SVGFEDisplacementMapElement
 
instance IsElement SVGFEDisplacementMapElement
 
instance IsNode SVGFEDisplacementMapElement
 
instance IsSVGFEDistantLightElement SVGFEDistantLightElement
 
instance IsSVGElement SVGFEDistantLightElement
 
instance IsElement SVGFEDistantLightElement
 
instance IsNode SVGFEDistantLightElement
 
instance IsSVGFEDropShadowElement SVGFEDropShadowElement
 
instance IsSVGElement SVGFEDropShadowElement
 
instance IsElement SVGFEDropShadowElement
 
instance IsNode SVGFEDropShadowElement
 
instance IsSVGFEFloodElement SVGFEFloodElement
 
instance IsSVGElement SVGFEFloodElement
 
instance IsElement SVGFEFloodElement
 
instance IsNode SVGFEFloodElement
 
instance IsSVGFEFuncAElement SVGFEFuncAElement
 
instance IsSVGComponentTransferFunctionElement SVGFEFuncAElement
 
instance IsSVGElement SVGFEFuncAElement
 
instance IsElement SVGFEFuncAElement
 
instance IsNode SVGFEFuncAElement
 
instance IsSVGFEFuncBElement SVGFEFuncBElement
 
instance IsSVGComponentTransferFunctionElement SVGFEFuncBElement
 
instance IsSVGElement SVGFEFuncBElement
 
instance IsElement SVGFEFuncBElement
 
instance IsNode SVGFEFuncBElement
 
instance IsSVGFEFuncGElement SVGFEFuncGElement
 
instance IsSVGComponentTransferFunctionElement SVGFEFuncGElement
 
instance IsSVGElement SVGFEFuncGElement
 
instance IsElement SVGFEFuncGElement
 
instance IsNode SVGFEFuncGElement
 
instance IsSVGFEFuncRElement SVGFEFuncRElement
 
instance IsSVGComponentTransferFunctionElement SVGFEFuncRElement
 
instance IsSVGElement SVGFEFuncRElement
 
instance IsElement SVGFEFuncRElement
 
instance IsNode SVGFEFuncRElement
 
instance IsSVGFEGaussianBlurElement SVGFEGaussianBlurElement
 
instance IsSVGElement SVGFEGaussianBlurElement
 
instance IsElement SVGFEGaussianBlurElement
 
instance IsNode SVGFEGaussianBlurElement
 
instance IsSVGFEImageElement SVGFEImageElement
 
instance IsSVGElement SVGFEImageElement
 
instance IsElement SVGFEImageElement
 
instance IsNode SVGFEImageElement
 
instance IsSVGFEMergeElement SVGFEMergeElement
 
instance IsSVGElement SVGFEMergeElement
 
instance IsElement SVGFEMergeElement
 
instance IsNode SVGFEMergeElement
 
instance IsSVGFEMergeNodeElement SVGFEMergeNodeElement
 
instance IsSVGElement SVGFEMergeNodeElement
 
instance IsElement SVGFEMergeNodeElement
 
instance IsNode SVGFEMergeNodeElement
 
instance IsSVGFEMorphologyElement SVGFEMorphologyElement
 
instance IsSVGElement SVGFEMorphologyElement
 
instance IsElement SVGFEMorphologyElement
 
instance IsNode SVGFEMorphologyElement
 
instance IsSVGFEOffsetElement SVGFEOffsetElement
 
instance IsSVGElement SVGFEOffsetElement
 
instance IsElement SVGFEOffsetElement
 
instance IsNode SVGFEOffsetElement
 
instance IsSVGFEPointLightElement SVGFEPointLightElement
 
instance IsSVGElement SVGFEPointLightElement
 
instance IsElement SVGFEPointLightElement
 
instance IsNode SVGFEPointLightElement
 
instance IsSVGFESpecularLightingElement
         SVGFESpecularLightingElement
 
instance IsSVGElement SVGFESpecularLightingElement
 
instance IsElement SVGFESpecularLightingElement
 
instance IsNode SVGFESpecularLightingElement
 
instance IsSVGFESpotLightElement SVGFESpotLightElement
 
instance IsSVGElement SVGFESpotLightElement
 
instance IsElement SVGFESpotLightElement
 
instance IsNode SVGFESpotLightElement
 
instance IsSVGFETileElement SVGFETileElement
 
instance IsSVGElement SVGFETileElement
 
instance IsElement SVGFETileElement
 
instance IsNode SVGFETileElement
 
instance IsSVGFETurbulenceElement SVGFETurbulenceElement
 
instance IsSVGElement SVGFETurbulenceElement
 
instance IsElement SVGFETurbulenceElement
 
instance IsNode SVGFETurbulenceElement
 
instance IsSVGFilterElement SVGFilterElement
 
instance IsSVGElement SVGFilterElement
 
instance IsElement SVGFilterElement
 
instance IsNode SVGFilterElement
 
instance IsSVGFilterPrimitiveStandardAttributes
         SVGFilterPrimitiveStandardAttributes
 
instance IsSVGFitToViewBox SVGFitToViewBox
 
instance IsSVGFontElement SVGFontElement
 
instance IsSVGElement SVGFontElement
 
instance IsElement SVGFontElement
 
instance IsNode SVGFontElement
 
instance IsSVGFontFaceElement SVGFontFaceElement
 
instance IsSVGElement SVGFontFaceElement
 
instance IsElement SVGFontFaceElement
 
instance IsNode SVGFontFaceElement
 
instance IsSVGFontFaceFormatElement SVGFontFaceFormatElement
 
instance IsSVGElement SVGFontFaceFormatElement
 
instance IsElement SVGFontFaceFormatElement
 
instance IsNode SVGFontFaceFormatElement
 
instance IsSVGFontFaceNameElement SVGFontFaceNameElement
 
instance IsSVGElement SVGFontFaceNameElement
 
instance IsElement SVGFontFaceNameElement
 
instance IsNode SVGFontFaceNameElement
 
instance IsSVGFontFaceSrcElement SVGFontFaceSrcElement
 
instance IsSVGElement SVGFontFaceSrcElement
 
instance IsElement SVGFontFaceSrcElement
 
instance IsNode SVGFontFaceSrcElement
 
instance IsSVGFontFaceUriElement SVGFontFaceUriElement
 
instance IsSVGElement SVGFontFaceUriElement
 
instance IsElement SVGFontFaceUriElement
 
instance IsNode SVGFontFaceUriElement
 
instance IsSVGForeignObjectElement SVGForeignObjectElement
 
instance IsSVGGraphicsElement SVGForeignObjectElement
 
instance IsSVGElement SVGForeignObjectElement
 
instance IsElement SVGForeignObjectElement
 
instance IsNode SVGForeignObjectElement
 
instance IsSVGGElement SVGGElement
 
instance IsSVGGraphicsElement SVGGElement
 
instance IsSVGElement SVGGElement
 
instance IsElement SVGGElement
 
instance IsNode SVGGElement
 
instance IsSVGGlyphElement SVGGlyphElement
 
instance IsSVGElement SVGGlyphElement
 
instance IsElement SVGGlyphElement
 
instance IsNode SVGGlyphElement
 
instance IsSVGGlyphRefElement SVGGlyphRefElement
 
instance IsSVGElement SVGGlyphRefElement
 
instance IsElement SVGGlyphRefElement
 
instance IsNode SVGGlyphRefElement
 
instance IsSVGGradientElement SVGGradientElement
 
instance IsSVGElement SVGGradientElement
 
instance IsElement SVGGradientElement
 
instance IsNode SVGGradientElement
 
instance IsSVGGraphicsElement SVGGraphicsElement
 
instance IsSVGElement SVGGraphicsElement
 
instance IsElement SVGGraphicsElement
 
instance IsNode SVGGraphicsElement
 
instance IsSVGHKernElement SVGHKernElement
 
instance IsSVGElement SVGHKernElement
 
instance IsElement SVGHKernElement
 
instance IsNode SVGHKernElement
 
instance IsSVGImageElement SVGImageElement
 
instance IsSVGGraphicsElement SVGImageElement
 
instance IsSVGElement SVGImageElement
 
instance IsElement SVGImageElement
 
instance IsNode SVGImageElement
 
instance IsSVGLength SVGLength
 
instance IsSVGLengthList SVGLengthList
 
instance IsSVGLinearGradientElement SVGLinearGradientElement
 
instance IsSVGGradientElement SVGLinearGradientElement
 
instance IsSVGElement SVGLinearGradientElement
 
instance IsElement SVGLinearGradientElement
 
instance IsNode SVGLinearGradientElement
 
instance IsSVGLineElement SVGLineElement
 
instance IsSVGGraphicsElement SVGLineElement
 
instance IsSVGElement SVGLineElement
 
instance IsElement SVGLineElement
 
instance IsNode SVGLineElement
 
instance IsSVGMarkerElement SVGMarkerElement
 
instance IsSVGElement SVGMarkerElement
 
instance IsElement SVGMarkerElement
 
instance IsNode SVGMarkerElement
 
instance IsSVGMaskElement SVGMaskElement
 
instance IsSVGElement SVGMaskElement
 
instance IsElement SVGMaskElement
 
instance IsNode SVGMaskElement
 
instance IsSVGMatrix SVGMatrix
 
instance IsSVGMetadataElement SVGMetadataElement
 
instance IsSVGElement SVGMetadataElement
 
instance IsElement SVGMetadataElement
 
instance IsNode SVGMetadataElement
 
instance IsSVGMissingGlyphElement SVGMissingGlyphElement
 
instance IsSVGElement SVGMissingGlyphElement
 
instance IsElement SVGMissingGlyphElement
 
instance IsNode SVGMissingGlyphElement
 
instance IsSVGMPathElement SVGMPathElement
 
instance IsSVGElement SVGMPathElement
 
instance IsElement SVGMPathElement
 
instance IsNode SVGMPathElement
 
instance IsSVGNumber SVGNumber
 
instance IsSVGNumberList SVGNumberList
 
instance IsSVGPaint SVGPaint
 
instance IsSVGColor SVGPaint
 
instance IsCSSValue SVGPaint
 
instance IsSVGPathElement SVGPathElement
 
instance IsSVGGraphicsElement SVGPathElement
 
instance IsSVGElement SVGPathElement
 
instance IsElement SVGPathElement
 
instance IsNode SVGPathElement
 
instance IsSVGPathSeg SVGPathSeg
 
instance IsSVGPathSegArcAbs SVGPathSegArcAbs
 
instance IsSVGPathSeg SVGPathSegArcAbs
 
instance IsSVGPathSegArcRel SVGPathSegArcRel
 
instance IsSVGPathSeg SVGPathSegArcRel
 
instance IsSVGPathSegClosePath SVGPathSegClosePath
 
instance IsSVGPathSeg SVGPathSegClosePath
 
instance IsSVGPathSegCurvetoCubicAbs SVGPathSegCurvetoCubicAbs
 
instance IsSVGPathSeg SVGPathSegCurvetoCubicAbs
 
instance IsSVGPathSegCurvetoCubicRel SVGPathSegCurvetoCubicRel
 
instance IsSVGPathSeg SVGPathSegCurvetoCubicRel
 
instance IsSVGPathSegCurvetoCubicSmoothAbs
         SVGPathSegCurvetoCubicSmoothAbs
 
instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothAbs
 
instance IsSVGPathSegCurvetoCubicSmoothRel
         SVGPathSegCurvetoCubicSmoothRel
 
instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothRel
 
instance IsSVGPathSegCurvetoQuadraticAbs
         SVGPathSegCurvetoQuadraticAbs
 
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticAbs
 
instance IsSVGPathSegCurvetoQuadraticRel
         SVGPathSegCurvetoQuadraticRel
 
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticRel
 
instance IsSVGPathSegCurvetoQuadraticSmoothAbs
         SVGPathSegCurvetoQuadraticSmoothAbs
 
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothAbs
 
instance IsSVGPathSegCurvetoQuadraticSmoothRel
         SVGPathSegCurvetoQuadraticSmoothRel
 
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothRel
 
instance IsSVGPathSegLinetoAbs SVGPathSegLinetoAbs
 
instance IsSVGPathSeg SVGPathSegLinetoAbs
 
instance IsSVGPathSegLinetoHorizontalAbs
         SVGPathSegLinetoHorizontalAbs
 
instance IsSVGPathSeg SVGPathSegLinetoHorizontalAbs
 
instance IsSVGPathSegLinetoHorizontalRel
         SVGPathSegLinetoHorizontalRel
 
instance IsSVGPathSeg SVGPathSegLinetoHorizontalRel
 
instance IsSVGPathSegLinetoRel SVGPathSegLinetoRel
 
instance IsSVGPathSeg SVGPathSegLinetoRel
 
instance IsSVGPathSegLinetoVerticalAbs SVGPathSegLinetoVerticalAbs
 
instance IsSVGPathSeg SVGPathSegLinetoVerticalAbs
 
instance IsSVGPathSegLinetoVerticalRel SVGPathSegLinetoVerticalRel
 
instance IsSVGPathSeg SVGPathSegLinetoVerticalRel
 
instance IsSVGPathSegList SVGPathSegList
 
instance IsSVGPathSegMovetoAbs SVGPathSegMovetoAbs
 
instance IsSVGPathSeg SVGPathSegMovetoAbs
 
instance IsSVGPathSegMovetoRel SVGPathSegMovetoRel
 
instance IsSVGPathSeg SVGPathSegMovetoRel
 
instance IsSVGPatternElement SVGPatternElement
 
instance IsSVGElement SVGPatternElement
 
instance IsElement SVGPatternElement
 
instance IsNode SVGPatternElement
 
instance IsSVGPoint SVGPoint
 
instance IsSVGPointList SVGPointList
 
instance IsSVGPolygonElement SVGPolygonElement
 
instance IsSVGGraphicsElement SVGPolygonElement
 
instance IsSVGElement SVGPolygonElement
 
instance IsElement SVGPolygonElement
 
instance IsNode SVGPolygonElement
 
instance IsSVGPolylineElement SVGPolylineElement
 
instance IsSVGGraphicsElement SVGPolylineElement
 
instance IsSVGElement SVGPolylineElement
 
instance IsElement SVGPolylineElement
 
instance IsNode SVGPolylineElement
 
instance IsSVGPreserveAspectRatio SVGPreserveAspectRatio
 
instance IsSVGRadialGradientElement SVGRadialGradientElement
 
instance IsSVGGradientElement SVGRadialGradientElement
 
instance IsSVGElement SVGRadialGradientElement
 
instance IsElement SVGRadialGradientElement
 
instance IsNode SVGRadialGradientElement
 
instance IsSVGRect SVGRect
 
instance IsSVGRectElement SVGRectElement
 
instance IsSVGGraphicsElement SVGRectElement
 
instance IsSVGElement SVGRectElement
 
instance IsElement SVGRectElement
 
instance IsNode SVGRectElement
 
instance IsSVGRenderingIntent SVGRenderingIntent
 
instance IsSVGScriptElement SVGScriptElement
 
instance IsSVGElement SVGScriptElement
 
instance IsElement SVGScriptElement
 
instance IsNode SVGScriptElement
 
instance IsSVGSetElement SVGSetElement
 
instance IsSVGAnimationElement SVGSetElement
 
instance IsSVGElement SVGSetElement
 
instance IsElement SVGSetElement
 
instance IsNode SVGSetElement
 
instance IsSVGStopElement SVGStopElement
 
instance IsSVGElement SVGStopElement
 
instance IsElement SVGStopElement
 
instance IsNode SVGStopElement
 
instance IsSVGStringList SVGStringList
 
instance IsSVGStyleElement SVGStyleElement
 
instance IsSVGElement SVGStyleElement
 
instance IsElement SVGStyleElement
 
instance IsNode SVGStyleElement
 
instance IsSVGSVGElement SVGSVGElement
 
instance IsSVGGraphicsElement SVGSVGElement
 
instance IsSVGElement SVGSVGElement
 
instance IsElement SVGSVGElement
 
instance IsNode SVGSVGElement
 
instance IsSVGSwitchElement SVGSwitchElement
 
instance IsSVGGraphicsElement SVGSwitchElement
 
instance IsSVGElement SVGSwitchElement
 
instance IsElement SVGSwitchElement
 
instance IsNode SVGSwitchElement
 
instance IsSVGSymbolElement SVGSymbolElement
 
instance IsSVGElement SVGSymbolElement
 
instance IsElement SVGSymbolElement
 
instance IsNode SVGSymbolElement
 
instance IsSVGTests SVGTests
 
instance IsSVGTextContentElement SVGTextContentElement
 
instance IsSVGGraphicsElement SVGTextContentElement
 
instance IsSVGElement SVGTextContentElement
 
instance IsElement SVGTextContentElement
 
instance IsNode SVGTextContentElement
 
instance IsSVGTextElement SVGTextElement
 
instance IsSVGTextPositioningElement SVGTextElement
 
instance IsSVGTextContentElement SVGTextElement
 
instance IsSVGGraphicsElement SVGTextElement
 
instance IsSVGElement SVGTextElement
 
instance IsElement SVGTextElement
 
instance IsNode SVGTextElement
 
instance IsSVGTextPathElement SVGTextPathElement
 
instance IsSVGTextContentElement SVGTextPathElement
 
instance IsSVGGraphicsElement SVGTextPathElement
 
instance IsSVGElement SVGTextPathElement
 
instance IsElement SVGTextPathElement
 
instance IsNode SVGTextPathElement
 
instance IsSVGTextPositioningElement SVGTextPositioningElement
 
instance IsSVGTextContentElement SVGTextPositioningElement
 
instance IsSVGGraphicsElement SVGTextPositioningElement
 
instance IsSVGElement SVGTextPositioningElement
 
instance IsElement SVGTextPositioningElement
 
instance IsNode SVGTextPositioningElement
 
instance IsSVGTitleElement SVGTitleElement
 
instance IsSVGElement SVGTitleElement
 
instance IsElement SVGTitleElement
 
instance IsNode SVGTitleElement
 
instance IsSVGTransform SVGTransform
 
instance IsSVGTransformList SVGTransformList
 
instance IsSVGTRefElement SVGTRefElement
 
instance IsSVGTextPositioningElement SVGTRefElement
 
instance IsSVGTextContentElement SVGTRefElement
 
instance IsSVGGraphicsElement SVGTRefElement
 
instance IsSVGElement SVGTRefElement
 
instance IsElement SVGTRefElement
 
instance IsNode SVGTRefElement
 
instance IsSVGTSpanElement SVGTSpanElement
 
instance IsSVGTextPositioningElement SVGTSpanElement
 
instance IsSVGTextContentElement SVGTSpanElement
 
instance IsSVGGraphicsElement SVGTSpanElement
 
instance IsSVGElement SVGTSpanElement
 
instance IsElement SVGTSpanElement
 
instance IsNode SVGTSpanElement
 
instance IsSVGUnitTypes SVGUnitTypes
 
instance IsSVGURIReference SVGURIReference
 
instance IsSVGUseElement SVGUseElement
 
instance IsSVGGraphicsElement SVGUseElement
 
instance IsSVGElement SVGUseElement
 
instance IsElement SVGUseElement
 
instance IsNode SVGUseElement
 
instance IsSVGViewElement SVGViewElement
 
instance IsSVGElement SVGViewElement
 
instance IsElement SVGViewElement
 
instance IsNode SVGViewElement
 
instance IsSVGViewSpec SVGViewSpec
 
instance IsSVGVKernElement SVGVKernElement
 
instance IsSVGElement SVGVKernElement
 
instance IsElement SVGVKernElement
 
instance IsNode SVGVKernElement
 
instance IsSVGZoomAndPan SVGZoomAndPan
 
instance IsSVGZoomEvent SVGZoomEvent
 
instance IsUIEvent SVGZoomEvent
 
instance IsEvent SVGZoomEvent
#else
module GHCJS.DOM.Core (
  module Graphics.UI.Gtk.WebKit.DOM.Core
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Core
#endif
