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
  , SerializedScriptValue(SerializedScriptValue), unSerializedScriptValue, IsSerializedScriptValue, toSerializedScriptValue
  , PositionCallback(PositionCallback), unPositionCallback, IsPositionCallback, toPositionCallback
  , PositionErrorCallback(PositionErrorCallback), unPositionErrorCallback, IsPositionErrorCallback, toPositionErrorCallback
  , PositionOptions(PositionOptions), unPositionOptions, IsPositionOptions, toPositionOptions

-- AUTO GENERATION STARTS HERE
  , DOMAttr(DOMAttr), unDOMAttr, IsDOMAttr, toDOMAttr, castToDOMAttr, gTypeDOMAttr
  , BarProp(BarProp), unBarProp, IsBarProp, toBarProp, castToBarProp, gTypeBarProp
  , Blob(Blob), unBlob, IsBlob, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, IsCDATASection, toCDATASection, castToCDATASection, gTypeCDATASection
  , CSSPrimitiveValue(CSSPrimitiveValue), unCSSPrimitiveValue, IsCSSPrimitiveValue, toCSSPrimitiveValue, castToCSSPrimitiveValue, gTypeCSSPrimitiveValue
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, IsCSSRuleList, toCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, IsCSSStyleDeclaration, toCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, IsCSSStyleSheet, toCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, castToCSSValue, gTypeCSSValue
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, castToCharacterData, gTypeCharacterData
  , Comment(Comment), unComment, IsComment, toComment, castToComment, gTypeComment
  , Counter(Counter), unCounter, IsCounter, toCounter, castToCounter, gTypeCounter
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
  , MediaController(MediaController), unMediaController, IsMediaController, toMediaController, castToMediaController, gTypeMediaController
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
  , PositionError(PositionError), unPositionError, IsPositionError, toPositionError, castToPositionError, gTypePositionError
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, IsProcessingInstruction, toProcessingInstruction, castToProcessingInstruction, gTypeProcessingInstruction
  , RGBColor(RGBColor), unRGBColor, IsRGBColor, toRGBColor, castToRGBColor, gTypeRGBColor
  , DOMRange(DOMRange), unDOMRange, IsDOMRange, toDOMRange, castToDOMRange, gTypeDOMRange
  , Rect(Rect), unRect, IsRect, toRect, castToRect, gTypeRect
  , SVGAElement(SVGAElement), unSVGAElement, IsSVGAElement, toSVGAElement, castToSVGAElement, gTypeSVGAElement
  , SVGAltGlyphDefElement(SVGAltGlyphDefElement), unSVGAltGlyphDefElement, IsSVGAltGlyphDefElement, toSVGAltGlyphDefElement, castToSVGAltGlyphDefElement, gTypeSVGAltGlyphDefElement
  , SVGAltGlyphElement(SVGAltGlyphElement), unSVGAltGlyphElement, IsSVGAltGlyphElement, toSVGAltGlyphElement, castToSVGAltGlyphElement, gTypeSVGAltGlyphElement
  , SVGAltGlyphItemElement(SVGAltGlyphItemElement), unSVGAltGlyphItemElement, IsSVGAltGlyphItemElement, toSVGAltGlyphItemElement, castToSVGAltGlyphItemElement, gTypeSVGAltGlyphItemElement
  , SVGAngle(SVGAngle), unSVGAngle, IsSVGAngle, toSVGAngle, castToSVGAngle, gTypeSVGAngle
  , SVGAnimateColorElement(SVGAnimateColorElement), unSVGAnimateColorElement, IsSVGAnimateColorElement, toSVGAnimateColorElement, castToSVGAnimateColorElement, gTypeSVGAnimateColorElement
  , SVGAnimateElement(SVGAnimateElement), unSVGAnimateElement, IsSVGAnimateElement, toSVGAnimateElement, castToSVGAnimateElement, gTypeSVGAnimateElement
  , SVGAnimateMotionElement(SVGAnimateMotionElement), unSVGAnimateMotionElement, IsSVGAnimateMotionElement, toSVGAnimateMotionElement, castToSVGAnimateMotionElement, gTypeSVGAnimateMotionElement
  , SVGAnimateTransformElement(SVGAnimateTransformElement), unSVGAnimateTransformElement, IsSVGAnimateTransformElement, toSVGAnimateTransformElement, castToSVGAnimateTransformElement, gTypeSVGAnimateTransformElement
  , SVGAnimatedAngle(SVGAnimatedAngle), unSVGAnimatedAngle, IsSVGAnimatedAngle, toSVGAnimatedAngle, castToSVGAnimatedAngle, gTypeSVGAnimatedAngle
  , SVGAnimatedBoolean(SVGAnimatedBoolean), unSVGAnimatedBoolean, IsSVGAnimatedBoolean, toSVGAnimatedBoolean, castToSVGAnimatedBoolean, gTypeSVGAnimatedBoolean
  , SVGAnimatedEnumeration(SVGAnimatedEnumeration), unSVGAnimatedEnumeration, IsSVGAnimatedEnumeration, toSVGAnimatedEnumeration, castToSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration
  , SVGAnimatedInteger(SVGAnimatedInteger), unSVGAnimatedInteger, IsSVGAnimatedInteger, toSVGAnimatedInteger, castToSVGAnimatedInteger, gTypeSVGAnimatedInteger
  , SVGAnimatedLength(SVGAnimatedLength), unSVGAnimatedLength, IsSVGAnimatedLength, toSVGAnimatedLength, castToSVGAnimatedLength, gTypeSVGAnimatedLength
  , SVGAnimatedLengthList(SVGAnimatedLengthList), unSVGAnimatedLengthList, IsSVGAnimatedLengthList, toSVGAnimatedLengthList, castToSVGAnimatedLengthList, gTypeSVGAnimatedLengthList
  , SVGAnimatedNumber(SVGAnimatedNumber), unSVGAnimatedNumber, IsSVGAnimatedNumber, toSVGAnimatedNumber, castToSVGAnimatedNumber, gTypeSVGAnimatedNumber
  , SVGAnimatedNumberList(SVGAnimatedNumberList), unSVGAnimatedNumberList, IsSVGAnimatedNumberList, toSVGAnimatedNumberList, castToSVGAnimatedNumberList, gTypeSVGAnimatedNumberList
  , SVGAnimatedPreserveAspectRatio(SVGAnimatedPreserveAspectRatio), unSVGAnimatedPreserveAspectRatio, IsSVGAnimatedPreserveAspectRatio, toSVGAnimatedPreserveAspectRatio, castToSVGAnimatedPreserveAspectRatio, gTypeSVGAnimatedPreserveAspectRatio
  , SVGAnimatedRect(SVGAnimatedRect), unSVGAnimatedRect, IsSVGAnimatedRect, toSVGAnimatedRect, castToSVGAnimatedRect, gTypeSVGAnimatedRect
  , SVGAnimatedString(SVGAnimatedString), unSVGAnimatedString, IsSVGAnimatedString, toSVGAnimatedString, castToSVGAnimatedString, gTypeSVGAnimatedString
  , SVGAnimatedTransformList(SVGAnimatedTransformList), unSVGAnimatedTransformList, IsSVGAnimatedTransformList, toSVGAnimatedTransformList, castToSVGAnimatedTransformList, gTypeSVGAnimatedTransformList
  , SVGAnimationElement(SVGAnimationElement), unSVGAnimationElement, IsSVGAnimationElement, toSVGAnimationElement, castToSVGAnimationElement, gTypeSVGAnimationElement
  , SVGCircleElement(SVGCircleElement), unSVGCircleElement, IsSVGCircleElement, toSVGCircleElement, castToSVGCircleElement, gTypeSVGCircleElement
  , SVGClipPathElement(SVGClipPathElement), unSVGClipPathElement, IsSVGClipPathElement, toSVGClipPathElement, castToSVGClipPathElement, gTypeSVGClipPathElement
  , SVGColor(SVGColor), unSVGColor, IsSVGColor, toSVGColor, castToSVGColor, gTypeSVGColor
  , SVGComponentTransferFunctionElement(SVGComponentTransferFunctionElement), unSVGComponentTransferFunctionElement, IsSVGComponentTransferFunctionElement, toSVGComponentTransferFunctionElement, castToSVGComponentTransferFunctionElement, gTypeSVGComponentTransferFunctionElement
  , SVGCursorElement(SVGCursorElement), unSVGCursorElement, IsSVGCursorElement, toSVGCursorElement, castToSVGCursorElement, gTypeSVGCursorElement
  , SVGDefsElement(SVGDefsElement), unSVGDefsElement, IsSVGDefsElement, toSVGDefsElement, castToSVGDefsElement, gTypeSVGDefsElement
  , SVGDescElement(SVGDescElement), unSVGDescElement, IsSVGDescElement, toSVGDescElement, castToSVGDescElement, gTypeSVGDescElement
  , SVGDocument(SVGDocument), unSVGDocument, IsSVGDocument, toSVGDocument, castToSVGDocument, gTypeSVGDocument
  , SVGElement(SVGElement), unSVGElement, IsSVGElement, toSVGElement, castToSVGElement, gTypeSVGElement
  , SVGElementInstance(SVGElementInstance), unSVGElementInstance, IsSVGElementInstance, toSVGElementInstance, castToSVGElementInstance, gTypeSVGElementInstance
  , SVGElementInstanceList(SVGElementInstanceList), unSVGElementInstanceList, IsSVGElementInstanceList, toSVGElementInstanceList, castToSVGElementInstanceList, gTypeSVGElementInstanceList
  , SVGEllipseElement(SVGEllipseElement), unSVGEllipseElement, IsSVGEllipseElement, toSVGEllipseElement, castToSVGEllipseElement, gTypeSVGEllipseElement
  , SVGExternalResourcesRequired(SVGExternalResourcesRequired), unSVGExternalResourcesRequired, IsSVGExternalResourcesRequired, toSVGExternalResourcesRequired, castToSVGExternalResourcesRequired, gTypeSVGExternalResourcesRequired
  , SVGFEBlendElement(SVGFEBlendElement), unSVGFEBlendElement, IsSVGFEBlendElement, toSVGFEBlendElement, castToSVGFEBlendElement, gTypeSVGFEBlendElement
  , SVGFEColorMatrixElement(SVGFEColorMatrixElement), unSVGFEColorMatrixElement, IsSVGFEColorMatrixElement, toSVGFEColorMatrixElement, castToSVGFEColorMatrixElement, gTypeSVGFEColorMatrixElement
  , SVGFEComponentTransferElement(SVGFEComponentTransferElement), unSVGFEComponentTransferElement, IsSVGFEComponentTransferElement, toSVGFEComponentTransferElement, castToSVGFEComponentTransferElement, gTypeSVGFEComponentTransferElement
  , SVGFECompositeElement(SVGFECompositeElement), unSVGFECompositeElement, IsSVGFECompositeElement, toSVGFECompositeElement, castToSVGFECompositeElement, gTypeSVGFECompositeElement
  , SVGFEConvolveMatrixElement(SVGFEConvolveMatrixElement), unSVGFEConvolveMatrixElement, IsSVGFEConvolveMatrixElement, toSVGFEConvolveMatrixElement, castToSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement
  , SVGFEDiffuseLightingElement(SVGFEDiffuseLightingElement), unSVGFEDiffuseLightingElement, IsSVGFEDiffuseLightingElement, toSVGFEDiffuseLightingElement, castToSVGFEDiffuseLightingElement, gTypeSVGFEDiffuseLightingElement
  , SVGFEDisplacementMapElement(SVGFEDisplacementMapElement), unSVGFEDisplacementMapElement, IsSVGFEDisplacementMapElement, toSVGFEDisplacementMapElement, castToSVGFEDisplacementMapElement, gTypeSVGFEDisplacementMapElement
  , SVGFEDistantLightElement(SVGFEDistantLightElement), unSVGFEDistantLightElement, IsSVGFEDistantLightElement, toSVGFEDistantLightElement, castToSVGFEDistantLightElement, gTypeSVGFEDistantLightElement
  , SVGFEDropShadowElement(SVGFEDropShadowElement), unSVGFEDropShadowElement, IsSVGFEDropShadowElement, toSVGFEDropShadowElement, castToSVGFEDropShadowElement, gTypeSVGFEDropShadowElement
  , SVGFEFloodElement(SVGFEFloodElement), unSVGFEFloodElement, IsSVGFEFloodElement, toSVGFEFloodElement, castToSVGFEFloodElement, gTypeSVGFEFloodElement
  , SVGFEFuncAElement(SVGFEFuncAElement), unSVGFEFuncAElement, IsSVGFEFuncAElement, toSVGFEFuncAElement, castToSVGFEFuncAElement, gTypeSVGFEFuncAElement
  , SVGFEFuncBElement(SVGFEFuncBElement), unSVGFEFuncBElement, IsSVGFEFuncBElement, toSVGFEFuncBElement, castToSVGFEFuncBElement, gTypeSVGFEFuncBElement
  , SVGFEFuncGElement(SVGFEFuncGElement), unSVGFEFuncGElement, IsSVGFEFuncGElement, toSVGFEFuncGElement, castToSVGFEFuncGElement, gTypeSVGFEFuncGElement
  , SVGFEFuncRElement(SVGFEFuncRElement), unSVGFEFuncRElement, IsSVGFEFuncRElement, toSVGFEFuncRElement, castToSVGFEFuncRElement, gTypeSVGFEFuncRElement
  , SVGFEGaussianBlurElement(SVGFEGaussianBlurElement), unSVGFEGaussianBlurElement, IsSVGFEGaussianBlurElement, toSVGFEGaussianBlurElement, castToSVGFEGaussianBlurElement, gTypeSVGFEGaussianBlurElement
  , SVGFEImageElement(SVGFEImageElement), unSVGFEImageElement, IsSVGFEImageElement, toSVGFEImageElement, castToSVGFEImageElement, gTypeSVGFEImageElement
  , SVGFEMergeElement(SVGFEMergeElement), unSVGFEMergeElement, IsSVGFEMergeElement, toSVGFEMergeElement, castToSVGFEMergeElement, gTypeSVGFEMergeElement
  , SVGFEMergeNodeElement(SVGFEMergeNodeElement), unSVGFEMergeNodeElement, IsSVGFEMergeNodeElement, toSVGFEMergeNodeElement, castToSVGFEMergeNodeElement, gTypeSVGFEMergeNodeElement
  , SVGFEMorphologyElement(SVGFEMorphologyElement), unSVGFEMorphologyElement, IsSVGFEMorphologyElement, toSVGFEMorphologyElement, castToSVGFEMorphologyElement, gTypeSVGFEMorphologyElement
  , SVGFEOffsetElement(SVGFEOffsetElement), unSVGFEOffsetElement, IsSVGFEOffsetElement, toSVGFEOffsetElement, castToSVGFEOffsetElement, gTypeSVGFEOffsetElement
  , SVGFEPointLightElement(SVGFEPointLightElement), unSVGFEPointLightElement, IsSVGFEPointLightElement, toSVGFEPointLightElement, castToSVGFEPointLightElement, gTypeSVGFEPointLightElement
  , SVGFESpecularLightingElement(SVGFESpecularLightingElement), unSVGFESpecularLightingElement, IsSVGFESpecularLightingElement, toSVGFESpecularLightingElement, castToSVGFESpecularLightingElement, gTypeSVGFESpecularLightingElement
  , SVGFESpotLightElement(SVGFESpotLightElement), unSVGFESpotLightElement, IsSVGFESpotLightElement, toSVGFESpotLightElement, castToSVGFESpotLightElement, gTypeSVGFESpotLightElement
  , SVGFETileElement(SVGFETileElement), unSVGFETileElement, IsSVGFETileElement, toSVGFETileElement, castToSVGFETileElement, gTypeSVGFETileElement
  , SVGFETurbulenceElement(SVGFETurbulenceElement), unSVGFETurbulenceElement, IsSVGFETurbulenceElement, toSVGFETurbulenceElement, castToSVGFETurbulenceElement, gTypeSVGFETurbulenceElement
  , SVGFilterElement(SVGFilterElement), unSVGFilterElement, IsSVGFilterElement, toSVGFilterElement, castToSVGFilterElement, gTypeSVGFilterElement
  , SVGFilterPrimitiveStandardAttributes(SVGFilterPrimitiveStandardAttributes), unSVGFilterPrimitiveStandardAttributes, IsSVGFilterPrimitiveStandardAttributes, toSVGFilterPrimitiveStandardAttributes, castToSVGFilterPrimitiveStandardAttributes, gTypeSVGFilterPrimitiveStandardAttributes
  , SVGFitToViewBox(SVGFitToViewBox), unSVGFitToViewBox, IsSVGFitToViewBox, toSVGFitToViewBox, castToSVGFitToViewBox, gTypeSVGFitToViewBox
  , SVGFontElement(SVGFontElement), unSVGFontElement, IsSVGFontElement, toSVGFontElement, castToSVGFontElement, gTypeSVGFontElement
  , SVGFontFaceElement(SVGFontFaceElement), unSVGFontFaceElement, IsSVGFontFaceElement, toSVGFontFaceElement, castToSVGFontFaceElement, gTypeSVGFontFaceElement
  , SVGFontFaceFormatElement(SVGFontFaceFormatElement), unSVGFontFaceFormatElement, IsSVGFontFaceFormatElement, toSVGFontFaceFormatElement, castToSVGFontFaceFormatElement, gTypeSVGFontFaceFormatElement
  , SVGFontFaceNameElement(SVGFontFaceNameElement), unSVGFontFaceNameElement, IsSVGFontFaceNameElement, toSVGFontFaceNameElement, castToSVGFontFaceNameElement, gTypeSVGFontFaceNameElement
  , SVGFontFaceSrcElement(SVGFontFaceSrcElement), unSVGFontFaceSrcElement, IsSVGFontFaceSrcElement, toSVGFontFaceSrcElement, castToSVGFontFaceSrcElement, gTypeSVGFontFaceSrcElement
  , SVGFontFaceUriElement(SVGFontFaceUriElement), unSVGFontFaceUriElement, IsSVGFontFaceUriElement, toSVGFontFaceUriElement, castToSVGFontFaceUriElement, gTypeSVGFontFaceUriElement
  , SVGForeignObjectElement(SVGForeignObjectElement), unSVGForeignObjectElement, IsSVGForeignObjectElement, toSVGForeignObjectElement, castToSVGForeignObjectElement, gTypeSVGForeignObjectElement
  , SVGGElement(SVGGElement), unSVGGElement, IsSVGGElement, toSVGGElement, castToSVGGElement, gTypeSVGGElement
  , SVGGlyphElement(SVGGlyphElement), unSVGGlyphElement, IsSVGGlyphElement, toSVGGlyphElement, castToSVGGlyphElement, gTypeSVGGlyphElement
  , SVGGlyphRefElement(SVGGlyphRefElement), unSVGGlyphRefElement, IsSVGGlyphRefElement, toSVGGlyphRefElement, castToSVGGlyphRefElement, gTypeSVGGlyphRefElement
  , SVGGradientElement(SVGGradientElement), unSVGGradientElement, IsSVGGradientElement, toSVGGradientElement, castToSVGGradientElement, gTypeSVGGradientElement
  , SVGGraphicsElement(SVGGraphicsElement), unSVGGraphicsElement, IsSVGGraphicsElement, toSVGGraphicsElement, castToSVGGraphicsElement, gTypeSVGGraphicsElement
  , SVGHKernElement(SVGHKernElement), unSVGHKernElement, IsSVGHKernElement, toSVGHKernElement, castToSVGHKernElement, gTypeSVGHKernElement
  , SVGImageElement(SVGImageElement), unSVGImageElement, IsSVGImageElement, toSVGImageElement, castToSVGImageElement, gTypeSVGImageElement
  , SVGLength(SVGLength), unSVGLength, IsSVGLength, toSVGLength, castToSVGLength, gTypeSVGLength
  , SVGLengthList(SVGLengthList), unSVGLengthList, IsSVGLengthList, toSVGLengthList, castToSVGLengthList, gTypeSVGLengthList
  , SVGLineElement(SVGLineElement), unSVGLineElement, IsSVGLineElement, toSVGLineElement, castToSVGLineElement, gTypeSVGLineElement
  , SVGLinearGradientElement(SVGLinearGradientElement), unSVGLinearGradientElement, IsSVGLinearGradientElement, toSVGLinearGradientElement, castToSVGLinearGradientElement, gTypeSVGLinearGradientElement
  , SVGMPathElement(SVGMPathElement), unSVGMPathElement, IsSVGMPathElement, toSVGMPathElement, castToSVGMPathElement, gTypeSVGMPathElement
  , SVGMarkerElement(SVGMarkerElement), unSVGMarkerElement, IsSVGMarkerElement, toSVGMarkerElement, castToSVGMarkerElement, gTypeSVGMarkerElement
  , SVGMaskElement(SVGMaskElement), unSVGMaskElement, IsSVGMaskElement, toSVGMaskElement, castToSVGMaskElement, gTypeSVGMaskElement
  , SVGMatrix(SVGMatrix), unSVGMatrix, IsSVGMatrix, toSVGMatrix, castToSVGMatrix, gTypeSVGMatrix
  , SVGMetadataElement(SVGMetadataElement), unSVGMetadataElement, IsSVGMetadataElement, toSVGMetadataElement, castToSVGMetadataElement, gTypeSVGMetadataElement
  , SVGMissingGlyphElement(SVGMissingGlyphElement), unSVGMissingGlyphElement, IsSVGMissingGlyphElement, toSVGMissingGlyphElement, castToSVGMissingGlyphElement, gTypeSVGMissingGlyphElement
  , SVGNumber(SVGNumber), unSVGNumber, IsSVGNumber, toSVGNumber, castToSVGNumber, gTypeSVGNumber
  , SVGNumberList(SVGNumberList), unSVGNumberList, IsSVGNumberList, toSVGNumberList, castToSVGNumberList, gTypeSVGNumberList
  , SVGPaint(SVGPaint), unSVGPaint, IsSVGPaint, toSVGPaint, castToSVGPaint, gTypeSVGPaint
  , SVGPathElement(SVGPathElement), unSVGPathElement, IsSVGPathElement, toSVGPathElement, castToSVGPathElement, gTypeSVGPathElement
  , SVGPathSeg(SVGPathSeg), unSVGPathSeg, IsSVGPathSeg, toSVGPathSeg, castToSVGPathSeg, gTypeSVGPathSeg
  , SVGPathSegArcAbs(SVGPathSegArcAbs), unSVGPathSegArcAbs, IsSVGPathSegArcAbs, toSVGPathSegArcAbs, castToSVGPathSegArcAbs, gTypeSVGPathSegArcAbs
  , SVGPathSegArcRel(SVGPathSegArcRel), unSVGPathSegArcRel, IsSVGPathSegArcRel, toSVGPathSegArcRel, castToSVGPathSegArcRel, gTypeSVGPathSegArcRel
  , SVGPathSegClosePath(SVGPathSegClosePath), unSVGPathSegClosePath, IsSVGPathSegClosePath, toSVGPathSegClosePath, castToSVGPathSegClosePath, gTypeSVGPathSegClosePath
  , SVGPathSegCurvetoCubicAbs(SVGPathSegCurvetoCubicAbs), unSVGPathSegCurvetoCubicAbs, IsSVGPathSegCurvetoCubicAbs, toSVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs, gTypeSVGPathSegCurvetoCubicAbs
  , SVGPathSegCurvetoCubicRel(SVGPathSegCurvetoCubicRel), unSVGPathSegCurvetoCubicRel, IsSVGPathSegCurvetoCubicRel, toSVGPathSegCurvetoCubicRel, castToSVGPathSegCurvetoCubicRel, gTypeSVGPathSegCurvetoCubicRel
  , SVGPathSegCurvetoCubicSmoothAbs(SVGPathSegCurvetoCubicSmoothAbs), unSVGPathSegCurvetoCubicSmoothAbs, IsSVGPathSegCurvetoCubicSmoothAbs, toSVGPathSegCurvetoCubicSmoothAbs, castToSVGPathSegCurvetoCubicSmoothAbs, gTypeSVGPathSegCurvetoCubicSmoothAbs
  , SVGPathSegCurvetoCubicSmoothRel(SVGPathSegCurvetoCubicSmoothRel), unSVGPathSegCurvetoCubicSmoothRel, IsSVGPathSegCurvetoCubicSmoothRel, toSVGPathSegCurvetoCubicSmoothRel, castToSVGPathSegCurvetoCubicSmoothRel, gTypeSVGPathSegCurvetoCubicSmoothRel
  , SVGPathSegCurvetoQuadraticAbs(SVGPathSegCurvetoQuadraticAbs), unSVGPathSegCurvetoQuadraticAbs, IsSVGPathSegCurvetoQuadraticAbs, toSVGPathSegCurvetoQuadraticAbs, castToSVGPathSegCurvetoQuadraticAbs, gTypeSVGPathSegCurvetoQuadraticAbs
  , SVGPathSegCurvetoQuadraticRel(SVGPathSegCurvetoQuadraticRel), unSVGPathSegCurvetoQuadraticRel, IsSVGPathSegCurvetoQuadraticRel, toSVGPathSegCurvetoQuadraticRel, castToSVGPathSegCurvetoQuadraticRel, gTypeSVGPathSegCurvetoQuadraticRel
  , SVGPathSegCurvetoQuadraticSmoothAbs(SVGPathSegCurvetoQuadraticSmoothAbs), unSVGPathSegCurvetoQuadraticSmoothAbs, IsSVGPathSegCurvetoQuadraticSmoothAbs, toSVGPathSegCurvetoQuadraticSmoothAbs, castToSVGPathSegCurvetoQuadraticSmoothAbs, gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  , SVGPathSegCurvetoQuadraticSmoothRel(SVGPathSegCurvetoQuadraticSmoothRel), unSVGPathSegCurvetoQuadraticSmoothRel, IsSVGPathSegCurvetoQuadraticSmoothRel, toSVGPathSegCurvetoQuadraticSmoothRel, castToSVGPathSegCurvetoQuadraticSmoothRel, gTypeSVGPathSegCurvetoQuadraticSmoothRel
  , SVGPathSegLinetoAbs(SVGPathSegLinetoAbs), unSVGPathSegLinetoAbs, IsSVGPathSegLinetoAbs, toSVGPathSegLinetoAbs, castToSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs
  , SVGPathSegLinetoHorizontalAbs(SVGPathSegLinetoHorizontalAbs), unSVGPathSegLinetoHorizontalAbs, IsSVGPathSegLinetoHorizontalAbs, toSVGPathSegLinetoHorizontalAbs, castToSVGPathSegLinetoHorizontalAbs, gTypeSVGPathSegLinetoHorizontalAbs
  , SVGPathSegLinetoHorizontalRel(SVGPathSegLinetoHorizontalRel), unSVGPathSegLinetoHorizontalRel, IsSVGPathSegLinetoHorizontalRel, toSVGPathSegLinetoHorizontalRel, castToSVGPathSegLinetoHorizontalRel, gTypeSVGPathSegLinetoHorizontalRel
  , SVGPathSegLinetoRel(SVGPathSegLinetoRel), unSVGPathSegLinetoRel, IsSVGPathSegLinetoRel, toSVGPathSegLinetoRel, castToSVGPathSegLinetoRel, gTypeSVGPathSegLinetoRel
  , SVGPathSegLinetoVerticalAbs(SVGPathSegLinetoVerticalAbs), unSVGPathSegLinetoVerticalAbs, IsSVGPathSegLinetoVerticalAbs, toSVGPathSegLinetoVerticalAbs, castToSVGPathSegLinetoVerticalAbs, gTypeSVGPathSegLinetoVerticalAbs
  , SVGPathSegLinetoVerticalRel(SVGPathSegLinetoVerticalRel), unSVGPathSegLinetoVerticalRel, IsSVGPathSegLinetoVerticalRel, toSVGPathSegLinetoVerticalRel, castToSVGPathSegLinetoVerticalRel, gTypeSVGPathSegLinetoVerticalRel
  , SVGPathSegList(SVGPathSegList), unSVGPathSegList, IsSVGPathSegList, toSVGPathSegList, castToSVGPathSegList, gTypeSVGPathSegList
  , SVGPathSegMovetoAbs(SVGPathSegMovetoAbs), unSVGPathSegMovetoAbs, IsSVGPathSegMovetoAbs, toSVGPathSegMovetoAbs, castToSVGPathSegMovetoAbs, gTypeSVGPathSegMovetoAbs
  , SVGPathSegMovetoRel(SVGPathSegMovetoRel), unSVGPathSegMovetoRel, IsSVGPathSegMovetoRel, toSVGPathSegMovetoRel, castToSVGPathSegMovetoRel, gTypeSVGPathSegMovetoRel
  , SVGPatternElement(SVGPatternElement), unSVGPatternElement, IsSVGPatternElement, toSVGPatternElement, castToSVGPatternElement, gTypeSVGPatternElement
  , SVGPoint(SVGPoint), unSVGPoint, IsSVGPoint, toSVGPoint, castToSVGPoint, gTypeSVGPoint
  , SVGPointList(SVGPointList), unSVGPointList, IsSVGPointList, toSVGPointList, castToSVGPointList, gTypeSVGPointList
  , SVGPolygonElement(SVGPolygonElement), unSVGPolygonElement, IsSVGPolygonElement, toSVGPolygonElement, castToSVGPolygonElement, gTypeSVGPolygonElement
  , SVGPolylineElement(SVGPolylineElement), unSVGPolylineElement, IsSVGPolylineElement, toSVGPolylineElement, castToSVGPolylineElement, gTypeSVGPolylineElement
  , SVGPreserveAspectRatio(SVGPreserveAspectRatio), unSVGPreserveAspectRatio, IsSVGPreserveAspectRatio, toSVGPreserveAspectRatio, castToSVGPreserveAspectRatio, gTypeSVGPreserveAspectRatio
  , SVGRadialGradientElement(SVGRadialGradientElement), unSVGRadialGradientElement, IsSVGRadialGradientElement, toSVGRadialGradientElement, castToSVGRadialGradientElement, gTypeSVGRadialGradientElement
  , SVGRect(SVGRect), unSVGRect, IsSVGRect, toSVGRect, castToSVGRect, gTypeSVGRect
  , SVGRectElement(SVGRectElement), unSVGRectElement, IsSVGRectElement, toSVGRectElement, castToSVGRectElement, gTypeSVGRectElement
  , SVGRenderingIntent(SVGRenderingIntent), unSVGRenderingIntent, IsSVGRenderingIntent, toSVGRenderingIntent, castToSVGRenderingIntent, gTypeSVGRenderingIntent
  , SVGSVGElement(SVGSVGElement), unSVGSVGElement, IsSVGSVGElement, toSVGSVGElement, castToSVGSVGElement, gTypeSVGSVGElement
  , SVGScriptElement(SVGScriptElement), unSVGScriptElement, IsSVGScriptElement, toSVGScriptElement, castToSVGScriptElement, gTypeSVGScriptElement
  , SVGSetElement(SVGSetElement), unSVGSetElement, IsSVGSetElement, toSVGSetElement, castToSVGSetElement, gTypeSVGSetElement
  , SVGStopElement(SVGStopElement), unSVGStopElement, IsSVGStopElement, toSVGStopElement, castToSVGStopElement, gTypeSVGStopElement
  , SVGStringList(SVGStringList), unSVGStringList, IsSVGStringList, toSVGStringList, castToSVGStringList, gTypeSVGStringList
  , SVGStyleElement(SVGStyleElement), unSVGStyleElement, IsSVGStyleElement, toSVGStyleElement, castToSVGStyleElement, gTypeSVGStyleElement
  , SVGSwitchElement(SVGSwitchElement), unSVGSwitchElement, IsSVGSwitchElement, toSVGSwitchElement, castToSVGSwitchElement, gTypeSVGSwitchElement
  , SVGSymbolElement(SVGSymbolElement), unSVGSymbolElement, IsSVGSymbolElement, toSVGSymbolElement, castToSVGSymbolElement, gTypeSVGSymbolElement
  , SVGTRefElement(SVGTRefElement), unSVGTRefElement, IsSVGTRefElement, toSVGTRefElement, castToSVGTRefElement, gTypeSVGTRefElement
  , SVGTSpanElement(SVGTSpanElement), unSVGTSpanElement, IsSVGTSpanElement, toSVGTSpanElement, castToSVGTSpanElement, gTypeSVGTSpanElement
  , SVGTests(SVGTests), unSVGTests, IsSVGTests, toSVGTests, castToSVGTests, gTypeSVGTests
  , SVGTextContentElement(SVGTextContentElement), unSVGTextContentElement, IsSVGTextContentElement, toSVGTextContentElement, castToSVGTextContentElement, gTypeSVGTextContentElement
  , SVGTextElement(SVGTextElement), unSVGTextElement, IsSVGTextElement, toSVGTextElement, castToSVGTextElement, gTypeSVGTextElement
  , SVGTextPathElement(SVGTextPathElement), unSVGTextPathElement, IsSVGTextPathElement, toSVGTextPathElement, castToSVGTextPathElement, gTypeSVGTextPathElement
  , SVGTextPositioningElement(SVGTextPositioningElement), unSVGTextPositioningElement, IsSVGTextPositioningElement, toSVGTextPositioningElement, castToSVGTextPositioningElement, gTypeSVGTextPositioningElement
  , SVGTitleElement(SVGTitleElement), unSVGTitleElement, IsSVGTitleElement, toSVGTitleElement, castToSVGTitleElement, gTypeSVGTitleElement
  , SVGTransform(SVGTransform), unSVGTransform, IsSVGTransform, toSVGTransform, castToSVGTransform, gTypeSVGTransform
  , SVGTransformList(SVGTransformList), unSVGTransformList, IsSVGTransformList, toSVGTransformList, castToSVGTransformList, gTypeSVGTransformList
  , SVGURIReference(SVGURIReference), unSVGURIReference, IsSVGURIReference, toSVGURIReference, castToSVGURIReference, gTypeSVGURIReference
  , SVGUnitTypes(SVGUnitTypes), unSVGUnitTypes, IsSVGUnitTypes, toSVGUnitTypes, castToSVGUnitTypes, gTypeSVGUnitTypes
  , SVGUseElement(SVGUseElement), unSVGUseElement, IsSVGUseElement, toSVGUseElement, castToSVGUseElement, gTypeSVGUseElement
  , SVGVKernElement(SVGVKernElement), unSVGVKernElement, IsSVGVKernElement, toSVGVKernElement, castToSVGVKernElement, gTypeSVGVKernElement
  , SVGViewElement(SVGViewElement), unSVGViewElement, IsSVGViewElement, toSVGViewElement, castToSVGViewElement, gTypeSVGViewElement
  , SVGViewSpec(SVGViewSpec), unSVGViewSpec, IsSVGViewSpec, toSVGViewSpec, castToSVGViewSpec, gTypeSVGViewSpec
  , SVGZoomAndPan(SVGZoomAndPan), unSVGZoomAndPan, IsSVGZoomAndPan, toSVGZoomAndPan, castToSVGZoomAndPan, gTypeSVGZoomAndPan
  , SVGZoomEvent(SVGZoomEvent), unSVGZoomEvent, IsSVGZoomEvent, toSVGZoomEvent, castToSVGZoomEvent, gTypeSVGZoomEvent
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

-- Custom types
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SerializedScriptValue = SerializedScriptValue (JSRef SerializedScriptValue) deriving (Eq)

unSerializedScriptValue (SerializedScriptValue o) = o

instance ToJSRef SerializedScriptValue where
  toJSRef = return . unSerializedScriptValue
  {-# INLINE toJSRef #-}

instance FromJSRef SerializedScriptValue where
  fromJSRef = return . fmap SerializedScriptValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSerializedScriptValue o
toSerializedScriptValue :: IsSerializedScriptValue o => o -> SerializedScriptValue
toSerializedScriptValue = unsafeCastGObject . toGObject

instance IsSerializedScriptValue SerializedScriptValue
instance GObjectClass SerializedScriptValue where
  toGObject = GObject . castRef . unSerializedScriptValue
  unsafeCastGObject = SerializedScriptValue . castRef . unGObject
-- TODO add more IsSerializedScriptValue instances
#else
-- TODO work out how we can support SerializedScriptValue in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionCallback = PositionCallback (JSRef PositionCallback) deriving (Eq)

unPositionCallback (PositionCallback o) = o

instance ToJSRef PositionCallback where
  toJSRef = return . unPositionCallback
  {-# INLINE toJSRef #-}

instance FromJSRef PositionCallback where
  fromJSRef = return . fmap PositionCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionCallback o
toPositionCallback :: IsPositionCallback o => o -> PositionCallback
toPositionCallback = unsafeCastGObject . toGObject

instance IsPositionCallback PositionCallback
instance GObjectClass PositionCallback where
  toGObject = GObject . castRef . unPositionCallback
  unsafeCastGObject = PositionCallback . castRef . unGObject
-- TODO add more IsPositionCallback instances
#else
-- TODO work out how we can support PositionCallback in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionErrorCallback = PositionErrorCallback (JSRef PositionErrorCallback) deriving (Eq)

unPositionErrorCallback (PositionErrorCallback o) = o

instance ToJSRef PositionErrorCallback where
  toJSRef = return . unPositionErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef PositionErrorCallback where
  fromJSRef = return . fmap PositionErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionErrorCallback o
toPositionErrorCallback :: IsPositionErrorCallback o => o -> PositionErrorCallback
toPositionErrorCallback = unsafeCastGObject . toGObject

instance IsPositionErrorCallback PositionErrorCallback
instance GObjectClass PositionErrorCallback where
  toGObject = GObject . castRef . unPositionErrorCallback
  unsafeCastGObject = PositionErrorCallback . castRef . unGObject
-- TODO add more IsPositionErrorCallback instances
#else
-- TODO work out how we can support PositionErrorCallback in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionOptions = PositionOptions (JSRef PositionOptions) deriving (Eq)

unPositionOptions (PositionOptions o) = o

instance ToJSRef PositionOptions where
  toJSRef = return . unPositionOptions
  {-# INLINE toJSRef #-}

instance FromJSRef PositionOptions where
  fromJSRef = return . fmap PositionOptions . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionOptions o
toPositionOptions :: IsPositionOptions o => o -> PositionOptions
toPositionOptions = unsafeCastGObject . toGObject

instance IsPositionOptions PositionOptions
instance GObjectClass PositionOptions where
  toGObject = GObject . castRef . unPositionOptions
  unsafeCastGObject = PositionOptions . castRef . unGObject
-- TODO add more IsPositionOptions instances
#else
-- TODO work out how we can support PositionOptions in native code
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
newtype CSSPrimitiveValue = CSSPrimitiveValue (JSRef CSSPrimitiveValue) deriving (Eq)

unCSSPrimitiveValue (CSSPrimitiveValue o) = o

instance ToJSRef CSSPrimitiveValue where
  toJSRef = return . unCSSPrimitiveValue
  {-# INLINE toJSRef #-}

instance FromJSRef CSSPrimitiveValue where
  fromJSRef = return . fmap CSSPrimitiveValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSValue o => IsCSSPrimitiveValue o
toCSSPrimitiveValue :: IsCSSPrimitiveValue o => o -> CSSPrimitiveValue
toCSSPrimitiveValue = unsafeCastGObject . toGObject

instance IsCSSPrimitiveValue CSSPrimitiveValue
instance IsCSSValue CSSPrimitiveValue
instance GObjectClass CSSPrimitiveValue where
  toGObject = GObject . castRef . unCSSPrimitiveValue
  unsafeCastGObject = CSSPrimitiveValue . castRef . unGObject

castToCSSPrimitiveValue :: GObjectClass obj => obj -> CSSPrimitiveValue
castToCSSPrimitiveValue = castTo gTypeCSSPrimitiveValue "CSSPrimitiveValue"

foreign import javascript unsafe "window[\"CSSPrimitiveValue\"]" gTypeCSSPrimitiveValue' :: JSRef GType
gTypeCSSPrimitiveValue = GType gTypeCSSPrimitiveValue'
#else
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
newtype Counter = Counter (JSRef Counter) deriving (Eq)

unCounter (Counter o) = o

instance ToJSRef Counter where
  toJSRef = return . unCounter
  {-# INLINE toJSRef #-}

instance FromJSRef Counter where
  fromJSRef = return . fmap Counter . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCounter o
toCounter :: IsCounter o => o -> Counter
toCounter = unsafeCastGObject . toGObject

instance IsCounter Counter
instance GObjectClass Counter where
  toGObject = GObject . castRef . unCounter
  unsafeCastGObject = Counter . castRef . unGObject

castToCounter :: GObjectClass obj => obj -> Counter
castToCounter = castTo gTypeCounter "Counter"

foreign import javascript unsafe "window[\"Counter\"]" gTypeCounter' :: JSRef GType
gTypeCounter = GType gTypeCounter'
#else
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
newtype MediaController = MediaController (JSRef MediaController) deriving (Eq)

unMediaController (MediaController o) = o

instance ToJSRef MediaController where
  toJSRef = return . unMediaController
  {-# INLINE toJSRef #-}

instance FromJSRef MediaController where
  fromJSRef = return . fmap MediaController . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaController o
toMediaController :: IsMediaController o => o -> MediaController
toMediaController = unsafeCastGObject . toGObject

instance IsMediaController MediaController
instance GObjectClass MediaController where
  toGObject = GObject . castRef . unMediaController
  unsafeCastGObject = MediaController . castRef . unGObject

castToMediaController :: GObjectClass obj => obj -> MediaController
castToMediaController = castTo gTypeMediaController "MediaController"

foreign import javascript unsafe "window[\"MediaController\"]" gTypeMediaController' :: JSRef GType
gTypeMediaController = GType gTypeMediaController'
#else
type IsMediaController o = MediaControllerClass o
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
newtype PositionError = PositionError (JSRef PositionError) deriving (Eq)

unPositionError (PositionError o) = o

instance ToJSRef PositionError where
  toJSRef = return . unPositionError
  {-# INLINE toJSRef #-}

instance FromJSRef PositionError where
  fromJSRef = return . fmap PositionError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionError o
toPositionError :: IsPositionError o => o -> PositionError
toPositionError = unsafeCastGObject . toGObject

instance IsPositionError PositionError
instance GObjectClass PositionError where
  toGObject = GObject . castRef . unPositionError
  unsafeCastGObject = PositionError . castRef . unGObject

castToPositionError :: GObjectClass obj => obj -> PositionError
castToPositionError = castTo gTypePositionError "PositionError"

foreign import javascript unsafe "window[\"PositionError\"]" gTypePositionError' :: JSRef GType
gTypePositionError = GType gTypePositionError'
#else
type IsPositionError o = PositionErrorClass o
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
newtype RGBColor = RGBColor (JSRef RGBColor) deriving (Eq)

unRGBColor (RGBColor o) = o

instance ToJSRef RGBColor where
  toJSRef = return . unRGBColor
  {-# INLINE toJSRef #-}

instance FromJSRef RGBColor where
  fromJSRef = return . fmap RGBColor . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRGBColor o
toRGBColor :: IsRGBColor o => o -> RGBColor
toRGBColor = unsafeCastGObject . toGObject

instance IsRGBColor RGBColor
instance GObjectClass RGBColor where
  toGObject = GObject . castRef . unRGBColor
  unsafeCastGObject = RGBColor . castRef . unGObject

castToRGBColor :: GObjectClass obj => obj -> RGBColor
castToRGBColor = castTo gTypeRGBColor "RGBColor"

foreign import javascript unsafe "window[\"RGBColor\"]" gTypeRGBColor' :: JSRef GType
gTypeRGBColor = GType gTypeRGBColor'
#else
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
newtype Rect = Rect (JSRef Rect) deriving (Eq)

unRect (Rect o) = o

instance ToJSRef Rect where
  toJSRef = return . unRect
  {-# INLINE toJSRef #-}

instance FromJSRef Rect where
  fromJSRef = return . fmap Rect . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRect o
toRect :: IsRect o => o -> Rect
toRect = unsafeCastGObject . toGObject

instance IsRect Rect
instance GObjectClass Rect where
  toGObject = GObject . castRef . unRect
  unsafeCastGObject = Rect . castRef . unGObject

castToRect :: GObjectClass obj => obj -> Rect
castToRect = castTo gTypeRect "Rect"

foreign import javascript unsafe "window[\"Rect\"]" gTypeRect' :: JSRef GType
gTypeRect = GType gTypeRect'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAElement = SVGAElement (JSRef SVGAElement) deriving (Eq)

unSVGAElement (SVGAElement o) = o

instance ToJSRef SVGAElement where
  toJSRef = return . unSVGAElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAElement where
  fromJSRef = return . fmap SVGAElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGAElement o
toSVGAElement :: IsSVGAElement o => o -> SVGAElement
toSVGAElement = unsafeCastGObject . toGObject

instance IsSVGAElement SVGAElement
instance IsSVGGraphicsElement SVGAElement
instance IsSVGElement SVGAElement
instance IsElement SVGAElement
instance IsNode SVGAElement
instance GObjectClass SVGAElement where
  toGObject = GObject . castRef . unSVGAElement
  unsafeCastGObject = SVGAElement . castRef . unGObject

castToSVGAElement :: GObjectClass obj => obj -> SVGAElement
castToSVGAElement = castTo gTypeSVGAElement "SVGAElement"

foreign import javascript unsafe "window[\"SVGAElement\"]" gTypeSVGAElement' :: JSRef GType
gTypeSVGAElement = GType gTypeSVGAElement'
#else
type IsSVGAElement o = SVGAElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAltGlyphDefElement = SVGAltGlyphDefElement (JSRef SVGAltGlyphDefElement) deriving (Eq)

unSVGAltGlyphDefElement (SVGAltGlyphDefElement o) = o

instance ToJSRef SVGAltGlyphDefElement where
  toJSRef = return . unSVGAltGlyphDefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphDefElement where
  fromJSRef = return . fmap SVGAltGlyphDefElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGAltGlyphDefElement o
toSVGAltGlyphDefElement :: IsSVGAltGlyphDefElement o => o -> SVGAltGlyphDefElement
toSVGAltGlyphDefElement = unsafeCastGObject . toGObject

instance IsSVGAltGlyphDefElement SVGAltGlyphDefElement
instance IsSVGElement SVGAltGlyphDefElement
instance IsElement SVGAltGlyphDefElement
instance IsNode SVGAltGlyphDefElement
instance GObjectClass SVGAltGlyphDefElement where
  toGObject = GObject . castRef . unSVGAltGlyphDefElement
  unsafeCastGObject = SVGAltGlyphDefElement . castRef . unGObject

castToSVGAltGlyphDefElement :: GObjectClass obj => obj -> SVGAltGlyphDefElement
castToSVGAltGlyphDefElement = castTo gTypeSVGAltGlyphDefElement "SVGAltGlyphDefElement"

foreign import javascript unsafe "window[\"SVGAltGlyphDefElement\"]" gTypeSVGAltGlyphDefElement' :: JSRef GType
gTypeSVGAltGlyphDefElement = GType gTypeSVGAltGlyphDefElement'
#else
type IsSVGAltGlyphDefElement o = SVGAltGlyphDefElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAltGlyphElement = SVGAltGlyphElement (JSRef SVGAltGlyphElement) deriving (Eq)

unSVGAltGlyphElement (SVGAltGlyphElement o) = o

instance ToJSRef SVGAltGlyphElement where
  toJSRef = return . unSVGAltGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphElement where
  fromJSRef = return . fmap SVGAltGlyphElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextPositioningElement o => IsSVGAltGlyphElement o
toSVGAltGlyphElement :: IsSVGAltGlyphElement o => o -> SVGAltGlyphElement
toSVGAltGlyphElement = unsafeCastGObject . toGObject

instance IsSVGAltGlyphElement SVGAltGlyphElement
instance IsSVGTextPositioningElement SVGAltGlyphElement
instance IsSVGTextContentElement SVGAltGlyphElement
instance IsSVGGraphicsElement SVGAltGlyphElement
instance IsSVGElement SVGAltGlyphElement
instance IsElement SVGAltGlyphElement
instance IsNode SVGAltGlyphElement
instance GObjectClass SVGAltGlyphElement where
  toGObject = GObject . castRef . unSVGAltGlyphElement
  unsafeCastGObject = SVGAltGlyphElement . castRef . unGObject

castToSVGAltGlyphElement :: GObjectClass obj => obj -> SVGAltGlyphElement
castToSVGAltGlyphElement = castTo gTypeSVGAltGlyphElement "SVGAltGlyphElement"

foreign import javascript unsafe "window[\"SVGAltGlyphElement\"]" gTypeSVGAltGlyphElement' :: JSRef GType
gTypeSVGAltGlyphElement = GType gTypeSVGAltGlyphElement'
#else
type IsSVGAltGlyphElement o = SVGAltGlyphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAltGlyphItemElement = SVGAltGlyphItemElement (JSRef SVGAltGlyphItemElement) deriving (Eq)

unSVGAltGlyphItemElement (SVGAltGlyphItemElement o) = o

instance ToJSRef SVGAltGlyphItemElement where
  toJSRef = return . unSVGAltGlyphItemElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphItemElement where
  fromJSRef = return . fmap SVGAltGlyphItemElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGAltGlyphItemElement o
toSVGAltGlyphItemElement :: IsSVGAltGlyphItemElement o => o -> SVGAltGlyphItemElement
toSVGAltGlyphItemElement = unsafeCastGObject . toGObject

instance IsSVGAltGlyphItemElement SVGAltGlyphItemElement
instance IsSVGElement SVGAltGlyphItemElement
instance IsElement SVGAltGlyphItemElement
instance IsNode SVGAltGlyphItemElement
instance GObjectClass SVGAltGlyphItemElement where
  toGObject = GObject . castRef . unSVGAltGlyphItemElement
  unsafeCastGObject = SVGAltGlyphItemElement . castRef . unGObject

castToSVGAltGlyphItemElement :: GObjectClass obj => obj -> SVGAltGlyphItemElement
castToSVGAltGlyphItemElement = castTo gTypeSVGAltGlyphItemElement "SVGAltGlyphItemElement"

foreign import javascript unsafe "window[\"SVGAltGlyphItemElement\"]" gTypeSVGAltGlyphItemElement' :: JSRef GType
gTypeSVGAltGlyphItemElement = GType gTypeSVGAltGlyphItemElement'
#else
type IsSVGAltGlyphItemElement o = SVGAltGlyphItemElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAngle = SVGAngle (JSRef SVGAngle) deriving (Eq)

unSVGAngle (SVGAngle o) = o

instance ToJSRef SVGAngle where
  toJSRef = return . unSVGAngle
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAngle where
  fromJSRef = return . fmap SVGAngle . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAngle o
toSVGAngle :: IsSVGAngle o => o -> SVGAngle
toSVGAngle = unsafeCastGObject . toGObject

instance IsSVGAngle SVGAngle
instance GObjectClass SVGAngle where
  toGObject = GObject . castRef . unSVGAngle
  unsafeCastGObject = SVGAngle . castRef . unGObject

castToSVGAngle :: GObjectClass obj => obj -> SVGAngle
castToSVGAngle = castTo gTypeSVGAngle "SVGAngle"

foreign import javascript unsafe "window[\"SVGAngle\"]" gTypeSVGAngle' :: JSRef GType
gTypeSVGAngle = GType gTypeSVGAngle'
#else
type IsSVGAngle o = SVGAngleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimateColorElement = SVGAnimateColorElement (JSRef SVGAnimateColorElement) deriving (Eq)

unSVGAnimateColorElement (SVGAnimateColorElement o) = o

instance ToJSRef SVGAnimateColorElement where
  toJSRef = return . unSVGAnimateColorElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateColorElement where
  fromJSRef = return . fmap SVGAnimateColorElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGAnimationElement o => IsSVGAnimateColorElement o
toSVGAnimateColorElement :: IsSVGAnimateColorElement o => o -> SVGAnimateColorElement
toSVGAnimateColorElement = unsafeCastGObject . toGObject

instance IsSVGAnimateColorElement SVGAnimateColorElement
instance IsSVGAnimationElement SVGAnimateColorElement
instance IsSVGElement SVGAnimateColorElement
instance IsElement SVGAnimateColorElement
instance IsNode SVGAnimateColorElement
instance GObjectClass SVGAnimateColorElement where
  toGObject = GObject . castRef . unSVGAnimateColorElement
  unsafeCastGObject = SVGAnimateColorElement . castRef . unGObject

castToSVGAnimateColorElement :: GObjectClass obj => obj -> SVGAnimateColorElement
castToSVGAnimateColorElement = castTo gTypeSVGAnimateColorElement "SVGAnimateColorElement"

foreign import javascript unsafe "window[\"SVGAnimateColorElement\"]" gTypeSVGAnimateColorElement' :: JSRef GType
gTypeSVGAnimateColorElement = GType gTypeSVGAnimateColorElement'
#else
type IsSVGAnimateColorElement o = SVGAnimateColorElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimateElement = SVGAnimateElement (JSRef SVGAnimateElement) deriving (Eq)

unSVGAnimateElement (SVGAnimateElement o) = o

instance ToJSRef SVGAnimateElement where
  toJSRef = return . unSVGAnimateElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateElement where
  fromJSRef = return . fmap SVGAnimateElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGAnimationElement o => IsSVGAnimateElement o
toSVGAnimateElement :: IsSVGAnimateElement o => o -> SVGAnimateElement
toSVGAnimateElement = unsafeCastGObject . toGObject

instance IsSVGAnimateElement SVGAnimateElement
instance IsSVGAnimationElement SVGAnimateElement
instance IsSVGElement SVGAnimateElement
instance IsElement SVGAnimateElement
instance IsNode SVGAnimateElement
instance GObjectClass SVGAnimateElement where
  toGObject = GObject . castRef . unSVGAnimateElement
  unsafeCastGObject = SVGAnimateElement . castRef . unGObject

castToSVGAnimateElement :: GObjectClass obj => obj -> SVGAnimateElement
castToSVGAnimateElement = castTo gTypeSVGAnimateElement "SVGAnimateElement"

foreign import javascript unsafe "window[\"SVGAnimateElement\"]" gTypeSVGAnimateElement' :: JSRef GType
gTypeSVGAnimateElement = GType gTypeSVGAnimateElement'
#else
type IsSVGAnimateElement o = SVGAnimateElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimateMotionElement = SVGAnimateMotionElement (JSRef SVGAnimateMotionElement) deriving (Eq)

unSVGAnimateMotionElement (SVGAnimateMotionElement o) = o

instance ToJSRef SVGAnimateMotionElement where
  toJSRef = return . unSVGAnimateMotionElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateMotionElement where
  fromJSRef = return . fmap SVGAnimateMotionElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGAnimationElement o => IsSVGAnimateMotionElement o
toSVGAnimateMotionElement :: IsSVGAnimateMotionElement o => o -> SVGAnimateMotionElement
toSVGAnimateMotionElement = unsafeCastGObject . toGObject

instance IsSVGAnimateMotionElement SVGAnimateMotionElement
instance IsSVGAnimationElement SVGAnimateMotionElement
instance IsSVGElement SVGAnimateMotionElement
instance IsElement SVGAnimateMotionElement
instance IsNode SVGAnimateMotionElement
instance GObjectClass SVGAnimateMotionElement where
  toGObject = GObject . castRef . unSVGAnimateMotionElement
  unsafeCastGObject = SVGAnimateMotionElement . castRef . unGObject

castToSVGAnimateMotionElement :: GObjectClass obj => obj -> SVGAnimateMotionElement
castToSVGAnimateMotionElement = castTo gTypeSVGAnimateMotionElement "SVGAnimateMotionElement"

foreign import javascript unsafe "window[\"SVGAnimateMotionElement\"]" gTypeSVGAnimateMotionElement' :: JSRef GType
gTypeSVGAnimateMotionElement = GType gTypeSVGAnimateMotionElement'
#else
type IsSVGAnimateMotionElement o = SVGAnimateMotionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimateTransformElement = SVGAnimateTransformElement (JSRef SVGAnimateTransformElement) deriving (Eq)

unSVGAnimateTransformElement (SVGAnimateTransformElement o) = o

instance ToJSRef SVGAnimateTransformElement where
  toJSRef = return . unSVGAnimateTransformElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateTransformElement where
  fromJSRef = return . fmap SVGAnimateTransformElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGAnimationElement o => IsSVGAnimateTransformElement o
toSVGAnimateTransformElement :: IsSVGAnimateTransformElement o => o -> SVGAnimateTransformElement
toSVGAnimateTransformElement = unsafeCastGObject . toGObject

instance IsSVGAnimateTransformElement SVGAnimateTransformElement
instance IsSVGAnimationElement SVGAnimateTransformElement
instance IsSVGElement SVGAnimateTransformElement
instance IsElement SVGAnimateTransformElement
instance IsNode SVGAnimateTransformElement
instance GObjectClass SVGAnimateTransformElement where
  toGObject = GObject . castRef . unSVGAnimateTransformElement
  unsafeCastGObject = SVGAnimateTransformElement . castRef . unGObject

castToSVGAnimateTransformElement :: GObjectClass obj => obj -> SVGAnimateTransformElement
castToSVGAnimateTransformElement = castTo gTypeSVGAnimateTransformElement "SVGAnimateTransformElement"

foreign import javascript unsafe "window[\"SVGAnimateTransformElement\"]" gTypeSVGAnimateTransformElement' :: JSRef GType
gTypeSVGAnimateTransformElement = GType gTypeSVGAnimateTransformElement'
#else
type IsSVGAnimateTransformElement o = SVGAnimateTransformElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedAngle = SVGAnimatedAngle (JSRef SVGAnimatedAngle) deriving (Eq)

unSVGAnimatedAngle (SVGAnimatedAngle o) = o

instance ToJSRef SVGAnimatedAngle where
  toJSRef = return . unSVGAnimatedAngle
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedAngle where
  fromJSRef = return . fmap SVGAnimatedAngle . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedAngle o
toSVGAnimatedAngle :: IsSVGAnimatedAngle o => o -> SVGAnimatedAngle
toSVGAnimatedAngle = unsafeCastGObject . toGObject

instance IsSVGAnimatedAngle SVGAnimatedAngle
instance GObjectClass SVGAnimatedAngle where
  toGObject = GObject . castRef . unSVGAnimatedAngle
  unsafeCastGObject = SVGAnimatedAngle . castRef . unGObject

castToSVGAnimatedAngle :: GObjectClass obj => obj -> SVGAnimatedAngle
castToSVGAnimatedAngle = castTo gTypeSVGAnimatedAngle "SVGAnimatedAngle"

foreign import javascript unsafe "window[\"SVGAnimatedAngle\"]" gTypeSVGAnimatedAngle' :: JSRef GType
gTypeSVGAnimatedAngle = GType gTypeSVGAnimatedAngle'
#else
type IsSVGAnimatedAngle o = SVGAnimatedAngleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedBoolean = SVGAnimatedBoolean (JSRef SVGAnimatedBoolean) deriving (Eq)

unSVGAnimatedBoolean (SVGAnimatedBoolean o) = o

instance ToJSRef SVGAnimatedBoolean where
  toJSRef = return . unSVGAnimatedBoolean
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedBoolean where
  fromJSRef = return . fmap SVGAnimatedBoolean . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedBoolean o
toSVGAnimatedBoolean :: IsSVGAnimatedBoolean o => o -> SVGAnimatedBoolean
toSVGAnimatedBoolean = unsafeCastGObject . toGObject

instance IsSVGAnimatedBoolean SVGAnimatedBoolean
instance GObjectClass SVGAnimatedBoolean where
  toGObject = GObject . castRef . unSVGAnimatedBoolean
  unsafeCastGObject = SVGAnimatedBoolean . castRef . unGObject

castToSVGAnimatedBoolean :: GObjectClass obj => obj -> SVGAnimatedBoolean
castToSVGAnimatedBoolean = castTo gTypeSVGAnimatedBoolean "SVGAnimatedBoolean"

foreign import javascript unsafe "window[\"SVGAnimatedBoolean\"]" gTypeSVGAnimatedBoolean' :: JSRef GType
gTypeSVGAnimatedBoolean = GType gTypeSVGAnimatedBoolean'
#else
type IsSVGAnimatedBoolean o = SVGAnimatedBooleanClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedEnumeration = SVGAnimatedEnumeration (JSRef SVGAnimatedEnumeration) deriving (Eq)

unSVGAnimatedEnumeration (SVGAnimatedEnumeration o) = o

instance ToJSRef SVGAnimatedEnumeration where
  toJSRef = return . unSVGAnimatedEnumeration
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedEnumeration where
  fromJSRef = return . fmap SVGAnimatedEnumeration . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedEnumeration o
toSVGAnimatedEnumeration :: IsSVGAnimatedEnumeration o => o -> SVGAnimatedEnumeration
toSVGAnimatedEnumeration = unsafeCastGObject . toGObject

instance IsSVGAnimatedEnumeration SVGAnimatedEnumeration
instance GObjectClass SVGAnimatedEnumeration where
  toGObject = GObject . castRef . unSVGAnimatedEnumeration
  unsafeCastGObject = SVGAnimatedEnumeration . castRef . unGObject

castToSVGAnimatedEnumeration :: GObjectClass obj => obj -> SVGAnimatedEnumeration
castToSVGAnimatedEnumeration = castTo gTypeSVGAnimatedEnumeration "SVGAnimatedEnumeration"

foreign import javascript unsafe "window[\"SVGAnimatedEnumeration\"]" gTypeSVGAnimatedEnumeration' :: JSRef GType
gTypeSVGAnimatedEnumeration = GType gTypeSVGAnimatedEnumeration'
#else
type IsSVGAnimatedEnumeration o = SVGAnimatedEnumerationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedInteger = SVGAnimatedInteger (JSRef SVGAnimatedInteger) deriving (Eq)

unSVGAnimatedInteger (SVGAnimatedInteger o) = o

instance ToJSRef SVGAnimatedInteger where
  toJSRef = return . unSVGAnimatedInteger
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedInteger where
  fromJSRef = return . fmap SVGAnimatedInteger . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedInteger o
toSVGAnimatedInteger :: IsSVGAnimatedInteger o => o -> SVGAnimatedInteger
toSVGAnimatedInteger = unsafeCastGObject . toGObject

instance IsSVGAnimatedInteger SVGAnimatedInteger
instance GObjectClass SVGAnimatedInteger where
  toGObject = GObject . castRef . unSVGAnimatedInteger
  unsafeCastGObject = SVGAnimatedInteger . castRef . unGObject

castToSVGAnimatedInteger :: GObjectClass obj => obj -> SVGAnimatedInteger
castToSVGAnimatedInteger = castTo gTypeSVGAnimatedInteger "SVGAnimatedInteger"

foreign import javascript unsafe "window[\"SVGAnimatedInteger\"]" gTypeSVGAnimatedInteger' :: JSRef GType
gTypeSVGAnimatedInteger = GType gTypeSVGAnimatedInteger'
#else
type IsSVGAnimatedInteger o = SVGAnimatedIntegerClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedLength = SVGAnimatedLength (JSRef SVGAnimatedLength) deriving (Eq)

unSVGAnimatedLength (SVGAnimatedLength o) = o

instance ToJSRef SVGAnimatedLength where
  toJSRef = return . unSVGAnimatedLength
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedLength where
  fromJSRef = return . fmap SVGAnimatedLength . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedLength o
toSVGAnimatedLength :: IsSVGAnimatedLength o => o -> SVGAnimatedLength
toSVGAnimatedLength = unsafeCastGObject . toGObject

instance IsSVGAnimatedLength SVGAnimatedLength
instance GObjectClass SVGAnimatedLength where
  toGObject = GObject . castRef . unSVGAnimatedLength
  unsafeCastGObject = SVGAnimatedLength . castRef . unGObject

castToSVGAnimatedLength :: GObjectClass obj => obj -> SVGAnimatedLength
castToSVGAnimatedLength = castTo gTypeSVGAnimatedLength "SVGAnimatedLength"

foreign import javascript unsafe "window[\"SVGAnimatedLength\"]" gTypeSVGAnimatedLength' :: JSRef GType
gTypeSVGAnimatedLength = GType gTypeSVGAnimatedLength'
#else
type IsSVGAnimatedLength o = SVGAnimatedLengthClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedLengthList = SVGAnimatedLengthList (JSRef SVGAnimatedLengthList) deriving (Eq)

unSVGAnimatedLengthList (SVGAnimatedLengthList o) = o

instance ToJSRef SVGAnimatedLengthList where
  toJSRef = return . unSVGAnimatedLengthList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedLengthList where
  fromJSRef = return . fmap SVGAnimatedLengthList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedLengthList o
toSVGAnimatedLengthList :: IsSVGAnimatedLengthList o => o -> SVGAnimatedLengthList
toSVGAnimatedLengthList = unsafeCastGObject . toGObject

instance IsSVGAnimatedLengthList SVGAnimatedLengthList
instance GObjectClass SVGAnimatedLengthList where
  toGObject = GObject . castRef . unSVGAnimatedLengthList
  unsafeCastGObject = SVGAnimatedLengthList . castRef . unGObject

castToSVGAnimatedLengthList :: GObjectClass obj => obj -> SVGAnimatedLengthList
castToSVGAnimatedLengthList = castTo gTypeSVGAnimatedLengthList "SVGAnimatedLengthList"

foreign import javascript unsafe "window[\"SVGAnimatedLengthList\"]" gTypeSVGAnimatedLengthList' :: JSRef GType
gTypeSVGAnimatedLengthList = GType gTypeSVGAnimatedLengthList'
#else
type IsSVGAnimatedLengthList o = SVGAnimatedLengthListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedNumber = SVGAnimatedNumber (JSRef SVGAnimatedNumber) deriving (Eq)

unSVGAnimatedNumber (SVGAnimatedNumber o) = o

instance ToJSRef SVGAnimatedNumber where
  toJSRef = return . unSVGAnimatedNumber
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedNumber where
  fromJSRef = return . fmap SVGAnimatedNumber . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedNumber o
toSVGAnimatedNumber :: IsSVGAnimatedNumber o => o -> SVGAnimatedNumber
toSVGAnimatedNumber = unsafeCastGObject . toGObject

instance IsSVGAnimatedNumber SVGAnimatedNumber
instance GObjectClass SVGAnimatedNumber where
  toGObject = GObject . castRef . unSVGAnimatedNumber
  unsafeCastGObject = SVGAnimatedNumber . castRef . unGObject

castToSVGAnimatedNumber :: GObjectClass obj => obj -> SVGAnimatedNumber
castToSVGAnimatedNumber = castTo gTypeSVGAnimatedNumber "SVGAnimatedNumber"

foreign import javascript unsafe "window[\"SVGAnimatedNumber\"]" gTypeSVGAnimatedNumber' :: JSRef GType
gTypeSVGAnimatedNumber = GType gTypeSVGAnimatedNumber'
#else
type IsSVGAnimatedNumber o = SVGAnimatedNumberClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedNumberList = SVGAnimatedNumberList (JSRef SVGAnimatedNumberList) deriving (Eq)

unSVGAnimatedNumberList (SVGAnimatedNumberList o) = o

instance ToJSRef SVGAnimatedNumberList where
  toJSRef = return . unSVGAnimatedNumberList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedNumberList where
  fromJSRef = return . fmap SVGAnimatedNumberList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedNumberList o
toSVGAnimatedNumberList :: IsSVGAnimatedNumberList o => o -> SVGAnimatedNumberList
toSVGAnimatedNumberList = unsafeCastGObject . toGObject

instance IsSVGAnimatedNumberList SVGAnimatedNumberList
instance GObjectClass SVGAnimatedNumberList where
  toGObject = GObject . castRef . unSVGAnimatedNumberList
  unsafeCastGObject = SVGAnimatedNumberList . castRef . unGObject

castToSVGAnimatedNumberList :: GObjectClass obj => obj -> SVGAnimatedNumberList
castToSVGAnimatedNumberList = castTo gTypeSVGAnimatedNumberList "SVGAnimatedNumberList"

foreign import javascript unsafe "window[\"SVGAnimatedNumberList\"]" gTypeSVGAnimatedNumberList' :: JSRef GType
gTypeSVGAnimatedNumberList = GType gTypeSVGAnimatedNumberList'
#else
type IsSVGAnimatedNumberList o = SVGAnimatedNumberListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedPreserveAspectRatio = SVGAnimatedPreserveAspectRatio (JSRef SVGAnimatedPreserveAspectRatio) deriving (Eq)

unSVGAnimatedPreserveAspectRatio (SVGAnimatedPreserveAspectRatio o) = o

instance ToJSRef SVGAnimatedPreserveAspectRatio where
  toJSRef = return . unSVGAnimatedPreserveAspectRatio
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedPreserveAspectRatio where
  fromJSRef = return . fmap SVGAnimatedPreserveAspectRatio . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedPreserveAspectRatio o
toSVGAnimatedPreserveAspectRatio :: IsSVGAnimatedPreserveAspectRatio o => o -> SVGAnimatedPreserveAspectRatio
toSVGAnimatedPreserveAspectRatio = unsafeCastGObject . toGObject

instance IsSVGAnimatedPreserveAspectRatio SVGAnimatedPreserveAspectRatio
instance GObjectClass SVGAnimatedPreserveAspectRatio where
  toGObject = GObject . castRef . unSVGAnimatedPreserveAspectRatio
  unsafeCastGObject = SVGAnimatedPreserveAspectRatio . castRef . unGObject

castToSVGAnimatedPreserveAspectRatio :: GObjectClass obj => obj -> SVGAnimatedPreserveAspectRatio
castToSVGAnimatedPreserveAspectRatio = castTo gTypeSVGAnimatedPreserveAspectRatio "SVGAnimatedPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGAnimatedPreserveAspectRatio\"]" gTypeSVGAnimatedPreserveAspectRatio' :: JSRef GType
gTypeSVGAnimatedPreserveAspectRatio = GType gTypeSVGAnimatedPreserveAspectRatio'
#else
type IsSVGAnimatedPreserveAspectRatio o = SVGAnimatedPreserveAspectRatioClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedRect = SVGAnimatedRect (JSRef SVGAnimatedRect) deriving (Eq)

unSVGAnimatedRect (SVGAnimatedRect o) = o

instance ToJSRef SVGAnimatedRect where
  toJSRef = return . unSVGAnimatedRect
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedRect where
  fromJSRef = return . fmap SVGAnimatedRect . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedRect o
toSVGAnimatedRect :: IsSVGAnimatedRect o => o -> SVGAnimatedRect
toSVGAnimatedRect = unsafeCastGObject . toGObject

instance IsSVGAnimatedRect SVGAnimatedRect
instance GObjectClass SVGAnimatedRect where
  toGObject = GObject . castRef . unSVGAnimatedRect
  unsafeCastGObject = SVGAnimatedRect . castRef . unGObject

castToSVGAnimatedRect :: GObjectClass obj => obj -> SVGAnimatedRect
castToSVGAnimatedRect = castTo gTypeSVGAnimatedRect "SVGAnimatedRect"

foreign import javascript unsafe "window[\"SVGAnimatedRect\"]" gTypeSVGAnimatedRect' :: JSRef GType
gTypeSVGAnimatedRect = GType gTypeSVGAnimatedRect'
#else
type IsSVGAnimatedRect o = SVGAnimatedRectClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedString = SVGAnimatedString (JSRef SVGAnimatedString) deriving (Eq)

unSVGAnimatedString (SVGAnimatedString o) = o

instance ToJSRef SVGAnimatedString where
  toJSRef = return . unSVGAnimatedString
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedString where
  fromJSRef = return . fmap SVGAnimatedString . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedString o
toSVGAnimatedString :: IsSVGAnimatedString o => o -> SVGAnimatedString
toSVGAnimatedString = unsafeCastGObject . toGObject

instance IsSVGAnimatedString SVGAnimatedString
instance GObjectClass SVGAnimatedString where
  toGObject = GObject . castRef . unSVGAnimatedString
  unsafeCastGObject = SVGAnimatedString . castRef . unGObject

castToSVGAnimatedString :: GObjectClass obj => obj -> SVGAnimatedString
castToSVGAnimatedString = castTo gTypeSVGAnimatedString "SVGAnimatedString"

foreign import javascript unsafe "window[\"SVGAnimatedString\"]" gTypeSVGAnimatedString' :: JSRef GType
gTypeSVGAnimatedString = GType gTypeSVGAnimatedString'
#else
type IsSVGAnimatedString o = SVGAnimatedStringClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimatedTransformList = SVGAnimatedTransformList (JSRef SVGAnimatedTransformList) deriving (Eq)

unSVGAnimatedTransformList (SVGAnimatedTransformList o) = o

instance ToJSRef SVGAnimatedTransformList where
  toJSRef = return . unSVGAnimatedTransformList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedTransformList where
  fromJSRef = return . fmap SVGAnimatedTransformList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGAnimatedTransformList o
toSVGAnimatedTransformList :: IsSVGAnimatedTransformList o => o -> SVGAnimatedTransformList
toSVGAnimatedTransformList = unsafeCastGObject . toGObject

instance IsSVGAnimatedTransformList SVGAnimatedTransformList
instance GObjectClass SVGAnimatedTransformList where
  toGObject = GObject . castRef . unSVGAnimatedTransformList
  unsafeCastGObject = SVGAnimatedTransformList . castRef . unGObject

castToSVGAnimatedTransformList :: GObjectClass obj => obj -> SVGAnimatedTransformList
castToSVGAnimatedTransformList = castTo gTypeSVGAnimatedTransformList "SVGAnimatedTransformList"

foreign import javascript unsafe "window[\"SVGAnimatedTransformList\"]" gTypeSVGAnimatedTransformList' :: JSRef GType
gTypeSVGAnimatedTransformList = GType gTypeSVGAnimatedTransformList'
#else
type IsSVGAnimatedTransformList o = SVGAnimatedTransformListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGAnimationElement = SVGAnimationElement (JSRef SVGAnimationElement) deriving (Eq)

unSVGAnimationElement (SVGAnimationElement o) = o

instance ToJSRef SVGAnimationElement where
  toJSRef = return . unSVGAnimationElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimationElement where
  fromJSRef = return . fmap SVGAnimationElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGAnimationElement o
toSVGAnimationElement :: IsSVGAnimationElement o => o -> SVGAnimationElement
toSVGAnimationElement = unsafeCastGObject . toGObject

instance IsSVGAnimationElement SVGAnimationElement
instance IsSVGElement SVGAnimationElement
instance IsElement SVGAnimationElement
instance IsNode SVGAnimationElement
instance GObjectClass SVGAnimationElement where
  toGObject = GObject . castRef . unSVGAnimationElement
  unsafeCastGObject = SVGAnimationElement . castRef . unGObject

castToSVGAnimationElement :: GObjectClass obj => obj -> SVGAnimationElement
castToSVGAnimationElement = castTo gTypeSVGAnimationElement "SVGAnimationElement"

foreign import javascript unsafe "window[\"SVGAnimationElement\"]" gTypeSVGAnimationElement' :: JSRef GType
gTypeSVGAnimationElement = GType gTypeSVGAnimationElement'
#else
type IsSVGAnimationElement o = SVGAnimationElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGCircleElement = SVGCircleElement (JSRef SVGCircleElement) deriving (Eq)

unSVGCircleElement (SVGCircleElement o) = o

instance ToJSRef SVGCircleElement where
  toJSRef = return . unSVGCircleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGCircleElement where
  fromJSRef = return . fmap SVGCircleElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGCircleElement o
toSVGCircleElement :: IsSVGCircleElement o => o -> SVGCircleElement
toSVGCircleElement = unsafeCastGObject . toGObject

instance IsSVGCircleElement SVGCircleElement
instance IsSVGGraphicsElement SVGCircleElement
instance IsSVGElement SVGCircleElement
instance IsElement SVGCircleElement
instance IsNode SVGCircleElement
instance GObjectClass SVGCircleElement where
  toGObject = GObject . castRef . unSVGCircleElement
  unsafeCastGObject = SVGCircleElement . castRef . unGObject

castToSVGCircleElement :: GObjectClass obj => obj -> SVGCircleElement
castToSVGCircleElement = castTo gTypeSVGCircleElement "SVGCircleElement"

foreign import javascript unsafe "window[\"SVGCircleElement\"]" gTypeSVGCircleElement' :: JSRef GType
gTypeSVGCircleElement = GType gTypeSVGCircleElement'
#else
type IsSVGCircleElement o = SVGCircleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGClipPathElement = SVGClipPathElement (JSRef SVGClipPathElement) deriving (Eq)

unSVGClipPathElement (SVGClipPathElement o) = o

instance ToJSRef SVGClipPathElement where
  toJSRef = return . unSVGClipPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGClipPathElement where
  fromJSRef = return . fmap SVGClipPathElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGClipPathElement o
toSVGClipPathElement :: IsSVGClipPathElement o => o -> SVGClipPathElement
toSVGClipPathElement = unsafeCastGObject . toGObject

instance IsSVGClipPathElement SVGClipPathElement
instance IsSVGGraphicsElement SVGClipPathElement
instance IsSVGElement SVGClipPathElement
instance IsElement SVGClipPathElement
instance IsNode SVGClipPathElement
instance GObjectClass SVGClipPathElement where
  toGObject = GObject . castRef . unSVGClipPathElement
  unsafeCastGObject = SVGClipPathElement . castRef . unGObject

castToSVGClipPathElement :: GObjectClass obj => obj -> SVGClipPathElement
castToSVGClipPathElement = castTo gTypeSVGClipPathElement "SVGClipPathElement"

foreign import javascript unsafe "window[\"SVGClipPathElement\"]" gTypeSVGClipPathElement' :: JSRef GType
gTypeSVGClipPathElement = GType gTypeSVGClipPathElement'
#else
type IsSVGClipPathElement o = SVGClipPathElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGColor = SVGColor (JSRef SVGColor) deriving (Eq)

unSVGColor (SVGColor o) = o

instance ToJSRef SVGColor where
  toJSRef = return . unSVGColor
  {-# INLINE toJSRef #-}

instance FromJSRef SVGColor where
  fromJSRef = return . fmap SVGColor . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSValue o => IsSVGColor o
toSVGColor :: IsSVGColor o => o -> SVGColor
toSVGColor = unsafeCastGObject . toGObject

instance IsSVGColor SVGColor
instance IsCSSValue SVGColor
instance GObjectClass SVGColor where
  toGObject = GObject . castRef . unSVGColor
  unsafeCastGObject = SVGColor . castRef . unGObject

castToSVGColor :: GObjectClass obj => obj -> SVGColor
castToSVGColor = castTo gTypeSVGColor "SVGColor"

foreign import javascript unsafe "window[\"SVGColor\"]" gTypeSVGColor' :: JSRef GType
gTypeSVGColor = GType gTypeSVGColor'
#else
type IsSVGColor o = SVGColorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement (JSRef SVGComponentTransferFunctionElement) deriving (Eq)

unSVGComponentTransferFunctionElement (SVGComponentTransferFunctionElement o) = o

instance ToJSRef SVGComponentTransferFunctionElement where
  toJSRef = return . unSVGComponentTransferFunctionElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGComponentTransferFunctionElement where
  fromJSRef = return . fmap SVGComponentTransferFunctionElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGComponentTransferFunctionElement o
toSVGComponentTransferFunctionElement :: IsSVGComponentTransferFunctionElement o => o -> SVGComponentTransferFunctionElement
toSVGComponentTransferFunctionElement = unsafeCastGObject . toGObject

instance IsSVGComponentTransferFunctionElement SVGComponentTransferFunctionElement
instance IsSVGElement SVGComponentTransferFunctionElement
instance IsElement SVGComponentTransferFunctionElement
instance IsNode SVGComponentTransferFunctionElement
instance GObjectClass SVGComponentTransferFunctionElement where
  toGObject = GObject . castRef . unSVGComponentTransferFunctionElement
  unsafeCastGObject = SVGComponentTransferFunctionElement . castRef . unGObject

castToSVGComponentTransferFunctionElement :: GObjectClass obj => obj -> SVGComponentTransferFunctionElement
castToSVGComponentTransferFunctionElement = castTo gTypeSVGComponentTransferFunctionElement "SVGComponentTransferFunctionElement"

foreign import javascript unsafe "window[\"SVGComponentTransferFunctionElement\"]" gTypeSVGComponentTransferFunctionElement' :: JSRef GType
gTypeSVGComponentTransferFunctionElement = GType gTypeSVGComponentTransferFunctionElement'
#else
type IsSVGComponentTransferFunctionElement o = SVGComponentTransferFunctionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGCursorElement = SVGCursorElement (JSRef SVGCursorElement) deriving (Eq)

unSVGCursorElement (SVGCursorElement o) = o

instance ToJSRef SVGCursorElement where
  toJSRef = return . unSVGCursorElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGCursorElement where
  fromJSRef = return . fmap SVGCursorElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGCursorElement o
toSVGCursorElement :: IsSVGCursorElement o => o -> SVGCursorElement
toSVGCursorElement = unsafeCastGObject . toGObject

instance IsSVGCursorElement SVGCursorElement
instance IsSVGElement SVGCursorElement
instance IsElement SVGCursorElement
instance IsNode SVGCursorElement
instance GObjectClass SVGCursorElement where
  toGObject = GObject . castRef . unSVGCursorElement
  unsafeCastGObject = SVGCursorElement . castRef . unGObject

castToSVGCursorElement :: GObjectClass obj => obj -> SVGCursorElement
castToSVGCursorElement = castTo gTypeSVGCursorElement "SVGCursorElement"

foreign import javascript unsafe "window[\"SVGCursorElement\"]" gTypeSVGCursorElement' :: JSRef GType
gTypeSVGCursorElement = GType gTypeSVGCursorElement'
#else
type IsSVGCursorElement o = SVGCursorElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGDefsElement = SVGDefsElement (JSRef SVGDefsElement) deriving (Eq)

unSVGDefsElement (SVGDefsElement o) = o

instance ToJSRef SVGDefsElement where
  toJSRef = return . unSVGDefsElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDefsElement where
  fromJSRef = return . fmap SVGDefsElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGDefsElement o
toSVGDefsElement :: IsSVGDefsElement o => o -> SVGDefsElement
toSVGDefsElement = unsafeCastGObject . toGObject

instance IsSVGDefsElement SVGDefsElement
instance IsSVGGraphicsElement SVGDefsElement
instance IsSVGElement SVGDefsElement
instance IsElement SVGDefsElement
instance IsNode SVGDefsElement
instance GObjectClass SVGDefsElement where
  toGObject = GObject . castRef . unSVGDefsElement
  unsafeCastGObject = SVGDefsElement . castRef . unGObject

castToSVGDefsElement :: GObjectClass obj => obj -> SVGDefsElement
castToSVGDefsElement = castTo gTypeSVGDefsElement "SVGDefsElement"

foreign import javascript unsafe "window[\"SVGDefsElement\"]" gTypeSVGDefsElement' :: JSRef GType
gTypeSVGDefsElement = GType gTypeSVGDefsElement'
#else
type IsSVGDefsElement o = SVGDefsElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGDescElement = SVGDescElement (JSRef SVGDescElement) deriving (Eq)

unSVGDescElement (SVGDescElement o) = o

instance ToJSRef SVGDescElement where
  toJSRef = return . unSVGDescElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDescElement where
  fromJSRef = return . fmap SVGDescElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGDescElement o
toSVGDescElement :: IsSVGDescElement o => o -> SVGDescElement
toSVGDescElement = unsafeCastGObject . toGObject

instance IsSVGDescElement SVGDescElement
instance IsSVGElement SVGDescElement
instance IsElement SVGDescElement
instance IsNode SVGDescElement
instance GObjectClass SVGDescElement where
  toGObject = GObject . castRef . unSVGDescElement
  unsafeCastGObject = SVGDescElement . castRef . unGObject

castToSVGDescElement :: GObjectClass obj => obj -> SVGDescElement
castToSVGDescElement = castTo gTypeSVGDescElement "SVGDescElement"

foreign import javascript unsafe "window[\"SVGDescElement\"]" gTypeSVGDescElement' :: JSRef GType
gTypeSVGDescElement = GType gTypeSVGDescElement'
#else
type IsSVGDescElement o = SVGDescElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGDocument = SVGDocument (JSRef SVGDocument) deriving (Eq)

unSVGDocument (SVGDocument o) = o

instance ToJSRef SVGDocument where
  toJSRef = return . unSVGDocument
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDocument where
  fromJSRef = return . fmap SVGDocument . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsDocument o => IsSVGDocument o
toSVGDocument :: IsSVGDocument o => o -> SVGDocument
toSVGDocument = unsafeCastGObject . toGObject

instance IsSVGDocument SVGDocument
instance IsDocument SVGDocument
instance IsNode SVGDocument
instance GObjectClass SVGDocument where
  toGObject = GObject . castRef . unSVGDocument
  unsafeCastGObject = SVGDocument . castRef . unGObject

castToSVGDocument :: GObjectClass obj => obj -> SVGDocument
castToSVGDocument = castTo gTypeSVGDocument "SVGDocument"

foreign import javascript unsafe "window[\"SVGDocument\"]" gTypeSVGDocument' :: JSRef GType
gTypeSVGDocument = GType gTypeSVGDocument'
#else
type IsSVGDocument o = SVGDocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGElement = SVGElement (JSRef SVGElement) deriving (Eq)

unSVGElement (SVGElement o) = o

instance ToJSRef SVGElement where
  toJSRef = return . unSVGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGElement where
  fromJSRef = return . fmap SVGElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsElement o => IsSVGElement o
toSVGElement :: IsSVGElement o => o -> SVGElement
toSVGElement = unsafeCastGObject . toGObject

instance IsSVGElement SVGElement
instance IsElement SVGElement
instance IsNode SVGElement
instance GObjectClass SVGElement where
  toGObject = GObject . castRef . unSVGElement
  unsafeCastGObject = SVGElement . castRef . unGObject

castToSVGElement :: GObjectClass obj => obj -> SVGElement
castToSVGElement = castTo gTypeSVGElement "SVGElement"

foreign import javascript unsafe "window[\"SVGElement\"]" gTypeSVGElement' :: JSRef GType
gTypeSVGElement = GType gTypeSVGElement'
#else
type IsSVGElement o = SVGElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGElementInstance = SVGElementInstance (JSRef SVGElementInstance) deriving (Eq)

unSVGElementInstance (SVGElementInstance o) = o

instance ToJSRef SVGElementInstance where
  toJSRef = return . unSVGElementInstance
  {-# INLINE toJSRef #-}

instance FromJSRef SVGElementInstance where
  fromJSRef = return . fmap SVGElementInstance . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsSVGElementInstance o
toSVGElementInstance :: IsSVGElementInstance o => o -> SVGElementInstance
toSVGElementInstance = unsafeCastGObject . toGObject

instance IsSVGElementInstance SVGElementInstance
instance IsEventTarget SVGElementInstance
instance GObjectClass SVGElementInstance where
  toGObject = GObject . castRef . unSVGElementInstance
  unsafeCastGObject = SVGElementInstance . castRef . unGObject

castToSVGElementInstance :: GObjectClass obj => obj -> SVGElementInstance
castToSVGElementInstance = castTo gTypeSVGElementInstance "SVGElementInstance"

foreign import javascript unsafe "window[\"SVGElementInstance\"]" gTypeSVGElementInstance' :: JSRef GType
gTypeSVGElementInstance = GType gTypeSVGElementInstance'
#else
type IsSVGElementInstance o = SVGElementInstanceClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGElementInstanceList = SVGElementInstanceList (JSRef SVGElementInstanceList) deriving (Eq)

unSVGElementInstanceList (SVGElementInstanceList o) = o

instance ToJSRef SVGElementInstanceList where
  toJSRef = return . unSVGElementInstanceList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGElementInstanceList where
  fromJSRef = return . fmap SVGElementInstanceList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGElementInstanceList o
toSVGElementInstanceList :: IsSVGElementInstanceList o => o -> SVGElementInstanceList
toSVGElementInstanceList = unsafeCastGObject . toGObject

instance IsSVGElementInstanceList SVGElementInstanceList
instance GObjectClass SVGElementInstanceList where
  toGObject = GObject . castRef . unSVGElementInstanceList
  unsafeCastGObject = SVGElementInstanceList . castRef . unGObject

castToSVGElementInstanceList :: GObjectClass obj => obj -> SVGElementInstanceList
castToSVGElementInstanceList = castTo gTypeSVGElementInstanceList "SVGElementInstanceList"

foreign import javascript unsafe "window[\"SVGElementInstanceList\"]" gTypeSVGElementInstanceList' :: JSRef GType
gTypeSVGElementInstanceList = GType gTypeSVGElementInstanceList'
#else
type IsSVGElementInstanceList o = SVGElementInstanceListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGEllipseElement = SVGEllipseElement (JSRef SVGEllipseElement) deriving (Eq)

unSVGEllipseElement (SVGEllipseElement o) = o

instance ToJSRef SVGEllipseElement where
  toJSRef = return . unSVGEllipseElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGEllipseElement where
  fromJSRef = return . fmap SVGEllipseElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGEllipseElement o
toSVGEllipseElement :: IsSVGEllipseElement o => o -> SVGEllipseElement
toSVGEllipseElement = unsafeCastGObject . toGObject

instance IsSVGEllipseElement SVGEllipseElement
instance IsSVGGraphicsElement SVGEllipseElement
instance IsSVGElement SVGEllipseElement
instance IsElement SVGEllipseElement
instance IsNode SVGEllipseElement
instance GObjectClass SVGEllipseElement where
  toGObject = GObject . castRef . unSVGEllipseElement
  unsafeCastGObject = SVGEllipseElement . castRef . unGObject

castToSVGEllipseElement :: GObjectClass obj => obj -> SVGEllipseElement
castToSVGEllipseElement = castTo gTypeSVGEllipseElement "SVGEllipseElement"

foreign import javascript unsafe "window[\"SVGEllipseElement\"]" gTypeSVGEllipseElement' :: JSRef GType
gTypeSVGEllipseElement = GType gTypeSVGEllipseElement'
#else
type IsSVGEllipseElement o = SVGEllipseElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGExternalResourcesRequired = SVGExternalResourcesRequired (JSRef SVGExternalResourcesRequired) deriving (Eq)

unSVGExternalResourcesRequired (SVGExternalResourcesRequired o) = o

instance ToJSRef SVGExternalResourcesRequired where
  toJSRef = return . unSVGExternalResourcesRequired
  {-# INLINE toJSRef #-}

instance FromJSRef SVGExternalResourcesRequired where
  fromJSRef = return . fmap SVGExternalResourcesRequired . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGExternalResourcesRequired o
toSVGExternalResourcesRequired :: IsSVGExternalResourcesRequired o => o -> SVGExternalResourcesRequired
toSVGExternalResourcesRequired = unsafeCastGObject . toGObject

instance IsSVGExternalResourcesRequired SVGExternalResourcesRequired
instance GObjectClass SVGExternalResourcesRequired where
  toGObject = GObject . castRef . unSVGExternalResourcesRequired
  unsafeCastGObject = SVGExternalResourcesRequired . castRef . unGObject

castToSVGExternalResourcesRequired :: GObjectClass obj => obj -> SVGExternalResourcesRequired
castToSVGExternalResourcesRequired = castTo gTypeSVGExternalResourcesRequired "SVGExternalResourcesRequired"

foreign import javascript unsafe "window[\"SVGExternalResourcesRequired\"]" gTypeSVGExternalResourcesRequired' :: JSRef GType
gTypeSVGExternalResourcesRequired = GType gTypeSVGExternalResourcesRequired'
#else
type IsSVGExternalResourcesRequired o = SVGExternalResourcesRequiredClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEBlendElement = SVGFEBlendElement (JSRef SVGFEBlendElement) deriving (Eq)

unSVGFEBlendElement (SVGFEBlendElement o) = o

instance ToJSRef SVGFEBlendElement where
  toJSRef = return . unSVGFEBlendElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEBlendElement where
  fromJSRef = return . fmap SVGFEBlendElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEBlendElement o
toSVGFEBlendElement :: IsSVGFEBlendElement o => o -> SVGFEBlendElement
toSVGFEBlendElement = unsafeCastGObject . toGObject

instance IsSVGFEBlendElement SVGFEBlendElement
instance IsSVGElement SVGFEBlendElement
instance IsElement SVGFEBlendElement
instance IsNode SVGFEBlendElement
instance GObjectClass SVGFEBlendElement where
  toGObject = GObject . castRef . unSVGFEBlendElement
  unsafeCastGObject = SVGFEBlendElement . castRef . unGObject

castToSVGFEBlendElement :: GObjectClass obj => obj -> SVGFEBlendElement
castToSVGFEBlendElement = castTo gTypeSVGFEBlendElement "SVGFEBlendElement"

foreign import javascript unsafe "window[\"SVGFEBlendElement\"]" gTypeSVGFEBlendElement' :: JSRef GType
gTypeSVGFEBlendElement = GType gTypeSVGFEBlendElement'
#else
type IsSVGFEBlendElement o = SVGFEBlendElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEColorMatrixElement = SVGFEColorMatrixElement (JSRef SVGFEColorMatrixElement) deriving (Eq)

unSVGFEColorMatrixElement (SVGFEColorMatrixElement o) = o

instance ToJSRef SVGFEColorMatrixElement where
  toJSRef = return . unSVGFEColorMatrixElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEColorMatrixElement where
  fromJSRef = return . fmap SVGFEColorMatrixElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEColorMatrixElement o
toSVGFEColorMatrixElement :: IsSVGFEColorMatrixElement o => o -> SVGFEColorMatrixElement
toSVGFEColorMatrixElement = unsafeCastGObject . toGObject

instance IsSVGFEColorMatrixElement SVGFEColorMatrixElement
instance IsSVGElement SVGFEColorMatrixElement
instance IsElement SVGFEColorMatrixElement
instance IsNode SVGFEColorMatrixElement
instance GObjectClass SVGFEColorMatrixElement where
  toGObject = GObject . castRef . unSVGFEColorMatrixElement
  unsafeCastGObject = SVGFEColorMatrixElement . castRef . unGObject

castToSVGFEColorMatrixElement :: GObjectClass obj => obj -> SVGFEColorMatrixElement
castToSVGFEColorMatrixElement = castTo gTypeSVGFEColorMatrixElement "SVGFEColorMatrixElement"

foreign import javascript unsafe "window[\"SVGFEColorMatrixElement\"]" gTypeSVGFEColorMatrixElement' :: JSRef GType
gTypeSVGFEColorMatrixElement = GType gTypeSVGFEColorMatrixElement'
#else
type IsSVGFEColorMatrixElement o = SVGFEColorMatrixElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEComponentTransferElement = SVGFEComponentTransferElement (JSRef SVGFEComponentTransferElement) deriving (Eq)

unSVGFEComponentTransferElement (SVGFEComponentTransferElement o) = o

instance ToJSRef SVGFEComponentTransferElement where
  toJSRef = return . unSVGFEComponentTransferElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEComponentTransferElement where
  fromJSRef = return . fmap SVGFEComponentTransferElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEComponentTransferElement o
toSVGFEComponentTransferElement :: IsSVGFEComponentTransferElement o => o -> SVGFEComponentTransferElement
toSVGFEComponentTransferElement = unsafeCastGObject . toGObject

instance IsSVGFEComponentTransferElement SVGFEComponentTransferElement
instance IsSVGElement SVGFEComponentTransferElement
instance IsElement SVGFEComponentTransferElement
instance IsNode SVGFEComponentTransferElement
instance GObjectClass SVGFEComponentTransferElement where
  toGObject = GObject . castRef . unSVGFEComponentTransferElement
  unsafeCastGObject = SVGFEComponentTransferElement . castRef . unGObject

castToSVGFEComponentTransferElement :: GObjectClass obj => obj -> SVGFEComponentTransferElement
castToSVGFEComponentTransferElement = castTo gTypeSVGFEComponentTransferElement "SVGFEComponentTransferElement"

foreign import javascript unsafe "window[\"SVGFEComponentTransferElement\"]" gTypeSVGFEComponentTransferElement' :: JSRef GType
gTypeSVGFEComponentTransferElement = GType gTypeSVGFEComponentTransferElement'
#else
type IsSVGFEComponentTransferElement o = SVGFEComponentTransferElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFECompositeElement = SVGFECompositeElement (JSRef SVGFECompositeElement) deriving (Eq)

unSVGFECompositeElement (SVGFECompositeElement o) = o

instance ToJSRef SVGFECompositeElement where
  toJSRef = return . unSVGFECompositeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFECompositeElement where
  fromJSRef = return . fmap SVGFECompositeElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFECompositeElement o
toSVGFECompositeElement :: IsSVGFECompositeElement o => o -> SVGFECompositeElement
toSVGFECompositeElement = unsafeCastGObject . toGObject

instance IsSVGFECompositeElement SVGFECompositeElement
instance IsSVGElement SVGFECompositeElement
instance IsElement SVGFECompositeElement
instance IsNode SVGFECompositeElement
instance GObjectClass SVGFECompositeElement where
  toGObject = GObject . castRef . unSVGFECompositeElement
  unsafeCastGObject = SVGFECompositeElement . castRef . unGObject

castToSVGFECompositeElement :: GObjectClass obj => obj -> SVGFECompositeElement
castToSVGFECompositeElement = castTo gTypeSVGFECompositeElement "SVGFECompositeElement"

foreign import javascript unsafe "window[\"SVGFECompositeElement\"]" gTypeSVGFECompositeElement' :: JSRef GType
gTypeSVGFECompositeElement = GType gTypeSVGFECompositeElement'
#else
type IsSVGFECompositeElement o = SVGFECompositeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEConvolveMatrixElement = SVGFEConvolveMatrixElement (JSRef SVGFEConvolveMatrixElement) deriving (Eq)

unSVGFEConvolveMatrixElement (SVGFEConvolveMatrixElement o) = o

instance ToJSRef SVGFEConvolveMatrixElement where
  toJSRef = return . unSVGFEConvolveMatrixElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEConvolveMatrixElement where
  fromJSRef = return . fmap SVGFEConvolveMatrixElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEConvolveMatrixElement o
toSVGFEConvolveMatrixElement :: IsSVGFEConvolveMatrixElement o => o -> SVGFEConvolveMatrixElement
toSVGFEConvolveMatrixElement = unsafeCastGObject . toGObject

instance IsSVGFEConvolveMatrixElement SVGFEConvolveMatrixElement
instance IsSVGElement SVGFEConvolveMatrixElement
instance IsElement SVGFEConvolveMatrixElement
instance IsNode SVGFEConvolveMatrixElement
instance GObjectClass SVGFEConvolveMatrixElement where
  toGObject = GObject . castRef . unSVGFEConvolveMatrixElement
  unsafeCastGObject = SVGFEConvolveMatrixElement . castRef . unGObject

castToSVGFEConvolveMatrixElement :: GObjectClass obj => obj -> SVGFEConvolveMatrixElement
castToSVGFEConvolveMatrixElement = castTo gTypeSVGFEConvolveMatrixElement "SVGFEConvolveMatrixElement"

foreign import javascript unsafe "window[\"SVGFEConvolveMatrixElement\"]" gTypeSVGFEConvolveMatrixElement' :: JSRef GType
gTypeSVGFEConvolveMatrixElement = GType gTypeSVGFEConvolveMatrixElement'
#else
type IsSVGFEConvolveMatrixElement o = SVGFEConvolveMatrixElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEDiffuseLightingElement = SVGFEDiffuseLightingElement (JSRef SVGFEDiffuseLightingElement) deriving (Eq)

unSVGFEDiffuseLightingElement (SVGFEDiffuseLightingElement o) = o

instance ToJSRef SVGFEDiffuseLightingElement where
  toJSRef = return . unSVGFEDiffuseLightingElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDiffuseLightingElement where
  fromJSRef = return . fmap SVGFEDiffuseLightingElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEDiffuseLightingElement o
toSVGFEDiffuseLightingElement :: IsSVGFEDiffuseLightingElement o => o -> SVGFEDiffuseLightingElement
toSVGFEDiffuseLightingElement = unsafeCastGObject . toGObject

instance IsSVGFEDiffuseLightingElement SVGFEDiffuseLightingElement
instance IsSVGElement SVGFEDiffuseLightingElement
instance IsElement SVGFEDiffuseLightingElement
instance IsNode SVGFEDiffuseLightingElement
instance GObjectClass SVGFEDiffuseLightingElement where
  toGObject = GObject . castRef . unSVGFEDiffuseLightingElement
  unsafeCastGObject = SVGFEDiffuseLightingElement . castRef . unGObject

castToSVGFEDiffuseLightingElement :: GObjectClass obj => obj -> SVGFEDiffuseLightingElement
castToSVGFEDiffuseLightingElement = castTo gTypeSVGFEDiffuseLightingElement "SVGFEDiffuseLightingElement"

foreign import javascript unsafe "window[\"SVGFEDiffuseLightingElement\"]" gTypeSVGFEDiffuseLightingElement' :: JSRef GType
gTypeSVGFEDiffuseLightingElement = GType gTypeSVGFEDiffuseLightingElement'
#else
type IsSVGFEDiffuseLightingElement o = SVGFEDiffuseLightingElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEDisplacementMapElement = SVGFEDisplacementMapElement (JSRef SVGFEDisplacementMapElement) deriving (Eq)

unSVGFEDisplacementMapElement (SVGFEDisplacementMapElement o) = o

instance ToJSRef SVGFEDisplacementMapElement where
  toJSRef = return . unSVGFEDisplacementMapElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDisplacementMapElement where
  fromJSRef = return . fmap SVGFEDisplacementMapElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEDisplacementMapElement o
toSVGFEDisplacementMapElement :: IsSVGFEDisplacementMapElement o => o -> SVGFEDisplacementMapElement
toSVGFEDisplacementMapElement = unsafeCastGObject . toGObject

instance IsSVGFEDisplacementMapElement SVGFEDisplacementMapElement
instance IsSVGElement SVGFEDisplacementMapElement
instance IsElement SVGFEDisplacementMapElement
instance IsNode SVGFEDisplacementMapElement
instance GObjectClass SVGFEDisplacementMapElement where
  toGObject = GObject . castRef . unSVGFEDisplacementMapElement
  unsafeCastGObject = SVGFEDisplacementMapElement . castRef . unGObject

castToSVGFEDisplacementMapElement :: GObjectClass obj => obj -> SVGFEDisplacementMapElement
castToSVGFEDisplacementMapElement = castTo gTypeSVGFEDisplacementMapElement "SVGFEDisplacementMapElement"

foreign import javascript unsafe "window[\"SVGFEDisplacementMapElement\"]" gTypeSVGFEDisplacementMapElement' :: JSRef GType
gTypeSVGFEDisplacementMapElement = GType gTypeSVGFEDisplacementMapElement'
#else
type IsSVGFEDisplacementMapElement o = SVGFEDisplacementMapElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEDistantLightElement = SVGFEDistantLightElement (JSRef SVGFEDistantLightElement) deriving (Eq)

unSVGFEDistantLightElement (SVGFEDistantLightElement o) = o

instance ToJSRef SVGFEDistantLightElement where
  toJSRef = return . unSVGFEDistantLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDistantLightElement where
  fromJSRef = return . fmap SVGFEDistantLightElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEDistantLightElement o
toSVGFEDistantLightElement :: IsSVGFEDistantLightElement o => o -> SVGFEDistantLightElement
toSVGFEDistantLightElement = unsafeCastGObject . toGObject

instance IsSVGFEDistantLightElement SVGFEDistantLightElement
instance IsSVGElement SVGFEDistantLightElement
instance IsElement SVGFEDistantLightElement
instance IsNode SVGFEDistantLightElement
instance GObjectClass SVGFEDistantLightElement where
  toGObject = GObject . castRef . unSVGFEDistantLightElement
  unsafeCastGObject = SVGFEDistantLightElement . castRef . unGObject

castToSVGFEDistantLightElement :: GObjectClass obj => obj -> SVGFEDistantLightElement
castToSVGFEDistantLightElement = castTo gTypeSVGFEDistantLightElement "SVGFEDistantLightElement"

foreign import javascript unsafe "window[\"SVGFEDistantLightElement\"]" gTypeSVGFEDistantLightElement' :: JSRef GType
gTypeSVGFEDistantLightElement = GType gTypeSVGFEDistantLightElement'
#else
type IsSVGFEDistantLightElement o = SVGFEDistantLightElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEDropShadowElement = SVGFEDropShadowElement (JSRef SVGFEDropShadowElement) deriving (Eq)

unSVGFEDropShadowElement (SVGFEDropShadowElement o) = o

instance ToJSRef SVGFEDropShadowElement where
  toJSRef = return . unSVGFEDropShadowElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDropShadowElement where
  fromJSRef = return . fmap SVGFEDropShadowElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEDropShadowElement o
toSVGFEDropShadowElement :: IsSVGFEDropShadowElement o => o -> SVGFEDropShadowElement
toSVGFEDropShadowElement = unsafeCastGObject . toGObject

instance IsSVGFEDropShadowElement SVGFEDropShadowElement
instance IsSVGElement SVGFEDropShadowElement
instance IsElement SVGFEDropShadowElement
instance IsNode SVGFEDropShadowElement
instance GObjectClass SVGFEDropShadowElement where
  toGObject = GObject . castRef . unSVGFEDropShadowElement
  unsafeCastGObject = SVGFEDropShadowElement . castRef . unGObject

castToSVGFEDropShadowElement :: GObjectClass obj => obj -> SVGFEDropShadowElement
castToSVGFEDropShadowElement = castTo gTypeSVGFEDropShadowElement "SVGFEDropShadowElement"

foreign import javascript unsafe "window[\"SVGFEDropShadowElement\"]" gTypeSVGFEDropShadowElement' :: JSRef GType
gTypeSVGFEDropShadowElement = GType gTypeSVGFEDropShadowElement'
#else
type IsSVGFEDropShadowElement o = SVGFEDropShadowElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEFloodElement = SVGFEFloodElement (JSRef SVGFEFloodElement) deriving (Eq)

unSVGFEFloodElement (SVGFEFloodElement o) = o

instance ToJSRef SVGFEFloodElement where
  toJSRef = return . unSVGFEFloodElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFloodElement where
  fromJSRef = return . fmap SVGFEFloodElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEFloodElement o
toSVGFEFloodElement :: IsSVGFEFloodElement o => o -> SVGFEFloodElement
toSVGFEFloodElement = unsafeCastGObject . toGObject

instance IsSVGFEFloodElement SVGFEFloodElement
instance IsSVGElement SVGFEFloodElement
instance IsElement SVGFEFloodElement
instance IsNode SVGFEFloodElement
instance GObjectClass SVGFEFloodElement where
  toGObject = GObject . castRef . unSVGFEFloodElement
  unsafeCastGObject = SVGFEFloodElement . castRef . unGObject

castToSVGFEFloodElement :: GObjectClass obj => obj -> SVGFEFloodElement
castToSVGFEFloodElement = castTo gTypeSVGFEFloodElement "SVGFEFloodElement"

foreign import javascript unsafe "window[\"SVGFEFloodElement\"]" gTypeSVGFEFloodElement' :: JSRef GType
gTypeSVGFEFloodElement = GType gTypeSVGFEFloodElement'
#else
type IsSVGFEFloodElement o = SVGFEFloodElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEFuncAElement = SVGFEFuncAElement (JSRef SVGFEFuncAElement) deriving (Eq)

unSVGFEFuncAElement (SVGFEFuncAElement o) = o

instance ToJSRef SVGFEFuncAElement where
  toJSRef = return . unSVGFEFuncAElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncAElement where
  fromJSRef = return . fmap SVGFEFuncAElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGComponentTransferFunctionElement o => IsSVGFEFuncAElement o
toSVGFEFuncAElement :: IsSVGFEFuncAElement o => o -> SVGFEFuncAElement
toSVGFEFuncAElement = unsafeCastGObject . toGObject

instance IsSVGFEFuncAElement SVGFEFuncAElement
instance IsSVGComponentTransferFunctionElement SVGFEFuncAElement
instance IsSVGElement SVGFEFuncAElement
instance IsElement SVGFEFuncAElement
instance IsNode SVGFEFuncAElement
instance GObjectClass SVGFEFuncAElement where
  toGObject = GObject . castRef . unSVGFEFuncAElement
  unsafeCastGObject = SVGFEFuncAElement . castRef . unGObject

castToSVGFEFuncAElement :: GObjectClass obj => obj -> SVGFEFuncAElement
castToSVGFEFuncAElement = castTo gTypeSVGFEFuncAElement "SVGFEFuncAElement"

foreign import javascript unsafe "window[\"SVGFEFuncAElement\"]" gTypeSVGFEFuncAElement' :: JSRef GType
gTypeSVGFEFuncAElement = GType gTypeSVGFEFuncAElement'
#else
type IsSVGFEFuncAElement o = SVGFEFuncAElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEFuncBElement = SVGFEFuncBElement (JSRef SVGFEFuncBElement) deriving (Eq)

unSVGFEFuncBElement (SVGFEFuncBElement o) = o

instance ToJSRef SVGFEFuncBElement where
  toJSRef = return . unSVGFEFuncBElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncBElement where
  fromJSRef = return . fmap SVGFEFuncBElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGComponentTransferFunctionElement o => IsSVGFEFuncBElement o
toSVGFEFuncBElement :: IsSVGFEFuncBElement o => o -> SVGFEFuncBElement
toSVGFEFuncBElement = unsafeCastGObject . toGObject

instance IsSVGFEFuncBElement SVGFEFuncBElement
instance IsSVGComponentTransferFunctionElement SVGFEFuncBElement
instance IsSVGElement SVGFEFuncBElement
instance IsElement SVGFEFuncBElement
instance IsNode SVGFEFuncBElement
instance GObjectClass SVGFEFuncBElement where
  toGObject = GObject . castRef . unSVGFEFuncBElement
  unsafeCastGObject = SVGFEFuncBElement . castRef . unGObject

castToSVGFEFuncBElement :: GObjectClass obj => obj -> SVGFEFuncBElement
castToSVGFEFuncBElement = castTo gTypeSVGFEFuncBElement "SVGFEFuncBElement"

foreign import javascript unsafe "window[\"SVGFEFuncBElement\"]" gTypeSVGFEFuncBElement' :: JSRef GType
gTypeSVGFEFuncBElement = GType gTypeSVGFEFuncBElement'
#else
type IsSVGFEFuncBElement o = SVGFEFuncBElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEFuncGElement = SVGFEFuncGElement (JSRef SVGFEFuncGElement) deriving (Eq)

unSVGFEFuncGElement (SVGFEFuncGElement o) = o

instance ToJSRef SVGFEFuncGElement where
  toJSRef = return . unSVGFEFuncGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncGElement where
  fromJSRef = return . fmap SVGFEFuncGElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGComponentTransferFunctionElement o => IsSVGFEFuncGElement o
toSVGFEFuncGElement :: IsSVGFEFuncGElement o => o -> SVGFEFuncGElement
toSVGFEFuncGElement = unsafeCastGObject . toGObject

instance IsSVGFEFuncGElement SVGFEFuncGElement
instance IsSVGComponentTransferFunctionElement SVGFEFuncGElement
instance IsSVGElement SVGFEFuncGElement
instance IsElement SVGFEFuncGElement
instance IsNode SVGFEFuncGElement
instance GObjectClass SVGFEFuncGElement where
  toGObject = GObject . castRef . unSVGFEFuncGElement
  unsafeCastGObject = SVGFEFuncGElement . castRef . unGObject

castToSVGFEFuncGElement :: GObjectClass obj => obj -> SVGFEFuncGElement
castToSVGFEFuncGElement = castTo gTypeSVGFEFuncGElement "SVGFEFuncGElement"

foreign import javascript unsafe "window[\"SVGFEFuncGElement\"]" gTypeSVGFEFuncGElement' :: JSRef GType
gTypeSVGFEFuncGElement = GType gTypeSVGFEFuncGElement'
#else
type IsSVGFEFuncGElement o = SVGFEFuncGElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEFuncRElement = SVGFEFuncRElement (JSRef SVGFEFuncRElement) deriving (Eq)

unSVGFEFuncRElement (SVGFEFuncRElement o) = o

instance ToJSRef SVGFEFuncRElement where
  toJSRef = return . unSVGFEFuncRElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncRElement where
  fromJSRef = return . fmap SVGFEFuncRElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGComponentTransferFunctionElement o => IsSVGFEFuncRElement o
toSVGFEFuncRElement :: IsSVGFEFuncRElement o => o -> SVGFEFuncRElement
toSVGFEFuncRElement = unsafeCastGObject . toGObject

instance IsSVGFEFuncRElement SVGFEFuncRElement
instance IsSVGComponentTransferFunctionElement SVGFEFuncRElement
instance IsSVGElement SVGFEFuncRElement
instance IsElement SVGFEFuncRElement
instance IsNode SVGFEFuncRElement
instance GObjectClass SVGFEFuncRElement where
  toGObject = GObject . castRef . unSVGFEFuncRElement
  unsafeCastGObject = SVGFEFuncRElement . castRef . unGObject

castToSVGFEFuncRElement :: GObjectClass obj => obj -> SVGFEFuncRElement
castToSVGFEFuncRElement = castTo gTypeSVGFEFuncRElement "SVGFEFuncRElement"

foreign import javascript unsafe "window[\"SVGFEFuncRElement\"]" gTypeSVGFEFuncRElement' :: JSRef GType
gTypeSVGFEFuncRElement = GType gTypeSVGFEFuncRElement'
#else
type IsSVGFEFuncRElement o = SVGFEFuncRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEGaussianBlurElement = SVGFEGaussianBlurElement (JSRef SVGFEGaussianBlurElement) deriving (Eq)

unSVGFEGaussianBlurElement (SVGFEGaussianBlurElement o) = o

instance ToJSRef SVGFEGaussianBlurElement where
  toJSRef = return . unSVGFEGaussianBlurElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEGaussianBlurElement where
  fromJSRef = return . fmap SVGFEGaussianBlurElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEGaussianBlurElement o
toSVGFEGaussianBlurElement :: IsSVGFEGaussianBlurElement o => o -> SVGFEGaussianBlurElement
toSVGFEGaussianBlurElement = unsafeCastGObject . toGObject

instance IsSVGFEGaussianBlurElement SVGFEGaussianBlurElement
instance IsSVGElement SVGFEGaussianBlurElement
instance IsElement SVGFEGaussianBlurElement
instance IsNode SVGFEGaussianBlurElement
instance GObjectClass SVGFEGaussianBlurElement where
  toGObject = GObject . castRef . unSVGFEGaussianBlurElement
  unsafeCastGObject = SVGFEGaussianBlurElement . castRef . unGObject

castToSVGFEGaussianBlurElement :: GObjectClass obj => obj -> SVGFEGaussianBlurElement
castToSVGFEGaussianBlurElement = castTo gTypeSVGFEGaussianBlurElement "SVGFEGaussianBlurElement"

foreign import javascript unsafe "window[\"SVGFEGaussianBlurElement\"]" gTypeSVGFEGaussianBlurElement' :: JSRef GType
gTypeSVGFEGaussianBlurElement = GType gTypeSVGFEGaussianBlurElement'
#else
type IsSVGFEGaussianBlurElement o = SVGFEGaussianBlurElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEImageElement = SVGFEImageElement (JSRef SVGFEImageElement) deriving (Eq)

unSVGFEImageElement (SVGFEImageElement o) = o

instance ToJSRef SVGFEImageElement where
  toJSRef = return . unSVGFEImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEImageElement where
  fromJSRef = return . fmap SVGFEImageElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEImageElement o
toSVGFEImageElement :: IsSVGFEImageElement o => o -> SVGFEImageElement
toSVGFEImageElement = unsafeCastGObject . toGObject

instance IsSVGFEImageElement SVGFEImageElement
instance IsSVGElement SVGFEImageElement
instance IsElement SVGFEImageElement
instance IsNode SVGFEImageElement
instance GObjectClass SVGFEImageElement where
  toGObject = GObject . castRef . unSVGFEImageElement
  unsafeCastGObject = SVGFEImageElement . castRef . unGObject

castToSVGFEImageElement :: GObjectClass obj => obj -> SVGFEImageElement
castToSVGFEImageElement = castTo gTypeSVGFEImageElement "SVGFEImageElement"

foreign import javascript unsafe "window[\"SVGFEImageElement\"]" gTypeSVGFEImageElement' :: JSRef GType
gTypeSVGFEImageElement = GType gTypeSVGFEImageElement'
#else
type IsSVGFEImageElement o = SVGFEImageElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEMergeElement = SVGFEMergeElement (JSRef SVGFEMergeElement) deriving (Eq)

unSVGFEMergeElement (SVGFEMergeElement o) = o

instance ToJSRef SVGFEMergeElement where
  toJSRef = return . unSVGFEMergeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMergeElement where
  fromJSRef = return . fmap SVGFEMergeElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEMergeElement o
toSVGFEMergeElement :: IsSVGFEMergeElement o => o -> SVGFEMergeElement
toSVGFEMergeElement = unsafeCastGObject . toGObject

instance IsSVGFEMergeElement SVGFEMergeElement
instance IsSVGElement SVGFEMergeElement
instance IsElement SVGFEMergeElement
instance IsNode SVGFEMergeElement
instance GObjectClass SVGFEMergeElement where
  toGObject = GObject . castRef . unSVGFEMergeElement
  unsafeCastGObject = SVGFEMergeElement . castRef . unGObject

castToSVGFEMergeElement :: GObjectClass obj => obj -> SVGFEMergeElement
castToSVGFEMergeElement = castTo gTypeSVGFEMergeElement "SVGFEMergeElement"

foreign import javascript unsafe "window[\"SVGFEMergeElement\"]" gTypeSVGFEMergeElement' :: JSRef GType
gTypeSVGFEMergeElement = GType gTypeSVGFEMergeElement'
#else
type IsSVGFEMergeElement o = SVGFEMergeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEMergeNodeElement = SVGFEMergeNodeElement (JSRef SVGFEMergeNodeElement) deriving (Eq)

unSVGFEMergeNodeElement (SVGFEMergeNodeElement o) = o

instance ToJSRef SVGFEMergeNodeElement where
  toJSRef = return . unSVGFEMergeNodeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMergeNodeElement where
  fromJSRef = return . fmap SVGFEMergeNodeElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEMergeNodeElement o
toSVGFEMergeNodeElement :: IsSVGFEMergeNodeElement o => o -> SVGFEMergeNodeElement
toSVGFEMergeNodeElement = unsafeCastGObject . toGObject

instance IsSVGFEMergeNodeElement SVGFEMergeNodeElement
instance IsSVGElement SVGFEMergeNodeElement
instance IsElement SVGFEMergeNodeElement
instance IsNode SVGFEMergeNodeElement
instance GObjectClass SVGFEMergeNodeElement where
  toGObject = GObject . castRef . unSVGFEMergeNodeElement
  unsafeCastGObject = SVGFEMergeNodeElement . castRef . unGObject

castToSVGFEMergeNodeElement :: GObjectClass obj => obj -> SVGFEMergeNodeElement
castToSVGFEMergeNodeElement = castTo gTypeSVGFEMergeNodeElement "SVGFEMergeNodeElement"

foreign import javascript unsafe "window[\"SVGFEMergeNodeElement\"]" gTypeSVGFEMergeNodeElement' :: JSRef GType
gTypeSVGFEMergeNodeElement = GType gTypeSVGFEMergeNodeElement'
#else
type IsSVGFEMergeNodeElement o = SVGFEMergeNodeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEMorphologyElement = SVGFEMorphologyElement (JSRef SVGFEMorphologyElement) deriving (Eq)

unSVGFEMorphologyElement (SVGFEMorphologyElement o) = o

instance ToJSRef SVGFEMorphologyElement where
  toJSRef = return . unSVGFEMorphologyElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMorphologyElement where
  fromJSRef = return . fmap SVGFEMorphologyElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEMorphologyElement o
toSVGFEMorphologyElement :: IsSVGFEMorphologyElement o => o -> SVGFEMorphologyElement
toSVGFEMorphologyElement = unsafeCastGObject . toGObject

instance IsSVGFEMorphologyElement SVGFEMorphologyElement
instance IsSVGElement SVGFEMorphologyElement
instance IsElement SVGFEMorphologyElement
instance IsNode SVGFEMorphologyElement
instance GObjectClass SVGFEMorphologyElement where
  toGObject = GObject . castRef . unSVGFEMorphologyElement
  unsafeCastGObject = SVGFEMorphologyElement . castRef . unGObject

castToSVGFEMorphologyElement :: GObjectClass obj => obj -> SVGFEMorphologyElement
castToSVGFEMorphologyElement = castTo gTypeSVGFEMorphologyElement "SVGFEMorphologyElement"

foreign import javascript unsafe "window[\"SVGFEMorphologyElement\"]" gTypeSVGFEMorphologyElement' :: JSRef GType
gTypeSVGFEMorphologyElement = GType gTypeSVGFEMorphologyElement'
#else
type IsSVGFEMorphologyElement o = SVGFEMorphologyElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEOffsetElement = SVGFEOffsetElement (JSRef SVGFEOffsetElement) deriving (Eq)

unSVGFEOffsetElement (SVGFEOffsetElement o) = o

instance ToJSRef SVGFEOffsetElement where
  toJSRef = return . unSVGFEOffsetElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEOffsetElement where
  fromJSRef = return . fmap SVGFEOffsetElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEOffsetElement o
toSVGFEOffsetElement :: IsSVGFEOffsetElement o => o -> SVGFEOffsetElement
toSVGFEOffsetElement = unsafeCastGObject . toGObject

instance IsSVGFEOffsetElement SVGFEOffsetElement
instance IsSVGElement SVGFEOffsetElement
instance IsElement SVGFEOffsetElement
instance IsNode SVGFEOffsetElement
instance GObjectClass SVGFEOffsetElement where
  toGObject = GObject . castRef . unSVGFEOffsetElement
  unsafeCastGObject = SVGFEOffsetElement . castRef . unGObject

castToSVGFEOffsetElement :: GObjectClass obj => obj -> SVGFEOffsetElement
castToSVGFEOffsetElement = castTo gTypeSVGFEOffsetElement "SVGFEOffsetElement"

foreign import javascript unsafe "window[\"SVGFEOffsetElement\"]" gTypeSVGFEOffsetElement' :: JSRef GType
gTypeSVGFEOffsetElement = GType gTypeSVGFEOffsetElement'
#else
type IsSVGFEOffsetElement o = SVGFEOffsetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFEPointLightElement = SVGFEPointLightElement (JSRef SVGFEPointLightElement) deriving (Eq)

unSVGFEPointLightElement (SVGFEPointLightElement o) = o

instance ToJSRef SVGFEPointLightElement where
  toJSRef = return . unSVGFEPointLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEPointLightElement where
  fromJSRef = return . fmap SVGFEPointLightElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFEPointLightElement o
toSVGFEPointLightElement :: IsSVGFEPointLightElement o => o -> SVGFEPointLightElement
toSVGFEPointLightElement = unsafeCastGObject . toGObject

instance IsSVGFEPointLightElement SVGFEPointLightElement
instance IsSVGElement SVGFEPointLightElement
instance IsElement SVGFEPointLightElement
instance IsNode SVGFEPointLightElement
instance GObjectClass SVGFEPointLightElement where
  toGObject = GObject . castRef . unSVGFEPointLightElement
  unsafeCastGObject = SVGFEPointLightElement . castRef . unGObject

castToSVGFEPointLightElement :: GObjectClass obj => obj -> SVGFEPointLightElement
castToSVGFEPointLightElement = castTo gTypeSVGFEPointLightElement "SVGFEPointLightElement"

foreign import javascript unsafe "window[\"SVGFEPointLightElement\"]" gTypeSVGFEPointLightElement' :: JSRef GType
gTypeSVGFEPointLightElement = GType gTypeSVGFEPointLightElement'
#else
type IsSVGFEPointLightElement o = SVGFEPointLightElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFESpecularLightingElement = SVGFESpecularLightingElement (JSRef SVGFESpecularLightingElement) deriving (Eq)

unSVGFESpecularLightingElement (SVGFESpecularLightingElement o) = o

instance ToJSRef SVGFESpecularLightingElement where
  toJSRef = return . unSVGFESpecularLightingElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFESpecularLightingElement where
  fromJSRef = return . fmap SVGFESpecularLightingElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFESpecularLightingElement o
toSVGFESpecularLightingElement :: IsSVGFESpecularLightingElement o => o -> SVGFESpecularLightingElement
toSVGFESpecularLightingElement = unsafeCastGObject . toGObject

instance IsSVGFESpecularLightingElement SVGFESpecularLightingElement
instance IsSVGElement SVGFESpecularLightingElement
instance IsElement SVGFESpecularLightingElement
instance IsNode SVGFESpecularLightingElement
instance GObjectClass SVGFESpecularLightingElement where
  toGObject = GObject . castRef . unSVGFESpecularLightingElement
  unsafeCastGObject = SVGFESpecularLightingElement . castRef . unGObject

castToSVGFESpecularLightingElement :: GObjectClass obj => obj -> SVGFESpecularLightingElement
castToSVGFESpecularLightingElement = castTo gTypeSVGFESpecularLightingElement "SVGFESpecularLightingElement"

foreign import javascript unsafe "window[\"SVGFESpecularLightingElement\"]" gTypeSVGFESpecularLightingElement' :: JSRef GType
gTypeSVGFESpecularLightingElement = GType gTypeSVGFESpecularLightingElement'
#else
type IsSVGFESpecularLightingElement o = SVGFESpecularLightingElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFESpotLightElement = SVGFESpotLightElement (JSRef SVGFESpotLightElement) deriving (Eq)

unSVGFESpotLightElement (SVGFESpotLightElement o) = o

instance ToJSRef SVGFESpotLightElement where
  toJSRef = return . unSVGFESpotLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFESpotLightElement where
  fromJSRef = return . fmap SVGFESpotLightElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFESpotLightElement o
toSVGFESpotLightElement :: IsSVGFESpotLightElement o => o -> SVGFESpotLightElement
toSVGFESpotLightElement = unsafeCastGObject . toGObject

instance IsSVGFESpotLightElement SVGFESpotLightElement
instance IsSVGElement SVGFESpotLightElement
instance IsElement SVGFESpotLightElement
instance IsNode SVGFESpotLightElement
instance GObjectClass SVGFESpotLightElement where
  toGObject = GObject . castRef . unSVGFESpotLightElement
  unsafeCastGObject = SVGFESpotLightElement . castRef . unGObject

castToSVGFESpotLightElement :: GObjectClass obj => obj -> SVGFESpotLightElement
castToSVGFESpotLightElement = castTo gTypeSVGFESpotLightElement "SVGFESpotLightElement"

foreign import javascript unsafe "window[\"SVGFESpotLightElement\"]" gTypeSVGFESpotLightElement' :: JSRef GType
gTypeSVGFESpotLightElement = GType gTypeSVGFESpotLightElement'
#else
type IsSVGFESpotLightElement o = SVGFESpotLightElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFETileElement = SVGFETileElement (JSRef SVGFETileElement) deriving (Eq)

unSVGFETileElement (SVGFETileElement o) = o

instance ToJSRef SVGFETileElement where
  toJSRef = return . unSVGFETileElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFETileElement where
  fromJSRef = return . fmap SVGFETileElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFETileElement o
toSVGFETileElement :: IsSVGFETileElement o => o -> SVGFETileElement
toSVGFETileElement = unsafeCastGObject . toGObject

instance IsSVGFETileElement SVGFETileElement
instance IsSVGElement SVGFETileElement
instance IsElement SVGFETileElement
instance IsNode SVGFETileElement
instance GObjectClass SVGFETileElement where
  toGObject = GObject . castRef . unSVGFETileElement
  unsafeCastGObject = SVGFETileElement . castRef . unGObject

castToSVGFETileElement :: GObjectClass obj => obj -> SVGFETileElement
castToSVGFETileElement = castTo gTypeSVGFETileElement "SVGFETileElement"

foreign import javascript unsafe "window[\"SVGFETileElement\"]" gTypeSVGFETileElement' :: JSRef GType
gTypeSVGFETileElement = GType gTypeSVGFETileElement'
#else
type IsSVGFETileElement o = SVGFETileElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFETurbulenceElement = SVGFETurbulenceElement (JSRef SVGFETurbulenceElement) deriving (Eq)

unSVGFETurbulenceElement (SVGFETurbulenceElement o) = o

instance ToJSRef SVGFETurbulenceElement where
  toJSRef = return . unSVGFETurbulenceElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFETurbulenceElement where
  fromJSRef = return . fmap SVGFETurbulenceElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFETurbulenceElement o
toSVGFETurbulenceElement :: IsSVGFETurbulenceElement o => o -> SVGFETurbulenceElement
toSVGFETurbulenceElement = unsafeCastGObject . toGObject

instance IsSVGFETurbulenceElement SVGFETurbulenceElement
instance IsSVGElement SVGFETurbulenceElement
instance IsElement SVGFETurbulenceElement
instance IsNode SVGFETurbulenceElement
instance GObjectClass SVGFETurbulenceElement where
  toGObject = GObject . castRef . unSVGFETurbulenceElement
  unsafeCastGObject = SVGFETurbulenceElement . castRef . unGObject

castToSVGFETurbulenceElement :: GObjectClass obj => obj -> SVGFETurbulenceElement
castToSVGFETurbulenceElement = castTo gTypeSVGFETurbulenceElement "SVGFETurbulenceElement"

foreign import javascript unsafe "window[\"SVGFETurbulenceElement\"]" gTypeSVGFETurbulenceElement' :: JSRef GType
gTypeSVGFETurbulenceElement = GType gTypeSVGFETurbulenceElement'
#else
type IsSVGFETurbulenceElement o = SVGFETurbulenceElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFilterElement = SVGFilterElement (JSRef SVGFilterElement) deriving (Eq)

unSVGFilterElement (SVGFilterElement o) = o

instance ToJSRef SVGFilterElement where
  toJSRef = return . unSVGFilterElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFilterElement where
  fromJSRef = return . fmap SVGFilterElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFilterElement o
toSVGFilterElement :: IsSVGFilterElement o => o -> SVGFilterElement
toSVGFilterElement = unsafeCastGObject . toGObject

instance IsSVGFilterElement SVGFilterElement
instance IsSVGElement SVGFilterElement
instance IsElement SVGFilterElement
instance IsNode SVGFilterElement
instance GObjectClass SVGFilterElement where
  toGObject = GObject . castRef . unSVGFilterElement
  unsafeCastGObject = SVGFilterElement . castRef . unGObject

castToSVGFilterElement :: GObjectClass obj => obj -> SVGFilterElement
castToSVGFilterElement = castTo gTypeSVGFilterElement "SVGFilterElement"

foreign import javascript unsafe "window[\"SVGFilterElement\"]" gTypeSVGFilterElement' :: JSRef GType
gTypeSVGFilterElement = GType gTypeSVGFilterElement'
#else
type IsSVGFilterElement o = SVGFilterElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFilterPrimitiveStandardAttributes = SVGFilterPrimitiveStandardAttributes (JSRef SVGFilterPrimitiveStandardAttributes) deriving (Eq)

unSVGFilterPrimitiveStandardAttributes (SVGFilterPrimitiveStandardAttributes o) = o

instance ToJSRef SVGFilterPrimitiveStandardAttributes where
  toJSRef = return . unSVGFilterPrimitiveStandardAttributes
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFilterPrimitiveStandardAttributes where
  fromJSRef = return . fmap SVGFilterPrimitiveStandardAttributes . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGFilterPrimitiveStandardAttributes o
toSVGFilterPrimitiveStandardAttributes :: IsSVGFilterPrimitiveStandardAttributes o => o -> SVGFilterPrimitiveStandardAttributes
toSVGFilterPrimitiveStandardAttributes = unsafeCastGObject . toGObject

instance IsSVGFilterPrimitiveStandardAttributes SVGFilterPrimitiveStandardAttributes
instance GObjectClass SVGFilterPrimitiveStandardAttributes where
  toGObject = GObject . castRef . unSVGFilterPrimitiveStandardAttributes
  unsafeCastGObject = SVGFilterPrimitiveStandardAttributes . castRef . unGObject

castToSVGFilterPrimitiveStandardAttributes :: GObjectClass obj => obj -> SVGFilterPrimitiveStandardAttributes
castToSVGFilterPrimitiveStandardAttributes = castTo gTypeSVGFilterPrimitiveStandardAttributes "SVGFilterPrimitiveStandardAttributes"

foreign import javascript unsafe "window[\"SVGFilterPrimitiveStandardAttributes\"]" gTypeSVGFilterPrimitiveStandardAttributes' :: JSRef GType
gTypeSVGFilterPrimitiveStandardAttributes = GType gTypeSVGFilterPrimitiveStandardAttributes'
#else
type IsSVGFilterPrimitiveStandardAttributes o = SVGFilterPrimitiveStandardAttributesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFitToViewBox = SVGFitToViewBox (JSRef SVGFitToViewBox) deriving (Eq)

unSVGFitToViewBox (SVGFitToViewBox o) = o

instance ToJSRef SVGFitToViewBox where
  toJSRef = return . unSVGFitToViewBox
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFitToViewBox where
  fromJSRef = return . fmap SVGFitToViewBox . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGFitToViewBox o
toSVGFitToViewBox :: IsSVGFitToViewBox o => o -> SVGFitToViewBox
toSVGFitToViewBox = unsafeCastGObject . toGObject

instance IsSVGFitToViewBox SVGFitToViewBox
instance GObjectClass SVGFitToViewBox where
  toGObject = GObject . castRef . unSVGFitToViewBox
  unsafeCastGObject = SVGFitToViewBox . castRef . unGObject

castToSVGFitToViewBox :: GObjectClass obj => obj -> SVGFitToViewBox
castToSVGFitToViewBox = castTo gTypeSVGFitToViewBox "SVGFitToViewBox"

foreign import javascript unsafe "window[\"SVGFitToViewBox\"]" gTypeSVGFitToViewBox' :: JSRef GType
gTypeSVGFitToViewBox = GType gTypeSVGFitToViewBox'
#else
type IsSVGFitToViewBox o = SVGFitToViewBoxClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontElement = SVGFontElement (JSRef SVGFontElement) deriving (Eq)

unSVGFontElement (SVGFontElement o) = o

instance ToJSRef SVGFontElement where
  toJSRef = return . unSVGFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontElement where
  fromJSRef = return . fmap SVGFontElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontElement o
toSVGFontElement :: IsSVGFontElement o => o -> SVGFontElement
toSVGFontElement = unsafeCastGObject . toGObject

instance IsSVGFontElement SVGFontElement
instance IsSVGElement SVGFontElement
instance IsElement SVGFontElement
instance IsNode SVGFontElement
instance GObjectClass SVGFontElement where
  toGObject = GObject . castRef . unSVGFontElement
  unsafeCastGObject = SVGFontElement . castRef . unGObject

castToSVGFontElement :: GObjectClass obj => obj -> SVGFontElement
castToSVGFontElement = castTo gTypeSVGFontElement "SVGFontElement"

foreign import javascript unsafe "window[\"SVGFontElement\"]" gTypeSVGFontElement' :: JSRef GType
gTypeSVGFontElement = GType gTypeSVGFontElement'
#else
type IsSVGFontElement o = SVGFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontFaceElement = SVGFontFaceElement (JSRef SVGFontFaceElement) deriving (Eq)

unSVGFontFaceElement (SVGFontFaceElement o) = o

instance ToJSRef SVGFontFaceElement where
  toJSRef = return . unSVGFontFaceElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceElement where
  fromJSRef = return . fmap SVGFontFaceElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontFaceElement o
toSVGFontFaceElement :: IsSVGFontFaceElement o => o -> SVGFontFaceElement
toSVGFontFaceElement = unsafeCastGObject . toGObject

instance IsSVGFontFaceElement SVGFontFaceElement
instance IsSVGElement SVGFontFaceElement
instance IsElement SVGFontFaceElement
instance IsNode SVGFontFaceElement
instance GObjectClass SVGFontFaceElement where
  toGObject = GObject . castRef . unSVGFontFaceElement
  unsafeCastGObject = SVGFontFaceElement . castRef . unGObject

castToSVGFontFaceElement :: GObjectClass obj => obj -> SVGFontFaceElement
castToSVGFontFaceElement = castTo gTypeSVGFontFaceElement "SVGFontFaceElement"

foreign import javascript unsafe "window[\"SVGFontFaceElement\"]" gTypeSVGFontFaceElement' :: JSRef GType
gTypeSVGFontFaceElement = GType gTypeSVGFontFaceElement'
#else
type IsSVGFontFaceElement o = SVGFontFaceElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontFaceFormatElement = SVGFontFaceFormatElement (JSRef SVGFontFaceFormatElement) deriving (Eq)

unSVGFontFaceFormatElement (SVGFontFaceFormatElement o) = o

instance ToJSRef SVGFontFaceFormatElement where
  toJSRef = return . unSVGFontFaceFormatElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceFormatElement where
  fromJSRef = return . fmap SVGFontFaceFormatElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontFaceFormatElement o
toSVGFontFaceFormatElement :: IsSVGFontFaceFormatElement o => o -> SVGFontFaceFormatElement
toSVGFontFaceFormatElement = unsafeCastGObject . toGObject

instance IsSVGFontFaceFormatElement SVGFontFaceFormatElement
instance IsSVGElement SVGFontFaceFormatElement
instance IsElement SVGFontFaceFormatElement
instance IsNode SVGFontFaceFormatElement
instance GObjectClass SVGFontFaceFormatElement where
  toGObject = GObject . castRef . unSVGFontFaceFormatElement
  unsafeCastGObject = SVGFontFaceFormatElement . castRef . unGObject

castToSVGFontFaceFormatElement :: GObjectClass obj => obj -> SVGFontFaceFormatElement
castToSVGFontFaceFormatElement = castTo gTypeSVGFontFaceFormatElement "SVGFontFaceFormatElement"

foreign import javascript unsafe "window[\"SVGFontFaceFormatElement\"]" gTypeSVGFontFaceFormatElement' :: JSRef GType
gTypeSVGFontFaceFormatElement = GType gTypeSVGFontFaceFormatElement'
#else
type IsSVGFontFaceFormatElement o = SVGFontFaceFormatElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontFaceNameElement = SVGFontFaceNameElement (JSRef SVGFontFaceNameElement) deriving (Eq)

unSVGFontFaceNameElement (SVGFontFaceNameElement o) = o

instance ToJSRef SVGFontFaceNameElement where
  toJSRef = return . unSVGFontFaceNameElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceNameElement where
  fromJSRef = return . fmap SVGFontFaceNameElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontFaceNameElement o
toSVGFontFaceNameElement :: IsSVGFontFaceNameElement o => o -> SVGFontFaceNameElement
toSVGFontFaceNameElement = unsafeCastGObject . toGObject

instance IsSVGFontFaceNameElement SVGFontFaceNameElement
instance IsSVGElement SVGFontFaceNameElement
instance IsElement SVGFontFaceNameElement
instance IsNode SVGFontFaceNameElement
instance GObjectClass SVGFontFaceNameElement where
  toGObject = GObject . castRef . unSVGFontFaceNameElement
  unsafeCastGObject = SVGFontFaceNameElement . castRef . unGObject

castToSVGFontFaceNameElement :: GObjectClass obj => obj -> SVGFontFaceNameElement
castToSVGFontFaceNameElement = castTo gTypeSVGFontFaceNameElement "SVGFontFaceNameElement"

foreign import javascript unsafe "window[\"SVGFontFaceNameElement\"]" gTypeSVGFontFaceNameElement' :: JSRef GType
gTypeSVGFontFaceNameElement = GType gTypeSVGFontFaceNameElement'
#else
type IsSVGFontFaceNameElement o = SVGFontFaceNameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontFaceSrcElement = SVGFontFaceSrcElement (JSRef SVGFontFaceSrcElement) deriving (Eq)

unSVGFontFaceSrcElement (SVGFontFaceSrcElement o) = o

instance ToJSRef SVGFontFaceSrcElement where
  toJSRef = return . unSVGFontFaceSrcElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceSrcElement where
  fromJSRef = return . fmap SVGFontFaceSrcElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontFaceSrcElement o
toSVGFontFaceSrcElement :: IsSVGFontFaceSrcElement o => o -> SVGFontFaceSrcElement
toSVGFontFaceSrcElement = unsafeCastGObject . toGObject

instance IsSVGFontFaceSrcElement SVGFontFaceSrcElement
instance IsSVGElement SVGFontFaceSrcElement
instance IsElement SVGFontFaceSrcElement
instance IsNode SVGFontFaceSrcElement
instance GObjectClass SVGFontFaceSrcElement where
  toGObject = GObject . castRef . unSVGFontFaceSrcElement
  unsafeCastGObject = SVGFontFaceSrcElement . castRef . unGObject

castToSVGFontFaceSrcElement :: GObjectClass obj => obj -> SVGFontFaceSrcElement
castToSVGFontFaceSrcElement = castTo gTypeSVGFontFaceSrcElement "SVGFontFaceSrcElement"

foreign import javascript unsafe "window[\"SVGFontFaceSrcElement\"]" gTypeSVGFontFaceSrcElement' :: JSRef GType
gTypeSVGFontFaceSrcElement = GType gTypeSVGFontFaceSrcElement'
#else
type IsSVGFontFaceSrcElement o = SVGFontFaceSrcElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGFontFaceUriElement = SVGFontFaceUriElement (JSRef SVGFontFaceUriElement) deriving (Eq)

unSVGFontFaceUriElement (SVGFontFaceUriElement o) = o

instance ToJSRef SVGFontFaceUriElement where
  toJSRef = return . unSVGFontFaceUriElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceUriElement where
  fromJSRef = return . fmap SVGFontFaceUriElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGFontFaceUriElement o
toSVGFontFaceUriElement :: IsSVGFontFaceUriElement o => o -> SVGFontFaceUriElement
toSVGFontFaceUriElement = unsafeCastGObject . toGObject

instance IsSVGFontFaceUriElement SVGFontFaceUriElement
instance IsSVGElement SVGFontFaceUriElement
instance IsElement SVGFontFaceUriElement
instance IsNode SVGFontFaceUriElement
instance GObjectClass SVGFontFaceUriElement where
  toGObject = GObject . castRef . unSVGFontFaceUriElement
  unsafeCastGObject = SVGFontFaceUriElement . castRef . unGObject

castToSVGFontFaceUriElement :: GObjectClass obj => obj -> SVGFontFaceUriElement
castToSVGFontFaceUriElement = castTo gTypeSVGFontFaceUriElement "SVGFontFaceUriElement"

foreign import javascript unsafe "window[\"SVGFontFaceUriElement\"]" gTypeSVGFontFaceUriElement' :: JSRef GType
gTypeSVGFontFaceUriElement = GType gTypeSVGFontFaceUriElement'
#else
type IsSVGFontFaceUriElement o = SVGFontFaceUriElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGForeignObjectElement = SVGForeignObjectElement (JSRef SVGForeignObjectElement) deriving (Eq)

unSVGForeignObjectElement (SVGForeignObjectElement o) = o

instance ToJSRef SVGForeignObjectElement where
  toJSRef = return . unSVGForeignObjectElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGForeignObjectElement where
  fromJSRef = return . fmap SVGForeignObjectElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGForeignObjectElement o
toSVGForeignObjectElement :: IsSVGForeignObjectElement o => o -> SVGForeignObjectElement
toSVGForeignObjectElement = unsafeCastGObject . toGObject

instance IsSVGForeignObjectElement SVGForeignObjectElement
instance IsSVGGraphicsElement SVGForeignObjectElement
instance IsSVGElement SVGForeignObjectElement
instance IsElement SVGForeignObjectElement
instance IsNode SVGForeignObjectElement
instance GObjectClass SVGForeignObjectElement where
  toGObject = GObject . castRef . unSVGForeignObjectElement
  unsafeCastGObject = SVGForeignObjectElement . castRef . unGObject

castToSVGForeignObjectElement :: GObjectClass obj => obj -> SVGForeignObjectElement
castToSVGForeignObjectElement = castTo gTypeSVGForeignObjectElement "SVGForeignObjectElement"

foreign import javascript unsafe "window[\"SVGForeignObjectElement\"]" gTypeSVGForeignObjectElement' :: JSRef GType
gTypeSVGForeignObjectElement = GType gTypeSVGForeignObjectElement'
#else
type IsSVGForeignObjectElement o = SVGForeignObjectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGGElement = SVGGElement (JSRef SVGGElement) deriving (Eq)

unSVGGElement (SVGGElement o) = o

instance ToJSRef SVGGElement where
  toJSRef = return . unSVGGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGElement where
  fromJSRef = return . fmap SVGGElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGGElement o
toSVGGElement :: IsSVGGElement o => o -> SVGGElement
toSVGGElement = unsafeCastGObject . toGObject

instance IsSVGGElement SVGGElement
instance IsSVGGraphicsElement SVGGElement
instance IsSVGElement SVGGElement
instance IsElement SVGGElement
instance IsNode SVGGElement
instance GObjectClass SVGGElement where
  toGObject = GObject . castRef . unSVGGElement
  unsafeCastGObject = SVGGElement . castRef . unGObject

castToSVGGElement :: GObjectClass obj => obj -> SVGGElement
castToSVGGElement = castTo gTypeSVGGElement "SVGGElement"

foreign import javascript unsafe "window[\"SVGGElement\"]" gTypeSVGGElement' :: JSRef GType
gTypeSVGGElement = GType gTypeSVGGElement'
#else
type IsSVGGElement o = SVGGElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGGlyphElement = SVGGlyphElement (JSRef SVGGlyphElement) deriving (Eq)

unSVGGlyphElement (SVGGlyphElement o) = o

instance ToJSRef SVGGlyphElement where
  toJSRef = return . unSVGGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGlyphElement where
  fromJSRef = return . fmap SVGGlyphElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGlyphElement o
toSVGGlyphElement :: IsSVGGlyphElement o => o -> SVGGlyphElement
toSVGGlyphElement = unsafeCastGObject . toGObject

instance IsSVGGlyphElement SVGGlyphElement
instance IsSVGElement SVGGlyphElement
instance IsElement SVGGlyphElement
instance IsNode SVGGlyphElement
instance GObjectClass SVGGlyphElement where
  toGObject = GObject . castRef . unSVGGlyphElement
  unsafeCastGObject = SVGGlyphElement . castRef . unGObject

castToSVGGlyphElement :: GObjectClass obj => obj -> SVGGlyphElement
castToSVGGlyphElement = castTo gTypeSVGGlyphElement "SVGGlyphElement"

foreign import javascript unsafe "window[\"SVGGlyphElement\"]" gTypeSVGGlyphElement' :: JSRef GType
gTypeSVGGlyphElement = GType gTypeSVGGlyphElement'
#else
type IsSVGGlyphElement o = SVGGlyphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGGlyphRefElement = SVGGlyphRefElement (JSRef SVGGlyphRefElement) deriving (Eq)

unSVGGlyphRefElement (SVGGlyphRefElement o) = o

instance ToJSRef SVGGlyphRefElement where
  toJSRef = return . unSVGGlyphRefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGlyphRefElement where
  fromJSRef = return . fmap SVGGlyphRefElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGlyphRefElement o
toSVGGlyphRefElement :: IsSVGGlyphRefElement o => o -> SVGGlyphRefElement
toSVGGlyphRefElement = unsafeCastGObject . toGObject

instance IsSVGGlyphRefElement SVGGlyphRefElement
instance IsSVGElement SVGGlyphRefElement
instance IsElement SVGGlyphRefElement
instance IsNode SVGGlyphRefElement
instance GObjectClass SVGGlyphRefElement where
  toGObject = GObject . castRef . unSVGGlyphRefElement
  unsafeCastGObject = SVGGlyphRefElement . castRef . unGObject

castToSVGGlyphRefElement :: GObjectClass obj => obj -> SVGGlyphRefElement
castToSVGGlyphRefElement = castTo gTypeSVGGlyphRefElement "SVGGlyphRefElement"

foreign import javascript unsafe "window[\"SVGGlyphRefElement\"]" gTypeSVGGlyphRefElement' :: JSRef GType
gTypeSVGGlyphRefElement = GType gTypeSVGGlyphRefElement'
#else
type IsSVGGlyphRefElement o = SVGGlyphRefElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGGradientElement = SVGGradientElement (JSRef SVGGradientElement) deriving (Eq)

unSVGGradientElement (SVGGradientElement o) = o

instance ToJSRef SVGGradientElement where
  toJSRef = return . unSVGGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGradientElement where
  fromJSRef = return . fmap SVGGradientElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGradientElement o
toSVGGradientElement :: IsSVGGradientElement o => o -> SVGGradientElement
toSVGGradientElement = unsafeCastGObject . toGObject

instance IsSVGGradientElement SVGGradientElement
instance IsSVGElement SVGGradientElement
instance IsElement SVGGradientElement
instance IsNode SVGGradientElement
instance GObjectClass SVGGradientElement where
  toGObject = GObject . castRef . unSVGGradientElement
  unsafeCastGObject = SVGGradientElement . castRef . unGObject

castToSVGGradientElement :: GObjectClass obj => obj -> SVGGradientElement
castToSVGGradientElement = castTo gTypeSVGGradientElement "SVGGradientElement"

foreign import javascript unsafe "window[\"SVGGradientElement\"]" gTypeSVGGradientElement' :: JSRef GType
gTypeSVGGradientElement = GType gTypeSVGGradientElement'
#else
type IsSVGGradientElement o = SVGGradientElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGGraphicsElement = SVGGraphicsElement (JSRef SVGGraphicsElement) deriving (Eq)

unSVGGraphicsElement (SVGGraphicsElement o) = o

instance ToJSRef SVGGraphicsElement where
  toJSRef = return . unSVGGraphicsElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGraphicsElement where
  fromJSRef = return . fmap SVGGraphicsElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGraphicsElement o
toSVGGraphicsElement :: IsSVGGraphicsElement o => o -> SVGGraphicsElement
toSVGGraphicsElement = unsafeCastGObject . toGObject

instance IsSVGGraphicsElement SVGGraphicsElement
instance IsSVGElement SVGGraphicsElement
instance IsElement SVGGraphicsElement
instance IsNode SVGGraphicsElement
instance GObjectClass SVGGraphicsElement where
  toGObject = GObject . castRef . unSVGGraphicsElement
  unsafeCastGObject = SVGGraphicsElement . castRef . unGObject

castToSVGGraphicsElement :: GObjectClass obj => obj -> SVGGraphicsElement
castToSVGGraphicsElement = castTo gTypeSVGGraphicsElement "SVGGraphicsElement"

foreign import javascript unsafe "window[\"SVGGraphicsElement\"]" gTypeSVGGraphicsElement' :: JSRef GType
gTypeSVGGraphicsElement = GType gTypeSVGGraphicsElement'
#else
type IsSVGGraphicsElement o = SVGGraphicsElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGHKernElement = SVGHKernElement (JSRef SVGHKernElement) deriving (Eq)

unSVGHKernElement (SVGHKernElement o) = o

instance ToJSRef SVGHKernElement where
  toJSRef = return . unSVGHKernElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGHKernElement where
  fromJSRef = return . fmap SVGHKernElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGHKernElement o
toSVGHKernElement :: IsSVGHKernElement o => o -> SVGHKernElement
toSVGHKernElement = unsafeCastGObject . toGObject

instance IsSVGHKernElement SVGHKernElement
instance IsSVGElement SVGHKernElement
instance IsElement SVGHKernElement
instance IsNode SVGHKernElement
instance GObjectClass SVGHKernElement where
  toGObject = GObject . castRef . unSVGHKernElement
  unsafeCastGObject = SVGHKernElement . castRef . unGObject

castToSVGHKernElement :: GObjectClass obj => obj -> SVGHKernElement
castToSVGHKernElement = castTo gTypeSVGHKernElement "SVGHKernElement"

foreign import javascript unsafe "window[\"SVGHKernElement\"]" gTypeSVGHKernElement' :: JSRef GType
gTypeSVGHKernElement = GType gTypeSVGHKernElement'
#else
type IsSVGHKernElement o = SVGHKernElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGImageElement = SVGImageElement (JSRef SVGImageElement) deriving (Eq)

unSVGImageElement (SVGImageElement o) = o

instance ToJSRef SVGImageElement where
  toJSRef = return . unSVGImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGImageElement where
  fromJSRef = return . fmap SVGImageElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGImageElement o
toSVGImageElement :: IsSVGImageElement o => o -> SVGImageElement
toSVGImageElement = unsafeCastGObject . toGObject

instance IsSVGImageElement SVGImageElement
instance IsSVGGraphicsElement SVGImageElement
instance IsSVGElement SVGImageElement
instance IsElement SVGImageElement
instance IsNode SVGImageElement
instance GObjectClass SVGImageElement where
  toGObject = GObject . castRef . unSVGImageElement
  unsafeCastGObject = SVGImageElement . castRef . unGObject

castToSVGImageElement :: GObjectClass obj => obj -> SVGImageElement
castToSVGImageElement = castTo gTypeSVGImageElement "SVGImageElement"

foreign import javascript unsafe "window[\"SVGImageElement\"]" gTypeSVGImageElement' :: JSRef GType
gTypeSVGImageElement = GType gTypeSVGImageElement'
#else
type IsSVGImageElement o = SVGImageElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGLength = SVGLength (JSRef SVGLength) deriving (Eq)

unSVGLength (SVGLength o) = o

instance ToJSRef SVGLength where
  toJSRef = return . unSVGLength
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLength where
  fromJSRef = return . fmap SVGLength . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGLength o
toSVGLength :: IsSVGLength o => o -> SVGLength
toSVGLength = unsafeCastGObject . toGObject

instance IsSVGLength SVGLength
instance GObjectClass SVGLength where
  toGObject = GObject . castRef . unSVGLength
  unsafeCastGObject = SVGLength . castRef . unGObject

castToSVGLength :: GObjectClass obj => obj -> SVGLength
castToSVGLength = castTo gTypeSVGLength "SVGLength"

foreign import javascript unsafe "window[\"SVGLength\"]" gTypeSVGLength' :: JSRef GType
gTypeSVGLength = GType gTypeSVGLength'
#else
type IsSVGLength o = SVGLengthClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGLengthList = SVGLengthList (JSRef SVGLengthList) deriving (Eq)

unSVGLengthList (SVGLengthList o) = o

instance ToJSRef SVGLengthList where
  toJSRef = return . unSVGLengthList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLengthList where
  fromJSRef = return . fmap SVGLengthList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGLengthList o
toSVGLengthList :: IsSVGLengthList o => o -> SVGLengthList
toSVGLengthList = unsafeCastGObject . toGObject

instance IsSVGLengthList SVGLengthList
instance GObjectClass SVGLengthList where
  toGObject = GObject . castRef . unSVGLengthList
  unsafeCastGObject = SVGLengthList . castRef . unGObject

castToSVGLengthList :: GObjectClass obj => obj -> SVGLengthList
castToSVGLengthList = castTo gTypeSVGLengthList "SVGLengthList"

foreign import javascript unsafe "window[\"SVGLengthList\"]" gTypeSVGLengthList' :: JSRef GType
gTypeSVGLengthList = GType gTypeSVGLengthList'
#else
type IsSVGLengthList o = SVGLengthListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGLineElement = SVGLineElement (JSRef SVGLineElement) deriving (Eq)

unSVGLineElement (SVGLineElement o) = o

instance ToJSRef SVGLineElement where
  toJSRef = return . unSVGLineElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLineElement where
  fromJSRef = return . fmap SVGLineElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGLineElement o
toSVGLineElement :: IsSVGLineElement o => o -> SVGLineElement
toSVGLineElement = unsafeCastGObject . toGObject

instance IsSVGLineElement SVGLineElement
instance IsSVGGraphicsElement SVGLineElement
instance IsSVGElement SVGLineElement
instance IsElement SVGLineElement
instance IsNode SVGLineElement
instance GObjectClass SVGLineElement where
  toGObject = GObject . castRef . unSVGLineElement
  unsafeCastGObject = SVGLineElement . castRef . unGObject

castToSVGLineElement :: GObjectClass obj => obj -> SVGLineElement
castToSVGLineElement = castTo gTypeSVGLineElement "SVGLineElement"

foreign import javascript unsafe "window[\"SVGLineElement\"]" gTypeSVGLineElement' :: JSRef GType
gTypeSVGLineElement = GType gTypeSVGLineElement'
#else
type IsSVGLineElement o = SVGLineElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGLinearGradientElement = SVGLinearGradientElement (JSRef SVGLinearGradientElement) deriving (Eq)

unSVGLinearGradientElement (SVGLinearGradientElement o) = o

instance ToJSRef SVGLinearGradientElement where
  toJSRef = return . unSVGLinearGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLinearGradientElement where
  fromJSRef = return . fmap SVGLinearGradientElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGradientElement o => IsSVGLinearGradientElement o
toSVGLinearGradientElement :: IsSVGLinearGradientElement o => o -> SVGLinearGradientElement
toSVGLinearGradientElement = unsafeCastGObject . toGObject

instance IsSVGLinearGradientElement SVGLinearGradientElement
instance IsSVGGradientElement SVGLinearGradientElement
instance IsSVGElement SVGLinearGradientElement
instance IsElement SVGLinearGradientElement
instance IsNode SVGLinearGradientElement
instance GObjectClass SVGLinearGradientElement where
  toGObject = GObject . castRef . unSVGLinearGradientElement
  unsafeCastGObject = SVGLinearGradientElement . castRef . unGObject

castToSVGLinearGradientElement :: GObjectClass obj => obj -> SVGLinearGradientElement
castToSVGLinearGradientElement = castTo gTypeSVGLinearGradientElement "SVGLinearGradientElement"

foreign import javascript unsafe "window[\"SVGLinearGradientElement\"]" gTypeSVGLinearGradientElement' :: JSRef GType
gTypeSVGLinearGradientElement = GType gTypeSVGLinearGradientElement'
#else
type IsSVGLinearGradientElement o = SVGLinearGradientElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMPathElement = SVGMPathElement (JSRef SVGMPathElement) deriving (Eq)

unSVGMPathElement (SVGMPathElement o) = o

instance ToJSRef SVGMPathElement where
  toJSRef = return . unSVGMPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMPathElement where
  fromJSRef = return . fmap SVGMPathElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGMPathElement o
toSVGMPathElement :: IsSVGMPathElement o => o -> SVGMPathElement
toSVGMPathElement = unsafeCastGObject . toGObject

instance IsSVGMPathElement SVGMPathElement
instance IsSVGElement SVGMPathElement
instance IsElement SVGMPathElement
instance IsNode SVGMPathElement
instance GObjectClass SVGMPathElement where
  toGObject = GObject . castRef . unSVGMPathElement
  unsafeCastGObject = SVGMPathElement . castRef . unGObject

castToSVGMPathElement :: GObjectClass obj => obj -> SVGMPathElement
castToSVGMPathElement = castTo gTypeSVGMPathElement "SVGMPathElement"

foreign import javascript unsafe "window[\"SVGMPathElement\"]" gTypeSVGMPathElement' :: JSRef GType
gTypeSVGMPathElement = GType gTypeSVGMPathElement'
#else
type IsSVGMPathElement o = SVGMPathElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMarkerElement = SVGMarkerElement (JSRef SVGMarkerElement) deriving (Eq)

unSVGMarkerElement (SVGMarkerElement o) = o

instance ToJSRef SVGMarkerElement where
  toJSRef = return . unSVGMarkerElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMarkerElement where
  fromJSRef = return . fmap SVGMarkerElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGMarkerElement o
toSVGMarkerElement :: IsSVGMarkerElement o => o -> SVGMarkerElement
toSVGMarkerElement = unsafeCastGObject . toGObject

instance IsSVGMarkerElement SVGMarkerElement
instance IsSVGElement SVGMarkerElement
instance IsElement SVGMarkerElement
instance IsNode SVGMarkerElement
instance GObjectClass SVGMarkerElement where
  toGObject = GObject . castRef . unSVGMarkerElement
  unsafeCastGObject = SVGMarkerElement . castRef . unGObject

castToSVGMarkerElement :: GObjectClass obj => obj -> SVGMarkerElement
castToSVGMarkerElement = castTo gTypeSVGMarkerElement "SVGMarkerElement"

foreign import javascript unsafe "window[\"SVGMarkerElement\"]" gTypeSVGMarkerElement' :: JSRef GType
gTypeSVGMarkerElement = GType gTypeSVGMarkerElement'
#else
type IsSVGMarkerElement o = SVGMarkerElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMaskElement = SVGMaskElement (JSRef SVGMaskElement) deriving (Eq)

unSVGMaskElement (SVGMaskElement o) = o

instance ToJSRef SVGMaskElement where
  toJSRef = return . unSVGMaskElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMaskElement where
  fromJSRef = return . fmap SVGMaskElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGMaskElement o
toSVGMaskElement :: IsSVGMaskElement o => o -> SVGMaskElement
toSVGMaskElement = unsafeCastGObject . toGObject

instance IsSVGMaskElement SVGMaskElement
instance IsSVGElement SVGMaskElement
instance IsElement SVGMaskElement
instance IsNode SVGMaskElement
instance GObjectClass SVGMaskElement where
  toGObject = GObject . castRef . unSVGMaskElement
  unsafeCastGObject = SVGMaskElement . castRef . unGObject

castToSVGMaskElement :: GObjectClass obj => obj -> SVGMaskElement
castToSVGMaskElement = castTo gTypeSVGMaskElement "SVGMaskElement"

foreign import javascript unsafe "window[\"SVGMaskElement\"]" gTypeSVGMaskElement' :: JSRef GType
gTypeSVGMaskElement = GType gTypeSVGMaskElement'
#else
type IsSVGMaskElement o = SVGMaskElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMatrix = SVGMatrix (JSRef SVGMatrix) deriving (Eq)

unSVGMatrix (SVGMatrix o) = o

instance ToJSRef SVGMatrix where
  toJSRef = return . unSVGMatrix
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMatrix where
  fromJSRef = return . fmap SVGMatrix . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGMatrix o
toSVGMatrix :: IsSVGMatrix o => o -> SVGMatrix
toSVGMatrix = unsafeCastGObject . toGObject

instance IsSVGMatrix SVGMatrix
instance GObjectClass SVGMatrix where
  toGObject = GObject . castRef . unSVGMatrix
  unsafeCastGObject = SVGMatrix . castRef . unGObject

castToSVGMatrix :: GObjectClass obj => obj -> SVGMatrix
castToSVGMatrix = castTo gTypeSVGMatrix "SVGMatrix"

foreign import javascript unsafe "window[\"SVGMatrix\"]" gTypeSVGMatrix' :: JSRef GType
gTypeSVGMatrix = GType gTypeSVGMatrix'
#else
type IsSVGMatrix o = SVGMatrixClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMetadataElement = SVGMetadataElement (JSRef SVGMetadataElement) deriving (Eq)

unSVGMetadataElement (SVGMetadataElement o) = o

instance ToJSRef SVGMetadataElement where
  toJSRef = return . unSVGMetadataElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMetadataElement where
  fromJSRef = return . fmap SVGMetadataElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGMetadataElement o
toSVGMetadataElement :: IsSVGMetadataElement o => o -> SVGMetadataElement
toSVGMetadataElement = unsafeCastGObject . toGObject

instance IsSVGMetadataElement SVGMetadataElement
instance IsSVGElement SVGMetadataElement
instance IsElement SVGMetadataElement
instance IsNode SVGMetadataElement
instance GObjectClass SVGMetadataElement where
  toGObject = GObject . castRef . unSVGMetadataElement
  unsafeCastGObject = SVGMetadataElement . castRef . unGObject

castToSVGMetadataElement :: GObjectClass obj => obj -> SVGMetadataElement
castToSVGMetadataElement = castTo gTypeSVGMetadataElement "SVGMetadataElement"

foreign import javascript unsafe "window[\"SVGMetadataElement\"]" gTypeSVGMetadataElement' :: JSRef GType
gTypeSVGMetadataElement = GType gTypeSVGMetadataElement'
#else
type IsSVGMetadataElement o = SVGMetadataElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGMissingGlyphElement = SVGMissingGlyphElement (JSRef SVGMissingGlyphElement) deriving (Eq)

unSVGMissingGlyphElement (SVGMissingGlyphElement o) = o

instance ToJSRef SVGMissingGlyphElement where
  toJSRef = return . unSVGMissingGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMissingGlyphElement where
  fromJSRef = return . fmap SVGMissingGlyphElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGMissingGlyphElement o
toSVGMissingGlyphElement :: IsSVGMissingGlyphElement o => o -> SVGMissingGlyphElement
toSVGMissingGlyphElement = unsafeCastGObject . toGObject

instance IsSVGMissingGlyphElement SVGMissingGlyphElement
instance IsSVGElement SVGMissingGlyphElement
instance IsElement SVGMissingGlyphElement
instance IsNode SVGMissingGlyphElement
instance GObjectClass SVGMissingGlyphElement where
  toGObject = GObject . castRef . unSVGMissingGlyphElement
  unsafeCastGObject = SVGMissingGlyphElement . castRef . unGObject

castToSVGMissingGlyphElement :: GObjectClass obj => obj -> SVGMissingGlyphElement
castToSVGMissingGlyphElement = castTo gTypeSVGMissingGlyphElement "SVGMissingGlyphElement"

foreign import javascript unsafe "window[\"SVGMissingGlyphElement\"]" gTypeSVGMissingGlyphElement' :: JSRef GType
gTypeSVGMissingGlyphElement = GType gTypeSVGMissingGlyphElement'
#else
type IsSVGMissingGlyphElement o = SVGMissingGlyphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGNumber = SVGNumber (JSRef SVGNumber) deriving (Eq)

unSVGNumber (SVGNumber o) = o

instance ToJSRef SVGNumber where
  toJSRef = return . unSVGNumber
  {-# INLINE toJSRef #-}

instance FromJSRef SVGNumber where
  fromJSRef = return . fmap SVGNumber . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGNumber o
toSVGNumber :: IsSVGNumber o => o -> SVGNumber
toSVGNumber = unsafeCastGObject . toGObject

instance IsSVGNumber SVGNumber
instance GObjectClass SVGNumber where
  toGObject = GObject . castRef . unSVGNumber
  unsafeCastGObject = SVGNumber . castRef . unGObject

castToSVGNumber :: GObjectClass obj => obj -> SVGNumber
castToSVGNumber = castTo gTypeSVGNumber "SVGNumber"

foreign import javascript unsafe "window[\"SVGNumber\"]" gTypeSVGNumber' :: JSRef GType
gTypeSVGNumber = GType gTypeSVGNumber'
#else
type IsSVGNumber o = SVGNumberClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGNumberList = SVGNumberList (JSRef SVGNumberList) deriving (Eq)

unSVGNumberList (SVGNumberList o) = o

instance ToJSRef SVGNumberList where
  toJSRef = return . unSVGNumberList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGNumberList where
  fromJSRef = return . fmap SVGNumberList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGNumberList o
toSVGNumberList :: IsSVGNumberList o => o -> SVGNumberList
toSVGNumberList = unsafeCastGObject . toGObject

instance IsSVGNumberList SVGNumberList
instance GObjectClass SVGNumberList where
  toGObject = GObject . castRef . unSVGNumberList
  unsafeCastGObject = SVGNumberList . castRef . unGObject

castToSVGNumberList :: GObjectClass obj => obj -> SVGNumberList
castToSVGNumberList = castTo gTypeSVGNumberList "SVGNumberList"

foreign import javascript unsafe "window[\"SVGNumberList\"]" gTypeSVGNumberList' :: JSRef GType
gTypeSVGNumberList = GType gTypeSVGNumberList'
#else
type IsSVGNumberList o = SVGNumberListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPaint = SVGPaint (JSRef SVGPaint) deriving (Eq)

unSVGPaint (SVGPaint o) = o

instance ToJSRef SVGPaint where
  toJSRef = return . unSVGPaint
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPaint where
  fromJSRef = return . fmap SVGPaint . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGColor o => IsSVGPaint o
toSVGPaint :: IsSVGPaint o => o -> SVGPaint
toSVGPaint = unsafeCastGObject . toGObject

instance IsSVGPaint SVGPaint
instance IsSVGColor SVGPaint
instance IsCSSValue SVGPaint
instance GObjectClass SVGPaint where
  toGObject = GObject . castRef . unSVGPaint
  unsafeCastGObject = SVGPaint . castRef . unGObject

castToSVGPaint :: GObjectClass obj => obj -> SVGPaint
castToSVGPaint = castTo gTypeSVGPaint "SVGPaint"

foreign import javascript unsafe "window[\"SVGPaint\"]" gTypeSVGPaint' :: JSRef GType
gTypeSVGPaint = GType gTypeSVGPaint'
#else
type IsSVGPaint o = SVGPaintClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathElement = SVGPathElement (JSRef SVGPathElement) deriving (Eq)

unSVGPathElement (SVGPathElement o) = o

instance ToJSRef SVGPathElement where
  toJSRef = return . unSVGPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathElement where
  fromJSRef = return . fmap SVGPathElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGPathElement o
toSVGPathElement :: IsSVGPathElement o => o -> SVGPathElement
toSVGPathElement = unsafeCastGObject . toGObject

instance IsSVGPathElement SVGPathElement
instance IsSVGGraphicsElement SVGPathElement
instance IsSVGElement SVGPathElement
instance IsElement SVGPathElement
instance IsNode SVGPathElement
instance GObjectClass SVGPathElement where
  toGObject = GObject . castRef . unSVGPathElement
  unsafeCastGObject = SVGPathElement . castRef . unGObject

castToSVGPathElement :: GObjectClass obj => obj -> SVGPathElement
castToSVGPathElement = castTo gTypeSVGPathElement "SVGPathElement"

foreign import javascript unsafe "window[\"SVGPathElement\"]" gTypeSVGPathElement' :: JSRef GType
gTypeSVGPathElement = GType gTypeSVGPathElement'
#else
type IsSVGPathElement o = SVGPathElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSeg = SVGPathSeg (JSRef SVGPathSeg) deriving (Eq)

unSVGPathSeg (SVGPathSeg o) = o

instance ToJSRef SVGPathSeg where
  toJSRef = return . unSVGPathSeg
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSeg where
  fromJSRef = return . fmap SVGPathSeg . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGPathSeg o
toSVGPathSeg :: IsSVGPathSeg o => o -> SVGPathSeg
toSVGPathSeg = unsafeCastGObject . toGObject

instance IsSVGPathSeg SVGPathSeg
instance GObjectClass SVGPathSeg where
  toGObject = GObject . castRef . unSVGPathSeg
  unsafeCastGObject = SVGPathSeg . castRef . unGObject

castToSVGPathSeg :: GObjectClass obj => obj -> SVGPathSeg
castToSVGPathSeg = castTo gTypeSVGPathSeg "SVGPathSeg"

foreign import javascript unsafe "window[\"SVGPathSeg\"]" gTypeSVGPathSeg' :: JSRef GType
gTypeSVGPathSeg = GType gTypeSVGPathSeg'
#else
type IsSVGPathSeg o = SVGPathSegClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegArcAbs = SVGPathSegArcAbs (JSRef SVGPathSegArcAbs) deriving (Eq)

unSVGPathSegArcAbs (SVGPathSegArcAbs o) = o

instance ToJSRef SVGPathSegArcAbs where
  toJSRef = return . unSVGPathSegArcAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegArcAbs where
  fromJSRef = return . fmap SVGPathSegArcAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegArcAbs o
toSVGPathSegArcAbs :: IsSVGPathSegArcAbs o => o -> SVGPathSegArcAbs
toSVGPathSegArcAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegArcAbs SVGPathSegArcAbs
instance IsSVGPathSeg SVGPathSegArcAbs
instance GObjectClass SVGPathSegArcAbs where
  toGObject = GObject . castRef . unSVGPathSegArcAbs
  unsafeCastGObject = SVGPathSegArcAbs . castRef . unGObject

castToSVGPathSegArcAbs :: GObjectClass obj => obj -> SVGPathSegArcAbs
castToSVGPathSegArcAbs = castTo gTypeSVGPathSegArcAbs "SVGPathSegArcAbs"

foreign import javascript unsafe "window[\"SVGPathSegArcAbs\"]" gTypeSVGPathSegArcAbs' :: JSRef GType
gTypeSVGPathSegArcAbs = GType gTypeSVGPathSegArcAbs'
#else
type IsSVGPathSegArcAbs o = SVGPathSegArcAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegArcRel = SVGPathSegArcRel (JSRef SVGPathSegArcRel) deriving (Eq)

unSVGPathSegArcRel (SVGPathSegArcRel o) = o

instance ToJSRef SVGPathSegArcRel where
  toJSRef = return . unSVGPathSegArcRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegArcRel where
  fromJSRef = return . fmap SVGPathSegArcRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegArcRel o
toSVGPathSegArcRel :: IsSVGPathSegArcRel o => o -> SVGPathSegArcRel
toSVGPathSegArcRel = unsafeCastGObject . toGObject

instance IsSVGPathSegArcRel SVGPathSegArcRel
instance IsSVGPathSeg SVGPathSegArcRel
instance GObjectClass SVGPathSegArcRel where
  toGObject = GObject . castRef . unSVGPathSegArcRel
  unsafeCastGObject = SVGPathSegArcRel . castRef . unGObject

castToSVGPathSegArcRel :: GObjectClass obj => obj -> SVGPathSegArcRel
castToSVGPathSegArcRel = castTo gTypeSVGPathSegArcRel "SVGPathSegArcRel"

foreign import javascript unsafe "window[\"SVGPathSegArcRel\"]" gTypeSVGPathSegArcRel' :: JSRef GType
gTypeSVGPathSegArcRel = GType gTypeSVGPathSegArcRel'
#else
type IsSVGPathSegArcRel o = SVGPathSegArcRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegClosePath = SVGPathSegClosePath (JSRef SVGPathSegClosePath) deriving (Eq)

unSVGPathSegClosePath (SVGPathSegClosePath o) = o

instance ToJSRef SVGPathSegClosePath where
  toJSRef = return . unSVGPathSegClosePath
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegClosePath where
  fromJSRef = return . fmap SVGPathSegClosePath . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegClosePath o
toSVGPathSegClosePath :: IsSVGPathSegClosePath o => o -> SVGPathSegClosePath
toSVGPathSegClosePath = unsafeCastGObject . toGObject

instance IsSVGPathSegClosePath SVGPathSegClosePath
instance IsSVGPathSeg SVGPathSegClosePath
instance GObjectClass SVGPathSegClosePath where
  toGObject = GObject . castRef . unSVGPathSegClosePath
  unsafeCastGObject = SVGPathSegClosePath . castRef . unGObject

castToSVGPathSegClosePath :: GObjectClass obj => obj -> SVGPathSegClosePath
castToSVGPathSegClosePath = castTo gTypeSVGPathSegClosePath "SVGPathSegClosePath"

foreign import javascript unsafe "window[\"SVGPathSegClosePath\"]" gTypeSVGPathSegClosePath' :: JSRef GType
gTypeSVGPathSegClosePath = GType gTypeSVGPathSegClosePath'
#else
type IsSVGPathSegClosePath o = SVGPathSegClosePathClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoCubicAbs = SVGPathSegCurvetoCubicAbs (JSRef SVGPathSegCurvetoCubicAbs) deriving (Eq)

unSVGPathSegCurvetoCubicAbs (SVGPathSegCurvetoCubicAbs o) = o

instance ToJSRef SVGPathSegCurvetoCubicAbs where
  toJSRef = return . unSVGPathSegCurvetoCubicAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoCubicAbs o
toSVGPathSegCurvetoCubicAbs :: IsSVGPathSegCurvetoCubicAbs o => o -> SVGPathSegCurvetoCubicAbs
toSVGPathSegCurvetoCubicAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoCubicAbs SVGPathSegCurvetoCubicAbs
instance IsSVGPathSeg SVGPathSegCurvetoCubicAbs
instance GObjectClass SVGPathSegCurvetoCubicAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicAbs
  unsafeCastGObject = SVGPathSegCurvetoCubicAbs . castRef . unGObject

castToSVGPathSegCurvetoCubicAbs :: GObjectClass obj => obj -> SVGPathSegCurvetoCubicAbs
castToSVGPathSegCurvetoCubicAbs = castTo gTypeSVGPathSegCurvetoCubicAbs "SVGPathSegCurvetoCubicAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicAbs\"]" gTypeSVGPathSegCurvetoCubicAbs' :: JSRef GType
gTypeSVGPathSegCurvetoCubicAbs = GType gTypeSVGPathSegCurvetoCubicAbs'
#else
type IsSVGPathSegCurvetoCubicAbs o = SVGPathSegCurvetoCubicAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoCubicRel = SVGPathSegCurvetoCubicRel (JSRef SVGPathSegCurvetoCubicRel) deriving (Eq)

unSVGPathSegCurvetoCubicRel (SVGPathSegCurvetoCubicRel o) = o

instance ToJSRef SVGPathSegCurvetoCubicRel where
  toJSRef = return . unSVGPathSegCurvetoCubicRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicRel where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoCubicRel o
toSVGPathSegCurvetoCubicRel :: IsSVGPathSegCurvetoCubicRel o => o -> SVGPathSegCurvetoCubicRel
toSVGPathSegCurvetoCubicRel = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoCubicRel SVGPathSegCurvetoCubicRel
instance IsSVGPathSeg SVGPathSegCurvetoCubicRel
instance GObjectClass SVGPathSegCurvetoCubicRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicRel
  unsafeCastGObject = SVGPathSegCurvetoCubicRel . castRef . unGObject

castToSVGPathSegCurvetoCubicRel :: GObjectClass obj => obj -> SVGPathSegCurvetoCubicRel
castToSVGPathSegCurvetoCubicRel = castTo gTypeSVGPathSegCurvetoCubicRel "SVGPathSegCurvetoCubicRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicRel\"]" gTypeSVGPathSegCurvetoCubicRel' :: JSRef GType
gTypeSVGPathSegCurvetoCubicRel = GType gTypeSVGPathSegCurvetoCubicRel'
#else
type IsSVGPathSegCurvetoCubicRel o = SVGPathSegCurvetoCubicRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoCubicSmoothAbs = SVGPathSegCurvetoCubicSmoothAbs (JSRef SVGPathSegCurvetoCubicSmoothAbs) deriving (Eq)

unSVGPathSegCurvetoCubicSmoothAbs (SVGPathSegCurvetoCubicSmoothAbs o) = o

instance ToJSRef SVGPathSegCurvetoCubicSmoothAbs where
  toJSRef = return . unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicSmoothAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicSmoothAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoCubicSmoothAbs o
toSVGPathSegCurvetoCubicSmoothAbs :: IsSVGPathSegCurvetoCubicSmoothAbs o => o -> SVGPathSegCurvetoCubicSmoothAbs
toSVGPathSegCurvetoCubicSmoothAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoCubicSmoothAbs SVGPathSegCurvetoCubicSmoothAbs
instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothAbs
instance GObjectClass SVGPathSegCurvetoCubicSmoothAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicSmoothAbs
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothAbs . castRef . unGObject

castToSVGPathSegCurvetoCubicSmoothAbs :: GObjectClass obj => obj -> SVGPathSegCurvetoCubicSmoothAbs
castToSVGPathSegCurvetoCubicSmoothAbs = castTo gTypeSVGPathSegCurvetoCubicSmoothAbs "SVGPathSegCurvetoCubicSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothAbs\"]" gTypeSVGPathSegCurvetoCubicSmoothAbs' :: JSRef GType
gTypeSVGPathSegCurvetoCubicSmoothAbs = GType gTypeSVGPathSegCurvetoCubicSmoothAbs'
#else
type IsSVGPathSegCurvetoCubicSmoothAbs o = SVGPathSegCurvetoCubicSmoothAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoCubicSmoothRel = SVGPathSegCurvetoCubicSmoothRel (JSRef SVGPathSegCurvetoCubicSmoothRel) deriving (Eq)

unSVGPathSegCurvetoCubicSmoothRel (SVGPathSegCurvetoCubicSmoothRel o) = o

instance ToJSRef SVGPathSegCurvetoCubicSmoothRel where
  toJSRef = return . unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicSmoothRel where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicSmoothRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoCubicSmoothRel o
toSVGPathSegCurvetoCubicSmoothRel :: IsSVGPathSegCurvetoCubicSmoothRel o => o -> SVGPathSegCurvetoCubicSmoothRel
toSVGPathSegCurvetoCubicSmoothRel = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoCubicSmoothRel SVGPathSegCurvetoCubicSmoothRel
instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothRel
instance GObjectClass SVGPathSegCurvetoCubicSmoothRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicSmoothRel
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothRel . castRef . unGObject

castToSVGPathSegCurvetoCubicSmoothRel :: GObjectClass obj => obj -> SVGPathSegCurvetoCubicSmoothRel
castToSVGPathSegCurvetoCubicSmoothRel = castTo gTypeSVGPathSegCurvetoCubicSmoothRel "SVGPathSegCurvetoCubicSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothRel\"]" gTypeSVGPathSegCurvetoCubicSmoothRel' :: JSRef GType
gTypeSVGPathSegCurvetoCubicSmoothRel = GType gTypeSVGPathSegCurvetoCubicSmoothRel'
#else
type IsSVGPathSegCurvetoCubicSmoothRel o = SVGPathSegCurvetoCubicSmoothRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoQuadraticAbs = SVGPathSegCurvetoQuadraticAbs (JSRef SVGPathSegCurvetoQuadraticAbs) deriving (Eq)

unSVGPathSegCurvetoQuadraticAbs (SVGPathSegCurvetoQuadraticAbs o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticAbs where
  toJSRef = return . unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoQuadraticAbs o
toSVGPathSegCurvetoQuadraticAbs :: IsSVGPathSegCurvetoQuadraticAbs o => o -> SVGPathSegCurvetoQuadraticAbs
toSVGPathSegCurvetoQuadraticAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoQuadraticAbs SVGPathSegCurvetoQuadraticAbs
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticAbs
instance GObjectClass SVGPathSegCurvetoQuadraticAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticAbs
  unsafeCastGObject = SVGPathSegCurvetoQuadraticAbs . castRef . unGObject

castToSVGPathSegCurvetoQuadraticAbs :: GObjectClass obj => obj -> SVGPathSegCurvetoQuadraticAbs
castToSVGPathSegCurvetoQuadraticAbs = castTo gTypeSVGPathSegCurvetoQuadraticAbs "SVGPathSegCurvetoQuadraticAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticAbs\"]" gTypeSVGPathSegCurvetoQuadraticAbs' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticAbs = GType gTypeSVGPathSegCurvetoQuadraticAbs'
#else
type IsSVGPathSegCurvetoQuadraticAbs o = SVGPathSegCurvetoQuadraticAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoQuadraticRel = SVGPathSegCurvetoQuadraticRel (JSRef SVGPathSegCurvetoQuadraticRel) deriving (Eq)

unSVGPathSegCurvetoQuadraticRel (SVGPathSegCurvetoQuadraticRel o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticRel where
  toJSRef = return . unSVGPathSegCurvetoQuadraticRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticRel where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoQuadraticRel o
toSVGPathSegCurvetoQuadraticRel :: IsSVGPathSegCurvetoQuadraticRel o => o -> SVGPathSegCurvetoQuadraticRel
toSVGPathSegCurvetoQuadraticRel = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoQuadraticRel SVGPathSegCurvetoQuadraticRel
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticRel
instance GObjectClass SVGPathSegCurvetoQuadraticRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticRel
  unsafeCastGObject = SVGPathSegCurvetoQuadraticRel . castRef . unGObject

castToSVGPathSegCurvetoQuadraticRel :: GObjectClass obj => obj -> SVGPathSegCurvetoQuadraticRel
castToSVGPathSegCurvetoQuadraticRel = castTo gTypeSVGPathSegCurvetoQuadraticRel "SVGPathSegCurvetoQuadraticRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticRel\"]" gTypeSVGPathSegCurvetoQuadraticRel' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticRel = GType gTypeSVGPathSegCurvetoQuadraticRel'
#else
type IsSVGPathSegCurvetoQuadraticRel o = SVGPathSegCurvetoQuadraticRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoQuadraticSmoothAbs = SVGPathSegCurvetoQuadraticSmoothAbs (JSRef SVGPathSegCurvetoQuadraticSmoothAbs) deriving (Eq)

unSVGPathSegCurvetoQuadraticSmoothAbs (SVGPathSegCurvetoQuadraticSmoothAbs o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticSmoothAbs where
  toJSRef = return . unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticSmoothAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticSmoothAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoQuadraticSmoothAbs o
toSVGPathSegCurvetoQuadraticSmoothAbs :: IsSVGPathSegCurvetoQuadraticSmoothAbs o => o -> SVGPathSegCurvetoQuadraticSmoothAbs
toSVGPathSegCurvetoQuadraticSmoothAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoQuadraticSmoothAbs SVGPathSegCurvetoQuadraticSmoothAbs
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothAbs
instance GObjectClass SVGPathSegCurvetoQuadraticSmoothAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticSmoothAbs
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothAbs . castRef . unGObject

castToSVGPathSegCurvetoQuadraticSmoothAbs :: GObjectClass obj => obj -> SVGPathSegCurvetoQuadraticSmoothAbs
castToSVGPathSegCurvetoQuadraticSmoothAbs = castTo gTypeSVGPathSegCurvetoQuadraticSmoothAbs "SVGPathSegCurvetoQuadraticSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothAbs\"]" gTypeSVGPathSegCurvetoQuadraticSmoothAbs' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticSmoothAbs = GType gTypeSVGPathSegCurvetoQuadraticSmoothAbs'
#else
type IsSVGPathSegCurvetoQuadraticSmoothAbs o = SVGPathSegCurvetoQuadraticSmoothAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegCurvetoQuadraticSmoothRel = SVGPathSegCurvetoQuadraticSmoothRel (JSRef SVGPathSegCurvetoQuadraticSmoothRel) deriving (Eq)

unSVGPathSegCurvetoQuadraticSmoothRel (SVGPathSegCurvetoQuadraticSmoothRel o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticSmoothRel where
  toJSRef = return . unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticSmoothRel where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticSmoothRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegCurvetoQuadraticSmoothRel o
toSVGPathSegCurvetoQuadraticSmoothRel :: IsSVGPathSegCurvetoQuadraticSmoothRel o => o -> SVGPathSegCurvetoQuadraticSmoothRel
toSVGPathSegCurvetoQuadraticSmoothRel = unsafeCastGObject . toGObject

instance IsSVGPathSegCurvetoQuadraticSmoothRel SVGPathSegCurvetoQuadraticSmoothRel
instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothRel
instance GObjectClass SVGPathSegCurvetoQuadraticSmoothRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticSmoothRel
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothRel . castRef . unGObject

castToSVGPathSegCurvetoQuadraticSmoothRel :: GObjectClass obj => obj -> SVGPathSegCurvetoQuadraticSmoothRel
castToSVGPathSegCurvetoQuadraticSmoothRel = castTo gTypeSVGPathSegCurvetoQuadraticSmoothRel "SVGPathSegCurvetoQuadraticSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothRel\"]" gTypeSVGPathSegCurvetoQuadraticSmoothRel' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticSmoothRel = GType gTypeSVGPathSegCurvetoQuadraticSmoothRel'
#else
type IsSVGPathSegCurvetoQuadraticSmoothRel o = SVGPathSegCurvetoQuadraticSmoothRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoAbs = SVGPathSegLinetoAbs (JSRef SVGPathSegLinetoAbs) deriving (Eq)

unSVGPathSegLinetoAbs (SVGPathSegLinetoAbs o) = o

instance ToJSRef SVGPathSegLinetoAbs where
  toJSRef = return . unSVGPathSegLinetoAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoAbs where
  fromJSRef = return . fmap SVGPathSegLinetoAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoAbs o
toSVGPathSegLinetoAbs :: IsSVGPathSegLinetoAbs o => o -> SVGPathSegLinetoAbs
toSVGPathSegLinetoAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoAbs SVGPathSegLinetoAbs
instance IsSVGPathSeg SVGPathSegLinetoAbs
instance GObjectClass SVGPathSegLinetoAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoAbs
  unsafeCastGObject = SVGPathSegLinetoAbs . castRef . unGObject

castToSVGPathSegLinetoAbs :: GObjectClass obj => obj -> SVGPathSegLinetoAbs
castToSVGPathSegLinetoAbs = castTo gTypeSVGPathSegLinetoAbs "SVGPathSegLinetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoAbs\"]" gTypeSVGPathSegLinetoAbs' :: JSRef GType
gTypeSVGPathSegLinetoAbs = GType gTypeSVGPathSegLinetoAbs'
#else
type IsSVGPathSegLinetoAbs o = SVGPathSegLinetoAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoHorizontalAbs = SVGPathSegLinetoHorizontalAbs (JSRef SVGPathSegLinetoHorizontalAbs) deriving (Eq)

unSVGPathSegLinetoHorizontalAbs (SVGPathSegLinetoHorizontalAbs o) = o

instance ToJSRef SVGPathSegLinetoHorizontalAbs where
  toJSRef = return . unSVGPathSegLinetoHorizontalAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoHorizontalAbs where
  fromJSRef = return . fmap SVGPathSegLinetoHorizontalAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoHorizontalAbs o
toSVGPathSegLinetoHorizontalAbs :: IsSVGPathSegLinetoHorizontalAbs o => o -> SVGPathSegLinetoHorizontalAbs
toSVGPathSegLinetoHorizontalAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoHorizontalAbs SVGPathSegLinetoHorizontalAbs
instance IsSVGPathSeg SVGPathSegLinetoHorizontalAbs
instance GObjectClass SVGPathSegLinetoHorizontalAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoHorizontalAbs
  unsafeCastGObject = SVGPathSegLinetoHorizontalAbs . castRef . unGObject

castToSVGPathSegLinetoHorizontalAbs :: GObjectClass obj => obj -> SVGPathSegLinetoHorizontalAbs
castToSVGPathSegLinetoHorizontalAbs = castTo gTypeSVGPathSegLinetoHorizontalAbs "SVGPathSegLinetoHorizontalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalAbs\"]" gTypeSVGPathSegLinetoHorizontalAbs' :: JSRef GType
gTypeSVGPathSegLinetoHorizontalAbs = GType gTypeSVGPathSegLinetoHorizontalAbs'
#else
type IsSVGPathSegLinetoHorizontalAbs o = SVGPathSegLinetoHorizontalAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoHorizontalRel = SVGPathSegLinetoHorizontalRel (JSRef SVGPathSegLinetoHorizontalRel) deriving (Eq)

unSVGPathSegLinetoHorizontalRel (SVGPathSegLinetoHorizontalRel o) = o

instance ToJSRef SVGPathSegLinetoHorizontalRel where
  toJSRef = return . unSVGPathSegLinetoHorizontalRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoHorizontalRel where
  fromJSRef = return . fmap SVGPathSegLinetoHorizontalRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoHorizontalRel o
toSVGPathSegLinetoHorizontalRel :: IsSVGPathSegLinetoHorizontalRel o => o -> SVGPathSegLinetoHorizontalRel
toSVGPathSegLinetoHorizontalRel = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoHorizontalRel SVGPathSegLinetoHorizontalRel
instance IsSVGPathSeg SVGPathSegLinetoHorizontalRel
instance GObjectClass SVGPathSegLinetoHorizontalRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoHorizontalRel
  unsafeCastGObject = SVGPathSegLinetoHorizontalRel . castRef . unGObject

castToSVGPathSegLinetoHorizontalRel :: GObjectClass obj => obj -> SVGPathSegLinetoHorizontalRel
castToSVGPathSegLinetoHorizontalRel = castTo gTypeSVGPathSegLinetoHorizontalRel "SVGPathSegLinetoHorizontalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalRel\"]" gTypeSVGPathSegLinetoHorizontalRel' :: JSRef GType
gTypeSVGPathSegLinetoHorizontalRel = GType gTypeSVGPathSegLinetoHorizontalRel'
#else
type IsSVGPathSegLinetoHorizontalRel o = SVGPathSegLinetoHorizontalRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoRel = SVGPathSegLinetoRel (JSRef SVGPathSegLinetoRel) deriving (Eq)

unSVGPathSegLinetoRel (SVGPathSegLinetoRel o) = o

instance ToJSRef SVGPathSegLinetoRel where
  toJSRef = return . unSVGPathSegLinetoRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoRel where
  fromJSRef = return . fmap SVGPathSegLinetoRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoRel o
toSVGPathSegLinetoRel :: IsSVGPathSegLinetoRel o => o -> SVGPathSegLinetoRel
toSVGPathSegLinetoRel = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoRel SVGPathSegLinetoRel
instance IsSVGPathSeg SVGPathSegLinetoRel
instance GObjectClass SVGPathSegLinetoRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoRel
  unsafeCastGObject = SVGPathSegLinetoRel . castRef . unGObject

castToSVGPathSegLinetoRel :: GObjectClass obj => obj -> SVGPathSegLinetoRel
castToSVGPathSegLinetoRel = castTo gTypeSVGPathSegLinetoRel "SVGPathSegLinetoRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoRel\"]" gTypeSVGPathSegLinetoRel' :: JSRef GType
gTypeSVGPathSegLinetoRel = GType gTypeSVGPathSegLinetoRel'
#else
type IsSVGPathSegLinetoRel o = SVGPathSegLinetoRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoVerticalAbs = SVGPathSegLinetoVerticalAbs (JSRef SVGPathSegLinetoVerticalAbs) deriving (Eq)

unSVGPathSegLinetoVerticalAbs (SVGPathSegLinetoVerticalAbs o) = o

instance ToJSRef SVGPathSegLinetoVerticalAbs where
  toJSRef = return . unSVGPathSegLinetoVerticalAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoVerticalAbs where
  fromJSRef = return . fmap SVGPathSegLinetoVerticalAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoVerticalAbs o
toSVGPathSegLinetoVerticalAbs :: IsSVGPathSegLinetoVerticalAbs o => o -> SVGPathSegLinetoVerticalAbs
toSVGPathSegLinetoVerticalAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoVerticalAbs SVGPathSegLinetoVerticalAbs
instance IsSVGPathSeg SVGPathSegLinetoVerticalAbs
instance GObjectClass SVGPathSegLinetoVerticalAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoVerticalAbs
  unsafeCastGObject = SVGPathSegLinetoVerticalAbs . castRef . unGObject

castToSVGPathSegLinetoVerticalAbs :: GObjectClass obj => obj -> SVGPathSegLinetoVerticalAbs
castToSVGPathSegLinetoVerticalAbs = castTo gTypeSVGPathSegLinetoVerticalAbs "SVGPathSegLinetoVerticalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalAbs\"]" gTypeSVGPathSegLinetoVerticalAbs' :: JSRef GType
gTypeSVGPathSegLinetoVerticalAbs = GType gTypeSVGPathSegLinetoVerticalAbs'
#else
type IsSVGPathSegLinetoVerticalAbs o = SVGPathSegLinetoVerticalAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegLinetoVerticalRel = SVGPathSegLinetoVerticalRel (JSRef SVGPathSegLinetoVerticalRel) deriving (Eq)

unSVGPathSegLinetoVerticalRel (SVGPathSegLinetoVerticalRel o) = o

instance ToJSRef SVGPathSegLinetoVerticalRel where
  toJSRef = return . unSVGPathSegLinetoVerticalRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoVerticalRel where
  fromJSRef = return . fmap SVGPathSegLinetoVerticalRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegLinetoVerticalRel o
toSVGPathSegLinetoVerticalRel :: IsSVGPathSegLinetoVerticalRel o => o -> SVGPathSegLinetoVerticalRel
toSVGPathSegLinetoVerticalRel = unsafeCastGObject . toGObject

instance IsSVGPathSegLinetoVerticalRel SVGPathSegLinetoVerticalRel
instance IsSVGPathSeg SVGPathSegLinetoVerticalRel
instance GObjectClass SVGPathSegLinetoVerticalRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoVerticalRel
  unsafeCastGObject = SVGPathSegLinetoVerticalRel . castRef . unGObject

castToSVGPathSegLinetoVerticalRel :: GObjectClass obj => obj -> SVGPathSegLinetoVerticalRel
castToSVGPathSegLinetoVerticalRel = castTo gTypeSVGPathSegLinetoVerticalRel "SVGPathSegLinetoVerticalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalRel\"]" gTypeSVGPathSegLinetoVerticalRel' :: JSRef GType
gTypeSVGPathSegLinetoVerticalRel = GType gTypeSVGPathSegLinetoVerticalRel'
#else
type IsSVGPathSegLinetoVerticalRel o = SVGPathSegLinetoVerticalRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegList = SVGPathSegList (JSRef SVGPathSegList) deriving (Eq)

unSVGPathSegList (SVGPathSegList o) = o

instance ToJSRef SVGPathSegList where
  toJSRef = return . unSVGPathSegList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegList where
  fromJSRef = return . fmap SVGPathSegList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGPathSegList o
toSVGPathSegList :: IsSVGPathSegList o => o -> SVGPathSegList
toSVGPathSegList = unsafeCastGObject . toGObject

instance IsSVGPathSegList SVGPathSegList
instance GObjectClass SVGPathSegList where
  toGObject = GObject . castRef . unSVGPathSegList
  unsafeCastGObject = SVGPathSegList . castRef . unGObject

castToSVGPathSegList :: GObjectClass obj => obj -> SVGPathSegList
castToSVGPathSegList = castTo gTypeSVGPathSegList "SVGPathSegList"

foreign import javascript unsafe "window[\"SVGPathSegList\"]" gTypeSVGPathSegList' :: JSRef GType
gTypeSVGPathSegList = GType gTypeSVGPathSegList'
#else
type IsSVGPathSegList o = SVGPathSegListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegMovetoAbs = SVGPathSegMovetoAbs (JSRef SVGPathSegMovetoAbs) deriving (Eq)

unSVGPathSegMovetoAbs (SVGPathSegMovetoAbs o) = o

instance ToJSRef SVGPathSegMovetoAbs where
  toJSRef = return . unSVGPathSegMovetoAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegMovetoAbs where
  fromJSRef = return . fmap SVGPathSegMovetoAbs . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegMovetoAbs o
toSVGPathSegMovetoAbs :: IsSVGPathSegMovetoAbs o => o -> SVGPathSegMovetoAbs
toSVGPathSegMovetoAbs = unsafeCastGObject . toGObject

instance IsSVGPathSegMovetoAbs SVGPathSegMovetoAbs
instance IsSVGPathSeg SVGPathSegMovetoAbs
instance GObjectClass SVGPathSegMovetoAbs where
  toGObject = GObject . castRef . unSVGPathSegMovetoAbs
  unsafeCastGObject = SVGPathSegMovetoAbs . castRef . unGObject

castToSVGPathSegMovetoAbs :: GObjectClass obj => obj -> SVGPathSegMovetoAbs
castToSVGPathSegMovetoAbs = castTo gTypeSVGPathSegMovetoAbs "SVGPathSegMovetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegMovetoAbs\"]" gTypeSVGPathSegMovetoAbs' :: JSRef GType
gTypeSVGPathSegMovetoAbs = GType gTypeSVGPathSegMovetoAbs'
#else
type IsSVGPathSegMovetoAbs o = SVGPathSegMovetoAbsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPathSegMovetoRel = SVGPathSegMovetoRel (JSRef SVGPathSegMovetoRel) deriving (Eq)

unSVGPathSegMovetoRel (SVGPathSegMovetoRel o) = o

instance ToJSRef SVGPathSegMovetoRel where
  toJSRef = return . unSVGPathSegMovetoRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegMovetoRel where
  fromJSRef = return . fmap SVGPathSegMovetoRel . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGPathSeg o => IsSVGPathSegMovetoRel o
toSVGPathSegMovetoRel :: IsSVGPathSegMovetoRel o => o -> SVGPathSegMovetoRel
toSVGPathSegMovetoRel = unsafeCastGObject . toGObject

instance IsSVGPathSegMovetoRel SVGPathSegMovetoRel
instance IsSVGPathSeg SVGPathSegMovetoRel
instance GObjectClass SVGPathSegMovetoRel where
  toGObject = GObject . castRef . unSVGPathSegMovetoRel
  unsafeCastGObject = SVGPathSegMovetoRel . castRef . unGObject

castToSVGPathSegMovetoRel :: GObjectClass obj => obj -> SVGPathSegMovetoRel
castToSVGPathSegMovetoRel = castTo gTypeSVGPathSegMovetoRel "SVGPathSegMovetoRel"

foreign import javascript unsafe "window[\"SVGPathSegMovetoRel\"]" gTypeSVGPathSegMovetoRel' :: JSRef GType
gTypeSVGPathSegMovetoRel = GType gTypeSVGPathSegMovetoRel'
#else
type IsSVGPathSegMovetoRel o = SVGPathSegMovetoRelClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPatternElement = SVGPatternElement (JSRef SVGPatternElement) deriving (Eq)

unSVGPatternElement (SVGPatternElement o) = o

instance ToJSRef SVGPatternElement where
  toJSRef = return . unSVGPatternElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPatternElement where
  fromJSRef = return . fmap SVGPatternElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGPatternElement o
toSVGPatternElement :: IsSVGPatternElement o => o -> SVGPatternElement
toSVGPatternElement = unsafeCastGObject . toGObject

instance IsSVGPatternElement SVGPatternElement
instance IsSVGElement SVGPatternElement
instance IsElement SVGPatternElement
instance IsNode SVGPatternElement
instance GObjectClass SVGPatternElement where
  toGObject = GObject . castRef . unSVGPatternElement
  unsafeCastGObject = SVGPatternElement . castRef . unGObject

castToSVGPatternElement :: GObjectClass obj => obj -> SVGPatternElement
castToSVGPatternElement = castTo gTypeSVGPatternElement "SVGPatternElement"

foreign import javascript unsafe "window[\"SVGPatternElement\"]" gTypeSVGPatternElement' :: JSRef GType
gTypeSVGPatternElement = GType gTypeSVGPatternElement'
#else
type IsSVGPatternElement o = SVGPatternElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPoint = SVGPoint (JSRef SVGPoint) deriving (Eq)

unSVGPoint (SVGPoint o) = o

instance ToJSRef SVGPoint where
  toJSRef = return . unSVGPoint
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPoint where
  fromJSRef = return . fmap SVGPoint . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGPoint o
toSVGPoint :: IsSVGPoint o => o -> SVGPoint
toSVGPoint = unsafeCastGObject . toGObject

instance IsSVGPoint SVGPoint
instance GObjectClass SVGPoint where
  toGObject = GObject . castRef . unSVGPoint
  unsafeCastGObject = SVGPoint . castRef . unGObject

castToSVGPoint :: GObjectClass obj => obj -> SVGPoint
castToSVGPoint = castTo gTypeSVGPoint "SVGPoint"

foreign import javascript unsafe "window[\"SVGPoint\"]" gTypeSVGPoint' :: JSRef GType
gTypeSVGPoint = GType gTypeSVGPoint'
#else
type IsSVGPoint o = SVGPointClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPointList = SVGPointList (JSRef SVGPointList) deriving (Eq)

unSVGPointList (SVGPointList o) = o

instance ToJSRef SVGPointList where
  toJSRef = return . unSVGPointList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPointList where
  fromJSRef = return . fmap SVGPointList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGPointList o
toSVGPointList :: IsSVGPointList o => o -> SVGPointList
toSVGPointList = unsafeCastGObject . toGObject

instance IsSVGPointList SVGPointList
instance GObjectClass SVGPointList where
  toGObject = GObject . castRef . unSVGPointList
  unsafeCastGObject = SVGPointList . castRef . unGObject

castToSVGPointList :: GObjectClass obj => obj -> SVGPointList
castToSVGPointList = castTo gTypeSVGPointList "SVGPointList"

foreign import javascript unsafe "window[\"SVGPointList\"]" gTypeSVGPointList' :: JSRef GType
gTypeSVGPointList = GType gTypeSVGPointList'
#else
type IsSVGPointList o = SVGPointListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPolygonElement = SVGPolygonElement (JSRef SVGPolygonElement) deriving (Eq)

unSVGPolygonElement (SVGPolygonElement o) = o

instance ToJSRef SVGPolygonElement where
  toJSRef = return . unSVGPolygonElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPolygonElement where
  fromJSRef = return . fmap SVGPolygonElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGPolygonElement o
toSVGPolygonElement :: IsSVGPolygonElement o => o -> SVGPolygonElement
toSVGPolygonElement = unsafeCastGObject . toGObject

instance IsSVGPolygonElement SVGPolygonElement
instance IsSVGGraphicsElement SVGPolygonElement
instance IsSVGElement SVGPolygonElement
instance IsElement SVGPolygonElement
instance IsNode SVGPolygonElement
instance GObjectClass SVGPolygonElement where
  toGObject = GObject . castRef . unSVGPolygonElement
  unsafeCastGObject = SVGPolygonElement . castRef . unGObject

castToSVGPolygonElement :: GObjectClass obj => obj -> SVGPolygonElement
castToSVGPolygonElement = castTo gTypeSVGPolygonElement "SVGPolygonElement"

foreign import javascript unsafe "window[\"SVGPolygonElement\"]" gTypeSVGPolygonElement' :: JSRef GType
gTypeSVGPolygonElement = GType gTypeSVGPolygonElement'
#else
type IsSVGPolygonElement o = SVGPolygonElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPolylineElement = SVGPolylineElement (JSRef SVGPolylineElement) deriving (Eq)

unSVGPolylineElement (SVGPolylineElement o) = o

instance ToJSRef SVGPolylineElement where
  toJSRef = return . unSVGPolylineElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPolylineElement where
  fromJSRef = return . fmap SVGPolylineElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGPolylineElement o
toSVGPolylineElement :: IsSVGPolylineElement o => o -> SVGPolylineElement
toSVGPolylineElement = unsafeCastGObject . toGObject

instance IsSVGPolylineElement SVGPolylineElement
instance IsSVGGraphicsElement SVGPolylineElement
instance IsSVGElement SVGPolylineElement
instance IsElement SVGPolylineElement
instance IsNode SVGPolylineElement
instance GObjectClass SVGPolylineElement where
  toGObject = GObject . castRef . unSVGPolylineElement
  unsafeCastGObject = SVGPolylineElement . castRef . unGObject

castToSVGPolylineElement :: GObjectClass obj => obj -> SVGPolylineElement
castToSVGPolylineElement = castTo gTypeSVGPolylineElement "SVGPolylineElement"

foreign import javascript unsafe "window[\"SVGPolylineElement\"]" gTypeSVGPolylineElement' :: JSRef GType
gTypeSVGPolylineElement = GType gTypeSVGPolylineElement'
#else
type IsSVGPolylineElement o = SVGPolylineElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGPreserveAspectRatio = SVGPreserveAspectRatio (JSRef SVGPreserveAspectRatio) deriving (Eq)

unSVGPreserveAspectRatio (SVGPreserveAspectRatio o) = o

instance ToJSRef SVGPreserveAspectRatio where
  toJSRef = return . unSVGPreserveAspectRatio
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPreserveAspectRatio where
  fromJSRef = return . fmap SVGPreserveAspectRatio . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGPreserveAspectRatio o
toSVGPreserveAspectRatio :: IsSVGPreserveAspectRatio o => o -> SVGPreserveAspectRatio
toSVGPreserveAspectRatio = unsafeCastGObject . toGObject

instance IsSVGPreserveAspectRatio SVGPreserveAspectRatio
instance GObjectClass SVGPreserveAspectRatio where
  toGObject = GObject . castRef . unSVGPreserveAspectRatio
  unsafeCastGObject = SVGPreserveAspectRatio . castRef . unGObject

castToSVGPreserveAspectRatio :: GObjectClass obj => obj -> SVGPreserveAspectRatio
castToSVGPreserveAspectRatio = castTo gTypeSVGPreserveAspectRatio "SVGPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGPreserveAspectRatio\"]" gTypeSVGPreserveAspectRatio' :: JSRef GType
gTypeSVGPreserveAspectRatio = GType gTypeSVGPreserveAspectRatio'
#else
type IsSVGPreserveAspectRatio o = SVGPreserveAspectRatioClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGRadialGradientElement = SVGRadialGradientElement (JSRef SVGRadialGradientElement) deriving (Eq)

unSVGRadialGradientElement (SVGRadialGradientElement o) = o

instance ToJSRef SVGRadialGradientElement where
  toJSRef = return . unSVGRadialGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRadialGradientElement where
  fromJSRef = return . fmap SVGRadialGradientElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGradientElement o => IsSVGRadialGradientElement o
toSVGRadialGradientElement :: IsSVGRadialGradientElement o => o -> SVGRadialGradientElement
toSVGRadialGradientElement = unsafeCastGObject . toGObject

instance IsSVGRadialGradientElement SVGRadialGradientElement
instance IsSVGGradientElement SVGRadialGradientElement
instance IsSVGElement SVGRadialGradientElement
instance IsElement SVGRadialGradientElement
instance IsNode SVGRadialGradientElement
instance GObjectClass SVGRadialGradientElement where
  toGObject = GObject . castRef . unSVGRadialGradientElement
  unsafeCastGObject = SVGRadialGradientElement . castRef . unGObject

castToSVGRadialGradientElement :: GObjectClass obj => obj -> SVGRadialGradientElement
castToSVGRadialGradientElement = castTo gTypeSVGRadialGradientElement "SVGRadialGradientElement"

foreign import javascript unsafe "window[\"SVGRadialGradientElement\"]" gTypeSVGRadialGradientElement' :: JSRef GType
gTypeSVGRadialGradientElement = GType gTypeSVGRadialGradientElement'
#else
type IsSVGRadialGradientElement o = SVGRadialGradientElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGRect = SVGRect (JSRef SVGRect) deriving (Eq)

unSVGRect (SVGRect o) = o

instance ToJSRef SVGRect where
  toJSRef = return . unSVGRect
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRect where
  fromJSRef = return . fmap SVGRect . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGRect o
toSVGRect :: IsSVGRect o => o -> SVGRect
toSVGRect = unsafeCastGObject . toGObject

instance IsSVGRect SVGRect
instance GObjectClass SVGRect where
  toGObject = GObject . castRef . unSVGRect
  unsafeCastGObject = SVGRect . castRef . unGObject

castToSVGRect :: GObjectClass obj => obj -> SVGRect
castToSVGRect = castTo gTypeSVGRect "SVGRect"

foreign import javascript unsafe "window[\"SVGRect\"]" gTypeSVGRect' :: JSRef GType
gTypeSVGRect = GType gTypeSVGRect'
#else
type IsSVGRect o = SVGRectClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGRectElement = SVGRectElement (JSRef SVGRectElement) deriving (Eq)

unSVGRectElement (SVGRectElement o) = o

instance ToJSRef SVGRectElement where
  toJSRef = return . unSVGRectElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRectElement where
  fromJSRef = return . fmap SVGRectElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGRectElement o
toSVGRectElement :: IsSVGRectElement o => o -> SVGRectElement
toSVGRectElement = unsafeCastGObject . toGObject

instance IsSVGRectElement SVGRectElement
instance IsSVGGraphicsElement SVGRectElement
instance IsSVGElement SVGRectElement
instance IsElement SVGRectElement
instance IsNode SVGRectElement
instance GObjectClass SVGRectElement where
  toGObject = GObject . castRef . unSVGRectElement
  unsafeCastGObject = SVGRectElement . castRef . unGObject

castToSVGRectElement :: GObjectClass obj => obj -> SVGRectElement
castToSVGRectElement = castTo gTypeSVGRectElement "SVGRectElement"

foreign import javascript unsafe "window[\"SVGRectElement\"]" gTypeSVGRectElement' :: JSRef GType
gTypeSVGRectElement = GType gTypeSVGRectElement'
#else
type IsSVGRectElement o = SVGRectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGRenderingIntent = SVGRenderingIntent (JSRef SVGRenderingIntent) deriving (Eq)

unSVGRenderingIntent (SVGRenderingIntent o) = o

instance ToJSRef SVGRenderingIntent where
  toJSRef = return . unSVGRenderingIntent
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRenderingIntent where
  fromJSRef = return . fmap SVGRenderingIntent . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGRenderingIntent o
toSVGRenderingIntent :: IsSVGRenderingIntent o => o -> SVGRenderingIntent
toSVGRenderingIntent = unsafeCastGObject . toGObject

instance IsSVGRenderingIntent SVGRenderingIntent
instance GObjectClass SVGRenderingIntent where
  toGObject = GObject . castRef . unSVGRenderingIntent
  unsafeCastGObject = SVGRenderingIntent . castRef . unGObject

castToSVGRenderingIntent :: GObjectClass obj => obj -> SVGRenderingIntent
castToSVGRenderingIntent = castTo gTypeSVGRenderingIntent "SVGRenderingIntent"

foreign import javascript unsafe "window[\"SVGRenderingIntent\"]" gTypeSVGRenderingIntent' :: JSRef GType
gTypeSVGRenderingIntent = GType gTypeSVGRenderingIntent'
#else
type IsSVGRenderingIntent o = SVGRenderingIntentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGSVGElement = SVGSVGElement (JSRef SVGSVGElement) deriving (Eq)

unSVGSVGElement (SVGSVGElement o) = o

instance ToJSRef SVGSVGElement where
  toJSRef = return . unSVGSVGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSVGElement where
  fromJSRef = return . fmap SVGSVGElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGSVGElement o
toSVGSVGElement :: IsSVGSVGElement o => o -> SVGSVGElement
toSVGSVGElement = unsafeCastGObject . toGObject

instance IsSVGSVGElement SVGSVGElement
instance IsSVGGraphicsElement SVGSVGElement
instance IsSVGElement SVGSVGElement
instance IsElement SVGSVGElement
instance IsNode SVGSVGElement
instance GObjectClass SVGSVGElement where
  toGObject = GObject . castRef . unSVGSVGElement
  unsafeCastGObject = SVGSVGElement . castRef . unGObject

castToSVGSVGElement :: GObjectClass obj => obj -> SVGSVGElement
castToSVGSVGElement = castTo gTypeSVGSVGElement "SVGSVGElement"

foreign import javascript unsafe "window[\"SVGSVGElement\"]" gTypeSVGSVGElement' :: JSRef GType
gTypeSVGSVGElement = GType gTypeSVGSVGElement'
#else
type IsSVGSVGElement o = SVGSVGElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGScriptElement = SVGScriptElement (JSRef SVGScriptElement) deriving (Eq)

unSVGScriptElement (SVGScriptElement o) = o

instance ToJSRef SVGScriptElement where
  toJSRef = return . unSVGScriptElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGScriptElement where
  fromJSRef = return . fmap SVGScriptElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGScriptElement o
toSVGScriptElement :: IsSVGScriptElement o => o -> SVGScriptElement
toSVGScriptElement = unsafeCastGObject . toGObject

instance IsSVGScriptElement SVGScriptElement
instance IsSVGElement SVGScriptElement
instance IsElement SVGScriptElement
instance IsNode SVGScriptElement
instance GObjectClass SVGScriptElement where
  toGObject = GObject . castRef . unSVGScriptElement
  unsafeCastGObject = SVGScriptElement . castRef . unGObject

castToSVGScriptElement :: GObjectClass obj => obj -> SVGScriptElement
castToSVGScriptElement = castTo gTypeSVGScriptElement "SVGScriptElement"

foreign import javascript unsafe "window[\"SVGScriptElement\"]" gTypeSVGScriptElement' :: JSRef GType
gTypeSVGScriptElement = GType gTypeSVGScriptElement'
#else
type IsSVGScriptElement o = SVGScriptElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGSetElement = SVGSetElement (JSRef SVGSetElement) deriving (Eq)

unSVGSetElement (SVGSetElement o) = o

instance ToJSRef SVGSetElement where
  toJSRef = return . unSVGSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSetElement where
  fromJSRef = return . fmap SVGSetElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGAnimationElement o => IsSVGSetElement o
toSVGSetElement :: IsSVGSetElement o => o -> SVGSetElement
toSVGSetElement = unsafeCastGObject . toGObject

instance IsSVGSetElement SVGSetElement
instance IsSVGAnimationElement SVGSetElement
instance IsSVGElement SVGSetElement
instance IsElement SVGSetElement
instance IsNode SVGSetElement
instance GObjectClass SVGSetElement where
  toGObject = GObject . castRef . unSVGSetElement
  unsafeCastGObject = SVGSetElement . castRef . unGObject

castToSVGSetElement :: GObjectClass obj => obj -> SVGSetElement
castToSVGSetElement = castTo gTypeSVGSetElement "SVGSetElement"

foreign import javascript unsafe "window[\"SVGSetElement\"]" gTypeSVGSetElement' :: JSRef GType
gTypeSVGSetElement = GType gTypeSVGSetElement'
#else
type IsSVGSetElement o = SVGSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGStopElement = SVGStopElement (JSRef SVGStopElement) deriving (Eq)

unSVGStopElement (SVGStopElement o) = o

instance ToJSRef SVGStopElement where
  toJSRef = return . unSVGStopElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStopElement where
  fromJSRef = return . fmap SVGStopElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGStopElement o
toSVGStopElement :: IsSVGStopElement o => o -> SVGStopElement
toSVGStopElement = unsafeCastGObject . toGObject

instance IsSVGStopElement SVGStopElement
instance IsSVGElement SVGStopElement
instance IsElement SVGStopElement
instance IsNode SVGStopElement
instance GObjectClass SVGStopElement where
  toGObject = GObject . castRef . unSVGStopElement
  unsafeCastGObject = SVGStopElement . castRef . unGObject

castToSVGStopElement :: GObjectClass obj => obj -> SVGStopElement
castToSVGStopElement = castTo gTypeSVGStopElement "SVGStopElement"

foreign import javascript unsafe "window[\"SVGStopElement\"]" gTypeSVGStopElement' :: JSRef GType
gTypeSVGStopElement = GType gTypeSVGStopElement'
#else
type IsSVGStopElement o = SVGStopElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGStringList = SVGStringList (JSRef SVGStringList) deriving (Eq)

unSVGStringList (SVGStringList o) = o

instance ToJSRef SVGStringList where
  toJSRef = return . unSVGStringList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStringList where
  fromJSRef = return . fmap SVGStringList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGStringList o
toSVGStringList :: IsSVGStringList o => o -> SVGStringList
toSVGStringList = unsafeCastGObject . toGObject

instance IsSVGStringList SVGStringList
instance GObjectClass SVGStringList where
  toGObject = GObject . castRef . unSVGStringList
  unsafeCastGObject = SVGStringList . castRef . unGObject

castToSVGStringList :: GObjectClass obj => obj -> SVGStringList
castToSVGStringList = castTo gTypeSVGStringList "SVGStringList"

foreign import javascript unsafe "window[\"SVGStringList\"]" gTypeSVGStringList' :: JSRef GType
gTypeSVGStringList = GType gTypeSVGStringList'
#else
type IsSVGStringList o = SVGStringListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGStyleElement = SVGStyleElement (JSRef SVGStyleElement) deriving (Eq)

unSVGStyleElement (SVGStyleElement o) = o

instance ToJSRef SVGStyleElement where
  toJSRef = return . unSVGStyleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStyleElement where
  fromJSRef = return . fmap SVGStyleElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGStyleElement o
toSVGStyleElement :: IsSVGStyleElement o => o -> SVGStyleElement
toSVGStyleElement = unsafeCastGObject . toGObject

instance IsSVGStyleElement SVGStyleElement
instance IsSVGElement SVGStyleElement
instance IsElement SVGStyleElement
instance IsNode SVGStyleElement
instance GObjectClass SVGStyleElement where
  toGObject = GObject . castRef . unSVGStyleElement
  unsafeCastGObject = SVGStyleElement . castRef . unGObject

castToSVGStyleElement :: GObjectClass obj => obj -> SVGStyleElement
castToSVGStyleElement = castTo gTypeSVGStyleElement "SVGStyleElement"

foreign import javascript unsafe "window[\"SVGStyleElement\"]" gTypeSVGStyleElement' :: JSRef GType
gTypeSVGStyleElement = GType gTypeSVGStyleElement'
#else
type IsSVGStyleElement o = SVGStyleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGSwitchElement = SVGSwitchElement (JSRef SVGSwitchElement) deriving (Eq)

unSVGSwitchElement (SVGSwitchElement o) = o

instance ToJSRef SVGSwitchElement where
  toJSRef = return . unSVGSwitchElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSwitchElement where
  fromJSRef = return . fmap SVGSwitchElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGSwitchElement o
toSVGSwitchElement :: IsSVGSwitchElement o => o -> SVGSwitchElement
toSVGSwitchElement = unsafeCastGObject . toGObject

instance IsSVGSwitchElement SVGSwitchElement
instance IsSVGGraphicsElement SVGSwitchElement
instance IsSVGElement SVGSwitchElement
instance IsElement SVGSwitchElement
instance IsNode SVGSwitchElement
instance GObjectClass SVGSwitchElement where
  toGObject = GObject . castRef . unSVGSwitchElement
  unsafeCastGObject = SVGSwitchElement . castRef . unGObject

castToSVGSwitchElement :: GObjectClass obj => obj -> SVGSwitchElement
castToSVGSwitchElement = castTo gTypeSVGSwitchElement "SVGSwitchElement"

foreign import javascript unsafe "window[\"SVGSwitchElement\"]" gTypeSVGSwitchElement' :: JSRef GType
gTypeSVGSwitchElement = GType gTypeSVGSwitchElement'
#else
type IsSVGSwitchElement o = SVGSwitchElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGSymbolElement = SVGSymbolElement (JSRef SVGSymbolElement) deriving (Eq)

unSVGSymbolElement (SVGSymbolElement o) = o

instance ToJSRef SVGSymbolElement where
  toJSRef = return . unSVGSymbolElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSymbolElement where
  fromJSRef = return . fmap SVGSymbolElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGSymbolElement o
toSVGSymbolElement :: IsSVGSymbolElement o => o -> SVGSymbolElement
toSVGSymbolElement = unsafeCastGObject . toGObject

instance IsSVGSymbolElement SVGSymbolElement
instance IsSVGElement SVGSymbolElement
instance IsElement SVGSymbolElement
instance IsNode SVGSymbolElement
instance GObjectClass SVGSymbolElement where
  toGObject = GObject . castRef . unSVGSymbolElement
  unsafeCastGObject = SVGSymbolElement . castRef . unGObject

castToSVGSymbolElement :: GObjectClass obj => obj -> SVGSymbolElement
castToSVGSymbolElement = castTo gTypeSVGSymbolElement "SVGSymbolElement"

foreign import javascript unsafe "window[\"SVGSymbolElement\"]" gTypeSVGSymbolElement' :: JSRef GType
gTypeSVGSymbolElement = GType gTypeSVGSymbolElement'
#else
type IsSVGSymbolElement o = SVGSymbolElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTRefElement = SVGTRefElement (JSRef SVGTRefElement) deriving (Eq)

unSVGTRefElement (SVGTRefElement o) = o

instance ToJSRef SVGTRefElement where
  toJSRef = return . unSVGTRefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTRefElement where
  fromJSRef = return . fmap SVGTRefElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextPositioningElement o => IsSVGTRefElement o
toSVGTRefElement :: IsSVGTRefElement o => o -> SVGTRefElement
toSVGTRefElement = unsafeCastGObject . toGObject

instance IsSVGTRefElement SVGTRefElement
instance IsSVGTextPositioningElement SVGTRefElement
instance IsSVGTextContentElement SVGTRefElement
instance IsSVGGraphicsElement SVGTRefElement
instance IsSVGElement SVGTRefElement
instance IsElement SVGTRefElement
instance IsNode SVGTRefElement
instance GObjectClass SVGTRefElement where
  toGObject = GObject . castRef . unSVGTRefElement
  unsafeCastGObject = SVGTRefElement . castRef . unGObject

castToSVGTRefElement :: GObjectClass obj => obj -> SVGTRefElement
castToSVGTRefElement = castTo gTypeSVGTRefElement "SVGTRefElement"

foreign import javascript unsafe "window[\"SVGTRefElement\"]" gTypeSVGTRefElement' :: JSRef GType
gTypeSVGTRefElement = GType gTypeSVGTRefElement'
#else
type IsSVGTRefElement o = SVGTRefElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTSpanElement = SVGTSpanElement (JSRef SVGTSpanElement) deriving (Eq)

unSVGTSpanElement (SVGTSpanElement o) = o

instance ToJSRef SVGTSpanElement where
  toJSRef = return . unSVGTSpanElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTSpanElement where
  fromJSRef = return . fmap SVGTSpanElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextPositioningElement o => IsSVGTSpanElement o
toSVGTSpanElement :: IsSVGTSpanElement o => o -> SVGTSpanElement
toSVGTSpanElement = unsafeCastGObject . toGObject

instance IsSVGTSpanElement SVGTSpanElement
instance IsSVGTextPositioningElement SVGTSpanElement
instance IsSVGTextContentElement SVGTSpanElement
instance IsSVGGraphicsElement SVGTSpanElement
instance IsSVGElement SVGTSpanElement
instance IsElement SVGTSpanElement
instance IsNode SVGTSpanElement
instance GObjectClass SVGTSpanElement where
  toGObject = GObject . castRef . unSVGTSpanElement
  unsafeCastGObject = SVGTSpanElement . castRef . unGObject

castToSVGTSpanElement :: GObjectClass obj => obj -> SVGTSpanElement
castToSVGTSpanElement = castTo gTypeSVGTSpanElement "SVGTSpanElement"

foreign import javascript unsafe "window[\"SVGTSpanElement\"]" gTypeSVGTSpanElement' :: JSRef GType
gTypeSVGTSpanElement = GType gTypeSVGTSpanElement'
#else
type IsSVGTSpanElement o = SVGTSpanElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTests = SVGTests (JSRef SVGTests) deriving (Eq)

unSVGTests (SVGTests o) = o

instance ToJSRef SVGTests where
  toJSRef = return . unSVGTests
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTests where
  fromJSRef = return . fmap SVGTests . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGTests o
toSVGTests :: IsSVGTests o => o -> SVGTests
toSVGTests = unsafeCastGObject . toGObject

instance IsSVGTests SVGTests
instance GObjectClass SVGTests where
  toGObject = GObject . castRef . unSVGTests
  unsafeCastGObject = SVGTests . castRef . unGObject

castToSVGTests :: GObjectClass obj => obj -> SVGTests
castToSVGTests = castTo gTypeSVGTests "SVGTests"

foreign import javascript unsafe "window[\"SVGTests\"]" gTypeSVGTests' :: JSRef GType
gTypeSVGTests = GType gTypeSVGTests'
#else
type IsSVGTests o = SVGTestsClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTextContentElement = SVGTextContentElement (JSRef SVGTextContentElement) deriving (Eq)

unSVGTextContentElement (SVGTextContentElement o) = o

instance ToJSRef SVGTextContentElement where
  toJSRef = return . unSVGTextContentElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextContentElement where
  fromJSRef = return . fmap SVGTextContentElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGTextContentElement o
toSVGTextContentElement :: IsSVGTextContentElement o => o -> SVGTextContentElement
toSVGTextContentElement = unsafeCastGObject . toGObject

instance IsSVGTextContentElement SVGTextContentElement
instance IsSVGGraphicsElement SVGTextContentElement
instance IsSVGElement SVGTextContentElement
instance IsElement SVGTextContentElement
instance IsNode SVGTextContentElement
instance GObjectClass SVGTextContentElement where
  toGObject = GObject . castRef . unSVGTextContentElement
  unsafeCastGObject = SVGTextContentElement . castRef . unGObject

castToSVGTextContentElement :: GObjectClass obj => obj -> SVGTextContentElement
castToSVGTextContentElement = castTo gTypeSVGTextContentElement "SVGTextContentElement"

foreign import javascript unsafe "window[\"SVGTextContentElement\"]" gTypeSVGTextContentElement' :: JSRef GType
gTypeSVGTextContentElement = GType gTypeSVGTextContentElement'
#else
type IsSVGTextContentElement o = SVGTextContentElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTextElement = SVGTextElement (JSRef SVGTextElement) deriving (Eq)

unSVGTextElement (SVGTextElement o) = o

instance ToJSRef SVGTextElement where
  toJSRef = return . unSVGTextElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextElement where
  fromJSRef = return . fmap SVGTextElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextPositioningElement o => IsSVGTextElement o
toSVGTextElement :: IsSVGTextElement o => o -> SVGTextElement
toSVGTextElement = unsafeCastGObject . toGObject

instance IsSVGTextElement SVGTextElement
instance IsSVGTextPositioningElement SVGTextElement
instance IsSVGTextContentElement SVGTextElement
instance IsSVGGraphicsElement SVGTextElement
instance IsSVGElement SVGTextElement
instance IsElement SVGTextElement
instance IsNode SVGTextElement
instance GObjectClass SVGTextElement where
  toGObject = GObject . castRef . unSVGTextElement
  unsafeCastGObject = SVGTextElement . castRef . unGObject

castToSVGTextElement :: GObjectClass obj => obj -> SVGTextElement
castToSVGTextElement = castTo gTypeSVGTextElement "SVGTextElement"

foreign import javascript unsafe "window[\"SVGTextElement\"]" gTypeSVGTextElement' :: JSRef GType
gTypeSVGTextElement = GType gTypeSVGTextElement'
#else
type IsSVGTextElement o = SVGTextElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTextPathElement = SVGTextPathElement (JSRef SVGTextPathElement) deriving (Eq)

unSVGTextPathElement (SVGTextPathElement o) = o

instance ToJSRef SVGTextPathElement where
  toJSRef = return . unSVGTextPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextPathElement where
  fromJSRef = return . fmap SVGTextPathElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextContentElement o => IsSVGTextPathElement o
toSVGTextPathElement :: IsSVGTextPathElement o => o -> SVGTextPathElement
toSVGTextPathElement = unsafeCastGObject . toGObject

instance IsSVGTextPathElement SVGTextPathElement
instance IsSVGTextContentElement SVGTextPathElement
instance IsSVGGraphicsElement SVGTextPathElement
instance IsSVGElement SVGTextPathElement
instance IsElement SVGTextPathElement
instance IsNode SVGTextPathElement
instance GObjectClass SVGTextPathElement where
  toGObject = GObject . castRef . unSVGTextPathElement
  unsafeCastGObject = SVGTextPathElement . castRef . unGObject

castToSVGTextPathElement :: GObjectClass obj => obj -> SVGTextPathElement
castToSVGTextPathElement = castTo gTypeSVGTextPathElement "SVGTextPathElement"

foreign import javascript unsafe "window[\"SVGTextPathElement\"]" gTypeSVGTextPathElement' :: JSRef GType
gTypeSVGTextPathElement = GType gTypeSVGTextPathElement'
#else
type IsSVGTextPathElement o = SVGTextPathElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTextPositioningElement = SVGTextPositioningElement (JSRef SVGTextPositioningElement) deriving (Eq)

unSVGTextPositioningElement (SVGTextPositioningElement o) = o

instance ToJSRef SVGTextPositioningElement where
  toJSRef = return . unSVGTextPositioningElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextPositioningElement where
  fromJSRef = return . fmap SVGTextPositioningElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGTextContentElement o => IsSVGTextPositioningElement o
toSVGTextPositioningElement :: IsSVGTextPositioningElement o => o -> SVGTextPositioningElement
toSVGTextPositioningElement = unsafeCastGObject . toGObject

instance IsSVGTextPositioningElement SVGTextPositioningElement
instance IsSVGTextContentElement SVGTextPositioningElement
instance IsSVGGraphicsElement SVGTextPositioningElement
instance IsSVGElement SVGTextPositioningElement
instance IsElement SVGTextPositioningElement
instance IsNode SVGTextPositioningElement
instance GObjectClass SVGTextPositioningElement where
  toGObject = GObject . castRef . unSVGTextPositioningElement
  unsafeCastGObject = SVGTextPositioningElement . castRef . unGObject

castToSVGTextPositioningElement :: GObjectClass obj => obj -> SVGTextPositioningElement
castToSVGTextPositioningElement = castTo gTypeSVGTextPositioningElement "SVGTextPositioningElement"

foreign import javascript unsafe "window[\"SVGTextPositioningElement\"]" gTypeSVGTextPositioningElement' :: JSRef GType
gTypeSVGTextPositioningElement = GType gTypeSVGTextPositioningElement'
#else
type IsSVGTextPositioningElement o = SVGTextPositioningElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTitleElement = SVGTitleElement (JSRef SVGTitleElement) deriving (Eq)

unSVGTitleElement (SVGTitleElement o) = o

instance ToJSRef SVGTitleElement where
  toJSRef = return . unSVGTitleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTitleElement where
  fromJSRef = return . fmap SVGTitleElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGTitleElement o
toSVGTitleElement :: IsSVGTitleElement o => o -> SVGTitleElement
toSVGTitleElement = unsafeCastGObject . toGObject

instance IsSVGTitleElement SVGTitleElement
instance IsSVGElement SVGTitleElement
instance IsElement SVGTitleElement
instance IsNode SVGTitleElement
instance GObjectClass SVGTitleElement where
  toGObject = GObject . castRef . unSVGTitleElement
  unsafeCastGObject = SVGTitleElement . castRef . unGObject

castToSVGTitleElement :: GObjectClass obj => obj -> SVGTitleElement
castToSVGTitleElement = castTo gTypeSVGTitleElement "SVGTitleElement"

foreign import javascript unsafe "window[\"SVGTitleElement\"]" gTypeSVGTitleElement' :: JSRef GType
gTypeSVGTitleElement = GType gTypeSVGTitleElement'
#else
type IsSVGTitleElement o = SVGTitleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTransform = SVGTransform (JSRef SVGTransform) deriving (Eq)

unSVGTransform (SVGTransform o) = o

instance ToJSRef SVGTransform where
  toJSRef = return . unSVGTransform
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTransform where
  fromJSRef = return . fmap SVGTransform . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGTransform o
toSVGTransform :: IsSVGTransform o => o -> SVGTransform
toSVGTransform = unsafeCastGObject . toGObject

instance IsSVGTransform SVGTransform
instance GObjectClass SVGTransform where
  toGObject = GObject . castRef . unSVGTransform
  unsafeCastGObject = SVGTransform . castRef . unGObject

castToSVGTransform :: GObjectClass obj => obj -> SVGTransform
castToSVGTransform = castTo gTypeSVGTransform "SVGTransform"

foreign import javascript unsafe "window[\"SVGTransform\"]" gTypeSVGTransform' :: JSRef GType
gTypeSVGTransform = GType gTypeSVGTransform'
#else
type IsSVGTransform o = SVGTransformClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGTransformList = SVGTransformList (JSRef SVGTransformList) deriving (Eq)

unSVGTransformList (SVGTransformList o) = o

instance ToJSRef SVGTransformList where
  toJSRef = return . unSVGTransformList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTransformList where
  fromJSRef = return . fmap SVGTransformList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGTransformList o
toSVGTransformList :: IsSVGTransformList o => o -> SVGTransformList
toSVGTransformList = unsafeCastGObject . toGObject

instance IsSVGTransformList SVGTransformList
instance GObjectClass SVGTransformList where
  toGObject = GObject . castRef . unSVGTransformList
  unsafeCastGObject = SVGTransformList . castRef . unGObject

castToSVGTransformList :: GObjectClass obj => obj -> SVGTransformList
castToSVGTransformList = castTo gTypeSVGTransformList "SVGTransformList"

foreign import javascript unsafe "window[\"SVGTransformList\"]" gTypeSVGTransformList' :: JSRef GType
gTypeSVGTransformList = GType gTypeSVGTransformList'
#else
type IsSVGTransformList o = SVGTransformListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGURIReference = SVGURIReference (JSRef SVGURIReference) deriving (Eq)

unSVGURIReference (SVGURIReference o) = o

instance ToJSRef SVGURIReference where
  toJSRef = return . unSVGURIReference
  {-# INLINE toJSRef #-}

instance FromJSRef SVGURIReference where
  fromJSRef = return . fmap SVGURIReference . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGURIReference o
toSVGURIReference :: IsSVGURIReference o => o -> SVGURIReference
toSVGURIReference = unsafeCastGObject . toGObject

instance IsSVGURIReference SVGURIReference
instance GObjectClass SVGURIReference where
  toGObject = GObject . castRef . unSVGURIReference
  unsafeCastGObject = SVGURIReference . castRef . unGObject

castToSVGURIReference :: GObjectClass obj => obj -> SVGURIReference
castToSVGURIReference = castTo gTypeSVGURIReference "SVGURIReference"

foreign import javascript unsafe "window[\"SVGURIReference\"]" gTypeSVGURIReference' :: JSRef GType
gTypeSVGURIReference = GType gTypeSVGURIReference'
#else
type IsSVGURIReference o = SVGURIReferenceClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGUnitTypes = SVGUnitTypes (JSRef SVGUnitTypes) deriving (Eq)

unSVGUnitTypes (SVGUnitTypes o) = o

instance ToJSRef SVGUnitTypes where
  toJSRef = return . unSVGUnitTypes
  {-# INLINE toJSRef #-}

instance FromJSRef SVGUnitTypes where
  fromJSRef = return . fmap SVGUnitTypes . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGUnitTypes o
toSVGUnitTypes :: IsSVGUnitTypes o => o -> SVGUnitTypes
toSVGUnitTypes = unsafeCastGObject . toGObject

instance IsSVGUnitTypes SVGUnitTypes
instance GObjectClass SVGUnitTypes where
  toGObject = GObject . castRef . unSVGUnitTypes
  unsafeCastGObject = SVGUnitTypes . castRef . unGObject

castToSVGUnitTypes :: GObjectClass obj => obj -> SVGUnitTypes
castToSVGUnitTypes = castTo gTypeSVGUnitTypes "SVGUnitTypes"

foreign import javascript unsafe "window[\"SVGUnitTypes\"]" gTypeSVGUnitTypes' :: JSRef GType
gTypeSVGUnitTypes = GType gTypeSVGUnitTypes'
#else
type IsSVGUnitTypes o = SVGUnitTypesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGUseElement = SVGUseElement (JSRef SVGUseElement) deriving (Eq)

unSVGUseElement (SVGUseElement o) = o

instance ToJSRef SVGUseElement where
  toJSRef = return . unSVGUseElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGUseElement where
  fromJSRef = return . fmap SVGUseElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGUseElement o
toSVGUseElement :: IsSVGUseElement o => o -> SVGUseElement
toSVGUseElement = unsafeCastGObject . toGObject

instance IsSVGUseElement SVGUseElement
instance IsSVGGraphicsElement SVGUseElement
instance IsSVGElement SVGUseElement
instance IsElement SVGUseElement
instance IsNode SVGUseElement
instance GObjectClass SVGUseElement where
  toGObject = GObject . castRef . unSVGUseElement
  unsafeCastGObject = SVGUseElement . castRef . unGObject

castToSVGUseElement :: GObjectClass obj => obj -> SVGUseElement
castToSVGUseElement = castTo gTypeSVGUseElement "SVGUseElement"

foreign import javascript unsafe "window[\"SVGUseElement\"]" gTypeSVGUseElement' :: JSRef GType
gTypeSVGUseElement = GType gTypeSVGUseElement'
#else
type IsSVGUseElement o = SVGUseElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGVKernElement = SVGVKernElement (JSRef SVGVKernElement) deriving (Eq)

unSVGVKernElement (SVGVKernElement o) = o

instance ToJSRef SVGVKernElement where
  toJSRef = return . unSVGVKernElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGVKernElement where
  fromJSRef = return . fmap SVGVKernElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGVKernElement o
toSVGVKernElement :: IsSVGVKernElement o => o -> SVGVKernElement
toSVGVKernElement = unsafeCastGObject . toGObject

instance IsSVGVKernElement SVGVKernElement
instance IsSVGElement SVGVKernElement
instance IsElement SVGVKernElement
instance IsNode SVGVKernElement
instance GObjectClass SVGVKernElement where
  toGObject = GObject . castRef . unSVGVKernElement
  unsafeCastGObject = SVGVKernElement . castRef . unGObject

castToSVGVKernElement :: GObjectClass obj => obj -> SVGVKernElement
castToSVGVKernElement = castTo gTypeSVGVKernElement "SVGVKernElement"

foreign import javascript unsafe "window[\"SVGVKernElement\"]" gTypeSVGVKernElement' :: JSRef GType
gTypeSVGVKernElement = GType gTypeSVGVKernElement'
#else
type IsSVGVKernElement o = SVGVKernElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGViewElement = SVGViewElement (JSRef SVGViewElement) deriving (Eq)

unSVGViewElement (SVGViewElement o) = o

instance ToJSRef SVGViewElement where
  toJSRef = return . unSVGViewElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGViewElement where
  fromJSRef = return . fmap SVGViewElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGViewElement o
toSVGViewElement :: IsSVGViewElement o => o -> SVGViewElement
toSVGViewElement = unsafeCastGObject . toGObject

instance IsSVGViewElement SVGViewElement
instance IsSVGElement SVGViewElement
instance IsElement SVGViewElement
instance IsNode SVGViewElement
instance GObjectClass SVGViewElement where
  toGObject = GObject . castRef . unSVGViewElement
  unsafeCastGObject = SVGViewElement . castRef . unGObject

castToSVGViewElement :: GObjectClass obj => obj -> SVGViewElement
castToSVGViewElement = castTo gTypeSVGViewElement "SVGViewElement"

foreign import javascript unsafe "window[\"SVGViewElement\"]" gTypeSVGViewElement' :: JSRef GType
gTypeSVGViewElement = GType gTypeSVGViewElement'
#else
type IsSVGViewElement o = SVGViewElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGViewSpec = SVGViewSpec (JSRef SVGViewSpec) deriving (Eq)

unSVGViewSpec (SVGViewSpec o) = o

instance ToJSRef SVGViewSpec where
  toJSRef = return . unSVGViewSpec
  {-# INLINE toJSRef #-}

instance FromJSRef SVGViewSpec where
  fromJSRef = return . fmap SVGViewSpec . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGViewSpec o
toSVGViewSpec :: IsSVGViewSpec o => o -> SVGViewSpec
toSVGViewSpec = unsafeCastGObject . toGObject

instance IsSVGViewSpec SVGViewSpec
instance GObjectClass SVGViewSpec where
  toGObject = GObject . castRef . unSVGViewSpec
  unsafeCastGObject = SVGViewSpec . castRef . unGObject

castToSVGViewSpec :: GObjectClass obj => obj -> SVGViewSpec
castToSVGViewSpec = castTo gTypeSVGViewSpec "SVGViewSpec"

foreign import javascript unsafe "window[\"SVGViewSpec\"]" gTypeSVGViewSpec' :: JSRef GType
gTypeSVGViewSpec = GType gTypeSVGViewSpec'
#else
type IsSVGViewSpec o = SVGViewSpecClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGZoomAndPan = SVGZoomAndPan (JSRef SVGZoomAndPan) deriving (Eq)

unSVGZoomAndPan (SVGZoomAndPan o) = o

instance ToJSRef SVGZoomAndPan where
  toJSRef = return . unSVGZoomAndPan
  {-# INLINE toJSRef #-}

instance FromJSRef SVGZoomAndPan where
  fromJSRef = return . fmap SVGZoomAndPan . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSVGZoomAndPan o
toSVGZoomAndPan :: IsSVGZoomAndPan o => o -> SVGZoomAndPan
toSVGZoomAndPan = unsafeCastGObject . toGObject

instance IsSVGZoomAndPan SVGZoomAndPan
instance GObjectClass SVGZoomAndPan where
  toGObject = GObject . castRef . unSVGZoomAndPan
  unsafeCastGObject = SVGZoomAndPan . castRef . unGObject

castToSVGZoomAndPan :: GObjectClass obj => obj -> SVGZoomAndPan
castToSVGZoomAndPan = castTo gTypeSVGZoomAndPan "SVGZoomAndPan"

foreign import javascript unsafe "window[\"SVGZoomAndPan\"]" gTypeSVGZoomAndPan' :: JSRef GType
gTypeSVGZoomAndPan = GType gTypeSVGZoomAndPan'
#else
type IsSVGZoomAndPan o = SVGZoomAndPanClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SVGZoomEvent = SVGZoomEvent (JSRef SVGZoomEvent) deriving (Eq)

unSVGZoomEvent (SVGZoomEvent o) = o

instance ToJSRef SVGZoomEvent where
  toJSRef = return . unSVGZoomEvent
  {-# INLINE toJSRef #-}

instance FromJSRef SVGZoomEvent where
  fromJSRef = return . fmap SVGZoomEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsSVGZoomEvent o
toSVGZoomEvent :: IsSVGZoomEvent o => o -> SVGZoomEvent
toSVGZoomEvent = unsafeCastGObject . toGObject

instance IsSVGZoomEvent SVGZoomEvent
instance IsUIEvent SVGZoomEvent
instance IsEvent SVGZoomEvent
instance GObjectClass SVGZoomEvent where
  toGObject = GObject . castRef . unSVGZoomEvent
  unsafeCastGObject = SVGZoomEvent . castRef . unGObject

castToSVGZoomEvent :: GObjectClass obj => obj -> SVGZoomEvent
castToSVGZoomEvent = castTo gTypeSVGZoomEvent "SVGZoomEvent"

foreign import javascript unsafe "window[\"SVGZoomEvent\"]" gTypeSVGZoomEvent' :: JSRef GType
gTypeSVGZoomEvent = GType gTypeSVGZoomEvent'
#else
type IsSVGZoomEvent o = SVGZoomEventClass o
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


