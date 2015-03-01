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
  -- * Object
    maybeJSNullOrUndefined, propagateGError, GType(..)
  , GObject(..), IsGObject, toGObject, unGObject, castToGObject, gTypeGObject, unsafeCastGObject, isA, objectToString

  -- * DOMString
  , DOMString(..), ToDOMString(..), FromDOMString(..), IsDOMString

  -- * Dictionaries
  , Dictionary(Dictionary), unDictionary, IsDictionary, toDictionary
  , BlobPropertyBag(BlobPropertyBag), unBlobPropertyBag, IsBlobPropertyBag, toBlobPropertyBag

  -- * Mutation Callback
  , MutationCallback(MutationCallback), unMutationCallback, IsMutationCallback, toMutationCallback

  -- * Promise
  , Promise(Promise), unPromise, IsPromise, toPromise, castToPromise, gTypePromise

  -- * Date
  , Date(Date), unDate, IsDate, toDate, castToDate, gTypeDate

  -- * Arrays
  , Array(Array), unArray, IsArray, toArray, castToArray, gTypeArray
  , ObjectArray(ObjectArray), unObjectArray, IsObjectArray, toObjectArray
  , ArrayBuffer(ArrayBuffer), unArrayBuffer, IsArrayBuffer, toArrayBuffer, castToArrayBuffer, gTypeArrayBuffer
  , ArrayBufferView(ArrayBufferView), unArrayBufferView, IsArrayBufferView, toArrayBufferView
  , Float32Array(Float32Array), unFloat32Array, IsFloat32Array, toFloat32Array, castToFloat32Array, gTypeFloat32Array
  , Float64Array(Float64Array), unFloat64Array, IsFloat64Array, toFloat64Array, castToFloat64Array, gTypeFloat64Array
  , Uint8Array(Uint8Array), unUint8Array, IsUint8Array, toUint8Array, castToUint8Array, gTypeUint8Array
  , Uint8ClampedArray(Uint8ClampedArray), unUint8ClampedArray, IsUint8ClampedArray, toUint8ClampedArray, castToUint8ClampedArray, gTypeUint8ClampedArray
  , Uint16Array(Uint16Array), unUint16Array, IsUint16Array, toUint16Array, castToUint16Array, gTypeUint16Array
  , Uint32Array(Uint32Array), unUint32Array, IsUint32Array, toUint32Array, castToUint32Array, gTypeUint32Array
  , Int8Array(Int8Array), unInt8Array, IsInt8Array, toInt8Array, castToInt8Array, gTypeInt8Array
  , Int16Array(Int16Array), unInt16Array, IsInt16Array, toInt16Array, castToInt16Array, gTypeInt16Array
  , Int32Array(Int32Array), unInt32Array, IsInt32Array, toInt32Array, castToInt32Array, gTypeInt32Array

  -- * Geolocation
  , SerializedScriptValue(SerializedScriptValue), unSerializedScriptValue, IsSerializedScriptValue, toSerializedScriptValue
  , PositionOptions(PositionOptions), unPositionOptions, IsPositionOptions, toPositionOptions
  , Acceleration(Acceleration), unAcceleration, IsAcceleration, toAcceleration
  , RotationRate(RotationRate), unRotationRate, IsRotationRate, toRotationRate

  -- * Crypto
  , Algorithm(Algorithm), unAlgorithm, IsAlgorithm, toAlgorithm
  , CryptoOperationData(CryptoOperationData), unCryptoOperationData, IsCryptoOperationData, toCryptoOperationData

  -- * CanvasStyle (fill & stroke style)
  , CanvasStyle(CanvasStyle), unCanvasStyle, IsCanvasStyle, toCanvasStyle

  , DOMCoreException(DOMCoreException), unDOMCoreException, IsDOMCoreException, toDOMCoreException
  , DOMURLConstructor(DOMURLConstructor), unDOMURLConstructor, IsDOMURLConstructor, toDOMURLConstructor

  -- * WebGL typedefs
  , GLenum(..), GLboolean(..), GLbitfield(..), GLbyte(..), GLshort(..), GLint(..), GLsizei(..)
  , GLintptr(..), GLsizeiptr(..), GLubyte(..), GLushort(..), GLuint(..), GLfloat(..), GLclampf(..)
  , GLint64, GLuint64

  -- * Inteface types from IDL files

-- AUTO GENERATION STARTS HERE
  , ANGLEInstancedArrays(ANGLEInstancedArrays), unANGLEInstancedArrays, castToANGLEInstancedArrays, gTypeANGLEInstancedArrays
  , AbstractView(AbstractView), unAbstractView, castToAbstractView, gTypeAbstractView
  , AbstractWorker(AbstractWorker), unAbstractWorker, castToAbstractWorker, gTypeAbstractWorker
  , AllAudioCapabilities(AllAudioCapabilities), unAllAudioCapabilities, castToAllAudioCapabilities, gTypeAllAudioCapabilities
  , AllVideoCapabilities(AllVideoCapabilities), unAllVideoCapabilities, castToAllVideoCapabilities, gTypeAllVideoCapabilities
  , AnalyserNode(AnalyserNode), unAnalyserNode, castToAnalyserNode, gTypeAnalyserNode
  , AnimationEvent(AnimationEvent), unAnimationEvent, castToAnimationEvent, gTypeAnimationEvent
  , DOMAttr(DOMAttr), unDOMAttr, castToDOMAttr, gTypeDOMAttr
  , AudioBuffer(AudioBuffer), unAudioBuffer, castToAudioBuffer, gTypeAudioBuffer
  , AudioBufferCallback(AudioBufferCallback), unAudioBufferCallback, castToAudioBufferCallback, gTypeAudioBufferCallback
  , AudioBufferSourceNode(AudioBufferSourceNode), unAudioBufferSourceNode, castToAudioBufferSourceNode, gTypeAudioBufferSourceNode
  , AudioContext(AudioContext), unAudioContext, IsAudioContext, toAudioContext, castToAudioContext, gTypeAudioContext
  , AudioDestinationNode(AudioDestinationNode), unAudioDestinationNode, castToAudioDestinationNode, gTypeAudioDestinationNode
  , AudioListener(AudioListener), unAudioListener, castToAudioListener, gTypeAudioListener
  , AudioNode(AudioNode), unAudioNode, IsAudioNode, toAudioNode, castToAudioNode, gTypeAudioNode
  , AudioParam(AudioParam), unAudioParam, castToAudioParam, gTypeAudioParam
  , AudioProcessingEvent(AudioProcessingEvent), unAudioProcessingEvent, castToAudioProcessingEvent, gTypeAudioProcessingEvent
  , AudioStreamTrack(AudioStreamTrack), unAudioStreamTrack, castToAudioStreamTrack, gTypeAudioStreamTrack
  , AudioTrack(AudioTrack), unAudioTrack, castToAudioTrack, gTypeAudioTrack
  , AudioTrackList(AudioTrackList), unAudioTrackList, castToAudioTrackList, gTypeAudioTrackList
  , AutocompleteErrorEvent(AutocompleteErrorEvent), unAutocompleteErrorEvent, castToAutocompleteErrorEvent, gTypeAutocompleteErrorEvent
  , BarProp(BarProp), unBarProp, castToBarProp, gTypeBarProp
  , BatteryManager(BatteryManager), unBatteryManager, castToBatteryManager, gTypeBatteryManager
  , BeforeLoadEvent(BeforeLoadEvent), unBeforeLoadEvent, castToBeforeLoadEvent, gTypeBeforeLoadEvent
  , BeforeUnloadEvent(BeforeUnloadEvent), unBeforeUnloadEvent, castToBeforeUnloadEvent, gTypeBeforeUnloadEvent
  , BiquadFilterNode(BiquadFilterNode), unBiquadFilterNode, castToBiquadFilterNode, gTypeBiquadFilterNode
  , Blob(Blob), unBlob, IsBlob, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, castToCDATASection, gTypeCDATASection
  , CSSCharsetRule(CSSCharsetRule), unCSSCharsetRule, castToCSSCharsetRule, gTypeCSSCharsetRule
  , CSSFontFaceLoadEvent(CSSFontFaceLoadEvent), unCSSFontFaceLoadEvent, castToCSSFontFaceLoadEvent, gTypeCSSFontFaceLoadEvent
  , CSSFontFaceRule(CSSFontFaceRule), unCSSFontFaceRule, castToCSSFontFaceRule, gTypeCSSFontFaceRule
  , CSSImportRule(CSSImportRule), unCSSImportRule, castToCSSImportRule, gTypeCSSImportRule
  , CSSKeyframeRule(CSSKeyframeRule), unCSSKeyframeRule, castToCSSKeyframeRule, gTypeCSSKeyframeRule
  , CSSKeyframesRule(CSSKeyframesRule), unCSSKeyframesRule, castToCSSKeyframesRule, gTypeCSSKeyframesRule
  , CSSMediaRule(CSSMediaRule), unCSSMediaRule, castToCSSMediaRule, gTypeCSSMediaRule
  , CSSPageRule(CSSPageRule), unCSSPageRule, castToCSSPageRule, gTypeCSSPageRule
  , CSSPrimitiveValue(CSSPrimitiveValue), unCSSPrimitiveValue, castToCSSPrimitiveValue, gTypeCSSPrimitiveValue
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleRule(CSSStyleRule), unCSSStyleRule, castToCSSStyleRule, gTypeCSSStyleRule
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSSupportsRule(CSSSupportsRule), unCSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule
  , CSSUnknownRule(CSSUnknownRule), unCSSUnknownRule, castToCSSUnknownRule, gTypeCSSUnknownRule
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, castToCSSValue, gTypeCSSValue
  , CSSValueList(CSSValueList), unCSSValueList, IsCSSValueList, toCSSValueList, castToCSSValueList, gTypeCSSValueList
  , CanvasGradient(CanvasGradient), unCanvasGradient, castToCanvasGradient, gTypeCanvasGradient
  , CanvasPattern(CanvasPattern), unCanvasPattern, castToCanvasPattern, gTypeCanvasPattern
  , CanvasProxy(CanvasProxy), unCanvasProxy, castToCanvasProxy, gTypeCanvasProxy
  , CanvasRenderingContext(CanvasRenderingContext), unCanvasRenderingContext, IsCanvasRenderingContext, toCanvasRenderingContext, castToCanvasRenderingContext, gTypeCanvasRenderingContext
  , CanvasRenderingContext2D(CanvasRenderingContext2D), unCanvasRenderingContext2D, castToCanvasRenderingContext2D, gTypeCanvasRenderingContext2D
  , CapabilityRange(CapabilityRange), unCapabilityRange, castToCapabilityRange, gTypeCapabilityRange
  , ChannelMergerNode(ChannelMergerNode), unChannelMergerNode, castToChannelMergerNode, gTypeChannelMergerNode
  , ChannelSplitterNode(ChannelSplitterNode), unChannelSplitterNode, castToChannelSplitterNode, gTypeChannelSplitterNode
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, castToCharacterData, gTypeCharacterData
  , ChildNode(ChildNode), unChildNode, castToChildNode, gTypeChildNode
  , ClientRect(ClientRect), unClientRect, castToClientRect, gTypeClientRect
  , ClientRectList(ClientRectList), unClientRectList, castToClientRectList, gTypeClientRectList
  , CloseEvent(CloseEvent), unCloseEvent, castToCloseEvent, gTypeCloseEvent
  , CommandLineAPIHost(CommandLineAPIHost), unCommandLineAPIHost, castToCommandLineAPIHost, gTypeCommandLineAPIHost
  , Comment(Comment), unComment, castToComment, gTypeComment
  , CompositionEvent(CompositionEvent), unCompositionEvent, castToCompositionEvent, gTypeCompositionEvent
  , ConvolverNode(ConvolverNode), unConvolverNode, castToConvolverNode, gTypeConvolverNode
  , Coordinates(Coordinates), unCoordinates, castToCoordinates, gTypeCoordinates
  , Counter(Counter), unCounter, castToCounter, gTypeCounter
  , Crypto(Crypto), unCrypto, castToCrypto, gTypeCrypto
  , CryptoKey(CryptoKey), unCryptoKey, castToCryptoKey, gTypeCryptoKey
  , CryptoKeyPair(CryptoKeyPair), unCryptoKeyPair, castToCryptoKeyPair, gTypeCryptoKeyPair
  , CustomEvent(CustomEvent), unCustomEvent, castToCustomEvent, gTypeCustomEvent
  , DOMApplicationCache(DOMApplicationCache), unDOMApplicationCache, castToDOMApplicationCache, gTypeDOMApplicationCache
  , DOMError(DOMError), unDOMError, IsDOMError, toDOMError, castToDOMError, gTypeDOMError
  , DOMFormData(DOMFormData), unDOMFormData, castToDOMFormData, gTypeDOMFormData
  , DOMImplementation(DOMImplementation), unDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMMimeType(DOMMimeType), unDOMMimeType, castToDOMMimeType, gTypeDOMMimeType
  , DOMMimeTypeArray(DOMMimeTypeArray), unDOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, castToDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMParser(DOMParser), unDOMParser, castToDOMParser, gTypeDOMParser
  , DOMPath(DOMPath), unDOMPath, castToDOMPath, gTypeDOMPath
  , DOMPlugin(DOMPlugin), unDOMPlugin, castToDOMPlugin, gTypeDOMPlugin
  , DOMPluginArray(DOMPluginArray), unDOMPluginArray, castToDOMPluginArray, gTypeDOMPluginArray
  , DOMSecurityPolicy(DOMSecurityPolicy), unDOMSecurityPolicy, castToDOMSecurityPolicy, gTypeDOMSecurityPolicy
  , DOMSelection(DOMSelection), unDOMSelection, castToDOMSelection, gTypeDOMSelection
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMStringMap(DOMStringMap), unDOMStringMap, castToDOMStringMap, gTypeDOMStringMap
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DOMURL(DOMURL), unDOMURL, castToDOMURL, gTypeDOMURL
  , DOMWindow(DOMWindow), unDOMWindow, castToDOMWindow, gTypeDOMWindow
  , DOMWindowCSS(DOMWindowCSS), unDOMWindowCSS, castToDOMWindowCSS, gTypeDOMWindowCSS
  , DataCue(DataCue), unDataCue, castToDataCue, gTypeDataCue
  , DataTransfer(DataTransfer), unDataTransfer, castToDataTransfer, gTypeDataTransfer
  , DataTransferItem(DataTransferItem), unDataTransferItem, castToDataTransferItem, gTypeDataTransferItem
  , DataTransferItemList(DataTransferItemList), unDataTransferItemList, castToDataTransferItemList, gTypeDataTransferItemList
  , Database(Database), unDatabase, castToDatabase, gTypeDatabase
  , DatabaseCallback(DatabaseCallback), unDatabaseCallback, castToDatabaseCallback, gTypeDatabaseCallback
  , DedicatedWorkerGlobalScope(DedicatedWorkerGlobalScope), unDedicatedWorkerGlobalScope, castToDedicatedWorkerGlobalScope, gTypeDedicatedWorkerGlobalScope
  , DelayNode(DelayNode), unDelayNode, castToDelayNode, gTypeDelayNode
  , DeviceMotionEvent(DeviceMotionEvent), unDeviceMotionEvent, castToDeviceMotionEvent, gTypeDeviceMotionEvent
  , DeviceOrientationEvent(DeviceOrientationEvent), unDeviceOrientationEvent, castToDeviceOrientationEvent, gTypeDeviceOrientationEvent
  , DeviceProximityEvent(DeviceProximityEvent), unDeviceProximityEvent, castToDeviceProximityEvent, gTypeDeviceProximityEvent
  , Document(Document), unDocument, IsDocument, toDocument, castToDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, castToDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, castToDocumentType, gTypeDocumentType
  , DynamicsCompressorNode(DynamicsCompressorNode), unDynamicsCompressorNode, castToDynamicsCompressorNode, gTypeDynamicsCompressorNode
  , EXTBlendMinMax(EXTBlendMinMax), unEXTBlendMinMax, castToEXTBlendMinMax, gTypeEXTBlendMinMax
  , EXTFragDepth(EXTFragDepth), unEXTFragDepth, castToEXTFragDepth, gTypeEXTFragDepth
  , EXTShaderTextureLOD(EXTShaderTextureLOD), unEXTShaderTextureLOD, castToEXTShaderTextureLOD, gTypeEXTShaderTextureLOD
  , EXTTextureFilterAnisotropic(EXTTextureFilterAnisotropic), unEXTTextureFilterAnisotropic, castToEXTTextureFilterAnisotropic, gTypeEXTTextureFilterAnisotropic
  , EXTsRGB(EXTsRGB), unEXTsRGB, castToEXTsRGB, gTypeEXTsRGB
  , Element(Element), unElement, IsElement, toElement, castToElement, gTypeElement
  , Entity(Entity), unEntity, castToEntity, gTypeEntity
  , EntityReference(EntityReference), unEntityReference, castToEntityReference, gTypeEntityReference
  , ErrorEvent(ErrorEvent), unErrorEvent, castToErrorEvent, gTypeErrorEvent
  , Event(Event), unEvent, IsEvent, toEvent, castToEvent, gTypeEvent
  , EventListener(EventListener), unEventListener, castToEventListener, gTypeEventListener
  , EventSource(EventSource), unEventSource, castToEventSource, gTypeEventSource
  , EventTarget(EventTarget), unEventTarget, IsEventTarget, toEventTarget, castToEventTarget, gTypeEventTarget
  , File(File), unFile, castToFile, gTypeFile
  , FileError(FileError), unFileError, castToFileError, gTypeFileError
  , FileList(FileList), unFileList, castToFileList, gTypeFileList
  , FileReader(FileReader), unFileReader, castToFileReader, gTypeFileReader
  , FileReaderSync(FileReaderSync), unFileReaderSync, castToFileReaderSync, gTypeFileReaderSync
  , FocusEvent(FocusEvent), unFocusEvent, castToFocusEvent, gTypeFocusEvent
  , FontLoader(FontLoader), unFontLoader, castToFontLoader, gTypeFontLoader
  , GainNode(GainNode), unGainNode, castToGainNode, gTypeGainNode
  , Gamepad(Gamepad), unGamepad, castToGamepad, gTypeGamepad
  , GamepadButton(GamepadButton), unGamepadButton, castToGamepadButton, gTypeGamepadButton
  , GamepadEvent(GamepadEvent), unGamepadEvent, castToGamepadEvent, gTypeGamepadEvent
  , Geolocation(Geolocation), unGeolocation, castToGeolocation, gTypeGeolocation
  , Geoposition(Geoposition), unGeoposition, castToGeoposition, gTypeGeoposition
  , HTMLAllCollection(HTMLAllCollection), unHTMLAllCollection, castToHTMLAllCollection, gTypeHTMLAllCollection
  , HTMLAnchorElement(HTMLAnchorElement), unHTMLAnchorElement, castToHTMLAnchorElement, gTypeHTMLAnchorElement
  , HTMLAppletElement(HTMLAppletElement), unHTMLAppletElement, castToHTMLAppletElement, gTypeHTMLAppletElement
  , HTMLAreaElement(HTMLAreaElement), unHTMLAreaElement, castToHTMLAreaElement, gTypeHTMLAreaElement
  , HTMLAudioElement(HTMLAudioElement), unHTMLAudioElement, castToHTMLAudioElement, gTypeHTMLAudioElement
  , HTMLBRElement(HTMLBRElement), unHTMLBRElement, castToHTMLBRElement, gTypeHTMLBRElement
  , HTMLBaseElement(HTMLBaseElement), unHTMLBaseElement, castToHTMLBaseElement, gTypeHTMLBaseElement
  , HTMLBaseFontElement(HTMLBaseFontElement), unHTMLBaseFontElement, castToHTMLBaseFontElement, gTypeHTMLBaseFontElement
  , HTMLBodyElement(HTMLBodyElement), unHTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement
  , HTMLButtonElement(HTMLButtonElement), unHTMLButtonElement, castToHTMLButtonElement, gTypeHTMLButtonElement
  , HTMLCanvasElement(HTMLCanvasElement), unHTMLCanvasElement, castToHTMLCanvasElement, gTypeHTMLCanvasElement
  , HTMLCollection(HTMLCollection), unHTMLCollection, IsHTMLCollection, toHTMLCollection, castToHTMLCollection, gTypeHTMLCollection
  , HTMLDListElement(HTMLDListElement), unHTMLDListElement, castToHTMLDListElement, gTypeHTMLDListElement
  , HTMLDataListElement(HTMLDataListElement), unHTMLDataListElement, castToHTMLDataListElement, gTypeHTMLDataListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, castToHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, castToHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, castToHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, castToHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, IsHTMLElement, toHTMLElement, castToHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, castToHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, castToHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormControlsCollection(HTMLFormControlsCollection), unHTMLFormControlsCollection, castToHTMLFormControlsCollection, gTypeHTMLFormControlsCollection
  , HTMLFormElement(HTMLFormElement), unHTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement
  , HTMLFrameElement(HTMLFrameElement), unHTMLFrameElement, castToHTMLFrameElement, gTypeHTMLFrameElement
  , HTMLFrameSetElement(HTMLFrameSetElement), unHTMLFrameSetElement, castToHTMLFrameSetElement, gTypeHTMLFrameSetElement
  , HTMLHRElement(HTMLHRElement), unHTMLHRElement, castToHTMLHRElement, gTypeHTMLHRElement
  , HTMLHeadElement(HTMLHeadElement), unHTMLHeadElement, castToHTMLHeadElement, gTypeHTMLHeadElement
  , HTMLHeadingElement(HTMLHeadingElement), unHTMLHeadingElement, castToHTMLHeadingElement, gTypeHTMLHeadingElement
  , HTMLHtmlElement(HTMLHtmlElement), unHTMLHtmlElement, castToHTMLHtmlElement, gTypeHTMLHtmlElement
  , HTMLIFrameElement(HTMLIFrameElement), unHTMLIFrameElement, castToHTMLIFrameElement, gTypeHTMLIFrameElement
  , HTMLImageElement(HTMLImageElement), unHTMLImageElement, castToHTMLImageElement, gTypeHTMLImageElement
  , HTMLInputElement(HTMLInputElement), unHTMLInputElement, castToHTMLInputElement, gTypeHTMLInputElement
  , HTMLKeygenElement(HTMLKeygenElement), unHTMLKeygenElement, castToHTMLKeygenElement, gTypeHTMLKeygenElement
  , HTMLLIElement(HTMLLIElement), unHTMLLIElement, castToHTMLLIElement, gTypeHTMLLIElement
  , HTMLLabelElement(HTMLLabelElement), unHTMLLabelElement, castToHTMLLabelElement, gTypeHTMLLabelElement
  , HTMLLegendElement(HTMLLegendElement), unHTMLLegendElement, castToHTMLLegendElement, gTypeHTMLLegendElement
  , HTMLLinkElement(HTMLLinkElement), unHTMLLinkElement, castToHTMLLinkElement, gTypeHTMLLinkElement
  , HTMLMapElement(HTMLMapElement), unHTMLMapElement, castToHTMLMapElement, gTypeHTMLMapElement
  , HTMLMarqueeElement(HTMLMarqueeElement), unHTMLMarqueeElement, castToHTMLMarqueeElement, gTypeHTMLMarqueeElement
  , HTMLMediaElement(HTMLMediaElement), unHTMLMediaElement, IsHTMLMediaElement, toHTMLMediaElement, castToHTMLMediaElement, gTypeHTMLMediaElement
  , HTMLMenuElement(HTMLMenuElement), unHTMLMenuElement, castToHTMLMenuElement, gTypeHTMLMenuElement
  , HTMLMetaElement(HTMLMetaElement), unHTMLMetaElement, castToHTMLMetaElement, gTypeHTMLMetaElement
  , HTMLMeterElement(HTMLMeterElement), unHTMLMeterElement, castToHTMLMeterElement, gTypeHTMLMeterElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, castToHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, castToHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, castToHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, castToHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, castToHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, castToHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLOutputElement(HTMLOutputElement), unHTMLOutputElement, castToHTMLOutputElement, gTypeHTMLOutputElement
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, castToHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, castToHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, castToHTMLPreElement, gTypeHTMLPreElement
  , HTMLProgressElement(HTMLProgressElement), unHTMLProgressElement, castToHTMLProgressElement, gTypeHTMLProgressElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, castToHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, castToHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, castToHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLSourceElement(HTMLSourceElement), unHTMLSourceElement, castToHTMLSourceElement, gTypeHTMLSourceElement
  , HTMLSpanElement(HTMLSpanElement), unHTMLSpanElement, castToHTMLSpanElement, gTypeHTMLSpanElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, castToHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, castToHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, castToHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, castToHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, castToHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, castToHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, castToHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTemplateElement(HTMLTemplateElement), unHTMLTemplateElement, castToHTMLTemplateElement, gTypeHTMLTemplateElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, castToHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, castToHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLTrackElement(HTMLTrackElement), unHTMLTrackElement, castToHTMLTrackElement, gTypeHTMLTrackElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, castToHTMLUListElement, gTypeHTMLUListElement
  , HTMLUnknownElement(HTMLUnknownElement), unHTMLUnknownElement, castToHTMLUnknownElement, gTypeHTMLUnknownElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, castToHTMLVideoElement, gTypeHTMLVideoElement
  , HashChangeEvent(HashChangeEvent), unHashChangeEvent, castToHashChangeEvent, gTypeHashChangeEvent
  , History(History), unHistory, castToHistory, gTypeHistory
  , IDBAny(IDBAny), unIDBAny, castToIDBAny, gTypeIDBAny
  , IDBCursor(IDBCursor), unIDBCursor, IsIDBCursor, toIDBCursor, castToIDBCursor, gTypeIDBCursor
  , IDBCursorWithValue(IDBCursorWithValue), unIDBCursorWithValue, castToIDBCursorWithValue, gTypeIDBCursorWithValue
  , IDBDatabase(IDBDatabase), unIDBDatabase, castToIDBDatabase, gTypeIDBDatabase
  , IDBFactory(IDBFactory), unIDBFactory, castToIDBFactory, gTypeIDBFactory
  , IDBIndex(IDBIndex), unIDBIndex, castToIDBIndex, gTypeIDBIndex
  , IDBKeyRange(IDBKeyRange), unIDBKeyRange, castToIDBKeyRange, gTypeIDBKeyRange
  , IDBObjectStore(IDBObjectStore), unIDBObjectStore, castToIDBObjectStore, gTypeIDBObjectStore
  , IDBOpenDBRequest(IDBOpenDBRequest), unIDBOpenDBRequest, castToIDBOpenDBRequest, gTypeIDBOpenDBRequest
  , IDBRequest(IDBRequest), unIDBRequest, IsIDBRequest, toIDBRequest, castToIDBRequest, gTypeIDBRequest
  , IDBTransaction(IDBTransaction), unIDBTransaction, castToIDBTransaction, gTypeIDBTransaction
  , IDBVersionChangeEvent(IDBVersionChangeEvent), unIDBVersionChangeEvent, castToIDBVersionChangeEvent, gTypeIDBVersionChangeEvent
  , ImageData(ImageData), unImageData, castToImageData, gTypeImageData
  , InspectorFrontendHost(InspectorFrontendHost), unInspectorFrontendHost, castToInspectorFrontendHost, gTypeInspectorFrontendHost
  , InternalSettings(InternalSettings), unInternalSettings, castToInternalSettings, gTypeInternalSettings
  , Internals(Internals), unInternals, castToInternals, gTypeInternals
  , KeyboardEvent(KeyboardEvent), unKeyboardEvent, castToKeyboardEvent, gTypeKeyboardEvent
  , Location(Location), unLocation, castToLocation, gTypeLocation
  , MallocStatistics(MallocStatistics), unMallocStatistics, castToMallocStatistics, gTypeMallocStatistics
  , MediaController(MediaController), unMediaController, castToMediaController, gTypeMediaController
  , MediaControlsHost(MediaControlsHost), unMediaControlsHost, castToMediaControlsHost, gTypeMediaControlsHost
  , MediaElementAudioSourceNode(MediaElementAudioSourceNode), unMediaElementAudioSourceNode, castToMediaElementAudioSourceNode, gTypeMediaElementAudioSourceNode
  , MediaError(MediaError), unMediaError, castToMediaError, gTypeMediaError
  , MediaKeyError(MediaKeyError), unMediaKeyError, castToMediaKeyError, gTypeMediaKeyError
  , MediaKeyEvent(MediaKeyEvent), unMediaKeyEvent, castToMediaKeyEvent, gTypeMediaKeyEvent
  , MediaKeyMessageEvent(MediaKeyMessageEvent), unMediaKeyMessageEvent, castToMediaKeyMessageEvent, gTypeMediaKeyMessageEvent
  , MediaKeyNeededEvent(MediaKeyNeededEvent), unMediaKeyNeededEvent, castToMediaKeyNeededEvent, gTypeMediaKeyNeededEvent
  , MediaKeySession(MediaKeySession), unMediaKeySession, castToMediaKeySession, gTypeMediaKeySession
  , MediaKeys(MediaKeys), unMediaKeys, castToMediaKeys, gTypeMediaKeys
  , MediaList(MediaList), unMediaList, castToMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, castToMediaQueryList, gTypeMediaQueryList
  , MediaQueryListListener(MediaQueryListListener), unMediaQueryListListener, castToMediaQueryListListener, gTypeMediaQueryListListener
  , MediaSource(MediaSource), unMediaSource, castToMediaSource, gTypeMediaSource
  , MediaSourceStates(MediaSourceStates), unMediaSourceStates, castToMediaSourceStates, gTypeMediaSourceStates
  , MediaStream(MediaStream), unMediaStream, castToMediaStream, gTypeMediaStream
  , MediaStreamAudioDestinationNode(MediaStreamAudioDestinationNode), unMediaStreamAudioDestinationNode, castToMediaStreamAudioDestinationNode, gTypeMediaStreamAudioDestinationNode
  , MediaStreamAudioSourceNode(MediaStreamAudioSourceNode), unMediaStreamAudioSourceNode, castToMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode
  , MediaStreamCapabilities(MediaStreamCapabilities), unMediaStreamCapabilities, IsMediaStreamCapabilities, toMediaStreamCapabilities, castToMediaStreamCapabilities, gTypeMediaStreamCapabilities
  , MediaStreamEvent(MediaStreamEvent), unMediaStreamEvent, castToMediaStreamEvent, gTypeMediaStreamEvent
  , MediaStreamTrack(MediaStreamTrack), unMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack, castToMediaStreamTrack, gTypeMediaStreamTrack
  , MediaStreamTrackEvent(MediaStreamTrackEvent), unMediaStreamTrackEvent, castToMediaStreamTrackEvent, gTypeMediaStreamTrackEvent
  , MediaStreamTrackSourcesCallback(MediaStreamTrackSourcesCallback), unMediaStreamTrackSourcesCallback, castToMediaStreamTrackSourcesCallback, gTypeMediaStreamTrackSourcesCallback
  , MediaTrackConstraint(MediaTrackConstraint), unMediaTrackConstraint, castToMediaTrackConstraint, gTypeMediaTrackConstraint
  , MediaTrackConstraintSet(MediaTrackConstraintSet), unMediaTrackConstraintSet, castToMediaTrackConstraintSet, gTypeMediaTrackConstraintSet
  , MediaTrackConstraints(MediaTrackConstraints), unMediaTrackConstraints, castToMediaTrackConstraints, gTypeMediaTrackConstraints
  , MemoryInfo(MemoryInfo), unMemoryInfo, castToMemoryInfo, gTypeMemoryInfo
  , MessageChannel(MessageChannel), unMessageChannel, castToMessageChannel, gTypeMessageChannel
  , MessageEvent(MessageEvent), unMessageEvent, castToMessageEvent, gTypeMessageEvent
  , MessagePort(MessagePort), unMessagePort, castToMessagePort, gTypeMessagePort
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, castToMutationEvent, gTypeMutationEvent
  , MutationObserver(MutationObserver), unMutationObserver, castToMutationObserver, gTypeMutationObserver
  , MutationRecord(MutationRecord), unMutationRecord, castToMutationRecord, gTypeMutationRecord
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, castToNavigator, gTypeNavigator
  , NavigatorUserMediaError(NavigatorUserMediaError), unNavigatorUserMediaError, castToNavigatorUserMediaError, gTypeNavigatorUserMediaError
  , NavigatorUserMediaErrorCallback(NavigatorUserMediaErrorCallback), unNavigatorUserMediaErrorCallback, castToNavigatorUserMediaErrorCallback, gTypeNavigatorUserMediaErrorCallback
  , NavigatorUserMediaSuccessCallback(NavigatorUserMediaSuccessCallback), unNavigatorUserMediaSuccessCallback, castToNavigatorUserMediaSuccessCallback, gTypeNavigatorUserMediaSuccessCallback
  , Node(Node), unNode, IsNode, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, castToNodeList, gTypeNodeList
  , Notification(Notification), unNotification, castToNotification, gTypeNotification
  , NotificationCenter(NotificationCenter), unNotificationCenter, castToNotificationCenter, gTypeNotificationCenter
  , NotificationPermissionCallback(NotificationPermissionCallback), unNotificationPermissionCallback, castToNotificationPermissionCallback, gTypeNotificationPermissionCallback
  , OESElementIndexUint(OESElementIndexUint), unOESElementIndexUint, castToOESElementIndexUint, gTypeOESElementIndexUint
  , OESStandardDerivatives(OESStandardDerivatives), unOESStandardDerivatives, castToOESStandardDerivatives, gTypeOESStandardDerivatives
  , OESTextureFloat(OESTextureFloat), unOESTextureFloat, castToOESTextureFloat, gTypeOESTextureFloat
  , OESTextureFloatLinear(OESTextureFloatLinear), unOESTextureFloatLinear, castToOESTextureFloatLinear, gTypeOESTextureFloatLinear
  , OESTextureHalfFloat(OESTextureHalfFloat), unOESTextureHalfFloat, castToOESTextureHalfFloat, gTypeOESTextureHalfFloat
  , OESTextureHalfFloatLinear(OESTextureHalfFloatLinear), unOESTextureHalfFloatLinear, castToOESTextureHalfFloatLinear, gTypeOESTextureHalfFloatLinear
  , OESVertexArrayObject(OESVertexArrayObject), unOESVertexArrayObject, castToOESVertexArrayObject, gTypeOESVertexArrayObject
  , OfflineAudioCompletionEvent(OfflineAudioCompletionEvent), unOfflineAudioCompletionEvent, castToOfflineAudioCompletionEvent, gTypeOfflineAudioCompletionEvent
  , OfflineAudioContext(OfflineAudioContext), unOfflineAudioContext, castToOfflineAudioContext, gTypeOfflineAudioContext
  , OscillatorNode(OscillatorNode), unOscillatorNode, castToOscillatorNode, gTypeOscillatorNode
  , OverflowEvent(OverflowEvent), unOverflowEvent, castToOverflowEvent, gTypeOverflowEvent
  , PageTransitionEvent(PageTransitionEvent), unPageTransitionEvent, castToPageTransitionEvent, gTypePageTransitionEvent
  , PannerNode(PannerNode), unPannerNode, castToPannerNode, gTypePannerNode
  , Performance(Performance), unPerformance, castToPerformance, gTypePerformance
  , PerformanceEntry(PerformanceEntry), unPerformanceEntry, IsPerformanceEntry, toPerformanceEntry, castToPerformanceEntry, gTypePerformanceEntry
  , PerformanceEntryList(PerformanceEntryList), unPerformanceEntryList, castToPerformanceEntryList, gTypePerformanceEntryList
  , PerformanceMark(PerformanceMark), unPerformanceMark, castToPerformanceMark, gTypePerformanceMark
  , PerformanceMeasure(PerformanceMeasure), unPerformanceMeasure, castToPerformanceMeasure, gTypePerformanceMeasure
  , PerformanceNavigation(PerformanceNavigation), unPerformanceNavigation, castToPerformanceNavigation, gTypePerformanceNavigation
  , PerformanceResourceTiming(PerformanceResourceTiming), unPerformanceResourceTiming, castToPerformanceResourceTiming, gTypePerformanceResourceTiming
  , PerformanceTiming(PerformanceTiming), unPerformanceTiming, castToPerformanceTiming, gTypePerformanceTiming
  , PeriodicWave(PeriodicWave), unPeriodicWave, castToPeriodicWave, gTypePeriodicWave
  , PopStateEvent(PopStateEvent), unPopStateEvent, castToPopStateEvent, gTypePopStateEvent
  , PositionCallback(PositionCallback), unPositionCallback, castToPositionCallback, gTypePositionCallback
  , PositionError(PositionError), unPositionError, castToPositionError, gTypePositionError
  , PositionErrorCallback(PositionErrorCallback), unPositionErrorCallback, castToPositionErrorCallback, gTypePositionErrorCallback
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, castToProcessingInstruction, gTypeProcessingInstruction
  , ProgressEvent(ProgressEvent), unProgressEvent, IsProgressEvent, toProgressEvent, castToProgressEvent, gTypeProgressEvent
  , QuickTimePluginReplacement(QuickTimePluginReplacement), unQuickTimePluginReplacement, castToQuickTimePluginReplacement, gTypeQuickTimePluginReplacement
  , RGBColor(RGBColor), unRGBColor, castToRGBColor, gTypeRGBColor
  , RTCConfiguration(RTCConfiguration), unRTCConfiguration, castToRTCConfiguration, gTypeRTCConfiguration
  , RTCDTMFSender(RTCDTMFSender), unRTCDTMFSender, castToRTCDTMFSender, gTypeRTCDTMFSender
  , RTCDTMFToneChangeEvent(RTCDTMFToneChangeEvent), unRTCDTMFToneChangeEvent, castToRTCDTMFToneChangeEvent, gTypeRTCDTMFToneChangeEvent
  , RTCDataChannel(RTCDataChannel), unRTCDataChannel, castToRTCDataChannel, gTypeRTCDataChannel
  , RTCDataChannelEvent(RTCDataChannelEvent), unRTCDataChannelEvent, castToRTCDataChannelEvent, gTypeRTCDataChannelEvent
  , RTCIceCandidate(RTCIceCandidate), unRTCIceCandidate, castToRTCIceCandidate, gTypeRTCIceCandidate
  , RTCIceCandidateEvent(RTCIceCandidateEvent), unRTCIceCandidateEvent, castToRTCIceCandidateEvent, gTypeRTCIceCandidateEvent
  , RTCIceServer(RTCIceServer), unRTCIceServer, castToRTCIceServer, gTypeRTCIceServer
  , RTCPeerConnection(RTCPeerConnection), unRTCPeerConnection, castToRTCPeerConnection, gTypeRTCPeerConnection
  , RTCPeerConnectionErrorCallback(RTCPeerConnectionErrorCallback), unRTCPeerConnectionErrorCallback, castToRTCPeerConnectionErrorCallback, gTypeRTCPeerConnectionErrorCallback
  , RTCSessionDescription(RTCSessionDescription), unRTCSessionDescription, castToRTCSessionDescription, gTypeRTCSessionDescription
  , RTCSessionDescriptionCallback(RTCSessionDescriptionCallback), unRTCSessionDescriptionCallback, castToRTCSessionDescriptionCallback, gTypeRTCSessionDescriptionCallback
  , RTCStatsCallback(RTCStatsCallback), unRTCStatsCallback, castToRTCStatsCallback, gTypeRTCStatsCallback
  , RTCStatsReport(RTCStatsReport), unRTCStatsReport, castToRTCStatsReport, gTypeRTCStatsReport
  , RTCStatsResponse(RTCStatsResponse), unRTCStatsResponse, castToRTCStatsResponse, gTypeRTCStatsResponse
  , RadioNodeList(RadioNodeList), unRadioNodeList, castToRadioNodeList, gTypeRadioNodeList
  , DOMRange(DOMRange), unDOMRange, castToDOMRange, gTypeDOMRange
  , ReadableStream(ReadableStream), unReadableStream, castToReadableStream, gTypeReadableStream
  , Rect(Rect), unRect, castToRect, gTypeRect
  , RequestAnimationFrameCallback(RequestAnimationFrameCallback), unRequestAnimationFrameCallback, castToRequestAnimationFrameCallback, gTypeRequestAnimationFrameCallback
  , SQLError(SQLError), unSQLError, castToSQLError, gTypeSQLError
  , SQLResultSet(SQLResultSet), unSQLResultSet, castToSQLResultSet, gTypeSQLResultSet
  , SQLResultSetRowList(SQLResultSetRowList), unSQLResultSetRowList, castToSQLResultSetRowList, gTypeSQLResultSetRowList
  , SQLStatementCallback(SQLStatementCallback), unSQLStatementCallback, castToSQLStatementCallback, gTypeSQLStatementCallback
  , SQLStatementErrorCallback(SQLStatementErrorCallback), unSQLStatementErrorCallback, castToSQLStatementErrorCallback, gTypeSQLStatementErrorCallback
  , SQLTransaction(SQLTransaction), unSQLTransaction, castToSQLTransaction, gTypeSQLTransaction
  , SQLTransactionCallback(SQLTransactionCallback), unSQLTransactionCallback, castToSQLTransactionCallback, gTypeSQLTransactionCallback
  , SQLTransactionErrorCallback(SQLTransactionErrorCallback), unSQLTransactionErrorCallback, castToSQLTransactionErrorCallback, gTypeSQLTransactionErrorCallback
  , SVGAElement(SVGAElement), unSVGAElement, castToSVGAElement, gTypeSVGAElement
  , SVGAltGlyphDefElement(SVGAltGlyphDefElement), unSVGAltGlyphDefElement, castToSVGAltGlyphDefElement, gTypeSVGAltGlyphDefElement
  , SVGAltGlyphElement(SVGAltGlyphElement), unSVGAltGlyphElement, castToSVGAltGlyphElement, gTypeSVGAltGlyphElement
  , SVGAltGlyphItemElement(SVGAltGlyphItemElement), unSVGAltGlyphItemElement, castToSVGAltGlyphItemElement, gTypeSVGAltGlyphItemElement
  , SVGAngle(SVGAngle), unSVGAngle, castToSVGAngle, gTypeSVGAngle
  , SVGAnimateColorElement(SVGAnimateColorElement), unSVGAnimateColorElement, castToSVGAnimateColorElement, gTypeSVGAnimateColorElement
  , SVGAnimateElement(SVGAnimateElement), unSVGAnimateElement, castToSVGAnimateElement, gTypeSVGAnimateElement
  , SVGAnimateMotionElement(SVGAnimateMotionElement), unSVGAnimateMotionElement, castToSVGAnimateMotionElement, gTypeSVGAnimateMotionElement
  , SVGAnimateTransformElement(SVGAnimateTransformElement), unSVGAnimateTransformElement, castToSVGAnimateTransformElement, gTypeSVGAnimateTransformElement
  , SVGAnimatedAngle(SVGAnimatedAngle), unSVGAnimatedAngle, castToSVGAnimatedAngle, gTypeSVGAnimatedAngle
  , SVGAnimatedBoolean(SVGAnimatedBoolean), unSVGAnimatedBoolean, castToSVGAnimatedBoolean, gTypeSVGAnimatedBoolean
  , SVGAnimatedEnumeration(SVGAnimatedEnumeration), unSVGAnimatedEnumeration, castToSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration
  , SVGAnimatedInteger(SVGAnimatedInteger), unSVGAnimatedInteger, castToSVGAnimatedInteger, gTypeSVGAnimatedInteger
  , SVGAnimatedLength(SVGAnimatedLength), unSVGAnimatedLength, castToSVGAnimatedLength, gTypeSVGAnimatedLength
  , SVGAnimatedLengthList(SVGAnimatedLengthList), unSVGAnimatedLengthList, castToSVGAnimatedLengthList, gTypeSVGAnimatedLengthList
  , SVGAnimatedNumber(SVGAnimatedNumber), unSVGAnimatedNumber, castToSVGAnimatedNumber, gTypeSVGAnimatedNumber
  , SVGAnimatedNumberList(SVGAnimatedNumberList), unSVGAnimatedNumberList, castToSVGAnimatedNumberList, gTypeSVGAnimatedNumberList
  , SVGAnimatedPreserveAspectRatio(SVGAnimatedPreserveAspectRatio), unSVGAnimatedPreserveAspectRatio, castToSVGAnimatedPreserveAspectRatio, gTypeSVGAnimatedPreserveAspectRatio
  , SVGAnimatedRect(SVGAnimatedRect), unSVGAnimatedRect, castToSVGAnimatedRect, gTypeSVGAnimatedRect
  , SVGAnimatedString(SVGAnimatedString), unSVGAnimatedString, castToSVGAnimatedString, gTypeSVGAnimatedString
  , SVGAnimatedTransformList(SVGAnimatedTransformList), unSVGAnimatedTransformList, castToSVGAnimatedTransformList, gTypeSVGAnimatedTransformList
  , SVGAnimationElement(SVGAnimationElement), unSVGAnimationElement, IsSVGAnimationElement, toSVGAnimationElement, castToSVGAnimationElement, gTypeSVGAnimationElement
  , SVGCircleElement(SVGCircleElement), unSVGCircleElement, castToSVGCircleElement, gTypeSVGCircleElement
  , SVGClipPathElement(SVGClipPathElement), unSVGClipPathElement, castToSVGClipPathElement, gTypeSVGClipPathElement
  , SVGColor(SVGColor), unSVGColor, IsSVGColor, toSVGColor, castToSVGColor, gTypeSVGColor
  , SVGComponentTransferFunctionElement(SVGComponentTransferFunctionElement), unSVGComponentTransferFunctionElement, IsSVGComponentTransferFunctionElement, toSVGComponentTransferFunctionElement, castToSVGComponentTransferFunctionElement, gTypeSVGComponentTransferFunctionElement
  , SVGCursorElement(SVGCursorElement), unSVGCursorElement, castToSVGCursorElement, gTypeSVGCursorElement
  , SVGDefsElement(SVGDefsElement), unSVGDefsElement, castToSVGDefsElement, gTypeSVGDefsElement
  , SVGDescElement(SVGDescElement), unSVGDescElement, castToSVGDescElement, gTypeSVGDescElement
  , SVGDocument(SVGDocument), unSVGDocument, castToSVGDocument, gTypeSVGDocument
  , SVGElement(SVGElement), unSVGElement, IsSVGElement, toSVGElement, castToSVGElement, gTypeSVGElement
  , SVGEllipseElement(SVGEllipseElement), unSVGEllipseElement, castToSVGEllipseElement, gTypeSVGEllipseElement
  , SVGExternalResourcesRequired(SVGExternalResourcesRequired), unSVGExternalResourcesRequired, castToSVGExternalResourcesRequired, gTypeSVGExternalResourcesRequired
  , SVGFEBlendElement(SVGFEBlendElement), unSVGFEBlendElement, castToSVGFEBlendElement, gTypeSVGFEBlendElement
  , SVGFEColorMatrixElement(SVGFEColorMatrixElement), unSVGFEColorMatrixElement, castToSVGFEColorMatrixElement, gTypeSVGFEColorMatrixElement
  , SVGFEComponentTransferElement(SVGFEComponentTransferElement), unSVGFEComponentTransferElement, castToSVGFEComponentTransferElement, gTypeSVGFEComponentTransferElement
  , SVGFECompositeElement(SVGFECompositeElement), unSVGFECompositeElement, castToSVGFECompositeElement, gTypeSVGFECompositeElement
  , SVGFEConvolveMatrixElement(SVGFEConvolveMatrixElement), unSVGFEConvolveMatrixElement, castToSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement
  , SVGFEDiffuseLightingElement(SVGFEDiffuseLightingElement), unSVGFEDiffuseLightingElement, castToSVGFEDiffuseLightingElement, gTypeSVGFEDiffuseLightingElement
  , SVGFEDisplacementMapElement(SVGFEDisplacementMapElement), unSVGFEDisplacementMapElement, castToSVGFEDisplacementMapElement, gTypeSVGFEDisplacementMapElement
  , SVGFEDistantLightElement(SVGFEDistantLightElement), unSVGFEDistantLightElement, castToSVGFEDistantLightElement, gTypeSVGFEDistantLightElement
  , SVGFEDropShadowElement(SVGFEDropShadowElement), unSVGFEDropShadowElement, castToSVGFEDropShadowElement, gTypeSVGFEDropShadowElement
  , SVGFEFloodElement(SVGFEFloodElement), unSVGFEFloodElement, castToSVGFEFloodElement, gTypeSVGFEFloodElement
  , SVGFEFuncAElement(SVGFEFuncAElement), unSVGFEFuncAElement, castToSVGFEFuncAElement, gTypeSVGFEFuncAElement
  , SVGFEFuncBElement(SVGFEFuncBElement), unSVGFEFuncBElement, castToSVGFEFuncBElement, gTypeSVGFEFuncBElement
  , SVGFEFuncGElement(SVGFEFuncGElement), unSVGFEFuncGElement, castToSVGFEFuncGElement, gTypeSVGFEFuncGElement
  , SVGFEFuncRElement(SVGFEFuncRElement), unSVGFEFuncRElement, castToSVGFEFuncRElement, gTypeSVGFEFuncRElement
  , SVGFEGaussianBlurElement(SVGFEGaussianBlurElement), unSVGFEGaussianBlurElement, castToSVGFEGaussianBlurElement, gTypeSVGFEGaussianBlurElement
  , SVGFEImageElement(SVGFEImageElement), unSVGFEImageElement, castToSVGFEImageElement, gTypeSVGFEImageElement
  , SVGFEMergeElement(SVGFEMergeElement), unSVGFEMergeElement, castToSVGFEMergeElement, gTypeSVGFEMergeElement
  , SVGFEMergeNodeElement(SVGFEMergeNodeElement), unSVGFEMergeNodeElement, castToSVGFEMergeNodeElement, gTypeSVGFEMergeNodeElement
  , SVGFEMorphologyElement(SVGFEMorphologyElement), unSVGFEMorphologyElement, castToSVGFEMorphologyElement, gTypeSVGFEMorphologyElement
  , SVGFEOffsetElement(SVGFEOffsetElement), unSVGFEOffsetElement, castToSVGFEOffsetElement, gTypeSVGFEOffsetElement
  , SVGFEPointLightElement(SVGFEPointLightElement), unSVGFEPointLightElement, castToSVGFEPointLightElement, gTypeSVGFEPointLightElement
  , SVGFESpecularLightingElement(SVGFESpecularLightingElement), unSVGFESpecularLightingElement, castToSVGFESpecularLightingElement, gTypeSVGFESpecularLightingElement
  , SVGFESpotLightElement(SVGFESpotLightElement), unSVGFESpotLightElement, castToSVGFESpotLightElement, gTypeSVGFESpotLightElement
  , SVGFETileElement(SVGFETileElement), unSVGFETileElement, castToSVGFETileElement, gTypeSVGFETileElement
  , SVGFETurbulenceElement(SVGFETurbulenceElement), unSVGFETurbulenceElement, castToSVGFETurbulenceElement, gTypeSVGFETurbulenceElement
  , SVGFilterElement(SVGFilterElement), unSVGFilterElement, castToSVGFilterElement, gTypeSVGFilterElement
  , SVGFilterPrimitiveStandardAttributes(SVGFilterPrimitiveStandardAttributes), unSVGFilterPrimitiveStandardAttributes, castToSVGFilterPrimitiveStandardAttributes, gTypeSVGFilterPrimitiveStandardAttributes
  , SVGFitToViewBox(SVGFitToViewBox), unSVGFitToViewBox, castToSVGFitToViewBox, gTypeSVGFitToViewBox
  , SVGFontElement(SVGFontElement), unSVGFontElement, castToSVGFontElement, gTypeSVGFontElement
  , SVGFontFaceElement(SVGFontFaceElement), unSVGFontFaceElement, castToSVGFontFaceElement, gTypeSVGFontFaceElement
  , SVGFontFaceFormatElement(SVGFontFaceFormatElement), unSVGFontFaceFormatElement, castToSVGFontFaceFormatElement, gTypeSVGFontFaceFormatElement
  , SVGFontFaceNameElement(SVGFontFaceNameElement), unSVGFontFaceNameElement, castToSVGFontFaceNameElement, gTypeSVGFontFaceNameElement
  , SVGFontFaceSrcElement(SVGFontFaceSrcElement), unSVGFontFaceSrcElement, castToSVGFontFaceSrcElement, gTypeSVGFontFaceSrcElement
  , SVGFontFaceUriElement(SVGFontFaceUriElement), unSVGFontFaceUriElement, castToSVGFontFaceUriElement, gTypeSVGFontFaceUriElement
  , SVGForeignObjectElement(SVGForeignObjectElement), unSVGForeignObjectElement, castToSVGForeignObjectElement, gTypeSVGForeignObjectElement
  , SVGGElement(SVGGElement), unSVGGElement, castToSVGGElement, gTypeSVGGElement
  , SVGGlyphElement(SVGGlyphElement), unSVGGlyphElement, castToSVGGlyphElement, gTypeSVGGlyphElement
  , SVGGlyphRefElement(SVGGlyphRefElement), unSVGGlyphRefElement, castToSVGGlyphRefElement, gTypeSVGGlyphRefElement
  , SVGGradientElement(SVGGradientElement), unSVGGradientElement, IsSVGGradientElement, toSVGGradientElement, castToSVGGradientElement, gTypeSVGGradientElement
  , SVGGraphicsElement(SVGGraphicsElement), unSVGGraphicsElement, IsSVGGraphicsElement, toSVGGraphicsElement, castToSVGGraphicsElement, gTypeSVGGraphicsElement
  , SVGHKernElement(SVGHKernElement), unSVGHKernElement, castToSVGHKernElement, gTypeSVGHKernElement
  , SVGImageElement(SVGImageElement), unSVGImageElement, castToSVGImageElement, gTypeSVGImageElement
  , SVGLength(SVGLength), unSVGLength, castToSVGLength, gTypeSVGLength
  , SVGLengthList(SVGLengthList), unSVGLengthList, castToSVGLengthList, gTypeSVGLengthList
  , SVGLineElement(SVGLineElement), unSVGLineElement, castToSVGLineElement, gTypeSVGLineElement
  , SVGLinearGradientElement(SVGLinearGradientElement), unSVGLinearGradientElement, castToSVGLinearGradientElement, gTypeSVGLinearGradientElement
  , SVGMPathElement(SVGMPathElement), unSVGMPathElement, castToSVGMPathElement, gTypeSVGMPathElement
  , SVGMarkerElement(SVGMarkerElement), unSVGMarkerElement, castToSVGMarkerElement, gTypeSVGMarkerElement
  , SVGMaskElement(SVGMaskElement), unSVGMaskElement, castToSVGMaskElement, gTypeSVGMaskElement
  , SVGMatrix(SVGMatrix), unSVGMatrix, castToSVGMatrix, gTypeSVGMatrix
  , SVGMetadataElement(SVGMetadataElement), unSVGMetadataElement, castToSVGMetadataElement, gTypeSVGMetadataElement
  , SVGMissingGlyphElement(SVGMissingGlyphElement), unSVGMissingGlyphElement, castToSVGMissingGlyphElement, gTypeSVGMissingGlyphElement
  , SVGNumber(SVGNumber), unSVGNumber, castToSVGNumber, gTypeSVGNumber
  , SVGNumberList(SVGNumberList), unSVGNumberList, castToSVGNumberList, gTypeSVGNumberList
  , SVGPaint(SVGPaint), unSVGPaint, castToSVGPaint, gTypeSVGPaint
  , SVGPathElement(SVGPathElement), unSVGPathElement, castToSVGPathElement, gTypeSVGPathElement
  , SVGPathSeg(SVGPathSeg), unSVGPathSeg, IsSVGPathSeg, toSVGPathSeg, castToSVGPathSeg, gTypeSVGPathSeg
  , SVGPathSegArcAbs(SVGPathSegArcAbs), unSVGPathSegArcAbs, castToSVGPathSegArcAbs, gTypeSVGPathSegArcAbs
  , SVGPathSegArcRel(SVGPathSegArcRel), unSVGPathSegArcRel, castToSVGPathSegArcRel, gTypeSVGPathSegArcRel
  , SVGPathSegClosePath(SVGPathSegClosePath), unSVGPathSegClosePath, castToSVGPathSegClosePath, gTypeSVGPathSegClosePath
  , SVGPathSegCurvetoCubicAbs(SVGPathSegCurvetoCubicAbs), unSVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs, gTypeSVGPathSegCurvetoCubicAbs
  , SVGPathSegCurvetoCubicRel(SVGPathSegCurvetoCubicRel), unSVGPathSegCurvetoCubicRel, castToSVGPathSegCurvetoCubicRel, gTypeSVGPathSegCurvetoCubicRel
  , SVGPathSegCurvetoCubicSmoothAbs(SVGPathSegCurvetoCubicSmoothAbs), unSVGPathSegCurvetoCubicSmoothAbs, castToSVGPathSegCurvetoCubicSmoothAbs, gTypeSVGPathSegCurvetoCubicSmoothAbs
  , SVGPathSegCurvetoCubicSmoothRel(SVGPathSegCurvetoCubicSmoothRel), unSVGPathSegCurvetoCubicSmoothRel, castToSVGPathSegCurvetoCubicSmoothRel, gTypeSVGPathSegCurvetoCubicSmoothRel
  , SVGPathSegCurvetoQuadraticAbs(SVGPathSegCurvetoQuadraticAbs), unSVGPathSegCurvetoQuadraticAbs, castToSVGPathSegCurvetoQuadraticAbs, gTypeSVGPathSegCurvetoQuadraticAbs
  , SVGPathSegCurvetoQuadraticRel(SVGPathSegCurvetoQuadraticRel), unSVGPathSegCurvetoQuadraticRel, castToSVGPathSegCurvetoQuadraticRel, gTypeSVGPathSegCurvetoQuadraticRel
  , SVGPathSegCurvetoQuadraticSmoothAbs(SVGPathSegCurvetoQuadraticSmoothAbs), unSVGPathSegCurvetoQuadraticSmoothAbs, castToSVGPathSegCurvetoQuadraticSmoothAbs, gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  , SVGPathSegCurvetoQuadraticSmoothRel(SVGPathSegCurvetoQuadraticSmoothRel), unSVGPathSegCurvetoQuadraticSmoothRel, castToSVGPathSegCurvetoQuadraticSmoothRel, gTypeSVGPathSegCurvetoQuadraticSmoothRel
  , SVGPathSegLinetoAbs(SVGPathSegLinetoAbs), unSVGPathSegLinetoAbs, castToSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs
  , SVGPathSegLinetoHorizontalAbs(SVGPathSegLinetoHorizontalAbs), unSVGPathSegLinetoHorizontalAbs, castToSVGPathSegLinetoHorizontalAbs, gTypeSVGPathSegLinetoHorizontalAbs
  , SVGPathSegLinetoHorizontalRel(SVGPathSegLinetoHorizontalRel), unSVGPathSegLinetoHorizontalRel, castToSVGPathSegLinetoHorizontalRel, gTypeSVGPathSegLinetoHorizontalRel
  , SVGPathSegLinetoRel(SVGPathSegLinetoRel), unSVGPathSegLinetoRel, castToSVGPathSegLinetoRel, gTypeSVGPathSegLinetoRel
  , SVGPathSegLinetoVerticalAbs(SVGPathSegLinetoVerticalAbs), unSVGPathSegLinetoVerticalAbs, castToSVGPathSegLinetoVerticalAbs, gTypeSVGPathSegLinetoVerticalAbs
  , SVGPathSegLinetoVerticalRel(SVGPathSegLinetoVerticalRel), unSVGPathSegLinetoVerticalRel, castToSVGPathSegLinetoVerticalRel, gTypeSVGPathSegLinetoVerticalRel
  , SVGPathSegList(SVGPathSegList), unSVGPathSegList, castToSVGPathSegList, gTypeSVGPathSegList
  , SVGPathSegMovetoAbs(SVGPathSegMovetoAbs), unSVGPathSegMovetoAbs, castToSVGPathSegMovetoAbs, gTypeSVGPathSegMovetoAbs
  , SVGPathSegMovetoRel(SVGPathSegMovetoRel), unSVGPathSegMovetoRel, castToSVGPathSegMovetoRel, gTypeSVGPathSegMovetoRel
  , SVGPatternElement(SVGPatternElement), unSVGPatternElement, castToSVGPatternElement, gTypeSVGPatternElement
  , SVGPoint(SVGPoint), unSVGPoint, castToSVGPoint, gTypeSVGPoint
  , SVGPointList(SVGPointList), unSVGPointList, castToSVGPointList, gTypeSVGPointList
  , SVGPolygonElement(SVGPolygonElement), unSVGPolygonElement, castToSVGPolygonElement, gTypeSVGPolygonElement
  , SVGPolylineElement(SVGPolylineElement), unSVGPolylineElement, castToSVGPolylineElement, gTypeSVGPolylineElement
  , SVGPreserveAspectRatio(SVGPreserveAspectRatio), unSVGPreserveAspectRatio, castToSVGPreserveAspectRatio, gTypeSVGPreserveAspectRatio
  , SVGRadialGradientElement(SVGRadialGradientElement), unSVGRadialGradientElement, castToSVGRadialGradientElement, gTypeSVGRadialGradientElement
  , SVGRect(SVGRect), unSVGRect, castToSVGRect, gTypeSVGRect
  , SVGRectElement(SVGRectElement), unSVGRectElement, castToSVGRectElement, gTypeSVGRectElement
  , SVGRenderingIntent(SVGRenderingIntent), unSVGRenderingIntent, castToSVGRenderingIntent, gTypeSVGRenderingIntent
  , SVGSVGElement(SVGSVGElement), unSVGSVGElement, castToSVGSVGElement, gTypeSVGSVGElement
  , SVGScriptElement(SVGScriptElement), unSVGScriptElement, castToSVGScriptElement, gTypeSVGScriptElement
  , SVGSetElement(SVGSetElement), unSVGSetElement, castToSVGSetElement, gTypeSVGSetElement
  , SVGStopElement(SVGStopElement), unSVGStopElement, castToSVGStopElement, gTypeSVGStopElement
  , SVGStringList(SVGStringList), unSVGStringList, castToSVGStringList, gTypeSVGStringList
  , SVGStyleElement(SVGStyleElement), unSVGStyleElement, castToSVGStyleElement, gTypeSVGStyleElement
  , SVGSwitchElement(SVGSwitchElement), unSVGSwitchElement, castToSVGSwitchElement, gTypeSVGSwitchElement
  , SVGSymbolElement(SVGSymbolElement), unSVGSymbolElement, castToSVGSymbolElement, gTypeSVGSymbolElement
  , SVGTRefElement(SVGTRefElement), unSVGTRefElement, castToSVGTRefElement, gTypeSVGTRefElement
  , SVGTSpanElement(SVGTSpanElement), unSVGTSpanElement, castToSVGTSpanElement, gTypeSVGTSpanElement
  , SVGTests(SVGTests), unSVGTests, castToSVGTests, gTypeSVGTests
  , SVGTextContentElement(SVGTextContentElement), unSVGTextContentElement, IsSVGTextContentElement, toSVGTextContentElement, castToSVGTextContentElement, gTypeSVGTextContentElement
  , SVGTextElement(SVGTextElement), unSVGTextElement, castToSVGTextElement, gTypeSVGTextElement
  , SVGTextPathElement(SVGTextPathElement), unSVGTextPathElement, castToSVGTextPathElement, gTypeSVGTextPathElement
  , SVGTextPositioningElement(SVGTextPositioningElement), unSVGTextPositioningElement, IsSVGTextPositioningElement, toSVGTextPositioningElement, castToSVGTextPositioningElement, gTypeSVGTextPositioningElement
  , SVGTitleElement(SVGTitleElement), unSVGTitleElement, castToSVGTitleElement, gTypeSVGTitleElement
  , SVGTransform(SVGTransform), unSVGTransform, castToSVGTransform, gTypeSVGTransform
  , SVGTransformList(SVGTransformList), unSVGTransformList, castToSVGTransformList, gTypeSVGTransformList
  , SVGURIReference(SVGURIReference), unSVGURIReference, castToSVGURIReference, gTypeSVGURIReference
  , SVGUnitTypes(SVGUnitTypes), unSVGUnitTypes, castToSVGUnitTypes, gTypeSVGUnitTypes
  , SVGUseElement(SVGUseElement), unSVGUseElement, castToSVGUseElement, gTypeSVGUseElement
  , SVGVKernElement(SVGVKernElement), unSVGVKernElement, castToSVGVKernElement, gTypeSVGVKernElement
  , SVGViewElement(SVGViewElement), unSVGViewElement, castToSVGViewElement, gTypeSVGViewElement
  , SVGViewSpec(SVGViewSpec), unSVGViewSpec, castToSVGViewSpec, gTypeSVGViewSpec
  , SVGZoomAndPan(SVGZoomAndPan), unSVGZoomAndPan, castToSVGZoomAndPan, gTypeSVGZoomAndPan
  , SVGZoomEvent(SVGZoomEvent), unSVGZoomEvent, castToSVGZoomEvent, gTypeSVGZoomEvent
  , DOMScreen(DOMScreen), unDOMScreen, castToDOMScreen, gTypeDOMScreen
  , ScriptProcessorNode(ScriptProcessorNode), unScriptProcessorNode, castToScriptProcessorNode, gTypeScriptProcessorNode
  , ScriptProfile(ScriptProfile), unScriptProfile, castToScriptProfile, gTypeScriptProfile
  , ScriptProfileNode(ScriptProfileNode), unScriptProfileNode, castToScriptProfileNode, gTypeScriptProfileNode
  , SecurityPolicyViolationEvent(SecurityPolicyViolationEvent), unSecurityPolicyViolationEvent, castToSecurityPolicyViolationEvent, gTypeSecurityPolicyViolationEvent
  , SourceBuffer(SourceBuffer), unSourceBuffer, castToSourceBuffer, gTypeSourceBuffer
  , SourceBufferList(SourceBufferList), unSourceBufferList, castToSourceBufferList, gTypeSourceBufferList
  , SourceInfo(SourceInfo), unSourceInfo, castToSourceInfo, gTypeSourceInfo
  , SpeechSynthesis(SpeechSynthesis), unSpeechSynthesis, castToSpeechSynthesis, gTypeSpeechSynthesis
  , SpeechSynthesisEvent(SpeechSynthesisEvent), unSpeechSynthesisEvent, castToSpeechSynthesisEvent, gTypeSpeechSynthesisEvent
  , SpeechSynthesisUtterance(SpeechSynthesisUtterance), unSpeechSynthesisUtterance, castToSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance
  , SpeechSynthesisVoice(SpeechSynthesisVoice), unSpeechSynthesisVoice, castToSpeechSynthesisVoice, gTypeSpeechSynthesisVoice
  , Storage(Storage), unStorage, castToStorage, gTypeStorage
  , StorageErrorCallback(StorageErrorCallback), unStorageErrorCallback, castToStorageErrorCallback, gTypeStorageErrorCallback
  , StorageEvent(StorageEvent), unStorageEvent, castToStorageEvent, gTypeStorageEvent
  , StorageInfo(StorageInfo), unStorageInfo, castToStorageInfo, gTypeStorageInfo
  , StorageQuota(StorageQuota), unStorageQuota, castToStorageQuota, gTypeStorageQuota
  , StorageQuotaCallback(StorageQuotaCallback), unStorageQuotaCallback, castToStorageQuotaCallback, gTypeStorageQuotaCallback
  , StorageUsageCallback(StorageUsageCallback), unStorageUsageCallback, castToStorageUsageCallback, gTypeStorageUsageCallback
  , StringCallback(StringCallback), unStringCallback, castToStringCallback, gTypeStringCallback
  , StyleMedia(StyleMedia), unStyleMedia, castToStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, IsStyleSheet, toStyleSheet, castToStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, castToStyleSheetList, gTypeStyleSheetList
  , SubtleCrypto(SubtleCrypto), unSubtleCrypto, castToSubtleCrypto, gTypeSubtleCrypto
  , Text(Text), unText, IsText, toText, castToText, gTypeText
  , TextEvent(TextEvent), unTextEvent, castToTextEvent, gTypeTextEvent
  , TextMetrics(TextMetrics), unTextMetrics, castToTextMetrics, gTypeTextMetrics
  , TextTrack(TextTrack), unTextTrack, castToTextTrack, gTypeTextTrack
  , TextTrackCue(TextTrackCue), unTextTrackCue, IsTextTrackCue, toTextTrackCue, castToTextTrackCue, gTypeTextTrackCue
  , TextTrackCueList(TextTrackCueList), unTextTrackCueList, castToTextTrackCueList, gTypeTextTrackCueList
  , TextTrackList(TextTrackList), unTextTrackList, castToTextTrackList, gTypeTextTrackList
  , TimeRanges(TimeRanges), unTimeRanges, castToTimeRanges, gTypeTimeRanges
  , Touch(Touch), unTouch, castToTouch, gTypeTouch
  , TouchEvent(TouchEvent), unTouchEvent, castToTouchEvent, gTypeTouchEvent
  , TouchList(TouchList), unTouchList, castToTouchList, gTypeTouchList
  , TrackEvent(TrackEvent), unTrackEvent, castToTrackEvent, gTypeTrackEvent
  , TransitionEvent(TransitionEvent), unTransitionEvent, castToTransitionEvent, gTypeTransitionEvent
  , TreeWalker(TreeWalker), unTreeWalker, castToTreeWalker, gTypeTreeWalker
  , TypeConversions(TypeConversions), unTypeConversions, castToTypeConversions, gTypeTypeConversions
  , UIEvent(UIEvent), unUIEvent, IsUIEvent, toUIEvent, castToUIEvent, gTypeUIEvent
  , UIRequestEvent(UIRequestEvent), unUIRequestEvent, castToUIRequestEvent, gTypeUIRequestEvent
  , URLUtils(URLUtils), unURLUtils, castToURLUtils, gTypeURLUtils
  , UserMessageHandler(UserMessageHandler), unUserMessageHandler, castToUserMessageHandler, gTypeUserMessageHandler
  , UserMessageHandlersNamespace(UserMessageHandlersNamespace), unUserMessageHandlersNamespace, castToUserMessageHandlersNamespace, gTypeUserMessageHandlersNamespace
  , VTTCue(VTTCue), unVTTCue, castToVTTCue, gTypeVTTCue
  , VTTRegion(VTTRegion), unVTTRegion, castToVTTRegion, gTypeVTTRegion
  , VTTRegionList(VTTRegionList), unVTTRegionList, castToVTTRegionList, gTypeVTTRegionList
  , ValidityState(ValidityState), unValidityState, castToValidityState, gTypeValidityState
  , VideoPlaybackQuality(VideoPlaybackQuality), unVideoPlaybackQuality, castToVideoPlaybackQuality, gTypeVideoPlaybackQuality
  , VideoStreamTrack(VideoStreamTrack), unVideoStreamTrack, castToVideoStreamTrack, gTypeVideoStreamTrack
  , VideoTrack(VideoTrack), unVideoTrack, castToVideoTrack, gTypeVideoTrack
  , VideoTrackList(VideoTrackList), unVideoTrackList, castToVideoTrackList, gTypeVideoTrackList
  , VoidCallback(VoidCallback), unVoidCallback, castToVoidCallback, gTypeVoidCallback
  , WaveShaperNode(WaveShaperNode), unWaveShaperNode, castToWaveShaperNode, gTypeWaveShaperNode
  , WebGL2RenderingContext(WebGL2RenderingContext), unWebGL2RenderingContext, castToWebGL2RenderingContext, gTypeWebGL2RenderingContext
  , WebGLActiveInfo(WebGLActiveInfo), unWebGLActiveInfo, castToWebGLActiveInfo, gTypeWebGLActiveInfo
  , WebGLBuffer(WebGLBuffer), unWebGLBuffer, castToWebGLBuffer, gTypeWebGLBuffer
  , WebGLCompressedTextureATC(WebGLCompressedTextureATC), unWebGLCompressedTextureATC, castToWebGLCompressedTextureATC, gTypeWebGLCompressedTextureATC
  , WebGLCompressedTexturePVRTC(WebGLCompressedTexturePVRTC), unWebGLCompressedTexturePVRTC, castToWebGLCompressedTexturePVRTC, gTypeWebGLCompressedTexturePVRTC
  , WebGLCompressedTextureS3TC(WebGLCompressedTextureS3TC), unWebGLCompressedTextureS3TC, castToWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC
  , WebGLContextAttributes(WebGLContextAttributes), unWebGLContextAttributes, castToWebGLContextAttributes, gTypeWebGLContextAttributes
  , WebGLContextEvent(WebGLContextEvent), unWebGLContextEvent, castToWebGLContextEvent, gTypeWebGLContextEvent
  , WebGLDebugRendererInfo(WebGLDebugRendererInfo), unWebGLDebugRendererInfo, castToWebGLDebugRendererInfo, gTypeWebGLDebugRendererInfo
  , WebGLDebugShaders(WebGLDebugShaders), unWebGLDebugShaders, castToWebGLDebugShaders, gTypeWebGLDebugShaders
  , WebGLDepthTexture(WebGLDepthTexture), unWebGLDepthTexture, castToWebGLDepthTexture, gTypeWebGLDepthTexture
  , WebGLDrawBuffers(WebGLDrawBuffers), unWebGLDrawBuffers, castToWebGLDrawBuffers, gTypeWebGLDrawBuffers
  , WebGLFramebuffer(WebGLFramebuffer), unWebGLFramebuffer, castToWebGLFramebuffer, gTypeWebGLFramebuffer
  , WebGLLoseContext(WebGLLoseContext), unWebGLLoseContext, castToWebGLLoseContext, gTypeWebGLLoseContext
  , WebGLProgram(WebGLProgram), unWebGLProgram, castToWebGLProgram, gTypeWebGLProgram
  , WebGLQuery(WebGLQuery), unWebGLQuery, castToWebGLQuery, gTypeWebGLQuery
  , WebGLRenderbuffer(WebGLRenderbuffer), unWebGLRenderbuffer, castToWebGLRenderbuffer, gTypeWebGLRenderbuffer
  , WebGLRenderingContext(WebGLRenderingContext), unWebGLRenderingContext, castToWebGLRenderingContext, gTypeWebGLRenderingContext
  , WebGLRenderingContextBase(WebGLRenderingContextBase), unWebGLRenderingContextBase, IsWebGLRenderingContextBase, toWebGLRenderingContextBase, castToWebGLRenderingContextBase, gTypeWebGLRenderingContextBase
  , WebGLSampler(WebGLSampler), unWebGLSampler, castToWebGLSampler, gTypeWebGLSampler
  , WebGLShader(WebGLShader), unWebGLShader, castToWebGLShader, gTypeWebGLShader
  , WebGLShaderPrecisionFormat(WebGLShaderPrecisionFormat), unWebGLShaderPrecisionFormat, castToWebGLShaderPrecisionFormat, gTypeWebGLShaderPrecisionFormat
  , WebGLSync(WebGLSync), unWebGLSync, castToWebGLSync, gTypeWebGLSync
  , WebGLTexture(WebGLTexture), unWebGLTexture, castToWebGLTexture, gTypeWebGLTexture
  , WebGLTransformFeedback(WebGLTransformFeedback), unWebGLTransformFeedback, castToWebGLTransformFeedback, gTypeWebGLTransformFeedback
  , WebGLUniformLocation(WebGLUniformLocation), unWebGLUniformLocation, castToWebGLUniformLocation, gTypeWebGLUniformLocation
  , WebGLVertexArrayObject(WebGLVertexArrayObject), unWebGLVertexArrayObject, castToWebGLVertexArrayObject, gTypeWebGLVertexArrayObject
  , WebGLVertexArrayObjectOES(WebGLVertexArrayObjectOES), unWebGLVertexArrayObjectOES, castToWebGLVertexArrayObjectOES, gTypeWebGLVertexArrayObjectOES
  , WebKitAnimationEvent(WebKitAnimationEvent), unWebKitAnimationEvent, castToWebKitAnimationEvent, gTypeWebKitAnimationEvent
  , WebKitCSSFilterValue(WebKitCSSFilterValue), unWebKitCSSFilterValue, castToWebKitCSSFilterValue, gTypeWebKitCSSFilterValue
  , WebKitCSSMatrix(WebKitCSSMatrix), unWebKitCSSMatrix, castToWebKitCSSMatrix, gTypeWebKitCSSMatrix
  , WebKitCSSRegionRule(WebKitCSSRegionRule), unWebKitCSSRegionRule, castToWebKitCSSRegionRule, gTypeWebKitCSSRegionRule
  , WebKitCSSTransformValue(WebKitCSSTransformValue), unWebKitCSSTransformValue, castToWebKitCSSTransformValue, gTypeWebKitCSSTransformValue
  , WebKitCSSViewportRule(WebKitCSSViewportRule), unWebKitCSSViewportRule, castToWebKitCSSViewportRule, gTypeWebKitCSSViewportRule
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitNamespace(WebKitNamespace), unWebKitNamespace, castToWebKitNamespace, gTypeWebKitNamespace
  , WebKitPlaybackTargetAvailabilityEvent(WebKitPlaybackTargetAvailabilityEvent), unWebKitPlaybackTargetAvailabilityEvent, castToWebKitPlaybackTargetAvailabilityEvent, gTypeWebKitPlaybackTargetAvailabilityEvent
  , WebKitPoint(WebKitPoint), unWebKitPoint, castToWebKitPoint, gTypeWebKitPoint
  , WebKitTransitionEvent(WebKitTransitionEvent), unWebKitTransitionEvent, castToWebKitTransitionEvent, gTypeWebKitTransitionEvent
  , WebSocket(WebSocket), unWebSocket, castToWebSocket, gTypeWebSocket
  , WheelEvent(WheelEvent), unWheelEvent, castToWheelEvent, gTypeWheelEvent
  , WindowBase64(WindowBase64), unWindowBase64, castToWindowBase64, gTypeWindowBase64
  , WindowTimers(WindowTimers), unWindowTimers, castToWindowTimers, gTypeWindowTimers
  , Worker(Worker), unWorker, castToWorker, gTypeWorker
  , WorkerGlobalScope(WorkerGlobalScope), unWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope, castToWorkerGlobalScope, gTypeWorkerGlobalScope
  , WorkerLocation(WorkerLocation), unWorkerLocation, castToWorkerLocation, gTypeWorkerLocation
  , WorkerNavigator(WorkerNavigator), unWorkerNavigator, castToWorkerNavigator, gTypeWorkerNavigator
  , XMLHttpRequest(XMLHttpRequest), unXMLHttpRequest, castToXMLHttpRequest, gTypeXMLHttpRequest
  , XMLHttpRequestProgressEvent(XMLHttpRequestProgressEvent), unXMLHttpRequestProgressEvent, castToXMLHttpRequestProgressEvent, gTypeXMLHttpRequestProgressEvent
  , XMLHttpRequestUpload(XMLHttpRequestUpload), unXMLHttpRequestUpload, castToXMLHttpRequestUpload, gTypeXMLHttpRequestUpload
  , XMLSerializer(XMLSerializer), unXMLSerializer, castToXMLSerializer, gTypeXMLSerializer
  , XPathEvaluator(XPathEvaluator), unXPathEvaluator, castToXPathEvaluator, gTypeXPathEvaluator
  , XPathExpression(XPathExpression), unXPathExpression, castToXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, castToXPathResult, gTypeXPathResult
  , XSLTProcessor(XSLTProcessor), unXSLTProcessor, castToXSLTProcessor, gTypeXSLTProcessor
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

import Control.Applicative ((<$>))
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.Types (JSRef(..), castRef, nullRef, isNull, isUndefined, JSString(..))
import GHCJS.Foreign (ToJSString(..), FromJSString(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
#else
import qualified Data.Text as T (Text)
import Data.Maybe (isNothing)
import Foreign.C (CString)
import Graphics.UI.Gtk.WebKit.Types
import System.Glib (propagateGError, GType(..))
import System.Glib.UTFString
       (readUTFString, GlibString(..))
#endif
import Data.Int (Int8, Int16, Int32, Int64)
import Data.Word (Word8, Word16, Word32, Word64)

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
maybeJSNullOrUndefined :: JSRef a -> Maybe (JSRef a)
maybeJSNullOrUndefined r | isNull r || isUndefined r = Nothing
maybeJSNullOrUndefined r = Just r

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
castTo :: (IsGObject obj, IsGObject obj') => GType -> String
                                                -> (obj -> obj')
castTo gtype objTypeName obj =
  case toGObject obj of
    gobj@(GObject objRef)
      | typeInstanceIsA objRef gtype
                  -> unsafeCastGObject gobj
      | otherwise -> error $ "Cannot cast object to " ++ objTypeName

-- | Determine if this is an instance of a particular type
--
isA :: IsGObject o => o -> GType -> Bool
isA obj = typeInstanceIsA (unGObject $ toGObject obj)

data GObject = GObject (JSRef GObject)

unGObject (GObject o) = o

class (ToJSRef o, FromJSRef o) => IsGObject o where
  -- | Safe upcast.
  toGObject         :: o -> GObject
  -- | Unchecked downcast.
  unsafeCastGObject :: GObject -> o

instance ToJSRef GObject where
  toJSRef = return . unGObject
  {-# INLINE toJSRef #-}

instance FromJSRef GObject where
  fromJSRef = return . fmap GObject . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject GObject where
  toGObject = id
  unsafeCastGObject = id

castToGObject :: IsGObject obj => obj -> obj
castToGObject = id

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "object" gTypeGObject' :: JSRef GType
#else
gTypeGObject' = error "gTypeGObject': only available in JavaScript"
#endif
gTypeGObject = GType gTypeGObject'

foreign import javascript unsafe "$1[\"toString\"]()" js_objectToString :: JSRef GObject -> IO JSString

objectToString :: (MonadIO m, IsGObject self, FromJSString result) => self -> m result
objectToString self = liftIO (fromJSString <$> (js_objectToString (unGObject (toGObject self))))

#ifdef ghcjs_HOST_OS
-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = JSString

type ToDOMString s = ToJSString s
type FromDOMString s = FromJSString s
#endif

#else
type IsGObject o = GObjectClass o

-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = T.Text

type ToDOMString s = GlibString s
type FromDOMString s = GlibString s
#endif

type IsDOMString s = (ToDOMString s, FromDOMString s)

-- Custom types
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SerializedScriptValue = SerializedScriptValue (JSRef SerializedScriptValue) deriving (Eq)

unSerializedScriptValue (SerializedScriptValue o) = o

instance ToJSRef SerializedScriptValue where
  toJSRef = return . unSerializedScriptValue
  {-# INLINE toJSRef #-}

instance FromJSRef SerializedScriptValue where
  fromJSRef = return . fmap SerializedScriptValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsSerializedScriptValue o
toSerializedScriptValue :: IsSerializedScriptValue o => o -> SerializedScriptValue
toSerializedScriptValue = unsafeCastGObject . toGObject

instance IsSerializedScriptValue SerializedScriptValue
instance IsGObject SerializedScriptValue where
  toGObject = GObject . castRef . unSerializedScriptValue
  unsafeCastGObject = SerializedScriptValue . castRef . unGObject
-- TODO add more IsSerializedScriptValue instances
#else
-- TODO work out how we can support SerializedScriptValue in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionOptions = PositionOptions (JSRef PositionOptions) deriving (Eq)

unPositionOptions (PositionOptions o) = o

instance ToJSRef PositionOptions where
  toJSRef = return . unPositionOptions
  {-# INLINE toJSRef #-}

instance FromJSRef PositionOptions where
  fromJSRef = return . fmap PositionOptions . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsPositionOptions o
toPositionOptions :: IsPositionOptions o => o -> PositionOptions
toPositionOptions = unsafeCastGObject . toGObject

instance IsPositionOptions PositionOptions
instance IsGObject PositionOptions where
  toGObject = GObject . castRef . unPositionOptions
  unsafeCastGObject = PositionOptions . castRef . unGObject
-- TODO add more IsPositionOptions instances
#else
-- TODO work out how we can support PositionOptions in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Dictionary = Dictionary (JSRef Dictionary) deriving (Eq)

unDictionary (Dictionary o) = o

instance ToJSRef Dictionary where
  toJSRef = return . unDictionary
  {-# INLINE toJSRef #-}

instance FromJSRef Dictionary where
  fromJSRef = return . fmap Dictionary . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDictionary o
toDictionary :: IsDictionary o => o -> Dictionary
toDictionary = unsafeCastGObject . toGObject

instance IsDictionary Dictionary
instance IsGObject Dictionary where
  toGObject = GObject . castRef . unDictionary
  unsafeCastGObject = Dictionary . castRef . unGObject
-- TODO add more IsDictionary instances
#else
-- TODO work out how we can support Dictionary in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype BlobPropertyBag = BlobPropertyBag (JSRef BlobPropertyBag) deriving (Eq)

unBlobPropertyBag (BlobPropertyBag o) = o

instance ToJSRef BlobPropertyBag where
  toJSRef = return . unBlobPropertyBag
  {-# INLINE toJSRef #-}

instance FromJSRef BlobPropertyBag where
  fromJSRef = return . fmap BlobPropertyBag . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsBlobPropertyBag o
toBlobPropertyBag :: IsBlobPropertyBag o => o -> BlobPropertyBag
toBlobPropertyBag = unsafeCastGObject . toGObject

instance IsBlobPropertyBag BlobPropertyBag
instance IsGObject BlobPropertyBag where
  toGObject = GObject . castRef . unBlobPropertyBag
  unsafeCastGObject = BlobPropertyBag . castRef . unGObject
-- TODO add more IsBlobPropertyBag instances
#else
-- TODO work out how we can support BlobPropertyBag in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MutationCallback = MutationCallback (JSRef MutationCallback) deriving (Eq)

unMutationCallback (MutationCallback o) = o

instance ToJSRef MutationCallback where
  toJSRef = return . unMutationCallback
  {-# INLINE toJSRef #-}

instance FromJSRef MutationCallback where
  fromJSRef = return . fmap MutationCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsMutationCallback o
toMutationCallback :: IsMutationCallback o => o -> MutationCallback
toMutationCallback = unsafeCastGObject . toGObject

instance IsMutationCallback MutationCallback
instance IsGObject MutationCallback where
  toGObject = GObject . castRef . unMutationCallback
  unsafeCastGObject = MutationCallback . castRef . unGObject
-- TODO add more IsMutationCallback instances
#else
-- TODO work out how we can support MutationCallback in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Promise = Promise (JSRef Promise) deriving (Eq)

unPromise (Promise o) = o

instance ToJSRef Promise where
  toJSRef = return . unPromise
  {-# INLINE toJSRef #-}

instance FromJSRef Promise where
  fromJSRef = return . fmap Promise . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsPromise o
toPromise :: IsPromise o => o -> Promise
toPromise = unsafeCastGObject . toGObject

instance IsPromise Promise
instance IsGObject Promise where
  toGObject = GObject . castRef . unPromise
  unsafeCastGObject = Promise . castRef . unGObject
-- TODO add more IsPromise instances

castToPromise :: IsGObject obj => obj -> Promise
castToPromise = castTo gTypePromise "Promise"

foreign import javascript unsafe "window[\"Promise\"]" gTypePromise' :: JSRef GType
gTypePromise = GType gTypePromise'
#else
-- TODO work out how we can support Promise in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBuffer = ArrayBuffer (JSRef ArrayBuffer) deriving (Eq)

unArrayBuffer (ArrayBuffer o) = o

instance ToJSRef ArrayBuffer where
  toJSRef = return . unArrayBuffer
  {-# INLINE toJSRef #-}

instance FromJSRef ArrayBuffer where
  fromJSRef = return . fmap ArrayBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsArrayBuffer o
toArrayBuffer :: IsArrayBuffer o => o -> ArrayBuffer
toArrayBuffer = unsafeCastGObject . toGObject

instance IsArrayBuffer ArrayBuffer
instance IsGObject ArrayBuffer where
  toGObject = GObject . castRef . unArrayBuffer
  unsafeCastGObject = ArrayBuffer . castRef . unGObject

castToArrayBuffer :: IsGObject obj => obj -> ArrayBuffer
castToArrayBuffer = castTo gTypeArrayBuffer "ArrayBuffer"

foreign import javascript unsafe "window[\"ArrayBuffer\"]" gTypeArrayBuffer' :: JSRef GType
gTypeArrayBuffer = GType gTypeArrayBuffer'
#else
-- TODO work out how we can support ArrayBuffer in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float32Array = Float32Array (JSRef Float32Array) deriving (Eq)

unFloat32Array (Float32Array o) = o

instance ToJSRef Float32Array where
  toJSRef = return . unFloat32Array
  {-# INLINE toJSRef #-}

instance FromJSRef Float32Array where
  fromJSRef = return . fmap Float32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsFloat32Array o
toFloat32Array :: IsFloat32Array o => o -> Float32Array
toFloat32Array = unsafeCastGObject . toGObject

instance IsFloat32Array Float32Array
instance IsGObject Float32Array where
  toGObject = GObject . castRef . unFloat32Array
  unsafeCastGObject = Float32Array . castRef . unGObject
-- TODO add more IsFloat32Array instances

castToFloat32Array :: IsGObject obj => obj -> Float32Array
castToFloat32Array = castTo gTypeFloat32Array "Float32Array"

foreign import javascript unsafe "window[\"Float32Array\"]" gTypeFloat32Array' :: JSRef GType
gTypeFloat32Array = GType gTypeFloat32Array'
#else
-- TODO work out how we can support Float32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float64Array = Float64Array (JSRef Float64Array) deriving (Eq)

unFloat64Array (Float64Array o) = o

instance ToJSRef Float64Array where
  toJSRef = return . unFloat64Array
  {-# INLINE toJSRef #-}

instance FromJSRef Float64Array where
  fromJSRef = return . fmap Float64Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsFloat64Array o
toFloat64Array :: IsFloat64Array o => o -> Float64Array
toFloat64Array = unsafeCastGObject . toGObject

instance IsFloat64Array Float64Array
instance IsGObject Float64Array where
  toGObject = GObject . castRef . unFloat64Array
  unsafeCastGObject = Float64Array . castRef . unGObject
-- TODO add more IsFloat64Array instances

castToFloat64Array :: IsGObject obj => obj -> Float64Array
castToFloat64Array = castTo gTypeFloat64Array "Float64Array"

foreign import javascript unsafe "window[\"Float64Array\"]" gTypeFloat64Array' :: JSRef GType
gTypeFloat64Array = GType gTypeFloat64Array'
#else
-- TODO work out how we can support Float64Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8Array = Uint8Array (JSRef Uint8Array) deriving (Eq)

unUint8Array (Uint8Array o) = o

instance ToJSRef Uint8Array where
  toJSRef = return . unUint8Array
  {-# INLINE toJSRef #-}

instance FromJSRef Uint8Array where
  fromJSRef = return . fmap Uint8Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsUint8Array o
toUint8Array :: IsUint8Array o => o -> Uint8Array
toUint8Array = unsafeCastGObject . toGObject

instance IsUint8Array Uint8Array
instance IsGObject Uint8Array where
  toGObject = GObject . castRef . unUint8Array
  unsafeCastGObject = Uint8Array . castRef . unGObject
-- TODO add more IsUint8Array instances

castToUint8Array :: IsGObject obj => obj -> Uint8Array
castToUint8Array = castTo gTypeUint8Array "Uint8Array"

foreign import javascript unsafe "window[\"Uint8Array\"]" gTypeUint8Array' :: JSRef GType
gTypeUint8Array = GType gTypeUint8Array'
#else
-- TODO work out how we can support Uint8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8ClampedArray = Uint8ClampedArray (JSRef Uint8ClampedArray) deriving (Eq)

unUint8ClampedArray (Uint8ClampedArray o) = o

instance ToJSRef Uint8ClampedArray where
  toJSRef = return . unUint8ClampedArray
  {-# INLINE toJSRef #-}

instance FromJSRef Uint8ClampedArray where
  fromJSRef = return . fmap Uint8ClampedArray . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsUint8ClampedArray o
toUint8ClampedArray :: IsUint8ClampedArray o => o -> Uint8ClampedArray
toUint8ClampedArray = unsafeCastGObject . toGObject

instance IsUint8ClampedArray Uint8ClampedArray
instance IsGObject Uint8ClampedArray where
  toGObject = GObject . castRef . unUint8ClampedArray
  unsafeCastGObject = Uint8ClampedArray . castRef . unGObject
-- TODO add more IsUint8ClampedArray instances

castToUint8ClampedArray :: IsGObject obj => obj -> Uint8ClampedArray
castToUint8ClampedArray = castTo gTypeUint8ClampedArray "Uint8ClampedArray"

foreign import javascript unsafe "window[\"Uint8ClampedArray\"]" gTypeUint8ClampedArray' :: JSRef GType
gTypeUint8ClampedArray = GType gTypeUint8ClampedArray'
#else
-- TODO work out how we can support Uint8ClampedArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint16Array = Uint16Array (JSRef Uint16Array) deriving (Eq)

unUint16Array (Uint16Array o) = o

instance ToJSRef Uint16Array where
  toJSRef = return . unUint16Array
  {-# INLINE toJSRef #-}

instance FromJSRef Uint16Array where
  fromJSRef = return . fmap Uint16Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsUint16Array o
toUint16Array :: IsUint16Array o => o -> Uint16Array
toUint16Array = unsafeCastGObject . toGObject

instance IsUint16Array Uint16Array
instance IsGObject Uint16Array where
  toGObject = GObject . castRef . unUint16Array
  unsafeCastGObject = Uint16Array . castRef . unGObject
-- TODO add more IsUint16Array instances

castToUint16Array :: IsGObject obj => obj -> Uint16Array
castToUint16Array = castTo gTypeUint16Array "Uint16Array"

foreign import javascript unsafe "window[\"Uint16Array\"]" gTypeUint16Array' :: JSRef GType
gTypeUint16Array = GType gTypeUint16Array'
#else
-- TODO work out how we can support Uint16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint32Array = Uint32Array (JSRef Uint32Array) deriving (Eq)

unUint32Array (Uint32Array o) = o

instance ToJSRef Uint32Array where
  toJSRef = return . unUint32Array
  {-# INLINE toJSRef #-}

instance FromJSRef Uint32Array where
  fromJSRef = return . fmap Uint32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsUint32Array o
toUint32Array :: IsUint32Array o => o -> Uint32Array
toUint32Array = unsafeCastGObject . toGObject

instance IsUint32Array Uint32Array
instance IsGObject Uint32Array where
  toGObject = GObject . castRef . unUint32Array
  unsafeCastGObject = Uint32Array . castRef . unGObject
-- TODO add more IsUint32Array instances

castToUint32Array :: IsGObject obj => obj -> Uint32Array
castToUint32Array = castTo gTypeUint32Array "Uint32Array"

foreign import javascript unsafe "window[\"Uint32Array\"]" gTypeUint32Array' :: JSRef GType
gTypeUint32Array = GType gTypeUint32Array'
#else
-- TODO work out how we can support Uint32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int8Array = Int8Array (JSRef Int8Array) deriving (Eq)

unInt8Array (Int8Array o) = o

instance ToJSRef Int8Array where
  toJSRef = return . unInt8Array
  {-# INLINE toJSRef #-}

instance FromJSRef Int8Array where
  fromJSRef = return . fmap Int8Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsInt8Array o
toInt8Array :: IsInt8Array o => o -> Int8Array
toInt8Array = unsafeCastGObject . toGObject

instance IsInt8Array Int8Array
instance IsGObject Int8Array where
  toGObject = GObject . castRef . unInt8Array
  unsafeCastGObject = Int8Array . castRef . unGObject
-- TODO add more IsInt8Array instances

castToInt8Array :: IsGObject obj => obj -> Int8Array
castToInt8Array = castTo gTypeInt8Array "Int8Array"

foreign import javascript unsafe "window[\"Int8Array\"]" gTypeInt8Array' :: JSRef GType
gTypeInt8Array = GType gTypeInt8Array'
#else
-- TODO work out how we can support Int8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int16Array = Int16Array (JSRef Int16Array) deriving (Eq)

unInt16Array (Int16Array o) = o

instance ToJSRef Int16Array where
  toJSRef = return . unInt16Array
  {-# INLINE toJSRef #-}

instance FromJSRef Int16Array where
  fromJSRef = return . fmap Int16Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsInt16Array o
toInt16Array :: IsInt16Array o => o -> Int16Array
toInt16Array = unsafeCastGObject . toGObject

instance IsInt16Array Int16Array
instance IsGObject Int16Array where
  toGObject = GObject . castRef . unInt16Array
  unsafeCastGObject = Int16Array . castRef . unGObject
-- TODO add more IsInt16Array instances

castToInt16Array :: IsGObject obj => obj -> Int16Array
castToInt16Array = castTo gTypeInt16Array "Int16Array"

foreign import javascript unsafe "window[\"Int16Array\"]" gTypeInt16Array' :: JSRef GType
gTypeInt16Array = GType gTypeInt16Array'
#else
-- TODO work out how we can support Int16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int32Array = Int32Array (JSRef Int32Array) deriving (Eq)

unInt32Array (Int32Array o) = o

instance ToJSRef Int32Array where
  toJSRef = return . unInt32Array
  {-# INLINE toJSRef #-}

instance FromJSRef Int32Array where
  fromJSRef = return . fmap Int32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsInt32Array o
toInt32Array :: IsInt32Array o => o -> Int32Array
toInt32Array = unsafeCastGObject . toGObject

instance IsInt32Array Int32Array
instance IsGObject Int32Array where
  toGObject = GObject . castRef . unInt32Array
  unsafeCastGObject = Int32Array . castRef . unGObject
-- TODO add more IsInt32Array instances

castToInt32Array :: IsGObject obj => obj -> Int32Array
castToInt32Array = castTo gTypeInt32Array "Int32Array"

foreign import javascript unsafe "window[\"Int32Array\"]" gTypeInt32Array' :: JSRef GType
gTypeInt32Array = GType gTypeInt32Array'
#else
-- TODO work out how we can support Int32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ObjectArray = ObjectArray (JSRef ObjectArray) deriving (Eq)

unObjectArray (ObjectArray o) = o

instance ToJSRef ObjectArray where
  toJSRef = return . unObjectArray
  {-# INLINE toJSRef #-}

instance FromJSRef ObjectArray where
  fromJSRef = return . fmap ObjectArray . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsObjectArray o
toObjectArray :: IsObjectArray o => o -> ObjectArray
toObjectArray = unsafeCastGObject . toGObject

instance IsObjectArray ObjectArray
instance IsGObject ObjectArray where
  toGObject = GObject . castRef . unObjectArray
  unsafeCastGObject = ObjectArray . castRef . unGObject
-- TODO add more IsObjectArray instances
#else
-- TODO work out how we can support ObjectArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBufferView = ArrayBufferView (JSRef ArrayBufferView) deriving (Eq)

unArrayBufferView (ArrayBufferView o) = o

instance ToJSRef ArrayBufferView where
  toJSRef = return . unArrayBufferView
  {-# INLINE toJSRef #-}

instance FromJSRef ArrayBufferView where
  fromJSRef = return . fmap ArrayBufferView . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsArrayBufferView o
toArrayBufferView :: IsArrayBufferView o => o -> ArrayBufferView
toArrayBufferView = unsafeCastGObject . toGObject

instance IsArrayBufferView ArrayBufferView
instance IsGObject ArrayBufferView where
  toGObject = GObject . castRef . unArrayBufferView
  unsafeCastGObject = ArrayBufferView . castRef . unGObject
-- TODO add more IsArrayBufferView instances
#else
-- TODO work out how we can support ArrayBufferView in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Array = Array (JSRef Array) deriving (Eq)

unArray (Array o) = o

instance ToJSRef Array where
  toJSRef = return . unArray
  {-# INLINE toJSRef #-}

instance FromJSRef Array where
  fromJSRef = return . fmap Array . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsArray o
toArray :: IsArray o => o -> Array
toArray = unsafeCastGObject . toGObject

instance IsArray Array
instance IsGObject Array where
  toGObject = GObject . castRef . unArray
  unsafeCastGObject = Array . castRef . unGObject
-- TODO add more IsArray instances

castToArray :: IsGObject obj => obj -> Array
castToArray = castTo gTypeArray "Array"

foreign import javascript unsafe "window[\"Array\"]" gTypeArray' :: JSRef GType
gTypeArray = GType gTypeArray'
#else
-- TODO work out how we can support Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Date = Date (JSRef Date) deriving (Eq)

unDate (Date o) = o

instance ToJSRef Date where
  toJSRef = return . unDate
  {-# INLINE toJSRef #-}

instance FromJSRef Date where
  fromJSRef = return . fmap Date . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDate o
toDate :: IsDate o => o -> Date
toDate = unsafeCastGObject . toGObject

instance IsDate Date
instance IsGObject Date where
  toGObject = GObject . castRef . unDate
  unsafeCastGObject = Date . castRef . unGObject
-- TODO add more IsDate instances

castToDate :: IsGObject obj => obj -> Date
castToDate = castTo gTypeDate "Date"

foreign import javascript unsafe "window[\"Date\"]" gTypeDate' :: JSRef GType
gTypeDate = GType gTypeDate'
#else
-- TODO work out how we can support Date in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Acceleration = Acceleration (JSRef Acceleration) deriving (Eq)

unAcceleration (Acceleration o) = o

instance ToJSRef Acceleration where
  toJSRef = return . unAcceleration
  {-# INLINE toJSRef #-}

instance FromJSRef Acceleration where
  fromJSRef = return . fmap Acceleration . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsAcceleration o
toAcceleration :: IsAcceleration o => o -> Acceleration
toAcceleration = unsafeCastGObject . toGObject

instance IsAcceleration Acceleration
instance IsGObject Acceleration where
  toGObject = GObject . castRef . unAcceleration
  unsafeCastGObject = Acceleration . castRef . unGObject
-- TODO add more IsAcceleration instances
#else
-- TODO work out how we can support Acceleration in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype RotationRate = RotationRate (JSRef RotationRate) deriving (Eq)

unRotationRate (RotationRate o) = o

instance ToJSRef RotationRate where
  toJSRef = return . unRotationRate
  {-# INLINE toJSRef #-}

instance FromJSRef RotationRate where
  fromJSRef = return . fmap RotationRate . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsRotationRate o
toRotationRate :: IsRotationRate o => o -> RotationRate
toRotationRate = unsafeCastGObject . toGObject

instance IsRotationRate RotationRate
instance IsGObject RotationRate where
  toGObject = GObject . castRef . unRotationRate
  unsafeCastGObject = RotationRate . castRef . unGObject
-- TODO add more IsRotationRate instances
#else
-- TODO work out how we can support RotationRate in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Algorithm = Algorithm (JSRef Algorithm) deriving (Eq)

unAlgorithm (Algorithm o) = o

instance ToJSRef Algorithm where
  toJSRef = return . unAlgorithm
  {-# INLINE toJSRef #-}

instance FromJSRef Algorithm where
  fromJSRef = return . fmap Algorithm . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsAlgorithm o
toAlgorithm :: IsAlgorithm o => o -> Algorithm
toAlgorithm = unsafeCastGObject . toGObject

instance IsAlgorithm Algorithm
instance IsGObject Algorithm where
  toGObject = GObject . castRef . unAlgorithm
  unsafeCastGObject = Algorithm . castRef . unGObject
-- TODO add more IsAlgorithm instances
#else
-- TODO work out how we can support Algorithm in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CryptoOperationData = CryptoOperationData (JSRef CryptoOperationData) deriving (Eq)

unCryptoOperationData (CryptoOperationData o) = o

instance ToJSRef CryptoOperationData where
  toJSRef = return . unCryptoOperationData
  {-# INLINE toJSRef #-}

instance FromJSRef CryptoOperationData where
  fromJSRef = return . fmap CryptoOperationData . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsCryptoOperationData o
toCryptoOperationData :: IsCryptoOperationData o => o -> CryptoOperationData
toCryptoOperationData = unsafeCastGObject . toGObject

instance IsCryptoOperationData CryptoOperationData
instance IsGObject CryptoOperationData where
  toGObject = GObject . castRef . unCryptoOperationData
  unsafeCastGObject = CryptoOperationData . castRef . unGObject
instance IsCryptoOperationData ArrayBuffer
instance IsCryptoOperationData ArrayBufferView
#else
-- TODO work out how we can support CryptoOperationData in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CanvasStyle = CanvasStyle (JSRef CanvasStyle) deriving (Eq)

unCanvasStyle (CanvasStyle o) = o

instance ToJSRef CanvasStyle where
  toJSRef = return . unCanvasStyle
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasStyle where
  fromJSRef = return . fmap CanvasStyle . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsCanvasStyle o
toCanvasStyle :: IsCanvasStyle o => o -> CanvasStyle
toCanvasStyle = unsafeCastGObject . toGObject

instance IsCanvasStyle CanvasStyle
instance IsGObject CanvasStyle where
  toGObject = GObject . castRef . unCanvasStyle
  unsafeCastGObject = CanvasStyle . castRef . unGObject
instance IsCanvasStyle CanvasGradient
instance IsCanvasStyle CanvasPattern
#else
-- TODO work out how we can support CanvasStyle in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMCoreException = DOMCoreException (JSRef DOMCoreException) deriving (Eq)

unDOMCoreException (DOMCoreException o) = o

instance ToJSRef DOMCoreException where
  toJSRef = return . unDOMCoreException
  {-# INLINE toJSRef #-}

instance FromJSRef DOMCoreException where
  fromJSRef = return . fmap DOMCoreException . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDOMCoreException o
toDOMCoreException :: IsDOMCoreException o => o -> DOMCoreException
toDOMCoreException = unsafeCastGObject . toGObject

instance IsDOMCoreException DOMCoreException
instance IsGObject DOMCoreException where
  toGObject = GObject . castRef . unDOMCoreException
  unsafeCastGObject = DOMCoreException . castRef . unGObject
#else
-- TODO work out how we can support DOMCoreException in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMURLConstructor = DOMURLConstructor (JSRef DOMURLConstructor) deriving (Eq)

unDOMURLConstructor (DOMURLConstructor o) = o

instance ToJSRef DOMURLConstructor where
  toJSRef = return . unDOMURLConstructor
  {-# INLINE toJSRef #-}

instance FromJSRef DOMURLConstructor where
  fromJSRef = return . fmap DOMURLConstructor . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDOMURLConstructor o
toDOMURLConstructor :: IsDOMURLConstructor o => o -> DOMURLConstructor
toDOMURLConstructor = unsafeCastGObject . toGObject

instance IsDOMURLConstructor DOMURLConstructor
instance IsGObject DOMURLConstructor where
  toGObject = GObject . castRef . unDOMURLConstructor
  unsafeCastGObject = DOMURLConstructor . castRef . unGObject
#else
-- TODO work out how we can support DOMURLConstructor in native code
#endif

type GLenum = Word32
type GLboolean = Bool
type GLbitfield = Word32
type GLbyte = Int8
type GLshort = Int16
type GLint = Int32
type GLint64 = Int64
type GLsizei = Int32
type GLintptr = Int64
type GLsizeiptr = Int64
type GLubyte = Word8
type GLushort = Word16
type GLuint = Word32
type GLuint64 = Word64
type GLfloat = Double
type GLclampf = Double

-- AUTO GENERATION STARTS HERE
-- The remainder of this file is generated from IDL files using domconv-webkit-jsffi
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ANGLEInstancedArrays".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays Mozilla ANGLEInstancedArrays documentation>
newtype ANGLEInstancedArrays = ANGLEInstancedArrays (JSRef ANGLEInstancedArrays) deriving (Eq)

unANGLEInstancedArrays (ANGLEInstancedArrays o) = o

instance ToJSRef ANGLEInstancedArrays where
  toJSRef = return . unANGLEInstancedArrays
  {-# INLINE toJSRef #-}

instance FromJSRef ANGLEInstancedArrays where
  fromJSRef = return . fmap ANGLEInstancedArrays . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ANGLEInstancedArrays where
  toGObject = GObject . castRef . unANGLEInstancedArrays
  unsafeCastGObject = ANGLEInstancedArrays . castRef . unGObject

castToANGLEInstancedArrays :: IsGObject obj => obj -> ANGLEInstancedArrays
castToANGLEInstancedArrays = castTo gTypeANGLEInstancedArrays "ANGLEInstancedArrays"

foreign import javascript unsafe "window[\"ANGLEInstancedArrays\"]" gTypeANGLEInstancedArrays' :: JSRef GType
gTypeANGLEInstancedArrays = GType gTypeANGLEInstancedArrays'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AbstractView".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView Mozilla AbstractView documentation>
newtype AbstractView = AbstractView (JSRef AbstractView) deriving (Eq)

unAbstractView (AbstractView o) = o

instance ToJSRef AbstractView where
  toJSRef = return . unAbstractView
  {-# INLINE toJSRef #-}

instance FromJSRef AbstractView where
  fromJSRef = return . fmap AbstractView . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AbstractView where
  toGObject = GObject . castRef . unAbstractView
  unsafeCastGObject = AbstractView . castRef . unGObject

castToAbstractView :: IsGObject obj => obj -> AbstractView
castToAbstractView = castTo gTypeAbstractView "AbstractView"

foreign import javascript unsafe "window[\"AbstractView\"]" gTypeAbstractView' :: JSRef GType
gTypeAbstractView = GType gTypeAbstractView'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AbstractWorker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractWorker Mozilla AbstractWorker documentation>
newtype AbstractWorker = AbstractWorker (JSRef AbstractWorker) deriving (Eq)

unAbstractWorker (AbstractWorker o) = o

instance ToJSRef AbstractWorker where
  toJSRef = return . unAbstractWorker
  {-# INLINE toJSRef #-}

instance FromJSRef AbstractWorker where
  fromJSRef = return . fmap AbstractWorker . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AbstractWorker where
  toGObject = GObject . castRef . unAbstractWorker
  unsafeCastGObject = AbstractWorker . castRef . unGObject

castToAbstractWorker :: IsGObject obj => obj -> AbstractWorker
castToAbstractWorker = castTo gTypeAbstractWorker "AbstractWorker"

foreign import javascript unsafe "window[\"AbstractWorker\"]" gTypeAbstractWorker' :: JSRef GType
gTypeAbstractWorker = GType gTypeAbstractWorker'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AllAudioCapabilities".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities Mozilla AllAudioCapabilities documentation>
newtype AllAudioCapabilities = AllAudioCapabilities (JSRef AllAudioCapabilities) deriving (Eq)

unAllAudioCapabilities (AllAudioCapabilities o) = o

instance ToJSRef AllAudioCapabilities where
  toJSRef = return . unAllAudioCapabilities
  {-# INLINE toJSRef #-}

instance FromJSRef AllAudioCapabilities where
  fromJSRef = return . fmap AllAudioCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsMediaStreamCapabilities AllAudioCapabilities
instance IsGObject AllAudioCapabilities where
  toGObject = GObject . castRef . unAllAudioCapabilities
  unsafeCastGObject = AllAudioCapabilities . castRef . unGObject

castToAllAudioCapabilities :: IsGObject obj => obj -> AllAudioCapabilities
castToAllAudioCapabilities = castTo gTypeAllAudioCapabilities "AllAudioCapabilities"

foreign import javascript unsafe "window[\"AllAudioCapabilities\"]" gTypeAllAudioCapabilities' :: JSRef GType
gTypeAllAudioCapabilities = GType gTypeAllAudioCapabilities'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AllVideoCapabilities".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities Mozilla AllVideoCapabilities documentation>
newtype AllVideoCapabilities = AllVideoCapabilities (JSRef AllVideoCapabilities) deriving (Eq)

unAllVideoCapabilities (AllVideoCapabilities o) = o

instance ToJSRef AllVideoCapabilities where
  toJSRef = return . unAllVideoCapabilities
  {-# INLINE toJSRef #-}

instance FromJSRef AllVideoCapabilities where
  fromJSRef = return . fmap AllVideoCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsMediaStreamCapabilities AllVideoCapabilities
instance IsGObject AllVideoCapabilities where
  toGObject = GObject . castRef . unAllVideoCapabilities
  unsafeCastGObject = AllVideoCapabilities . castRef . unGObject

castToAllVideoCapabilities :: IsGObject obj => obj -> AllVideoCapabilities
castToAllVideoCapabilities = castTo gTypeAllVideoCapabilities "AllVideoCapabilities"

foreign import javascript unsafe "window[\"AllVideoCapabilities\"]" gTypeAllVideoCapabilities' :: JSRef GType
gTypeAllVideoCapabilities = GType gTypeAllVideoCapabilities'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AnalyserNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode Mozilla AnalyserNode documentation>
newtype AnalyserNode = AnalyserNode (JSRef AnalyserNode) deriving (Eq)

unAnalyserNode (AnalyserNode o) = o

instance ToJSRef AnalyserNode where
  toJSRef = return . unAnalyserNode
  {-# INLINE toJSRef #-}

instance FromJSRef AnalyserNode where
  fromJSRef = return . fmap AnalyserNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode AnalyserNode
instance IsEventTarget AnalyserNode
instance IsGObject AnalyserNode where
  toGObject = GObject . castRef . unAnalyserNode
  unsafeCastGObject = AnalyserNode . castRef . unGObject

castToAnalyserNode :: IsGObject obj => obj -> AnalyserNode
castToAnalyserNode = castTo gTypeAnalyserNode "AnalyserNode"

foreign import javascript unsafe "window[\"AnalyserNode\"]" gTypeAnalyserNode' :: JSRef GType
gTypeAnalyserNode = GType gTypeAnalyserNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AnimationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent Mozilla AnimationEvent documentation>
newtype AnimationEvent = AnimationEvent (JSRef AnimationEvent) deriving (Eq)

unAnimationEvent (AnimationEvent o) = o

instance ToJSRef AnimationEvent where
  toJSRef = return . unAnimationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef AnimationEvent where
  fromJSRef = return . fmap AnimationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent AnimationEvent
instance IsGObject AnimationEvent where
  toGObject = GObject . castRef . unAnimationEvent
  unsafeCastGObject = AnimationEvent . castRef . unGObject

castToAnimationEvent :: IsGObject obj => obj -> AnimationEvent
castToAnimationEvent = castTo gTypeAnimationEvent "AnimationEvent"

foreign import javascript unsafe "window[\"AnimationEvent\"]" gTypeAnimationEvent' :: JSRef GType
gTypeAnimationEvent = GType gTypeAnimationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMAttr".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMAttr Mozilla DOMAttr documentation>
newtype DOMAttr = DOMAttr (JSRef DOMAttr) deriving (Eq)

unDOMAttr (DOMAttr o) = o

instance ToJSRef DOMAttr where
  toJSRef = return . unDOMAttr
  {-# INLINE toJSRef #-}

instance FromJSRef DOMAttr where
  fromJSRef = return . fmap DOMAttr . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNode DOMAttr
instance IsEventTarget DOMAttr
instance IsGObject DOMAttr where
  toGObject = GObject . castRef . unDOMAttr
  unsafeCastGObject = DOMAttr . castRef . unGObject

castToDOMAttr :: IsGObject obj => obj -> DOMAttr
castToDOMAttr = castTo gTypeDOMAttr "DOMAttr"

foreign import javascript unsafe "window[\"DOMAttr\"]" gTypeDOMAttr' :: JSRef GType
gTypeDOMAttr = GType gTypeDOMAttr'
#else
type IsDOMAttr o = DOMAttrClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer Mozilla AudioBuffer documentation>
newtype AudioBuffer = AudioBuffer (JSRef AudioBuffer) deriving (Eq)

unAudioBuffer (AudioBuffer o) = o

instance ToJSRef AudioBuffer where
  toJSRef = return . unAudioBuffer
  {-# INLINE toJSRef #-}

instance FromJSRef AudioBuffer where
  fromJSRef = return . fmap AudioBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AudioBuffer where
  toGObject = GObject . castRef . unAudioBuffer
  unsafeCastGObject = AudioBuffer . castRef . unGObject

castToAudioBuffer :: IsGObject obj => obj -> AudioBuffer
castToAudioBuffer = castTo gTypeAudioBuffer "AudioBuffer"

foreign import javascript unsafe "window[\"AudioBuffer\"]" gTypeAudioBuffer' :: JSRef GType
gTypeAudioBuffer = GType gTypeAudioBuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioBufferCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferCallback Mozilla AudioBufferCallback documentation>
newtype AudioBufferCallback = AudioBufferCallback (JSRef AudioBufferCallback) deriving (Eq)

unAudioBufferCallback (AudioBufferCallback o) = o

instance ToJSRef AudioBufferCallback where
  toJSRef = return . unAudioBufferCallback
  {-# INLINE toJSRef #-}

instance FromJSRef AudioBufferCallback where
  fromJSRef = return . fmap AudioBufferCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AudioBufferCallback where
  toGObject = GObject . castRef . unAudioBufferCallback
  unsafeCastGObject = AudioBufferCallback . castRef . unGObject

castToAudioBufferCallback :: IsGObject obj => obj -> AudioBufferCallback
castToAudioBufferCallback = castTo gTypeAudioBufferCallback "AudioBufferCallback"

foreign import javascript unsafe "window[\"AudioBufferCallback\"]" gTypeAudioBufferCallback' :: JSRef GType
gTypeAudioBufferCallback = GType gTypeAudioBufferCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioBufferSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode Mozilla AudioBufferSourceNode documentation>
newtype AudioBufferSourceNode = AudioBufferSourceNode (JSRef AudioBufferSourceNode) deriving (Eq)

unAudioBufferSourceNode (AudioBufferSourceNode o) = o

instance ToJSRef AudioBufferSourceNode where
  toJSRef = return . unAudioBufferSourceNode
  {-# INLINE toJSRef #-}

instance FromJSRef AudioBufferSourceNode where
  fromJSRef = return . fmap AudioBufferSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode AudioBufferSourceNode
instance IsEventTarget AudioBufferSourceNode
instance IsGObject AudioBufferSourceNode where
  toGObject = GObject . castRef . unAudioBufferSourceNode
  unsafeCastGObject = AudioBufferSourceNode . castRef . unGObject

castToAudioBufferSourceNode :: IsGObject obj => obj -> AudioBufferSourceNode
castToAudioBufferSourceNode = castTo gTypeAudioBufferSourceNode "AudioBufferSourceNode"

foreign import javascript unsafe "window[\"AudioBufferSourceNode\"]" gTypeAudioBufferSourceNode' :: JSRef GType
gTypeAudioBufferSourceNode = GType gTypeAudioBufferSourceNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation>
newtype AudioContext = AudioContext (JSRef AudioContext) deriving (Eq)

unAudioContext (AudioContext o) = o

instance ToJSRef AudioContext where
  toJSRef = return . unAudioContext
  {-# INLINE toJSRef #-}

instance FromJSRef AudioContext where
  fromJSRef = return . fmap AudioContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsAudioContext o
toAudioContext :: IsAudioContext o => o -> AudioContext
toAudioContext = unsafeCastGObject . toGObject

instance IsAudioContext AudioContext
instance IsEventTarget AudioContext
instance IsGObject AudioContext where
  toGObject = GObject . castRef . unAudioContext
  unsafeCastGObject = AudioContext . castRef . unGObject

castToAudioContext :: IsGObject obj => obj -> AudioContext
castToAudioContext = castTo gTypeAudioContext "AudioContext"

foreign import javascript unsafe "window[\"AudioContext\"]" gTypeAudioContext' :: JSRef GType
gTypeAudioContext = GType gTypeAudioContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioDestinationNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioDestinationNode Mozilla AudioDestinationNode documentation>
newtype AudioDestinationNode = AudioDestinationNode (JSRef AudioDestinationNode) deriving (Eq)

unAudioDestinationNode (AudioDestinationNode o) = o

instance ToJSRef AudioDestinationNode where
  toJSRef = return . unAudioDestinationNode
  {-# INLINE toJSRef #-}

instance FromJSRef AudioDestinationNode where
  fromJSRef = return . fmap AudioDestinationNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode AudioDestinationNode
instance IsEventTarget AudioDestinationNode
instance IsGObject AudioDestinationNode where
  toGObject = GObject . castRef . unAudioDestinationNode
  unsafeCastGObject = AudioDestinationNode . castRef . unGObject

castToAudioDestinationNode :: IsGObject obj => obj -> AudioDestinationNode
castToAudioDestinationNode = castTo gTypeAudioDestinationNode "AudioDestinationNode"

foreign import javascript unsafe "window[\"AudioDestinationNode\"]" gTypeAudioDestinationNode' :: JSRef GType
gTypeAudioDestinationNode = GType gTypeAudioDestinationNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener Mozilla AudioListener documentation>
newtype AudioListener = AudioListener (JSRef AudioListener) deriving (Eq)

unAudioListener (AudioListener o) = o

instance ToJSRef AudioListener where
  toJSRef = return . unAudioListener
  {-# INLINE toJSRef #-}

instance FromJSRef AudioListener where
  fromJSRef = return . fmap AudioListener . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AudioListener where
  toGObject = GObject . castRef . unAudioListener
  unsafeCastGObject = AudioListener . castRef . unGObject

castToAudioListener :: IsGObject obj => obj -> AudioListener
castToAudioListener = castTo gTypeAudioListener "AudioListener"

foreign import javascript unsafe "window[\"AudioListener\"]" gTypeAudioListener' :: JSRef GType
gTypeAudioListener = GType gTypeAudioListener'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode Mozilla AudioNode documentation>
newtype AudioNode = AudioNode (JSRef AudioNode) deriving (Eq)

unAudioNode (AudioNode o) = o

instance ToJSRef AudioNode where
  toJSRef = return . unAudioNode
  {-# INLINE toJSRef #-}

instance FromJSRef AudioNode where
  fromJSRef = return . fmap AudioNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsAudioNode o
toAudioNode :: IsAudioNode o => o -> AudioNode
toAudioNode = unsafeCastGObject . toGObject

instance IsAudioNode AudioNode
instance IsEventTarget AudioNode
instance IsGObject AudioNode where
  toGObject = GObject . castRef . unAudioNode
  unsafeCastGObject = AudioNode . castRef . unGObject

castToAudioNode :: IsGObject obj => obj -> AudioNode
castToAudioNode = castTo gTypeAudioNode "AudioNode"

foreign import javascript unsafe "window[\"AudioNode\"]" gTypeAudioNode' :: JSRef GType
gTypeAudioNode = GType gTypeAudioNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioParam".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam Mozilla AudioParam documentation>
newtype AudioParam = AudioParam (JSRef AudioParam) deriving (Eq)

unAudioParam (AudioParam o) = o

instance ToJSRef AudioParam where
  toJSRef = return . unAudioParam
  {-# INLINE toJSRef #-}

instance FromJSRef AudioParam where
  fromJSRef = return . fmap AudioParam . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AudioParam where
  toGObject = GObject . castRef . unAudioParam
  unsafeCastGObject = AudioParam . castRef . unGObject

castToAudioParam :: IsGObject obj => obj -> AudioParam
castToAudioParam = castTo gTypeAudioParam "AudioParam"

foreign import javascript unsafe "window[\"AudioParam\"]" gTypeAudioParam' :: JSRef GType
gTypeAudioParam = GType gTypeAudioParam'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioProcessingEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent Mozilla AudioProcessingEvent documentation>
newtype AudioProcessingEvent = AudioProcessingEvent (JSRef AudioProcessingEvent) deriving (Eq)

unAudioProcessingEvent (AudioProcessingEvent o) = o

instance ToJSRef AudioProcessingEvent where
  toJSRef = return . unAudioProcessingEvent
  {-# INLINE toJSRef #-}

instance FromJSRef AudioProcessingEvent where
  fromJSRef = return . fmap AudioProcessingEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent AudioProcessingEvent
instance IsGObject AudioProcessingEvent where
  toGObject = GObject . castRef . unAudioProcessingEvent
  unsafeCastGObject = AudioProcessingEvent . castRef . unGObject

castToAudioProcessingEvent :: IsGObject obj => obj -> AudioProcessingEvent
castToAudioProcessingEvent = castTo gTypeAudioProcessingEvent "AudioProcessingEvent"

foreign import javascript unsafe "window[\"AudioProcessingEvent\"]" gTypeAudioProcessingEvent' :: JSRef GType
gTypeAudioProcessingEvent = GType gTypeAudioProcessingEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamTrack"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation>
newtype AudioStreamTrack = AudioStreamTrack (JSRef AudioStreamTrack) deriving (Eq)

unAudioStreamTrack (AudioStreamTrack o) = o

instance ToJSRef AudioStreamTrack where
  toJSRef = return . unAudioStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef AudioStreamTrack where
  fromJSRef = return . fmap AudioStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsMediaStreamTrack AudioStreamTrack
instance IsEventTarget AudioStreamTrack
instance IsGObject AudioStreamTrack where
  toGObject = GObject . castRef . unAudioStreamTrack
  unsafeCastGObject = AudioStreamTrack . castRef . unGObject

castToAudioStreamTrack :: IsGObject obj => obj -> AudioStreamTrack
castToAudioStreamTrack = castTo gTypeAudioStreamTrack "AudioStreamTrack"

foreign import javascript unsafe "window[\"AudioStreamTrack\"]" gTypeAudioStreamTrack' :: JSRef GType
gTypeAudioStreamTrack = GType gTypeAudioStreamTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack Mozilla AudioTrack documentation>
newtype AudioTrack = AudioTrack (JSRef AudioTrack) deriving (Eq)

unAudioTrack (AudioTrack o) = o

instance ToJSRef AudioTrack where
  toJSRef = return . unAudioTrack
  {-# INLINE toJSRef #-}

instance FromJSRef AudioTrack where
  fromJSRef = return . fmap AudioTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject AudioTrack where
  toGObject = GObject . castRef . unAudioTrack
  unsafeCastGObject = AudioTrack . castRef . unGObject

castToAudioTrack :: IsGObject obj => obj -> AudioTrack
castToAudioTrack = castTo gTypeAudioTrack "AudioTrack"

foreign import javascript unsafe "window[\"AudioTrack\"]" gTypeAudioTrack' :: JSRef GType
gTypeAudioTrack = GType gTypeAudioTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList Mozilla AudioTrackList documentation>
newtype AudioTrackList = AudioTrackList (JSRef AudioTrackList) deriving (Eq)

unAudioTrackList (AudioTrackList o) = o

instance ToJSRef AudioTrackList where
  toJSRef = return . unAudioTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef AudioTrackList where
  fromJSRef = return . fmap AudioTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget AudioTrackList
instance IsGObject AudioTrackList where
  toGObject = GObject . castRef . unAudioTrackList
  unsafeCastGObject = AudioTrackList . castRef . unGObject

castToAudioTrackList :: IsGObject obj => obj -> AudioTrackList
castToAudioTrackList = castTo gTypeAudioTrackList "AudioTrackList"

foreign import javascript unsafe "window[\"AudioTrackList\"]" gTypeAudioTrackList' :: JSRef GType
gTypeAudioTrackList = GType gTypeAudioTrackList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AutocompleteErrorEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent Mozilla AutocompleteErrorEvent documentation>
newtype AutocompleteErrorEvent = AutocompleteErrorEvent (JSRef AutocompleteErrorEvent) deriving (Eq)

unAutocompleteErrorEvent (AutocompleteErrorEvent o) = o

instance ToJSRef AutocompleteErrorEvent where
  toJSRef = return . unAutocompleteErrorEvent
  {-# INLINE toJSRef #-}

instance FromJSRef AutocompleteErrorEvent where
  fromJSRef = return . fmap AutocompleteErrorEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent AutocompleteErrorEvent
instance IsGObject AutocompleteErrorEvent where
  toGObject = GObject . castRef . unAutocompleteErrorEvent
  unsafeCastGObject = AutocompleteErrorEvent . castRef . unGObject

castToAutocompleteErrorEvent :: IsGObject obj => obj -> AutocompleteErrorEvent
castToAutocompleteErrorEvent = castTo gTypeAutocompleteErrorEvent "AutocompleteErrorEvent"

foreign import javascript unsafe "window[\"AutocompleteErrorEvent\"]" gTypeAutocompleteErrorEvent' :: JSRef GType
gTypeAutocompleteErrorEvent = GType gTypeAutocompleteErrorEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BarProp".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BarProp Mozilla BarProp documentation>
newtype BarProp = BarProp (JSRef BarProp) deriving (Eq)

unBarProp (BarProp o) = o

instance ToJSRef BarProp where
  toJSRef = return . unBarProp
  {-# INLINE toJSRef #-}

instance FromJSRef BarProp where
  fromJSRef = return . fmap BarProp . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject BarProp where
  toGObject = GObject . castRef . unBarProp
  unsafeCastGObject = BarProp . castRef . unGObject

castToBarProp :: IsGObject obj => obj -> BarProp
castToBarProp = castTo gTypeBarProp "BarProp"

foreign import javascript unsafe "window[\"BarProp\"]" gTypeBarProp' :: JSRef GType
gTypeBarProp = GType gTypeBarProp'
#else
type IsBarProp o = BarPropClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BatteryManager".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager Mozilla BatteryManager documentation>
newtype BatteryManager = BatteryManager (JSRef BatteryManager) deriving (Eq)

unBatteryManager (BatteryManager o) = o

instance ToJSRef BatteryManager where
  toJSRef = return . unBatteryManager
  {-# INLINE toJSRef #-}

instance FromJSRef BatteryManager where
  fromJSRef = return . fmap BatteryManager . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget BatteryManager
instance IsGObject BatteryManager where
  toGObject = GObject . castRef . unBatteryManager
  unsafeCastGObject = BatteryManager . castRef . unGObject

castToBatteryManager :: IsGObject obj => obj -> BatteryManager
castToBatteryManager = castTo gTypeBatteryManager "BatteryManager"

foreign import javascript unsafe "window[\"BatteryManager\"]" gTypeBatteryManager' :: JSRef GType
gTypeBatteryManager = GType gTypeBatteryManager'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BeforeLoadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeLoadEvent Mozilla BeforeLoadEvent documentation>
newtype BeforeLoadEvent = BeforeLoadEvent (JSRef BeforeLoadEvent) deriving (Eq)

unBeforeLoadEvent (BeforeLoadEvent o) = o

instance ToJSRef BeforeLoadEvent where
  toJSRef = return . unBeforeLoadEvent
  {-# INLINE toJSRef #-}

instance FromJSRef BeforeLoadEvent where
  fromJSRef = return . fmap BeforeLoadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent BeforeLoadEvent
instance IsGObject BeforeLoadEvent where
  toGObject = GObject . castRef . unBeforeLoadEvent
  unsafeCastGObject = BeforeLoadEvent . castRef . unGObject

castToBeforeLoadEvent :: IsGObject obj => obj -> BeforeLoadEvent
castToBeforeLoadEvent = castTo gTypeBeforeLoadEvent "BeforeLoadEvent"

foreign import javascript unsafe "window[\"BeforeLoadEvent\"]" gTypeBeforeLoadEvent' :: JSRef GType
gTypeBeforeLoadEvent = GType gTypeBeforeLoadEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BeforeUnloadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent Mozilla BeforeUnloadEvent documentation>
newtype BeforeUnloadEvent = BeforeUnloadEvent (JSRef BeforeUnloadEvent) deriving (Eq)

unBeforeUnloadEvent (BeforeUnloadEvent o) = o

instance ToJSRef BeforeUnloadEvent where
  toJSRef = return . unBeforeUnloadEvent
  {-# INLINE toJSRef #-}

instance FromJSRef BeforeUnloadEvent where
  fromJSRef = return . fmap BeforeUnloadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent BeforeUnloadEvent
instance IsGObject BeforeUnloadEvent where
  toGObject = GObject . castRef . unBeforeUnloadEvent
  unsafeCastGObject = BeforeUnloadEvent . castRef . unGObject

castToBeforeUnloadEvent :: IsGObject obj => obj -> BeforeUnloadEvent
castToBeforeUnloadEvent = castTo gTypeBeforeUnloadEvent "BeforeUnloadEvent"

foreign import javascript unsafe "window[\"BeforeUnloadEvent\"]" gTypeBeforeUnloadEvent' :: JSRef GType
gTypeBeforeUnloadEvent = GType gTypeBeforeUnloadEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BiquadFilterNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode Mozilla BiquadFilterNode documentation>
newtype BiquadFilterNode = BiquadFilterNode (JSRef BiquadFilterNode) deriving (Eq)

unBiquadFilterNode (BiquadFilterNode o) = o

instance ToJSRef BiquadFilterNode where
  toJSRef = return . unBiquadFilterNode
  {-# INLINE toJSRef #-}

instance FromJSRef BiquadFilterNode where
  fromJSRef = return . fmap BiquadFilterNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode BiquadFilterNode
instance IsEventTarget BiquadFilterNode
instance IsGObject BiquadFilterNode where
  toGObject = GObject . castRef . unBiquadFilterNode
  unsafeCastGObject = BiquadFilterNode . castRef . unGObject

castToBiquadFilterNode :: IsGObject obj => obj -> BiquadFilterNode
castToBiquadFilterNode = castTo gTypeBiquadFilterNode "BiquadFilterNode"

foreign import javascript unsafe "window[\"BiquadFilterNode\"]" gTypeBiquadFilterNode' :: JSRef GType
gTypeBiquadFilterNode = GType gTypeBiquadFilterNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Blob".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation>
newtype Blob = Blob (JSRef Blob) deriving (Eq)

unBlob (Blob o) = o

instance ToJSRef Blob where
  toJSRef = return . unBlob
  {-# INLINE toJSRef #-}

instance FromJSRef Blob where
  fromJSRef = return . fmap Blob . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsBlob o
toBlob :: IsBlob o => o -> Blob
toBlob = unsafeCastGObject . toGObject

instance IsBlob Blob
instance IsGObject Blob where
  toGObject = GObject . castRef . unBlob
  unsafeCastGObject = Blob . castRef . unGObject

castToBlob :: IsGObject obj => obj -> Blob
castToBlob = castTo gTypeBlob "Blob"

foreign import javascript unsafe "window[\"Blob\"]" gTypeBlob' :: JSRef GType
gTypeBlob = GType gTypeBlob'
#else
type IsBlob o = BlobClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CDATASection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Text"
--     * "GHCJS.DOM.CharacterData"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CDATASection Mozilla CDATASection documentation>
newtype CDATASection = CDATASection (JSRef CDATASection) deriving (Eq)

unCDATASection (CDATASection o) = o

instance ToJSRef CDATASection where
  toJSRef = return . unCDATASection
  {-# INLINE toJSRef #-}

instance FromJSRef CDATASection where
  fromJSRef = return . fmap CDATASection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsText CDATASection
instance IsCharacterData CDATASection
instance IsNode CDATASection
instance IsEventTarget CDATASection
instance IsGObject CDATASection where
  toGObject = GObject . castRef . unCDATASection
  unsafeCastGObject = CDATASection . castRef . unGObject

castToCDATASection :: IsGObject obj => obj -> CDATASection
castToCDATASection = castTo gTypeCDATASection "CDATASection"

foreign import javascript unsafe "window[\"CDATASection\"]" gTypeCDATASection' :: JSRef GType
gTypeCDATASection = GType gTypeCDATASection'
#else
type IsCDATASection o = CDATASectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSCharsetRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule Mozilla CSSCharsetRule documentation>
newtype CSSCharsetRule = CSSCharsetRule (JSRef CSSCharsetRule) deriving (Eq)

unCSSCharsetRule (CSSCharsetRule o) = o

instance ToJSRef CSSCharsetRule where
  toJSRef = return . unCSSCharsetRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSCharsetRule where
  fromJSRef = return . fmap CSSCharsetRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSCharsetRule
instance IsGObject CSSCharsetRule where
  toGObject = GObject . castRef . unCSSCharsetRule
  unsafeCastGObject = CSSCharsetRule . castRef . unGObject

castToCSSCharsetRule :: IsGObject obj => obj -> CSSCharsetRule
castToCSSCharsetRule = castTo gTypeCSSCharsetRule "CSSCharsetRule"

foreign import javascript unsafe "window[\"CSSCharsetRule\"]" gTypeCSSCharsetRule' :: JSRef GType
gTypeCSSCharsetRule = GType gTypeCSSCharsetRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSFontFaceLoadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent Mozilla CSSFontFaceLoadEvent documentation>
newtype CSSFontFaceLoadEvent = CSSFontFaceLoadEvent (JSRef CSSFontFaceLoadEvent) deriving (Eq)

unCSSFontFaceLoadEvent (CSSFontFaceLoadEvent o) = o

instance ToJSRef CSSFontFaceLoadEvent where
  toJSRef = return . unCSSFontFaceLoadEvent
  {-# INLINE toJSRef #-}

instance FromJSRef CSSFontFaceLoadEvent where
  fromJSRef = return . fmap CSSFontFaceLoadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent CSSFontFaceLoadEvent
instance IsGObject CSSFontFaceLoadEvent where
  toGObject = GObject . castRef . unCSSFontFaceLoadEvent
  unsafeCastGObject = CSSFontFaceLoadEvent . castRef . unGObject

castToCSSFontFaceLoadEvent :: IsGObject obj => obj -> CSSFontFaceLoadEvent
castToCSSFontFaceLoadEvent = castTo gTypeCSSFontFaceLoadEvent "CSSFontFaceLoadEvent"

foreign import javascript unsafe "window[\"CSSFontFaceLoadEvent\"]" gTypeCSSFontFaceLoadEvent' :: JSRef GType
gTypeCSSFontFaceLoadEvent = GType gTypeCSSFontFaceLoadEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSFontFaceRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule Mozilla CSSFontFaceRule documentation>
newtype CSSFontFaceRule = CSSFontFaceRule (JSRef CSSFontFaceRule) deriving (Eq)

unCSSFontFaceRule (CSSFontFaceRule o) = o

instance ToJSRef CSSFontFaceRule where
  toJSRef = return . unCSSFontFaceRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSFontFaceRule where
  fromJSRef = return . fmap CSSFontFaceRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSFontFaceRule
instance IsGObject CSSFontFaceRule where
  toGObject = GObject . castRef . unCSSFontFaceRule
  unsafeCastGObject = CSSFontFaceRule . castRef . unGObject

castToCSSFontFaceRule :: IsGObject obj => obj -> CSSFontFaceRule
castToCSSFontFaceRule = castTo gTypeCSSFontFaceRule "CSSFontFaceRule"

foreign import javascript unsafe "window[\"CSSFontFaceRule\"]" gTypeCSSFontFaceRule' :: JSRef GType
gTypeCSSFontFaceRule = GType gTypeCSSFontFaceRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSImportRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule Mozilla CSSImportRule documentation>
newtype CSSImportRule = CSSImportRule (JSRef CSSImportRule) deriving (Eq)

unCSSImportRule (CSSImportRule o) = o

instance ToJSRef CSSImportRule where
  toJSRef = return . unCSSImportRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSImportRule where
  fromJSRef = return . fmap CSSImportRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSImportRule
instance IsGObject CSSImportRule where
  toGObject = GObject . castRef . unCSSImportRule
  unsafeCastGObject = CSSImportRule . castRef . unGObject

castToCSSImportRule :: IsGObject obj => obj -> CSSImportRule
castToCSSImportRule = castTo gTypeCSSImportRule "CSSImportRule"

foreign import javascript unsafe "window[\"CSSImportRule\"]" gTypeCSSImportRule' :: JSRef GType
gTypeCSSImportRule = GType gTypeCSSImportRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSKeyframeRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule Mozilla CSSKeyframeRule documentation>
newtype CSSKeyframeRule = CSSKeyframeRule (JSRef CSSKeyframeRule) deriving (Eq)

unCSSKeyframeRule (CSSKeyframeRule o) = o

instance ToJSRef CSSKeyframeRule where
  toJSRef = return . unCSSKeyframeRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSKeyframeRule where
  fromJSRef = return . fmap CSSKeyframeRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSKeyframeRule
instance IsGObject CSSKeyframeRule where
  toGObject = GObject . castRef . unCSSKeyframeRule
  unsafeCastGObject = CSSKeyframeRule . castRef . unGObject

castToCSSKeyframeRule :: IsGObject obj => obj -> CSSKeyframeRule
castToCSSKeyframeRule = castTo gTypeCSSKeyframeRule "CSSKeyframeRule"

foreign import javascript unsafe "window[\"CSSKeyframeRule\"]" gTypeCSSKeyframeRule' :: JSRef GType
gTypeCSSKeyframeRule = GType gTypeCSSKeyframeRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSKeyframesRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule Mozilla CSSKeyframesRule documentation>
newtype CSSKeyframesRule = CSSKeyframesRule (JSRef CSSKeyframesRule) deriving (Eq)

unCSSKeyframesRule (CSSKeyframesRule o) = o

instance ToJSRef CSSKeyframesRule where
  toJSRef = return . unCSSKeyframesRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSKeyframesRule where
  fromJSRef = return . fmap CSSKeyframesRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSKeyframesRule
instance IsGObject CSSKeyframesRule where
  toGObject = GObject . castRef . unCSSKeyframesRule
  unsafeCastGObject = CSSKeyframesRule . castRef . unGObject

castToCSSKeyframesRule :: IsGObject obj => obj -> CSSKeyframesRule
castToCSSKeyframesRule = castTo gTypeCSSKeyframesRule "CSSKeyframesRule"

foreign import javascript unsafe "window[\"CSSKeyframesRule\"]" gTypeCSSKeyframesRule' :: JSRef GType
gTypeCSSKeyframesRule = GType gTypeCSSKeyframesRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSMediaRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule Mozilla CSSMediaRule documentation>
newtype CSSMediaRule = CSSMediaRule (JSRef CSSMediaRule) deriving (Eq)

unCSSMediaRule (CSSMediaRule o) = o

instance ToJSRef CSSMediaRule where
  toJSRef = return . unCSSMediaRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSMediaRule where
  fromJSRef = return . fmap CSSMediaRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSMediaRule
instance IsGObject CSSMediaRule where
  toGObject = GObject . castRef . unCSSMediaRule
  unsafeCastGObject = CSSMediaRule . castRef . unGObject

castToCSSMediaRule :: IsGObject obj => obj -> CSSMediaRule
castToCSSMediaRule = castTo gTypeCSSMediaRule "CSSMediaRule"

foreign import javascript unsafe "window[\"CSSMediaRule\"]" gTypeCSSMediaRule' :: JSRef GType
gTypeCSSMediaRule = GType gTypeCSSMediaRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSPageRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule Mozilla CSSPageRule documentation>
newtype CSSPageRule = CSSPageRule (JSRef CSSPageRule) deriving (Eq)

unCSSPageRule (CSSPageRule o) = o

instance ToJSRef CSSPageRule where
  toJSRef = return . unCSSPageRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSPageRule where
  fromJSRef = return . fmap CSSPageRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSPageRule
instance IsGObject CSSPageRule where
  toGObject = GObject . castRef . unCSSPageRule
  unsafeCastGObject = CSSPageRule . castRef . unGObject

castToCSSPageRule :: IsGObject obj => obj -> CSSPageRule
castToCSSPageRule = castTo gTypeCSSPageRule "CSSPageRule"

foreign import javascript unsafe "window[\"CSSPageRule\"]" gTypeCSSPageRule' :: JSRef GType
gTypeCSSPageRule = GType gTypeCSSPageRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSPrimitiveValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue Mozilla CSSPrimitiveValue documentation>
newtype CSSPrimitiveValue = CSSPrimitiveValue (JSRef CSSPrimitiveValue) deriving (Eq)

unCSSPrimitiveValue (CSSPrimitiveValue o) = o

instance ToJSRef CSSPrimitiveValue where
  toJSRef = return . unCSSPrimitiveValue
  {-# INLINE toJSRef #-}

instance FromJSRef CSSPrimitiveValue where
  fromJSRef = return . fmap CSSPrimitiveValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSValue CSSPrimitiveValue
instance IsGObject CSSPrimitiveValue where
  toGObject = GObject . castRef . unCSSPrimitiveValue
  unsafeCastGObject = CSSPrimitiveValue . castRef . unGObject

castToCSSPrimitiveValue :: IsGObject obj => obj -> CSSPrimitiveValue
castToCSSPrimitiveValue = castTo gTypeCSSPrimitiveValue "CSSPrimitiveValue"

foreign import javascript unsafe "window[\"CSSPrimitiveValue\"]" gTypeCSSPrimitiveValue' :: JSRef GType
gTypeCSSPrimitiveValue = GType gTypeCSSPrimitiveValue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSRule".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule Mozilla CSSRule documentation>
newtype CSSRule = CSSRule (JSRef CSSRule) deriving (Eq)

unCSSRule (CSSRule o) = o

instance ToJSRef CSSRule where
  toJSRef = return . unCSSRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSRule where
  fromJSRef = return . fmap CSSRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsCSSRule o
toCSSRule :: IsCSSRule o => o -> CSSRule
toCSSRule = unsafeCastGObject . toGObject

instance IsCSSRule CSSRule
instance IsGObject CSSRule where
  toGObject = GObject . castRef . unCSSRule
  unsafeCastGObject = CSSRule . castRef . unGObject

castToCSSRule :: IsGObject obj => obj -> CSSRule
castToCSSRule = castTo gTypeCSSRule "CSSRule"

foreign import javascript unsafe "window[\"CSSRule\"]" gTypeCSSRule' :: JSRef GType
gTypeCSSRule = GType gTypeCSSRule'
#else
type IsCSSRule o = CSSRuleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSRuleList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList Mozilla CSSRuleList documentation>
newtype CSSRuleList = CSSRuleList (JSRef CSSRuleList) deriving (Eq)

unCSSRuleList (CSSRuleList o) = o

instance ToJSRef CSSRuleList where
  toJSRef = return . unCSSRuleList
  {-# INLINE toJSRef #-}

instance FromJSRef CSSRuleList where
  fromJSRef = return . fmap CSSRuleList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CSSRuleList where
  toGObject = GObject . castRef . unCSSRuleList
  unsafeCastGObject = CSSRuleList . castRef . unGObject

castToCSSRuleList :: IsGObject obj => obj -> CSSRuleList
castToCSSRuleList = castTo gTypeCSSRuleList "CSSRuleList"

foreign import javascript unsafe "window[\"CSSRuleList\"]" gTypeCSSRuleList' :: JSRef GType
gTypeCSSRuleList = GType gTypeCSSRuleList'
#else
type IsCSSRuleList o = CSSRuleListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleDeclaration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration Mozilla CSSStyleDeclaration documentation>
newtype CSSStyleDeclaration = CSSStyleDeclaration (JSRef CSSStyleDeclaration) deriving (Eq)

unCSSStyleDeclaration (CSSStyleDeclaration o) = o

instance ToJSRef CSSStyleDeclaration where
  toJSRef = return . unCSSStyleDeclaration
  {-# INLINE toJSRef #-}

instance FromJSRef CSSStyleDeclaration where
  fromJSRef = return . fmap CSSStyleDeclaration . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CSSStyleDeclaration where
  toGObject = GObject . castRef . unCSSStyleDeclaration
  unsafeCastGObject = CSSStyleDeclaration . castRef . unGObject

castToCSSStyleDeclaration :: IsGObject obj => obj -> CSSStyleDeclaration
castToCSSStyleDeclaration = castTo gTypeCSSStyleDeclaration "CSSStyleDeclaration"

foreign import javascript unsafe "window[\"CSSStyleDeclaration\"]" gTypeCSSStyleDeclaration' :: JSRef GType
gTypeCSSStyleDeclaration = GType gTypeCSSStyleDeclaration'
#else
type IsCSSStyleDeclaration o = CSSStyleDeclarationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule Mozilla CSSStyleRule documentation>
newtype CSSStyleRule = CSSStyleRule (JSRef CSSStyleRule) deriving (Eq)

unCSSStyleRule (CSSStyleRule o) = o

instance ToJSRef CSSStyleRule where
  toJSRef = return . unCSSStyleRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSStyleRule where
  fromJSRef = return . fmap CSSStyleRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSStyleRule
instance IsGObject CSSStyleRule where
  toGObject = GObject . castRef . unCSSStyleRule
  unsafeCastGObject = CSSStyleRule . castRef . unGObject

castToCSSStyleRule :: IsGObject obj => obj -> CSSStyleRule
castToCSSStyleRule = castTo gTypeCSSStyleRule "CSSStyleRule"

foreign import javascript unsafe "window[\"CSSStyleRule\"]" gTypeCSSStyleRule' :: JSRef GType
gTypeCSSStyleRule = GType gTypeCSSStyleRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleSheet".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.StyleSheet"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet Mozilla CSSStyleSheet documentation>
newtype CSSStyleSheet = CSSStyleSheet (JSRef CSSStyleSheet) deriving (Eq)

unCSSStyleSheet (CSSStyleSheet o) = o

instance ToJSRef CSSStyleSheet where
  toJSRef = return . unCSSStyleSheet
  {-# INLINE toJSRef #-}

instance FromJSRef CSSStyleSheet where
  fromJSRef = return . fmap CSSStyleSheet . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsStyleSheet CSSStyleSheet
instance IsGObject CSSStyleSheet where
  toGObject = GObject . castRef . unCSSStyleSheet
  unsafeCastGObject = CSSStyleSheet . castRef . unGObject

castToCSSStyleSheet :: IsGObject obj => obj -> CSSStyleSheet
castToCSSStyleSheet = castTo gTypeCSSStyleSheet "CSSStyleSheet"

foreign import javascript unsafe "window[\"CSSStyleSheet\"]" gTypeCSSStyleSheet' :: JSRef GType
gTypeCSSStyleSheet = GType gTypeCSSStyleSheet'
#else
type IsCSSStyleSheet o = CSSStyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSSupportsRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSSupportsRule Mozilla CSSSupportsRule documentation>
newtype CSSSupportsRule = CSSSupportsRule (JSRef CSSSupportsRule) deriving (Eq)

unCSSSupportsRule (CSSSupportsRule o) = o

instance ToJSRef CSSSupportsRule where
  toJSRef = return . unCSSSupportsRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSSupportsRule where
  fromJSRef = return . fmap CSSSupportsRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSSupportsRule
instance IsGObject CSSSupportsRule where
  toGObject = GObject . castRef . unCSSSupportsRule
  unsafeCastGObject = CSSSupportsRule . castRef . unGObject

castToCSSSupportsRule :: IsGObject obj => obj -> CSSSupportsRule
castToCSSSupportsRule = castTo gTypeCSSSupportsRule "CSSSupportsRule"

foreign import javascript unsafe "window[\"CSSSupportsRule\"]" gTypeCSSSupportsRule' :: JSRef GType
gTypeCSSSupportsRule = GType gTypeCSSSupportsRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSUnknownRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSUnknownRule Mozilla CSSUnknownRule documentation>
newtype CSSUnknownRule = CSSUnknownRule (JSRef CSSUnknownRule) deriving (Eq)

unCSSUnknownRule (CSSUnknownRule o) = o

instance ToJSRef CSSUnknownRule where
  toJSRef = return . unCSSUnknownRule
  {-# INLINE toJSRef #-}

instance FromJSRef CSSUnknownRule where
  fromJSRef = return . fmap CSSUnknownRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule CSSUnknownRule
instance IsGObject CSSUnknownRule where
  toGObject = GObject . castRef . unCSSUnknownRule
  unsafeCastGObject = CSSUnknownRule . castRef . unGObject

castToCSSUnknownRule :: IsGObject obj => obj -> CSSUnknownRule
castToCSSUnknownRule = castTo gTypeCSSUnknownRule "CSSUnknownRule"

foreign import javascript unsafe "window[\"CSSUnknownRule\"]" gTypeCSSUnknownRule' :: JSRef GType
gTypeCSSUnknownRule = GType gTypeCSSUnknownRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSValue".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue Mozilla CSSValue documentation>
newtype CSSValue = CSSValue (JSRef CSSValue) deriving (Eq)

unCSSValue (CSSValue o) = o

instance ToJSRef CSSValue where
  toJSRef = return . unCSSValue
  {-# INLINE toJSRef #-}

instance FromJSRef CSSValue where
  fromJSRef = return . fmap CSSValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsCSSValue o
toCSSValue :: IsCSSValue o => o -> CSSValue
toCSSValue = unsafeCastGObject . toGObject

instance IsCSSValue CSSValue
instance IsGObject CSSValue where
  toGObject = GObject . castRef . unCSSValue
  unsafeCastGObject = CSSValue . castRef . unGObject

castToCSSValue :: IsGObject obj => obj -> CSSValue
castToCSSValue = castTo gTypeCSSValue "CSSValue"

foreign import javascript unsafe "window[\"CSSValue\"]" gTypeCSSValue' :: JSRef GType
gTypeCSSValue = GType gTypeCSSValue'
#else
type IsCSSValue o = CSSValueClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSValueList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList Mozilla CSSValueList documentation>
newtype CSSValueList = CSSValueList (JSRef CSSValueList) deriving (Eq)

unCSSValueList (CSSValueList o) = o

instance ToJSRef CSSValueList where
  toJSRef = return . unCSSValueList
  {-# INLINE toJSRef #-}

instance FromJSRef CSSValueList where
  fromJSRef = return . fmap CSSValueList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsCSSValue o => IsCSSValueList o
toCSSValueList :: IsCSSValueList o => o -> CSSValueList
toCSSValueList = unsafeCastGObject . toGObject

instance IsCSSValueList CSSValueList
instance IsCSSValue CSSValueList
instance IsGObject CSSValueList where
  toGObject = GObject . castRef . unCSSValueList
  unsafeCastGObject = CSSValueList . castRef . unGObject

castToCSSValueList :: IsGObject obj => obj -> CSSValueList
castToCSSValueList = castTo gTypeCSSValueList "CSSValueList"

foreign import javascript unsafe "window[\"CSSValueList\"]" gTypeCSSValueList' :: JSRef GType
gTypeCSSValueList = GType gTypeCSSValueList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasGradient".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient Mozilla CanvasGradient documentation>
newtype CanvasGradient = CanvasGradient (JSRef CanvasGradient) deriving (Eq)

unCanvasGradient (CanvasGradient o) = o

instance ToJSRef CanvasGradient where
  toJSRef = return . unCanvasGradient
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasGradient where
  fromJSRef = return . fmap CanvasGradient . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CanvasGradient where
  toGObject = GObject . castRef . unCanvasGradient
  unsafeCastGObject = CanvasGradient . castRef . unGObject

castToCanvasGradient :: IsGObject obj => obj -> CanvasGradient
castToCanvasGradient = castTo gTypeCanvasGradient "CanvasGradient"

foreign import javascript unsafe "window[\"CanvasGradient\"]" gTypeCanvasGradient' :: JSRef GType
gTypeCanvasGradient = GType gTypeCanvasGradient'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasPattern".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern Mozilla CanvasPattern documentation>
newtype CanvasPattern = CanvasPattern (JSRef CanvasPattern) deriving (Eq)

unCanvasPattern (CanvasPattern o) = o

instance ToJSRef CanvasPattern where
  toJSRef = return . unCanvasPattern
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasPattern where
  fromJSRef = return . fmap CanvasPattern . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CanvasPattern where
  toGObject = GObject . castRef . unCanvasPattern
  unsafeCastGObject = CanvasPattern . castRef . unGObject

castToCanvasPattern :: IsGObject obj => obj -> CanvasPattern
castToCanvasPattern = castTo gTypeCanvasPattern "CanvasPattern"

foreign import javascript unsafe "window[\"CanvasPattern\"]" gTypeCanvasPattern' :: JSRef GType
gTypeCanvasPattern = GType gTypeCanvasPattern'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasProxy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasProxy Mozilla CanvasProxy documentation>
newtype CanvasProxy = CanvasProxy (JSRef CanvasProxy) deriving (Eq)

unCanvasProxy (CanvasProxy o) = o

instance ToJSRef CanvasProxy where
  toJSRef = return . unCanvasProxy
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasProxy where
  fromJSRef = return . fmap CanvasProxy . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CanvasProxy where
  toGObject = GObject . castRef . unCanvasProxy
  unsafeCastGObject = CanvasProxy . castRef . unGObject

castToCanvasProxy :: IsGObject obj => obj -> CanvasProxy
castToCanvasProxy = castTo gTypeCanvasProxy "CanvasProxy"

foreign import javascript unsafe "window[\"CanvasProxy\"]" gTypeCanvasProxy' :: JSRef GType
gTypeCanvasProxy = GType gTypeCanvasProxy'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasRenderingContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext Mozilla CanvasRenderingContext documentation>
newtype CanvasRenderingContext = CanvasRenderingContext (JSRef CanvasRenderingContext) deriving (Eq)

unCanvasRenderingContext (CanvasRenderingContext o) = o

instance ToJSRef CanvasRenderingContext where
  toJSRef = return . unCanvasRenderingContext
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasRenderingContext where
  fromJSRef = return . fmap CanvasRenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsCanvasRenderingContext o
toCanvasRenderingContext :: IsCanvasRenderingContext o => o -> CanvasRenderingContext
toCanvasRenderingContext = unsafeCastGObject . toGObject

instance IsCanvasRenderingContext CanvasRenderingContext
instance IsGObject CanvasRenderingContext where
  toGObject = GObject . castRef . unCanvasRenderingContext
  unsafeCastGObject = CanvasRenderingContext . castRef . unGObject

castToCanvasRenderingContext :: IsGObject obj => obj -> CanvasRenderingContext
castToCanvasRenderingContext = castTo gTypeCanvasRenderingContext "CanvasRenderingContext"

foreign import javascript unsafe "window[\"CanvasRenderingContext\"]" gTypeCanvasRenderingContext' :: JSRef GType
gTypeCanvasRenderingContext = GType gTypeCanvasRenderingContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasRenderingContext2D".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D Mozilla CanvasRenderingContext2D documentation>
newtype CanvasRenderingContext2D = CanvasRenderingContext2D (JSRef CanvasRenderingContext2D) deriving (Eq)

unCanvasRenderingContext2D (CanvasRenderingContext2D o) = o

instance ToJSRef CanvasRenderingContext2D where
  toJSRef = return . unCanvasRenderingContext2D
  {-# INLINE toJSRef #-}

instance FromJSRef CanvasRenderingContext2D where
  fromJSRef = return . fmap CanvasRenderingContext2D . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCanvasRenderingContext CanvasRenderingContext2D
instance IsGObject CanvasRenderingContext2D where
  toGObject = GObject . castRef . unCanvasRenderingContext2D
  unsafeCastGObject = CanvasRenderingContext2D . castRef . unGObject

castToCanvasRenderingContext2D :: IsGObject obj => obj -> CanvasRenderingContext2D
castToCanvasRenderingContext2D = castTo gTypeCanvasRenderingContext2D "CanvasRenderingContext2D"

foreign import javascript unsafe "window[\"CanvasRenderingContext2D\"]" gTypeCanvasRenderingContext2D' :: JSRef GType
gTypeCanvasRenderingContext2D = GType gTypeCanvasRenderingContext2D'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CapabilityRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange Mozilla CapabilityRange documentation>
newtype CapabilityRange = CapabilityRange (JSRef CapabilityRange) deriving (Eq)

unCapabilityRange (CapabilityRange o) = o

instance ToJSRef CapabilityRange where
  toJSRef = return . unCapabilityRange
  {-# INLINE toJSRef #-}

instance FromJSRef CapabilityRange where
  fromJSRef = return . fmap CapabilityRange . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CapabilityRange where
  toGObject = GObject . castRef . unCapabilityRange
  unsafeCastGObject = CapabilityRange . castRef . unGObject

castToCapabilityRange :: IsGObject obj => obj -> CapabilityRange
castToCapabilityRange = castTo gTypeCapabilityRange "CapabilityRange"

foreign import javascript unsafe "window[\"CapabilityRange\"]" gTypeCapabilityRange' :: JSRef GType
gTypeCapabilityRange = GType gTypeCapabilityRange'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChannelMergerNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelMergerNode Mozilla ChannelMergerNode documentation>
newtype ChannelMergerNode = ChannelMergerNode (JSRef ChannelMergerNode) deriving (Eq)

unChannelMergerNode (ChannelMergerNode o) = o

instance ToJSRef ChannelMergerNode where
  toJSRef = return . unChannelMergerNode
  {-# INLINE toJSRef #-}

instance FromJSRef ChannelMergerNode where
  fromJSRef = return . fmap ChannelMergerNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode ChannelMergerNode
instance IsEventTarget ChannelMergerNode
instance IsGObject ChannelMergerNode where
  toGObject = GObject . castRef . unChannelMergerNode
  unsafeCastGObject = ChannelMergerNode . castRef . unGObject

castToChannelMergerNode :: IsGObject obj => obj -> ChannelMergerNode
castToChannelMergerNode = castTo gTypeChannelMergerNode "ChannelMergerNode"

foreign import javascript unsafe "window[\"ChannelMergerNode\"]" gTypeChannelMergerNode' :: JSRef GType
gTypeChannelMergerNode = GType gTypeChannelMergerNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChannelSplitterNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelSplitterNode Mozilla ChannelSplitterNode documentation>
newtype ChannelSplitterNode = ChannelSplitterNode (JSRef ChannelSplitterNode) deriving (Eq)

unChannelSplitterNode (ChannelSplitterNode o) = o

instance ToJSRef ChannelSplitterNode where
  toJSRef = return . unChannelSplitterNode
  {-# INLINE toJSRef #-}

instance FromJSRef ChannelSplitterNode where
  fromJSRef = return . fmap ChannelSplitterNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode ChannelSplitterNode
instance IsEventTarget ChannelSplitterNode
instance IsGObject ChannelSplitterNode where
  toGObject = GObject . castRef . unChannelSplitterNode
  unsafeCastGObject = ChannelSplitterNode . castRef . unGObject

castToChannelSplitterNode :: IsGObject obj => obj -> ChannelSplitterNode
castToChannelSplitterNode = castTo gTypeChannelSplitterNode "ChannelSplitterNode"

foreign import javascript unsafe "window[\"ChannelSplitterNode\"]" gTypeChannelSplitterNode' :: JSRef GType
gTypeChannelSplitterNode = GType gTypeChannelSplitterNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CharacterData".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData Mozilla CharacterData documentation>
newtype CharacterData = CharacterData (JSRef CharacterData) deriving (Eq)

unCharacterData (CharacterData o) = o

instance ToJSRef CharacterData where
  toJSRef = return . unCharacterData
  {-# INLINE toJSRef #-}

instance FromJSRef CharacterData where
  fromJSRef = return . fmap CharacterData . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsNode o => IsCharacterData o
toCharacterData :: IsCharacterData o => o -> CharacterData
toCharacterData = unsafeCastGObject . toGObject

instance IsCharacterData CharacterData
instance IsNode CharacterData
instance IsEventTarget CharacterData
instance IsGObject CharacterData where
  toGObject = GObject . castRef . unCharacterData
  unsafeCastGObject = CharacterData . castRef . unGObject

castToCharacterData :: IsGObject obj => obj -> CharacterData
castToCharacterData = castTo gTypeCharacterData "CharacterData"

foreign import javascript unsafe "window[\"CharacterData\"]" gTypeCharacterData' :: JSRef GType
gTypeCharacterData = GType gTypeCharacterData'
#else
type IsCharacterData o = CharacterDataClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChildNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode Mozilla ChildNode documentation>
newtype ChildNode = ChildNode (JSRef ChildNode) deriving (Eq)

unChildNode (ChildNode o) = o

instance ToJSRef ChildNode where
  toJSRef = return . unChildNode
  {-# INLINE toJSRef #-}

instance FromJSRef ChildNode where
  fromJSRef = return . fmap ChildNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ChildNode where
  toGObject = GObject . castRef . unChildNode
  unsafeCastGObject = ChildNode . castRef . unGObject

castToChildNode :: IsGObject obj => obj -> ChildNode
castToChildNode = castTo gTypeChildNode "ChildNode"

foreign import javascript unsafe "window[\"ChildNode\"]" gTypeChildNode' :: JSRef GType
gTypeChildNode = GType gTypeChildNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ClientRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect Mozilla ClientRect documentation>
newtype ClientRect = ClientRect (JSRef ClientRect) deriving (Eq)

unClientRect (ClientRect o) = o

instance ToJSRef ClientRect where
  toJSRef = return . unClientRect
  {-# INLINE toJSRef #-}

instance FromJSRef ClientRect where
  fromJSRef = return . fmap ClientRect . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ClientRect where
  toGObject = GObject . castRef . unClientRect
  unsafeCastGObject = ClientRect . castRef . unGObject

castToClientRect :: IsGObject obj => obj -> ClientRect
castToClientRect = castTo gTypeClientRect "ClientRect"

foreign import javascript unsafe "window[\"ClientRect\"]" gTypeClientRect' :: JSRef GType
gTypeClientRect = GType gTypeClientRect'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ClientRectList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList Mozilla ClientRectList documentation>
newtype ClientRectList = ClientRectList (JSRef ClientRectList) deriving (Eq)

unClientRectList (ClientRectList o) = o

instance ToJSRef ClientRectList where
  toJSRef = return . unClientRectList
  {-# INLINE toJSRef #-}

instance FromJSRef ClientRectList where
  fromJSRef = return . fmap ClientRectList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ClientRectList where
  toGObject = GObject . castRef . unClientRectList
  unsafeCastGObject = ClientRectList . castRef . unGObject

castToClientRectList :: IsGObject obj => obj -> ClientRectList
castToClientRectList = castTo gTypeClientRectList "ClientRectList"

foreign import javascript unsafe "window[\"ClientRectList\"]" gTypeClientRectList' :: JSRef GType
gTypeClientRectList = GType gTypeClientRectList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CloseEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent Mozilla CloseEvent documentation>
newtype CloseEvent = CloseEvent (JSRef CloseEvent) deriving (Eq)

unCloseEvent (CloseEvent o) = o

instance ToJSRef CloseEvent where
  toJSRef = return . unCloseEvent
  {-# INLINE toJSRef #-}

instance FromJSRef CloseEvent where
  fromJSRef = return . fmap CloseEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent CloseEvent
instance IsGObject CloseEvent where
  toGObject = GObject . castRef . unCloseEvent
  unsafeCastGObject = CloseEvent . castRef . unGObject

castToCloseEvent :: IsGObject obj => obj -> CloseEvent
castToCloseEvent = castTo gTypeCloseEvent "CloseEvent"

foreign import javascript unsafe "window[\"CloseEvent\"]" gTypeCloseEvent' :: JSRef GType
gTypeCloseEvent = GType gTypeCloseEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CommandLineAPIHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost Mozilla CommandLineAPIHost documentation>
newtype CommandLineAPIHost = CommandLineAPIHost (JSRef CommandLineAPIHost) deriving (Eq)

unCommandLineAPIHost (CommandLineAPIHost o) = o

instance ToJSRef CommandLineAPIHost where
  toJSRef = return . unCommandLineAPIHost
  {-# INLINE toJSRef #-}

instance FromJSRef CommandLineAPIHost where
  fromJSRef = return . fmap CommandLineAPIHost . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CommandLineAPIHost where
  toGObject = GObject . castRef . unCommandLineAPIHost
  unsafeCastGObject = CommandLineAPIHost . castRef . unGObject

castToCommandLineAPIHost :: IsGObject obj => obj -> CommandLineAPIHost
castToCommandLineAPIHost = castTo gTypeCommandLineAPIHost "CommandLineAPIHost"

foreign import javascript unsafe "window[\"CommandLineAPIHost\"]" gTypeCommandLineAPIHost' :: JSRef GType
gTypeCommandLineAPIHost = GType gTypeCommandLineAPIHost'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Comment".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CharacterData"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Comment Mozilla Comment documentation>
newtype Comment = Comment (JSRef Comment) deriving (Eq)

unComment (Comment o) = o

instance ToJSRef Comment where
  toJSRef = return . unComment
  {-# INLINE toJSRef #-}

instance FromJSRef Comment where
  fromJSRef = return . fmap Comment . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCharacterData Comment
instance IsNode Comment
instance IsEventTarget Comment
instance IsGObject Comment where
  toGObject = GObject . castRef . unComment
  unsafeCastGObject = Comment . castRef . unGObject

castToComment :: IsGObject obj => obj -> Comment
castToComment = castTo gTypeComment "Comment"

foreign import javascript unsafe "window[\"Comment\"]" gTypeComment' :: JSRef GType
gTypeComment = GType gTypeComment'
#else
type IsComment o = CommentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CompositionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent Mozilla CompositionEvent documentation>
newtype CompositionEvent = CompositionEvent (JSRef CompositionEvent) deriving (Eq)

unCompositionEvent (CompositionEvent o) = o

instance ToJSRef CompositionEvent where
  toJSRef = return . unCompositionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef CompositionEvent where
  fromJSRef = return . fmap CompositionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent CompositionEvent
instance IsEvent CompositionEvent
instance IsGObject CompositionEvent where
  toGObject = GObject . castRef . unCompositionEvent
  unsafeCastGObject = CompositionEvent . castRef . unGObject

castToCompositionEvent :: IsGObject obj => obj -> CompositionEvent
castToCompositionEvent = castTo gTypeCompositionEvent "CompositionEvent"

foreign import javascript unsafe "window[\"CompositionEvent\"]" gTypeCompositionEvent' :: JSRef GType
gTypeCompositionEvent = GType gTypeCompositionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ConvolverNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode Mozilla ConvolverNode documentation>
newtype ConvolverNode = ConvolverNode (JSRef ConvolverNode) deriving (Eq)

unConvolverNode (ConvolverNode o) = o

instance ToJSRef ConvolverNode where
  toJSRef = return . unConvolverNode
  {-# INLINE toJSRef #-}

instance FromJSRef ConvolverNode where
  fromJSRef = return . fmap ConvolverNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode ConvolverNode
instance IsEventTarget ConvolverNode
instance IsGObject ConvolverNode where
  toGObject = GObject . castRef . unConvolverNode
  unsafeCastGObject = ConvolverNode . castRef . unGObject

castToConvolverNode :: IsGObject obj => obj -> ConvolverNode
castToConvolverNode = castTo gTypeConvolverNode "ConvolverNode"

foreign import javascript unsafe "window[\"ConvolverNode\"]" gTypeConvolverNode' :: JSRef GType
gTypeConvolverNode = GType gTypeConvolverNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Coordinates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates Mozilla Coordinates documentation>
newtype Coordinates = Coordinates (JSRef Coordinates) deriving (Eq)

unCoordinates (Coordinates o) = o

instance ToJSRef Coordinates where
  toJSRef = return . unCoordinates
  {-# INLINE toJSRef #-}

instance FromJSRef Coordinates where
  fromJSRef = return . fmap Coordinates . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Coordinates where
  toGObject = GObject . castRef . unCoordinates
  unsafeCastGObject = Coordinates . castRef . unGObject

castToCoordinates :: IsGObject obj => obj -> Coordinates
castToCoordinates = castTo gTypeCoordinates "Coordinates"

foreign import javascript unsafe "window[\"Coordinates\"]" gTypeCoordinates' :: JSRef GType
gTypeCoordinates = GType gTypeCoordinates'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Counter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Counter Mozilla Counter documentation>
newtype Counter = Counter (JSRef Counter) deriving (Eq)

unCounter (Counter o) = o

instance ToJSRef Counter where
  toJSRef = return . unCounter
  {-# INLINE toJSRef #-}

instance FromJSRef Counter where
  fromJSRef = return . fmap Counter . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Counter where
  toGObject = GObject . castRef . unCounter
  unsafeCastGObject = Counter . castRef . unGObject

castToCounter :: IsGObject obj => obj -> Counter
castToCounter = castTo gTypeCounter "Counter"

foreign import javascript unsafe "window[\"Counter\"]" gTypeCounter' :: JSRef GType
gTypeCounter = GType gTypeCounter'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Crypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Crypto Mozilla Crypto documentation>
newtype Crypto = Crypto (JSRef Crypto) deriving (Eq)

unCrypto (Crypto o) = o

instance ToJSRef Crypto where
  toJSRef = return . unCrypto
  {-# INLINE toJSRef #-}

instance FromJSRef Crypto where
  fromJSRef = return . fmap Crypto . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Crypto where
  toGObject = GObject . castRef . unCrypto
  unsafeCastGObject = Crypto . castRef . unGObject

castToCrypto :: IsGObject obj => obj -> Crypto
castToCrypto = castTo gTypeCrypto "Crypto"

foreign import javascript unsafe "window[\"Crypto\"]" gTypeCrypto' :: JSRef GType
gTypeCrypto = GType gTypeCrypto'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CryptoKey".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Key Mozilla Key documentation>
newtype CryptoKey = CryptoKey (JSRef CryptoKey) deriving (Eq)

unCryptoKey (CryptoKey o) = o

instance ToJSRef CryptoKey where
  toJSRef = return . unCryptoKey
  {-# INLINE toJSRef #-}

instance FromJSRef CryptoKey where
  fromJSRef = return . fmap CryptoKey . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CryptoKey where
  toGObject = GObject . castRef . unCryptoKey
  unsafeCastGObject = CryptoKey . castRef . unGObject

castToCryptoKey :: IsGObject obj => obj -> CryptoKey
castToCryptoKey = castTo gTypeCryptoKey "CryptoKey"

foreign import javascript unsafe "window[\"Key\"]" gTypeCryptoKey' :: JSRef GType
gTypeCryptoKey = GType gTypeCryptoKey'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CryptoKeyPair".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/KeyPair Mozilla KeyPair documentation>
newtype CryptoKeyPair = CryptoKeyPair (JSRef CryptoKeyPair) deriving (Eq)

unCryptoKeyPair (CryptoKeyPair o) = o

instance ToJSRef CryptoKeyPair where
  toJSRef = return . unCryptoKeyPair
  {-# INLINE toJSRef #-}

instance FromJSRef CryptoKeyPair where
  fromJSRef = return . fmap CryptoKeyPair . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject CryptoKeyPair where
  toGObject = GObject . castRef . unCryptoKeyPair
  unsafeCastGObject = CryptoKeyPair . castRef . unGObject

castToCryptoKeyPair :: IsGObject obj => obj -> CryptoKeyPair
castToCryptoKeyPair = castTo gTypeCryptoKeyPair "CryptoKeyPair"

foreign import javascript unsafe "window[\"KeyPair\"]" gTypeCryptoKeyPair' :: JSRef GType
gTypeCryptoKeyPair = GType gTypeCryptoKeyPair'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CustomEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent Mozilla CustomEvent documentation>
newtype CustomEvent = CustomEvent (JSRef CustomEvent) deriving (Eq)

unCustomEvent (CustomEvent o) = o

instance ToJSRef CustomEvent where
  toJSRef = return . unCustomEvent
  {-# INLINE toJSRef #-}

instance FromJSRef CustomEvent where
  fromJSRef = return . fmap CustomEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent CustomEvent
instance IsGObject CustomEvent where
  toGObject = GObject . castRef . unCustomEvent
  unsafeCastGObject = CustomEvent . castRef . unGObject

castToCustomEvent :: IsGObject obj => obj -> CustomEvent
castToCustomEvent = castTo gTypeCustomEvent "CustomEvent"

foreign import javascript unsafe "window[\"CustomEvent\"]" gTypeCustomEvent' :: JSRef GType
gTypeCustomEvent = GType gTypeCustomEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMApplicationCache".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache Mozilla DOMApplicationCache documentation>
newtype DOMApplicationCache = DOMApplicationCache (JSRef DOMApplicationCache) deriving (Eq)

unDOMApplicationCache (DOMApplicationCache o) = o

instance ToJSRef DOMApplicationCache where
  toJSRef = return . unDOMApplicationCache
  {-# INLINE toJSRef #-}

instance FromJSRef DOMApplicationCache where
  fromJSRef = return . fmap DOMApplicationCache . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget DOMApplicationCache
instance IsGObject DOMApplicationCache where
  toGObject = GObject . castRef . unDOMApplicationCache
  unsafeCastGObject = DOMApplicationCache . castRef . unGObject

castToDOMApplicationCache :: IsGObject obj => obj -> DOMApplicationCache
castToDOMApplicationCache = castTo gTypeDOMApplicationCache "DOMApplicationCache"

foreign import javascript unsafe "window[\"DOMApplicationCache\"]" gTypeDOMApplicationCache' :: JSRef GType
gTypeDOMApplicationCache = GType gTypeDOMApplicationCache'
#else
type IsDOMApplicationCache o = DOMApplicationCacheClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMError Mozilla DOMError documentation>
newtype DOMError = DOMError (JSRef DOMError) deriving (Eq)

unDOMError (DOMError o) = o

instance ToJSRef DOMError where
  toJSRef = return . unDOMError
  {-# INLINE toJSRef #-}

instance FromJSRef DOMError where
  fromJSRef = return . fmap DOMError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDOMError o
toDOMError :: IsDOMError o => o -> DOMError
toDOMError = unsafeCastGObject . toGObject

instance IsDOMError DOMError
instance IsGObject DOMError where
  toGObject = GObject . castRef . unDOMError
  unsafeCastGObject = DOMError . castRef . unGObject

castToDOMError :: IsGObject obj => obj -> DOMError
castToDOMError = castTo gTypeDOMError "DOMError"

foreign import javascript unsafe "window[\"DOMError\"]" gTypeDOMError' :: JSRef GType
gTypeDOMError = GType gTypeDOMError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMFormData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation>
newtype DOMFormData = DOMFormData (JSRef DOMFormData) deriving (Eq)

unDOMFormData (DOMFormData o) = o

instance ToJSRef DOMFormData where
  toJSRef = return . unDOMFormData
  {-# INLINE toJSRef #-}

instance FromJSRef DOMFormData where
  fromJSRef = return . fmap DOMFormData . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMFormData where
  toGObject = GObject . castRef . unDOMFormData
  unsafeCastGObject = DOMFormData . castRef . unGObject

castToDOMFormData :: IsGObject obj => obj -> DOMFormData
castToDOMFormData = castTo gTypeDOMFormData "DOMFormData"

foreign import javascript unsafe "window[\"FormData\"]" gTypeDOMFormData' :: JSRef GType
gTypeDOMFormData = GType gTypeDOMFormData'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMImplementation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation Mozilla DOMImplementation documentation>
newtype DOMImplementation = DOMImplementation (JSRef DOMImplementation) deriving (Eq)

unDOMImplementation (DOMImplementation o) = o

instance ToJSRef DOMImplementation where
  toJSRef = return . unDOMImplementation
  {-# INLINE toJSRef #-}

instance FromJSRef DOMImplementation where
  fromJSRef = return . fmap DOMImplementation . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMImplementation where
  toGObject = GObject . castRef . unDOMImplementation
  unsafeCastGObject = DOMImplementation . castRef . unGObject

castToDOMImplementation :: IsGObject obj => obj -> DOMImplementation
castToDOMImplementation = castTo gTypeDOMImplementation "DOMImplementation"

foreign import javascript unsafe "window[\"DOMImplementation\"]" gTypeDOMImplementation' :: JSRef GType
gTypeDOMImplementation = GType gTypeDOMImplementation'
#else
type IsDOMImplementation o = DOMImplementationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMMimeType".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeType Mozilla MimeType documentation>
newtype DOMMimeType = DOMMimeType (JSRef DOMMimeType) deriving (Eq)

unDOMMimeType (DOMMimeType o) = o

instance ToJSRef DOMMimeType where
  toJSRef = return . unDOMMimeType
  {-# INLINE toJSRef #-}

instance FromJSRef DOMMimeType where
  fromJSRef = return . fmap DOMMimeType . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMMimeType where
  toGObject = GObject . castRef . unDOMMimeType
  unsafeCastGObject = DOMMimeType . castRef . unGObject

castToDOMMimeType :: IsGObject obj => obj -> DOMMimeType
castToDOMMimeType = castTo gTypeDOMMimeType "DOMMimeType"

foreign import javascript unsafe "window[\"MimeType\"]" gTypeDOMMimeType' :: JSRef GType
gTypeDOMMimeType = GType gTypeDOMMimeType'
#else
type IsDOMMimeType o = DOMMimeTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMMimeTypeArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray Mozilla MimeTypeArray documentation>
newtype DOMMimeTypeArray = DOMMimeTypeArray (JSRef DOMMimeTypeArray) deriving (Eq)

unDOMMimeTypeArray (DOMMimeTypeArray o) = o

instance ToJSRef DOMMimeTypeArray where
  toJSRef = return . unDOMMimeTypeArray
  {-# INLINE toJSRef #-}

instance FromJSRef DOMMimeTypeArray where
  fromJSRef = return . fmap DOMMimeTypeArray . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMMimeTypeArray where
  toGObject = GObject . castRef . unDOMMimeTypeArray
  unsafeCastGObject = DOMMimeTypeArray . castRef . unGObject

castToDOMMimeTypeArray :: IsGObject obj => obj -> DOMMimeTypeArray
castToDOMMimeTypeArray = castTo gTypeDOMMimeTypeArray "DOMMimeTypeArray"

foreign import javascript unsafe "window[\"MimeTypeArray\"]" gTypeDOMMimeTypeArray' :: JSRef GType
gTypeDOMMimeTypeArray = GType gTypeDOMMimeTypeArray'
#else
type IsDOMMimeTypeArray o = DOMMimeTypeArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMNamedFlowCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection Mozilla WebKitNamedFlowCollection documentation>
newtype DOMNamedFlowCollection = DOMNamedFlowCollection (JSRef DOMNamedFlowCollection) deriving (Eq)

unDOMNamedFlowCollection (DOMNamedFlowCollection o) = o

instance ToJSRef DOMNamedFlowCollection where
  toJSRef = return . unDOMNamedFlowCollection
  {-# INLINE toJSRef #-}

instance FromJSRef DOMNamedFlowCollection where
  fromJSRef = return . fmap DOMNamedFlowCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMNamedFlowCollection where
  toGObject = GObject . castRef . unDOMNamedFlowCollection
  unsafeCastGObject = DOMNamedFlowCollection . castRef . unGObject

castToDOMNamedFlowCollection :: IsGObject obj => obj -> DOMNamedFlowCollection
castToDOMNamedFlowCollection = castTo gTypeDOMNamedFlowCollection "DOMNamedFlowCollection"

foreign import javascript unsafe "window[\"WebKitNamedFlowCollection\"]" gTypeDOMNamedFlowCollection' :: JSRef GType
gTypeDOMNamedFlowCollection = GType gTypeDOMNamedFlowCollection'
#else
type IsDOMNamedFlowCollection o = DOMNamedFlowCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMParser".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation>
newtype DOMParser = DOMParser (JSRef DOMParser) deriving (Eq)

unDOMParser (DOMParser o) = o

instance ToJSRef DOMParser where
  toJSRef = return . unDOMParser
  {-# INLINE toJSRef #-}

instance FromJSRef DOMParser where
  fromJSRef = return . fmap DOMParser . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMParser where
  toGObject = GObject . castRef . unDOMParser
  unsafeCastGObject = DOMParser . castRef . unGObject

castToDOMParser :: IsGObject obj => obj -> DOMParser
castToDOMParser = castTo gTypeDOMParser "DOMParser"

foreign import javascript unsafe "window[\"DOMParser\"]" gTypeDOMParser' :: JSRef GType
gTypeDOMParser = GType gTypeDOMParser'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMPath".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation>
newtype DOMPath = DOMPath (JSRef DOMPath) deriving (Eq)

unDOMPath (DOMPath o) = o

instance ToJSRef DOMPath where
  toJSRef = return . unDOMPath
  {-# INLINE toJSRef #-}

instance FromJSRef DOMPath where
  fromJSRef = return . fmap DOMPath . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMPath where
  toGObject = GObject . castRef . unDOMPath
  unsafeCastGObject = DOMPath . castRef . unGObject

castToDOMPath :: IsGObject obj => obj -> DOMPath
castToDOMPath = castTo gTypeDOMPath "DOMPath"

foreign import javascript unsafe "window[\"Path2D\"]" gTypeDOMPath' :: JSRef GType
gTypeDOMPath = GType gTypeDOMPath'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMPlugin".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Plugin Mozilla Plugin documentation>
newtype DOMPlugin = DOMPlugin (JSRef DOMPlugin) deriving (Eq)

unDOMPlugin (DOMPlugin o) = o

instance ToJSRef DOMPlugin where
  toJSRef = return . unDOMPlugin
  {-# INLINE toJSRef #-}

instance FromJSRef DOMPlugin where
  fromJSRef = return . fmap DOMPlugin . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMPlugin where
  toGObject = GObject . castRef . unDOMPlugin
  unsafeCastGObject = DOMPlugin . castRef . unGObject

castToDOMPlugin :: IsGObject obj => obj -> DOMPlugin
castToDOMPlugin = castTo gTypeDOMPlugin "DOMPlugin"

foreign import javascript unsafe "window[\"Plugin\"]" gTypeDOMPlugin' :: JSRef GType
gTypeDOMPlugin = GType gTypeDOMPlugin'
#else
type IsDOMPlugin o = DOMPluginClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMPluginArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray Mozilla PluginArray documentation>
newtype DOMPluginArray = DOMPluginArray (JSRef DOMPluginArray) deriving (Eq)

unDOMPluginArray (DOMPluginArray o) = o

instance ToJSRef DOMPluginArray where
  toJSRef = return . unDOMPluginArray
  {-# INLINE toJSRef #-}

instance FromJSRef DOMPluginArray where
  fromJSRef = return . fmap DOMPluginArray . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMPluginArray where
  toGObject = GObject . castRef . unDOMPluginArray
  unsafeCastGObject = DOMPluginArray . castRef . unGObject

castToDOMPluginArray :: IsGObject obj => obj -> DOMPluginArray
castToDOMPluginArray = castTo gTypeDOMPluginArray "DOMPluginArray"

foreign import javascript unsafe "window[\"PluginArray\"]" gTypeDOMPluginArray' :: JSRef GType
gTypeDOMPluginArray = GType gTypeDOMPluginArray'
#else
type IsDOMPluginArray o = DOMPluginArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMSecurityPolicy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy Mozilla SecurityPolicy documentation>
newtype DOMSecurityPolicy = DOMSecurityPolicy (JSRef DOMSecurityPolicy) deriving (Eq)

unDOMSecurityPolicy (DOMSecurityPolicy o) = o

instance ToJSRef DOMSecurityPolicy where
  toJSRef = return . unDOMSecurityPolicy
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSecurityPolicy where
  fromJSRef = return . fmap DOMSecurityPolicy . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMSecurityPolicy where
  toGObject = GObject . castRef . unDOMSecurityPolicy
  unsafeCastGObject = DOMSecurityPolicy . castRef . unGObject

castToDOMSecurityPolicy :: IsGObject obj => obj -> DOMSecurityPolicy
castToDOMSecurityPolicy = castTo gTypeDOMSecurityPolicy "DOMSecurityPolicy"

foreign import javascript unsafe "window[\"SecurityPolicy\"]" gTypeDOMSecurityPolicy' :: JSRef GType
gTypeDOMSecurityPolicy = GType gTypeDOMSecurityPolicy'
#else
type IsDOMSecurityPolicy o = DOMSecurityPolicyClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMSelection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Selection Mozilla Selection documentation>
newtype DOMSelection = DOMSelection (JSRef DOMSelection) deriving (Eq)

unDOMSelection (DOMSelection o) = o

instance ToJSRef DOMSelection where
  toJSRef = return . unDOMSelection
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSelection where
  fromJSRef = return . fmap DOMSelection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMSelection where
  toGObject = GObject . castRef . unDOMSelection
  unsafeCastGObject = DOMSelection . castRef . unGObject

castToDOMSelection :: IsGObject obj => obj -> DOMSelection
castToDOMSelection = castTo gTypeDOMSelection "DOMSelection"

foreign import javascript unsafe "window[\"Selection\"]" gTypeDOMSelection' :: JSRef GType
gTypeDOMSelection = GType gTypeDOMSelection'
#else
type IsDOMSelection o = DOMSelectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMSettableTokenList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.DOMTokenList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList Mozilla DOMSettableTokenList documentation>
newtype DOMSettableTokenList = DOMSettableTokenList (JSRef DOMSettableTokenList) deriving (Eq)

unDOMSettableTokenList (DOMSettableTokenList o) = o

instance ToJSRef DOMSettableTokenList where
  toJSRef = return . unDOMSettableTokenList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMSettableTokenList where
  fromJSRef = return . fmap DOMSettableTokenList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsDOMTokenList DOMSettableTokenList
instance IsGObject DOMSettableTokenList where
  toGObject = GObject . castRef . unDOMSettableTokenList
  unsafeCastGObject = DOMSettableTokenList . castRef . unGObject

castToDOMSettableTokenList :: IsGObject obj => obj -> DOMSettableTokenList
castToDOMSettableTokenList = castTo gTypeDOMSettableTokenList "DOMSettableTokenList"

foreign import javascript unsafe "window[\"DOMSettableTokenList\"]" gTypeDOMSettableTokenList' :: JSRef GType
gTypeDOMSettableTokenList = GType gTypeDOMSettableTokenList'
#else
type IsDOMSettableTokenList o = DOMSettableTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList Mozilla DOMStringList documentation>
newtype DOMStringList = DOMStringList (JSRef DOMStringList) deriving (Eq)

unDOMStringList (DOMStringList o) = o

instance ToJSRef DOMStringList where
  toJSRef = return . unDOMStringList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMStringList where
  fromJSRef = return . fmap DOMStringList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMStringList where
  toGObject = GObject . castRef . unDOMStringList
  unsafeCastGObject = DOMStringList . castRef . unGObject

castToDOMStringList :: IsGObject obj => obj -> DOMStringList
castToDOMStringList = castTo gTypeDOMStringList "DOMStringList"

foreign import javascript unsafe "window[\"DOMStringList\"]" gTypeDOMStringList' :: JSRef GType
gTypeDOMStringList = GType gTypeDOMStringList'
#else
type IsDOMStringList o = DOMStringListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap Mozilla DOMStringMap documentation>
newtype DOMStringMap = DOMStringMap (JSRef DOMStringMap) deriving (Eq)

unDOMStringMap (DOMStringMap o) = o

instance ToJSRef DOMStringMap where
  toJSRef = return . unDOMStringMap
  {-# INLINE toJSRef #-}

instance FromJSRef DOMStringMap where
  fromJSRef = return . fmap DOMStringMap . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMStringMap where
  toGObject = GObject . castRef . unDOMStringMap
  unsafeCastGObject = DOMStringMap . castRef . unGObject

castToDOMStringMap :: IsGObject obj => obj -> DOMStringMap
castToDOMStringMap = castTo gTypeDOMStringMap "DOMStringMap"

foreign import javascript unsafe "window[\"DOMStringMap\"]" gTypeDOMStringMap' :: JSRef GType
gTypeDOMStringMap = GType gTypeDOMStringMap'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMTokenList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList Mozilla DOMTokenList documentation>
newtype DOMTokenList = DOMTokenList (JSRef DOMTokenList) deriving (Eq)

unDOMTokenList (DOMTokenList o) = o

instance ToJSRef DOMTokenList where
  toJSRef = return . unDOMTokenList
  {-# INLINE toJSRef #-}

instance FromJSRef DOMTokenList where
  fromJSRef = return . fmap DOMTokenList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsDOMTokenList o
toDOMTokenList :: IsDOMTokenList o => o -> DOMTokenList
toDOMTokenList = unsafeCastGObject . toGObject

instance IsDOMTokenList DOMTokenList
instance IsGObject DOMTokenList where
  toGObject = GObject . castRef . unDOMTokenList
  unsafeCastGObject = DOMTokenList . castRef . unGObject

castToDOMTokenList :: IsGObject obj => obj -> DOMTokenList
castToDOMTokenList = castTo gTypeDOMTokenList "DOMTokenList"

foreign import javascript unsafe "window[\"DOMTokenList\"]" gTypeDOMTokenList' :: JSRef GType
gTypeDOMTokenList = GType gTypeDOMTokenList'
#else
type IsDOMTokenList o = DOMTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMURL".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation>
newtype DOMURL = DOMURL (JSRef DOMURL) deriving (Eq)

unDOMURL (DOMURL o) = o

instance ToJSRef DOMURL where
  toJSRef = return . unDOMURL
  {-# INLINE toJSRef #-}

instance FromJSRef DOMURL where
  fromJSRef = return . fmap DOMURL . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMURL where
  toGObject = GObject . castRef . unDOMURL
  unsafeCastGObject = DOMURL . castRef . unGObject

castToDOMURL :: IsGObject obj => obj -> DOMURL
castToDOMURL = castTo gTypeDOMURL "DOMURL"

foreign import javascript unsafe "window[\"URL\"]" gTypeDOMURL' :: JSRef GType
gTypeDOMURL = GType gTypeDOMURL'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMWindow".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Window Mozilla Window documentation>
newtype DOMWindow = DOMWindow (JSRef DOMWindow) deriving (Eq)

unDOMWindow (DOMWindow o) = o

instance ToJSRef DOMWindow where
  toJSRef = return . unDOMWindow
  {-# INLINE toJSRef #-}

instance FromJSRef DOMWindow where
  fromJSRef = return . fmap DOMWindow . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget DOMWindow
instance IsGObject DOMWindow where
  toGObject = GObject . castRef . unDOMWindow
  unsafeCastGObject = DOMWindow . castRef . unGObject

castToDOMWindow :: IsGObject obj => obj -> DOMWindow
castToDOMWindow = castTo gTypeDOMWindow "DOMWindow"

foreign import javascript unsafe "window[\"Window\"]" gTypeDOMWindow' :: JSRef GType
gTypeDOMWindow = GType gTypeDOMWindow'
#else
type IsDOMWindow o = DOMWindowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMWindowCSS".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSS Mozilla CSS documentation>
newtype DOMWindowCSS = DOMWindowCSS (JSRef DOMWindowCSS) deriving (Eq)

unDOMWindowCSS (DOMWindowCSS o) = o

instance ToJSRef DOMWindowCSS where
  toJSRef = return . unDOMWindowCSS
  {-# INLINE toJSRef #-}

instance FromJSRef DOMWindowCSS where
  fromJSRef = return . fmap DOMWindowCSS . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMWindowCSS where
  toGObject = GObject . castRef . unDOMWindowCSS
  unsafeCastGObject = DOMWindowCSS . castRef . unGObject

castToDOMWindowCSS :: IsGObject obj => obj -> DOMWindowCSS
castToDOMWindowCSS = castTo gTypeDOMWindowCSS "DOMWindowCSS"

foreign import javascript unsafe "window[\"CSS\"]" gTypeDOMWindowCSS' :: JSRef GType
gTypeDOMWindowCSS = GType gTypeDOMWindowCSS'
#else
type IsDOMWindowCSS o = DOMWindowCSSClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.TextTrackCue"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation>
newtype DataCue = DataCue (JSRef DataCue) deriving (Eq)

unDataCue (DataCue o) = o

instance ToJSRef DataCue where
  toJSRef = return . unDataCue
  {-# INLINE toJSRef #-}

instance FromJSRef DataCue where
  fromJSRef = return . fmap DataCue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsTextTrackCue DataCue
instance IsEventTarget DataCue
instance IsGObject DataCue where
  toGObject = GObject . castRef . unDataCue
  unsafeCastGObject = DataCue . castRef . unGObject

castToDataCue :: IsGObject obj => obj -> DataCue
castToDataCue = castTo gTypeDataCue "DataCue"

foreign import javascript unsafe "window[\"WebKitDataCue\"]" gTypeDataCue' :: JSRef GType
gTypeDataCue = GType gTypeDataCue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransfer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer Mozilla DataTransfer documentation>
newtype DataTransfer = DataTransfer (JSRef DataTransfer) deriving (Eq)

unDataTransfer (DataTransfer o) = o

instance ToJSRef DataTransfer where
  toJSRef = return . unDataTransfer
  {-# INLINE toJSRef #-}

instance FromJSRef DataTransfer where
  fromJSRef = return . fmap DataTransfer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DataTransfer where
  toGObject = GObject . castRef . unDataTransfer
  unsafeCastGObject = DataTransfer . castRef . unGObject

castToDataTransfer :: IsGObject obj => obj -> DataTransfer
castToDataTransfer = castTo gTypeDataTransfer "DataTransfer"

foreign import javascript unsafe "window[\"DataTransfer\"]" gTypeDataTransfer' :: JSRef GType
gTypeDataTransfer = GType gTypeDataTransfer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransferItem".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem Mozilla DataTransferItem documentation>
newtype DataTransferItem = DataTransferItem (JSRef DataTransferItem) deriving (Eq)

unDataTransferItem (DataTransferItem o) = o

instance ToJSRef DataTransferItem where
  toJSRef = return . unDataTransferItem
  {-# INLINE toJSRef #-}

instance FromJSRef DataTransferItem where
  fromJSRef = return . fmap DataTransferItem . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DataTransferItem where
  toGObject = GObject . castRef . unDataTransferItem
  unsafeCastGObject = DataTransferItem . castRef . unGObject

castToDataTransferItem :: IsGObject obj => obj -> DataTransferItem
castToDataTransferItem = castTo gTypeDataTransferItem "DataTransferItem"

foreign import javascript unsafe "window[\"DataTransferItem\"]" gTypeDataTransferItem' :: JSRef GType
gTypeDataTransferItem = GType gTypeDataTransferItem'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransferItemList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList Mozilla DataTransferItemList documentation>
newtype DataTransferItemList = DataTransferItemList (JSRef DataTransferItemList) deriving (Eq)

unDataTransferItemList (DataTransferItemList o) = o

instance ToJSRef DataTransferItemList where
  toJSRef = return . unDataTransferItemList
  {-# INLINE toJSRef #-}

instance FromJSRef DataTransferItemList where
  fromJSRef = return . fmap DataTransferItemList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DataTransferItemList where
  toGObject = GObject . castRef . unDataTransferItemList
  unsafeCastGObject = DataTransferItemList . castRef . unGObject

castToDataTransferItemList :: IsGObject obj => obj -> DataTransferItemList
castToDataTransferItemList = castTo gTypeDataTransferItemList "DataTransferItemList"

foreign import javascript unsafe "window[\"DataTransferItemList\"]" gTypeDataTransferItemList' :: JSRef GType
gTypeDataTransferItemList = GType gTypeDataTransferItemList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Database".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Database Mozilla Database documentation>
newtype Database = Database (JSRef Database) deriving (Eq)

unDatabase (Database o) = o

instance ToJSRef Database where
  toJSRef = return . unDatabase
  {-# INLINE toJSRef #-}

instance FromJSRef Database where
  fromJSRef = return . fmap Database . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Database where
  toGObject = GObject . castRef . unDatabase
  unsafeCastGObject = Database . castRef . unGObject

castToDatabase :: IsGObject obj => obj -> Database
castToDatabase = castTo gTypeDatabase "Database"

foreign import javascript unsafe "window[\"Database\"]" gTypeDatabase' :: JSRef GType
gTypeDatabase = GType gTypeDatabase'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DatabaseCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation>
newtype DatabaseCallback = DatabaseCallback (JSRef DatabaseCallback) deriving (Eq)

unDatabaseCallback (DatabaseCallback o) = o

instance ToJSRef DatabaseCallback where
  toJSRef = return . unDatabaseCallback
  {-# INLINE toJSRef #-}

instance FromJSRef DatabaseCallback where
  fromJSRef = return . fmap DatabaseCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DatabaseCallback where
  toGObject = GObject . castRef . unDatabaseCallback
  unsafeCastGObject = DatabaseCallback . castRef . unGObject

castToDatabaseCallback :: IsGObject obj => obj -> DatabaseCallback
castToDatabaseCallback = castTo gTypeDatabaseCallback "DatabaseCallback"

foreign import javascript unsafe "window[\"DatabaseCallback\"]" gTypeDatabaseCallback' :: JSRef GType
gTypeDatabaseCallback = GType gTypeDatabaseCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DedicatedWorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WorkerGlobalScope"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope Mozilla DedicatedWorkerGlobalScope documentation>
newtype DedicatedWorkerGlobalScope = DedicatedWorkerGlobalScope (JSRef DedicatedWorkerGlobalScope) deriving (Eq)

unDedicatedWorkerGlobalScope (DedicatedWorkerGlobalScope o) = o

instance ToJSRef DedicatedWorkerGlobalScope where
  toJSRef = return . unDedicatedWorkerGlobalScope
  {-# INLINE toJSRef #-}

instance FromJSRef DedicatedWorkerGlobalScope where
  fromJSRef = return . fmap DedicatedWorkerGlobalScope . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsWorkerGlobalScope DedicatedWorkerGlobalScope
instance IsEventTarget DedicatedWorkerGlobalScope
instance IsGObject DedicatedWorkerGlobalScope where
  toGObject = GObject . castRef . unDedicatedWorkerGlobalScope
  unsafeCastGObject = DedicatedWorkerGlobalScope . castRef . unGObject

castToDedicatedWorkerGlobalScope :: IsGObject obj => obj -> DedicatedWorkerGlobalScope
castToDedicatedWorkerGlobalScope = castTo gTypeDedicatedWorkerGlobalScope "DedicatedWorkerGlobalScope"

foreign import javascript unsafe "window[\"DedicatedWorkerGlobalScope\"]" gTypeDedicatedWorkerGlobalScope' :: JSRef GType
gTypeDedicatedWorkerGlobalScope = GType gTypeDedicatedWorkerGlobalScope'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DelayNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode Mozilla DelayNode documentation>
newtype DelayNode = DelayNode (JSRef DelayNode) deriving (Eq)

unDelayNode (DelayNode o) = o

instance ToJSRef DelayNode where
  toJSRef = return . unDelayNode
  {-# INLINE toJSRef #-}

instance FromJSRef DelayNode where
  fromJSRef = return . fmap DelayNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode DelayNode
instance IsEventTarget DelayNode
instance IsGObject DelayNode where
  toGObject = GObject . castRef . unDelayNode
  unsafeCastGObject = DelayNode . castRef . unGObject

castToDelayNode :: IsGObject obj => obj -> DelayNode
castToDelayNode = castTo gTypeDelayNode "DelayNode"

foreign import javascript unsafe "window[\"DelayNode\"]" gTypeDelayNode' :: JSRef GType
gTypeDelayNode = GType gTypeDelayNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceMotionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent Mozilla DeviceMotionEvent documentation>
newtype DeviceMotionEvent = DeviceMotionEvent (JSRef DeviceMotionEvent) deriving (Eq)

unDeviceMotionEvent (DeviceMotionEvent o) = o

instance ToJSRef DeviceMotionEvent where
  toJSRef = return . unDeviceMotionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef DeviceMotionEvent where
  fromJSRef = return . fmap DeviceMotionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent DeviceMotionEvent
instance IsGObject DeviceMotionEvent where
  toGObject = GObject . castRef . unDeviceMotionEvent
  unsafeCastGObject = DeviceMotionEvent . castRef . unGObject

castToDeviceMotionEvent :: IsGObject obj => obj -> DeviceMotionEvent
castToDeviceMotionEvent = castTo gTypeDeviceMotionEvent "DeviceMotionEvent"

foreign import javascript unsafe "window[\"DeviceMotionEvent\"]" gTypeDeviceMotionEvent' :: JSRef GType
gTypeDeviceMotionEvent = GType gTypeDeviceMotionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceOrientationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent Mozilla DeviceOrientationEvent documentation>
newtype DeviceOrientationEvent = DeviceOrientationEvent (JSRef DeviceOrientationEvent) deriving (Eq)

unDeviceOrientationEvent (DeviceOrientationEvent o) = o

instance ToJSRef DeviceOrientationEvent where
  toJSRef = return . unDeviceOrientationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef DeviceOrientationEvent where
  fromJSRef = return . fmap DeviceOrientationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent DeviceOrientationEvent
instance IsGObject DeviceOrientationEvent where
  toGObject = GObject . castRef . unDeviceOrientationEvent
  unsafeCastGObject = DeviceOrientationEvent . castRef . unGObject

castToDeviceOrientationEvent :: IsGObject obj => obj -> DeviceOrientationEvent
castToDeviceOrientationEvent = castTo gTypeDeviceOrientationEvent "DeviceOrientationEvent"

foreign import javascript unsafe "window[\"DeviceOrientationEvent\"]" gTypeDeviceOrientationEvent' :: JSRef GType
gTypeDeviceOrientationEvent = GType gTypeDeviceOrientationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceProximityEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent Mozilla DeviceProximityEvent documentation>
newtype DeviceProximityEvent = DeviceProximityEvent (JSRef DeviceProximityEvent) deriving (Eq)

unDeviceProximityEvent (DeviceProximityEvent o) = o

instance ToJSRef DeviceProximityEvent where
  toJSRef = return . unDeviceProximityEvent
  {-# INLINE toJSRef #-}

instance FromJSRef DeviceProximityEvent where
  fromJSRef = return . fmap DeviceProximityEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent DeviceProximityEvent
instance IsGObject DeviceProximityEvent where
  toGObject = GObject . castRef . unDeviceProximityEvent
  unsafeCastGObject = DeviceProximityEvent . castRef . unGObject

castToDeviceProximityEvent :: IsGObject obj => obj -> DeviceProximityEvent
castToDeviceProximityEvent = castTo gTypeDeviceProximityEvent "DeviceProximityEvent"

foreign import javascript unsafe "window[\"DeviceProximityEvent\"]" gTypeDeviceProximityEvent' :: JSRef GType
gTypeDeviceProximityEvent = GType gTypeDeviceProximityEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Document".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation>
newtype Document = Document (JSRef Document) deriving (Eq)

unDocument (Document o) = o

instance ToJSRef Document where
  toJSRef = return . unDocument
  {-# INLINE toJSRef #-}

instance FromJSRef Document where
  fromJSRef = return . fmap Document . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsNode o => IsDocument o
toDocument :: IsDocument o => o -> Document
toDocument = unsafeCastGObject . toGObject

instance IsDocument Document
instance IsNode Document
instance IsEventTarget Document
instance IsGObject Document where
  toGObject = GObject . castRef . unDocument
  unsafeCastGObject = Document . castRef . unGObject

castToDocument :: IsGObject obj => obj -> Document
castToDocument = castTo gTypeDocument "Document"

foreign import javascript unsafe "window[\"Document\"]" gTypeDocument' :: JSRef GType
gTypeDocument = GType gTypeDocument'
#else
type IsDocument o = DocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DocumentFragment".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation>
newtype DocumentFragment = DocumentFragment (JSRef DocumentFragment) deriving (Eq)

unDocumentFragment (DocumentFragment o) = o

instance ToJSRef DocumentFragment where
  toJSRef = return . unDocumentFragment
  {-# INLINE toJSRef #-}

instance FromJSRef DocumentFragment where
  fromJSRef = return . fmap DocumentFragment . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNode DocumentFragment
instance IsEventTarget DocumentFragment
instance IsGObject DocumentFragment where
  toGObject = GObject . castRef . unDocumentFragment
  unsafeCastGObject = DocumentFragment . castRef . unGObject

castToDocumentFragment :: IsGObject obj => obj -> DocumentFragment
castToDocumentFragment = castTo gTypeDocumentFragment "DocumentFragment"

foreign import javascript unsafe "window[\"DocumentFragment\"]" gTypeDocumentFragment' :: JSRef GType
gTypeDocumentFragment = GType gTypeDocumentFragment'
#else
type IsDocumentFragment o = DocumentFragmentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DocumentType".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType Mozilla DocumentType documentation>
newtype DocumentType = DocumentType (JSRef DocumentType) deriving (Eq)

unDocumentType (DocumentType o) = o

instance ToJSRef DocumentType where
  toJSRef = return . unDocumentType
  {-# INLINE toJSRef #-}

instance FromJSRef DocumentType where
  fromJSRef = return . fmap DocumentType . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNode DocumentType
instance IsEventTarget DocumentType
instance IsGObject DocumentType where
  toGObject = GObject . castRef . unDocumentType
  unsafeCastGObject = DocumentType . castRef . unGObject

castToDocumentType :: IsGObject obj => obj -> DocumentType
castToDocumentType = castTo gTypeDocumentType "DocumentType"

foreign import javascript unsafe "window[\"DocumentType\"]" gTypeDocumentType' :: JSRef GType
gTypeDocumentType = GType gTypeDocumentType'
#else
type IsDocumentType o = DocumentTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DynamicsCompressorNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode Mozilla DynamicsCompressorNode documentation>
newtype DynamicsCompressorNode = DynamicsCompressorNode (JSRef DynamicsCompressorNode) deriving (Eq)

unDynamicsCompressorNode (DynamicsCompressorNode o) = o

instance ToJSRef DynamicsCompressorNode where
  toJSRef = return . unDynamicsCompressorNode
  {-# INLINE toJSRef #-}

instance FromJSRef DynamicsCompressorNode where
  fromJSRef = return . fmap DynamicsCompressorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode DynamicsCompressorNode
instance IsEventTarget DynamicsCompressorNode
instance IsGObject DynamicsCompressorNode where
  toGObject = GObject . castRef . unDynamicsCompressorNode
  unsafeCastGObject = DynamicsCompressorNode . castRef . unGObject

castToDynamicsCompressorNode :: IsGObject obj => obj -> DynamicsCompressorNode
castToDynamicsCompressorNode = castTo gTypeDynamicsCompressorNode "DynamicsCompressorNode"

foreign import javascript unsafe "window[\"DynamicsCompressorNode\"]" gTypeDynamicsCompressorNode' :: JSRef GType
gTypeDynamicsCompressorNode = GType gTypeDynamicsCompressorNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTBlendMinMax".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTBlendMinMax Mozilla EXTBlendMinMax documentation>
newtype EXTBlendMinMax = EXTBlendMinMax (JSRef EXTBlendMinMax) deriving (Eq)

unEXTBlendMinMax (EXTBlendMinMax o) = o

instance ToJSRef EXTBlendMinMax where
  toJSRef = return . unEXTBlendMinMax
  {-# INLINE toJSRef #-}

instance FromJSRef EXTBlendMinMax where
  fromJSRef = return . fmap EXTBlendMinMax . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EXTBlendMinMax where
  toGObject = GObject . castRef . unEXTBlendMinMax
  unsafeCastGObject = EXTBlendMinMax . castRef . unGObject

castToEXTBlendMinMax :: IsGObject obj => obj -> EXTBlendMinMax
castToEXTBlendMinMax = castTo gTypeEXTBlendMinMax "EXTBlendMinMax"

foreign import javascript unsafe "window[\"EXTBlendMinMax\"]" gTypeEXTBlendMinMax' :: JSRef GType
gTypeEXTBlendMinMax = GType gTypeEXTBlendMinMax'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTFragDepth".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTFragDepth Mozilla EXTFragDepth documentation>
newtype EXTFragDepth = EXTFragDepth (JSRef EXTFragDepth) deriving (Eq)

unEXTFragDepth (EXTFragDepth o) = o

instance ToJSRef EXTFragDepth where
  toJSRef = return . unEXTFragDepth
  {-# INLINE toJSRef #-}

instance FromJSRef EXTFragDepth where
  fromJSRef = return . fmap EXTFragDepth . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EXTFragDepth where
  toGObject = GObject . castRef . unEXTFragDepth
  unsafeCastGObject = EXTFragDepth . castRef . unGObject

castToEXTFragDepth :: IsGObject obj => obj -> EXTFragDepth
castToEXTFragDepth = castTo gTypeEXTFragDepth "EXTFragDepth"

foreign import javascript unsafe "window[\"EXTFragDepth\"]" gTypeEXTFragDepth' :: JSRef GType
gTypeEXTFragDepth = GType gTypeEXTFragDepth'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTShaderTextureLOD".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTShaderTextureLOD Mozilla EXTShaderTextureLOD documentation>
newtype EXTShaderTextureLOD = EXTShaderTextureLOD (JSRef EXTShaderTextureLOD) deriving (Eq)

unEXTShaderTextureLOD (EXTShaderTextureLOD o) = o

instance ToJSRef EXTShaderTextureLOD where
  toJSRef = return . unEXTShaderTextureLOD
  {-# INLINE toJSRef #-}

instance FromJSRef EXTShaderTextureLOD where
  fromJSRef = return . fmap EXTShaderTextureLOD . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EXTShaderTextureLOD where
  toGObject = GObject . castRef . unEXTShaderTextureLOD
  unsafeCastGObject = EXTShaderTextureLOD . castRef . unGObject

castToEXTShaderTextureLOD :: IsGObject obj => obj -> EXTShaderTextureLOD
castToEXTShaderTextureLOD = castTo gTypeEXTShaderTextureLOD "EXTShaderTextureLOD"

foreign import javascript unsafe "window[\"EXTShaderTextureLOD\"]" gTypeEXTShaderTextureLOD' :: JSRef GType
gTypeEXTShaderTextureLOD = GType gTypeEXTShaderTextureLOD'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTTextureFilterAnisotropic".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTTextureFilterAnisotropic Mozilla EXTTextureFilterAnisotropic documentation>
newtype EXTTextureFilterAnisotropic = EXTTextureFilterAnisotropic (JSRef EXTTextureFilterAnisotropic) deriving (Eq)

unEXTTextureFilterAnisotropic (EXTTextureFilterAnisotropic o) = o

instance ToJSRef EXTTextureFilterAnisotropic where
  toJSRef = return . unEXTTextureFilterAnisotropic
  {-# INLINE toJSRef #-}

instance FromJSRef EXTTextureFilterAnisotropic where
  fromJSRef = return . fmap EXTTextureFilterAnisotropic . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EXTTextureFilterAnisotropic where
  toGObject = GObject . castRef . unEXTTextureFilterAnisotropic
  unsafeCastGObject = EXTTextureFilterAnisotropic . castRef . unGObject

castToEXTTextureFilterAnisotropic :: IsGObject obj => obj -> EXTTextureFilterAnisotropic
castToEXTTextureFilterAnisotropic = castTo gTypeEXTTextureFilterAnisotropic "EXTTextureFilterAnisotropic"

foreign import javascript unsafe "window[\"EXTTextureFilterAnisotropic\"]" gTypeEXTTextureFilterAnisotropic' :: JSRef GType
gTypeEXTTextureFilterAnisotropic = GType gTypeEXTTextureFilterAnisotropic'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTsRGB".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTsRGB Mozilla EXTsRGB documentation>
newtype EXTsRGB = EXTsRGB (JSRef EXTsRGB) deriving (Eq)

unEXTsRGB (EXTsRGB o) = o

instance ToJSRef EXTsRGB where
  toJSRef = return . unEXTsRGB
  {-# INLINE toJSRef #-}

instance FromJSRef EXTsRGB where
  fromJSRef = return . fmap EXTsRGB . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EXTsRGB where
  toGObject = GObject . castRef . unEXTsRGB
  unsafeCastGObject = EXTsRGB . castRef . unGObject

castToEXTsRGB :: IsGObject obj => obj -> EXTsRGB
castToEXTsRGB = castTo gTypeEXTsRGB "EXTsRGB"

foreign import javascript unsafe "window[\"EXTsRGB\"]" gTypeEXTsRGB' :: JSRef GType
gTypeEXTsRGB = GType gTypeEXTsRGB'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Element".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Element Mozilla Element documentation>
newtype Element = Element (JSRef Element) deriving (Eq)

unElement (Element o) = o

instance ToJSRef Element where
  toJSRef = return . unElement
  {-# INLINE toJSRef #-}

instance FromJSRef Element where
  fromJSRef = return . fmap Element . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsNode o => IsElement o
toElement :: IsElement o => o -> Element
toElement = unsafeCastGObject . toGObject

instance IsElement Element
instance IsNode Element
instance IsEventTarget Element
instance IsGObject Element where
  toGObject = GObject . castRef . unElement
  unsafeCastGObject = Element . castRef . unGObject

castToElement :: IsGObject obj => obj -> Element
castToElement = castTo gTypeElement "Element"

foreign import javascript unsafe "window[\"Element\"]" gTypeElement' :: JSRef GType
gTypeElement = GType gTypeElement'
#else
type IsElement o = ElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Entity".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Entity Mozilla Entity documentation>
newtype Entity = Entity (JSRef Entity) deriving (Eq)

unEntity (Entity o) = o

instance ToJSRef Entity where
  toJSRef = return . unEntity
  {-# INLINE toJSRef #-}

instance FromJSRef Entity where
  fromJSRef = return . fmap Entity . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNode Entity
instance IsEventTarget Entity
instance IsGObject Entity where
  toGObject = GObject . castRef . unEntity
  unsafeCastGObject = Entity . castRef . unGObject

castToEntity :: IsGObject obj => obj -> Entity
castToEntity = castTo gTypeEntity "Entity"

foreign import javascript unsafe "window[\"Entity\"]" gTypeEntity' :: JSRef GType
gTypeEntity = GType gTypeEntity'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EntityReference".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EntityReference Mozilla EntityReference documentation>
newtype EntityReference = EntityReference (JSRef EntityReference) deriving (Eq)

unEntityReference (EntityReference o) = o

instance ToJSRef EntityReference where
  toJSRef = return . unEntityReference
  {-# INLINE toJSRef #-}

instance FromJSRef EntityReference where
  fromJSRef = return . fmap EntityReference . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNode EntityReference
instance IsEventTarget EntityReference
instance IsGObject EntityReference where
  toGObject = GObject . castRef . unEntityReference
  unsafeCastGObject = EntityReference . castRef . unGObject

castToEntityReference :: IsGObject obj => obj -> EntityReference
castToEntityReference = castTo gTypeEntityReference "EntityReference"

foreign import javascript unsafe "window[\"EntityReference\"]" gTypeEntityReference' :: JSRef GType
gTypeEntityReference = GType gTypeEntityReference'
#else
type IsEntityReference o = EntityReferenceClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ErrorEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent Mozilla ErrorEvent documentation>
newtype ErrorEvent = ErrorEvent (JSRef ErrorEvent) deriving (Eq)

unErrorEvent (ErrorEvent o) = o

instance ToJSRef ErrorEvent where
  toJSRef = return . unErrorEvent
  {-# INLINE toJSRef #-}

instance FromJSRef ErrorEvent where
  fromJSRef = return . fmap ErrorEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent ErrorEvent
instance IsGObject ErrorEvent where
  toGObject = GObject . castRef . unErrorEvent
  unsafeCastGObject = ErrorEvent . castRef . unGObject

castToErrorEvent :: IsGObject obj => obj -> ErrorEvent
castToErrorEvent = castTo gTypeErrorEvent "ErrorEvent"

foreign import javascript unsafe "window[\"ErrorEvent\"]" gTypeErrorEvent' :: JSRef GType
gTypeErrorEvent = GType gTypeErrorEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Event".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Event Mozilla Event documentation>
newtype Event = Event (JSRef Event) deriving (Eq)

unEvent (Event o) = o

instance ToJSRef Event where
  toJSRef = return . unEvent
  {-# INLINE toJSRef #-}

instance FromJSRef Event where
  fromJSRef = return . fmap Event . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsEvent o
toEvent :: IsEvent o => o -> Event
toEvent = unsafeCastGObject . toGObject

instance IsEvent Event
instance IsGObject Event where
  toGObject = GObject . castRef . unEvent
  unsafeCastGObject = Event . castRef . unGObject

castToEvent :: IsGObject obj => obj -> Event
castToEvent = castTo gTypeEvent "Event"

foreign import javascript unsafe "window[\"Event\"]" gTypeEvent' :: JSRef GType
gTypeEvent = GType gTypeEvent'
#else
type IsEvent o = EventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventListener Mozilla EventListener documentation>
newtype EventListener = EventListener (JSRef EventListener) deriving (Eq)

unEventListener (EventListener o) = o

instance ToJSRef EventListener where
  toJSRef = return . unEventListener
  {-# INLINE toJSRef #-}

instance FromJSRef EventListener where
  fromJSRef = return . fmap EventListener . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject EventListener where
  toGObject = GObject . castRef . unEventListener
  unsafeCastGObject = EventListener . castRef . unGObject

castToEventListener :: IsGObject obj => obj -> EventListener
castToEventListener = castTo gTypeEventListener "EventListener"

foreign import javascript unsafe "window[\"EventListener\"]" gTypeEventListener' :: JSRef GType
gTypeEventListener = GType gTypeEventListener'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventSource".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation>
newtype EventSource = EventSource (JSRef EventSource) deriving (Eq)

unEventSource (EventSource o) = o

instance ToJSRef EventSource where
  toJSRef = return . unEventSource
  {-# INLINE toJSRef #-}

instance FromJSRef EventSource where
  fromJSRef = return . fmap EventSource . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget EventSource
instance IsGObject EventSource where
  toGObject = GObject . castRef . unEventSource
  unsafeCastGObject = EventSource . castRef . unGObject

castToEventSource :: IsGObject obj => obj -> EventSource
castToEventSource = castTo gTypeEventSource "EventSource"

foreign import javascript unsafe "window[\"EventSource\"]" gTypeEventSource' :: JSRef GType
gTypeEventSource = GType gTypeEventSource'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventTarget".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget Mozilla EventTarget documentation>
newtype EventTarget = EventTarget (JSRef EventTarget) deriving (Eq)

unEventTarget (EventTarget o) = o

instance ToJSRef EventTarget where
  toJSRef = return . unEventTarget
  {-# INLINE toJSRef #-}

instance FromJSRef EventTarget where
  fromJSRef = return . fmap EventTarget . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsEventTarget o
toEventTarget :: IsEventTarget o => o -> EventTarget
toEventTarget = unsafeCastGObject . toGObject

instance IsEventTarget EventTarget
instance IsGObject EventTarget where
  toGObject = GObject . castRef . unEventTarget
  unsafeCastGObject = EventTarget . castRef . unGObject

castToEventTarget :: IsGObject obj => obj -> EventTarget
castToEventTarget = castTo gTypeEventTarget "EventTarget"

foreign import javascript unsafe "window[\"EventTarget\"]" gTypeEventTarget' :: JSRef GType
gTypeEventTarget = GType gTypeEventTarget'
#else
type IsEventTarget o = EventTargetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.File".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Blob"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/File Mozilla File documentation>
newtype File = File (JSRef File) deriving (Eq)

unFile (File o) = o

instance ToJSRef File where
  toJSRef = return . unFile
  {-# INLINE toJSRef #-}

instance FromJSRef File where
  fromJSRef = return . fmap File . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsBlob File
instance IsGObject File where
  toGObject = GObject . castRef . unFile
  unsafeCastGObject = File . castRef . unGObject

castToFile :: IsGObject obj => obj -> File
castToFile = castTo gTypeFile "File"

foreign import javascript unsafe "window[\"File\"]" gTypeFile' :: JSRef GType
gTypeFile = GType gTypeFile'
#else
type IsFile o = FileClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileError Mozilla FileError documentation>
newtype FileError = FileError (JSRef FileError) deriving (Eq)

unFileError (FileError o) = o

instance ToJSRef FileError where
  toJSRef = return . unFileError
  {-# INLINE toJSRef #-}

instance FromJSRef FileError where
  fromJSRef = return . fmap FileError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject FileError where
  toGObject = GObject . castRef . unFileError
  unsafeCastGObject = FileError . castRef . unGObject

castToFileError :: IsGObject obj => obj -> FileError
castToFileError = castTo gTypeFileError "FileError"

foreign import javascript unsafe "window[\"FileError\"]" gTypeFileError' :: JSRef GType
gTypeFileError = GType gTypeFileError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileList Mozilla FileList documentation>
newtype FileList = FileList (JSRef FileList) deriving (Eq)

unFileList (FileList o) = o

instance ToJSRef FileList where
  toJSRef = return . unFileList
  {-# INLINE toJSRef #-}

instance FromJSRef FileList where
  fromJSRef = return . fmap FileList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject FileList where
  toGObject = GObject . castRef . unFileList
  unsafeCastGObject = FileList . castRef . unGObject

castToFileList :: IsGObject obj => obj -> FileList
castToFileList = castTo gTypeFileList "FileList"

foreign import javascript unsafe "window[\"FileList\"]" gTypeFileList' :: JSRef GType
gTypeFileList = GType gTypeFileList'
#else
type IsFileList o = FileListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileReader".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation>
newtype FileReader = FileReader (JSRef FileReader) deriving (Eq)

unFileReader (FileReader o) = o

instance ToJSRef FileReader where
  toJSRef = return . unFileReader
  {-# INLINE toJSRef #-}

instance FromJSRef FileReader where
  fromJSRef = return . fmap FileReader . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget FileReader
instance IsGObject FileReader where
  toGObject = GObject . castRef . unFileReader
  unsafeCastGObject = FileReader . castRef . unGObject

castToFileReader :: IsGObject obj => obj -> FileReader
castToFileReader = castTo gTypeFileReader "FileReader"

foreign import javascript unsafe "window[\"FileReader\"]" gTypeFileReader' :: JSRef GType
gTypeFileReader = GType gTypeFileReader'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileReaderSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation>
newtype FileReaderSync = FileReaderSync (JSRef FileReaderSync) deriving (Eq)

unFileReaderSync (FileReaderSync o) = o

instance ToJSRef FileReaderSync where
  toJSRef = return . unFileReaderSync
  {-# INLINE toJSRef #-}

instance FromJSRef FileReaderSync where
  fromJSRef = return . fmap FileReaderSync . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject FileReaderSync where
  toGObject = GObject . castRef . unFileReaderSync
  unsafeCastGObject = FileReaderSync . castRef . unGObject

castToFileReaderSync :: IsGObject obj => obj -> FileReaderSync
castToFileReaderSync = castTo gTypeFileReaderSync "FileReaderSync"

foreign import javascript unsafe "window[\"FileReaderSync\"]" gTypeFileReaderSync' :: JSRef GType
gTypeFileReaderSync = GType gTypeFileReaderSync'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FocusEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent Mozilla FocusEvent documentation>
newtype FocusEvent = FocusEvent (JSRef FocusEvent) deriving (Eq)

unFocusEvent (FocusEvent o) = o

instance ToJSRef FocusEvent where
  toJSRef = return . unFocusEvent
  {-# INLINE toJSRef #-}

instance FromJSRef FocusEvent where
  fromJSRef = return . fmap FocusEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent FocusEvent
instance IsEvent FocusEvent
instance IsGObject FocusEvent where
  toGObject = GObject . castRef . unFocusEvent
  unsafeCastGObject = FocusEvent . castRef . unGObject

castToFocusEvent :: IsGObject obj => obj -> FocusEvent
castToFocusEvent = castTo gTypeFocusEvent "FocusEvent"

foreign import javascript unsafe "window[\"FocusEvent\"]" gTypeFocusEvent' :: JSRef GType
gTypeFocusEvent = GType gTypeFocusEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FontLoader".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader Mozilla FontLoader documentation>
newtype FontLoader = FontLoader (JSRef FontLoader) deriving (Eq)

unFontLoader (FontLoader o) = o

instance ToJSRef FontLoader where
  toJSRef = return . unFontLoader
  {-# INLINE toJSRef #-}

instance FromJSRef FontLoader where
  fromJSRef = return . fmap FontLoader . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget FontLoader
instance IsGObject FontLoader where
  toGObject = GObject . castRef . unFontLoader
  unsafeCastGObject = FontLoader . castRef . unGObject

castToFontLoader :: IsGObject obj => obj -> FontLoader
castToFontLoader = castTo gTypeFontLoader "FontLoader"

foreign import javascript unsafe "window[\"FontLoader\"]" gTypeFontLoader' :: JSRef GType
gTypeFontLoader = GType gTypeFontLoader'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GainNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GainNode Mozilla GainNode documentation>
newtype GainNode = GainNode (JSRef GainNode) deriving (Eq)

unGainNode (GainNode o) = o

instance ToJSRef GainNode where
  toJSRef = return . unGainNode
  {-# INLINE toJSRef #-}

instance FromJSRef GainNode where
  fromJSRef = return . fmap GainNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode GainNode
instance IsEventTarget GainNode
instance IsGObject GainNode where
  toGObject = GObject . castRef . unGainNode
  unsafeCastGObject = GainNode . castRef . unGObject

castToGainNode :: IsGObject obj => obj -> GainNode
castToGainNode = castTo gTypeGainNode "GainNode"

foreign import javascript unsafe "window[\"GainNode\"]" gTypeGainNode' :: JSRef GType
gTypeGainNode = GType gTypeGainNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Gamepad".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad Mozilla Gamepad documentation>
newtype Gamepad = Gamepad (JSRef Gamepad) deriving (Eq)

unGamepad (Gamepad o) = o

instance ToJSRef Gamepad where
  toJSRef = return . unGamepad
  {-# INLINE toJSRef #-}

instance FromJSRef Gamepad where
  fromJSRef = return . fmap Gamepad . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Gamepad where
  toGObject = GObject . castRef . unGamepad
  unsafeCastGObject = Gamepad . castRef . unGObject

castToGamepad :: IsGObject obj => obj -> Gamepad
castToGamepad = castTo gTypeGamepad "Gamepad"

foreign import javascript unsafe "window[\"Gamepad\"]" gTypeGamepad' :: JSRef GType
gTypeGamepad = GType gTypeGamepad'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GamepadButton".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton Mozilla GamepadButton documentation>
newtype GamepadButton = GamepadButton (JSRef GamepadButton) deriving (Eq)

unGamepadButton (GamepadButton o) = o

instance ToJSRef GamepadButton where
  toJSRef = return . unGamepadButton
  {-# INLINE toJSRef #-}

instance FromJSRef GamepadButton where
  fromJSRef = return . fmap GamepadButton . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject GamepadButton where
  toGObject = GObject . castRef . unGamepadButton
  unsafeCastGObject = GamepadButton . castRef . unGObject

castToGamepadButton :: IsGObject obj => obj -> GamepadButton
castToGamepadButton = castTo gTypeGamepadButton "GamepadButton"

foreign import javascript unsafe "window[\"GamepadButton\"]" gTypeGamepadButton' :: JSRef GType
gTypeGamepadButton = GType gTypeGamepadButton'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GamepadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent Mozilla GamepadEvent documentation>
newtype GamepadEvent = GamepadEvent (JSRef GamepadEvent) deriving (Eq)

unGamepadEvent (GamepadEvent o) = o

instance ToJSRef GamepadEvent where
  toJSRef = return . unGamepadEvent
  {-# INLINE toJSRef #-}

instance FromJSRef GamepadEvent where
  fromJSRef = return . fmap GamepadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent GamepadEvent
instance IsGObject GamepadEvent where
  toGObject = GObject . castRef . unGamepadEvent
  unsafeCastGObject = GamepadEvent . castRef . unGObject

castToGamepadEvent :: IsGObject obj => obj -> GamepadEvent
castToGamepadEvent = castTo gTypeGamepadEvent "GamepadEvent"

foreign import javascript unsafe "window[\"GamepadEvent\"]" gTypeGamepadEvent' :: JSRef GType
gTypeGamepadEvent = GType gTypeGamepadEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Geolocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation Mozilla Geolocation documentation>
newtype Geolocation = Geolocation (JSRef Geolocation) deriving (Eq)

unGeolocation (Geolocation o) = o

instance ToJSRef Geolocation where
  toJSRef = return . unGeolocation
  {-# INLINE toJSRef #-}

instance FromJSRef Geolocation where
  fromJSRef = return . fmap Geolocation . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Geolocation where
  toGObject = GObject . castRef . unGeolocation
  unsafeCastGObject = Geolocation . castRef . unGObject

castToGeolocation :: IsGObject obj => obj -> Geolocation
castToGeolocation = castTo gTypeGeolocation "Geolocation"

foreign import javascript unsafe "window[\"Geolocation\"]" gTypeGeolocation' :: JSRef GType
gTypeGeolocation = GType gTypeGeolocation'
#else
type IsGeolocation o = GeolocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Geoposition".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition Mozilla Geoposition documentation>
newtype Geoposition = Geoposition (JSRef Geoposition) deriving (Eq)

unGeoposition (Geoposition o) = o

instance ToJSRef Geoposition where
  toJSRef = return . unGeoposition
  {-# INLINE toJSRef #-}

instance FromJSRef Geoposition where
  fromJSRef = return . fmap Geoposition . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Geoposition where
  toGObject = GObject . castRef . unGeoposition
  unsafeCastGObject = Geoposition . castRef . unGObject

castToGeoposition :: IsGObject obj => obj -> Geoposition
castToGeoposition = castTo gTypeGeoposition "Geoposition"

foreign import javascript unsafe "window[\"Geoposition\"]" gTypeGeoposition' :: JSRef GType
gTypeGeoposition = GType gTypeGeoposition'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAllCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection Mozilla HTMLAllCollection documentation>
newtype HTMLAllCollection = HTMLAllCollection (JSRef HTMLAllCollection) deriving (Eq)

unHTMLAllCollection (HTMLAllCollection o) = o

instance ToJSRef HTMLAllCollection where
  toJSRef = return . unHTMLAllCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAllCollection where
  fromJSRef = return . fmap HTMLAllCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject HTMLAllCollection where
  toGObject = GObject . castRef . unHTMLAllCollection
  unsafeCastGObject = HTMLAllCollection . castRef . unGObject

castToHTMLAllCollection :: IsGObject obj => obj -> HTMLAllCollection
castToHTMLAllCollection = castTo gTypeHTMLAllCollection "HTMLAllCollection"

foreign import javascript unsafe "window[\"HTMLAllCollection\"]" gTypeHTMLAllCollection' :: JSRef GType
gTypeHTMLAllCollection = GType gTypeHTMLAllCollection'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAnchorElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement Mozilla HTMLAnchorElement documentation>
newtype HTMLAnchorElement = HTMLAnchorElement (JSRef HTMLAnchorElement) deriving (Eq)

unHTMLAnchorElement (HTMLAnchorElement o) = o

instance ToJSRef HTMLAnchorElement where
  toJSRef = return . unHTMLAnchorElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAnchorElement where
  fromJSRef = return . fmap HTMLAnchorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLAnchorElement
instance IsElement HTMLAnchorElement
instance IsNode HTMLAnchorElement
instance IsEventTarget HTMLAnchorElement
instance IsGObject HTMLAnchorElement where
  toGObject = GObject . castRef . unHTMLAnchorElement
  unsafeCastGObject = HTMLAnchorElement . castRef . unGObject

castToHTMLAnchorElement :: IsGObject obj => obj -> HTMLAnchorElement
castToHTMLAnchorElement = castTo gTypeHTMLAnchorElement "HTMLAnchorElement"

foreign import javascript unsafe "window[\"HTMLAnchorElement\"]" gTypeHTMLAnchorElement' :: JSRef GType
gTypeHTMLAnchorElement = GType gTypeHTMLAnchorElement'
#else
type IsHTMLAnchorElement o = HTMLAnchorElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAppletElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement Mozilla HTMLAppletElement documentation>
newtype HTMLAppletElement = HTMLAppletElement (JSRef HTMLAppletElement) deriving (Eq)

unHTMLAppletElement (HTMLAppletElement o) = o

instance ToJSRef HTMLAppletElement where
  toJSRef = return . unHTMLAppletElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAppletElement where
  fromJSRef = return . fmap HTMLAppletElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLAppletElement
instance IsElement HTMLAppletElement
instance IsNode HTMLAppletElement
instance IsEventTarget HTMLAppletElement
instance IsGObject HTMLAppletElement where
  toGObject = GObject . castRef . unHTMLAppletElement
  unsafeCastGObject = HTMLAppletElement . castRef . unGObject

castToHTMLAppletElement :: IsGObject obj => obj -> HTMLAppletElement
castToHTMLAppletElement = castTo gTypeHTMLAppletElement "HTMLAppletElement"

foreign import javascript unsafe "window[\"HTMLAppletElement\"]" gTypeHTMLAppletElement' :: JSRef GType
gTypeHTMLAppletElement = GType gTypeHTMLAppletElement'
#else
type IsHTMLAppletElement o = HTMLAppletElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAreaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement Mozilla HTMLAreaElement documentation>
newtype HTMLAreaElement = HTMLAreaElement (JSRef HTMLAreaElement) deriving (Eq)

unHTMLAreaElement (HTMLAreaElement o) = o

instance ToJSRef HTMLAreaElement where
  toJSRef = return . unHTMLAreaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAreaElement where
  fromJSRef = return . fmap HTMLAreaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLAreaElement
instance IsElement HTMLAreaElement
instance IsNode HTMLAreaElement
instance IsEventTarget HTMLAreaElement
instance IsGObject HTMLAreaElement where
  toGObject = GObject . castRef . unHTMLAreaElement
  unsafeCastGObject = HTMLAreaElement . castRef . unGObject

castToHTMLAreaElement :: IsGObject obj => obj -> HTMLAreaElement
castToHTMLAreaElement = castTo gTypeHTMLAreaElement "HTMLAreaElement"

foreign import javascript unsafe "window[\"HTMLAreaElement\"]" gTypeHTMLAreaElement' :: JSRef GType
gTypeHTMLAreaElement = GType gTypeHTMLAreaElement'
#else
type IsHTMLAreaElement o = HTMLAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAudioElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLMediaElement"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement Mozilla HTMLAudioElement documentation>
newtype HTMLAudioElement = HTMLAudioElement (JSRef HTMLAudioElement) deriving (Eq)

unHTMLAudioElement (HTMLAudioElement o) = o

instance ToJSRef HTMLAudioElement where
  toJSRef = return . unHTMLAudioElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLAudioElement where
  fromJSRef = return . fmap HTMLAudioElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLMediaElement HTMLAudioElement
instance IsGObject HTMLAudioElement where
  toGObject = GObject . castRef . unHTMLAudioElement
  unsafeCastGObject = HTMLAudioElement . castRef . unGObject

castToHTMLAudioElement :: IsGObject obj => obj -> HTMLAudioElement
castToHTMLAudioElement = castTo gTypeHTMLAudioElement "HTMLAudioElement"

foreign import javascript unsafe "window[\"HTMLAudioElement\"]" gTypeHTMLAudioElement' :: JSRef GType
gTypeHTMLAudioElement = GType gTypeHTMLAudioElement'
#else
type IsHTMLAudioElement o = HTMLAudioElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement Mozilla HTMLBRElement documentation>
newtype HTMLBRElement = HTMLBRElement (JSRef HTMLBRElement) deriving (Eq)

unHTMLBRElement (HTMLBRElement o) = o

instance ToJSRef HTMLBRElement where
  toJSRef = return . unHTMLBRElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBRElement where
  fromJSRef = return . fmap HTMLBRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLBRElement
instance IsElement HTMLBRElement
instance IsNode HTMLBRElement
instance IsEventTarget HTMLBRElement
instance IsGObject HTMLBRElement where
  toGObject = GObject . castRef . unHTMLBRElement
  unsafeCastGObject = HTMLBRElement . castRef . unGObject

castToHTMLBRElement :: IsGObject obj => obj -> HTMLBRElement
castToHTMLBRElement = castTo gTypeHTMLBRElement "HTMLBRElement"

foreign import javascript unsafe "window[\"HTMLBRElement\"]" gTypeHTMLBRElement' :: JSRef GType
gTypeHTMLBRElement = GType gTypeHTMLBRElement'
#else
type IsHTMLBRElement o = HTMLBRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBaseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement Mozilla HTMLBaseElement documentation>
newtype HTMLBaseElement = HTMLBaseElement (JSRef HTMLBaseElement) deriving (Eq)

unHTMLBaseElement (HTMLBaseElement o) = o

instance ToJSRef HTMLBaseElement where
  toJSRef = return . unHTMLBaseElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBaseElement where
  fromJSRef = return . fmap HTMLBaseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLBaseElement
instance IsElement HTMLBaseElement
instance IsNode HTMLBaseElement
instance IsEventTarget HTMLBaseElement
instance IsGObject HTMLBaseElement where
  toGObject = GObject . castRef . unHTMLBaseElement
  unsafeCastGObject = HTMLBaseElement . castRef . unGObject

castToHTMLBaseElement :: IsGObject obj => obj -> HTMLBaseElement
castToHTMLBaseElement = castTo gTypeHTMLBaseElement "HTMLBaseElement"

foreign import javascript unsafe "window[\"HTMLBaseElement\"]" gTypeHTMLBaseElement' :: JSRef GType
gTypeHTMLBaseElement = GType gTypeHTMLBaseElement'
#else
type IsHTMLBaseElement o = HTMLBaseElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBaseFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement Mozilla HTMLBaseFontElement documentation>
newtype HTMLBaseFontElement = HTMLBaseFontElement (JSRef HTMLBaseFontElement) deriving (Eq)

unHTMLBaseFontElement (HTMLBaseFontElement o) = o

instance ToJSRef HTMLBaseFontElement where
  toJSRef = return . unHTMLBaseFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBaseFontElement where
  fromJSRef = return . fmap HTMLBaseFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLBaseFontElement
instance IsElement HTMLBaseFontElement
instance IsNode HTMLBaseFontElement
instance IsEventTarget HTMLBaseFontElement
instance IsGObject HTMLBaseFontElement where
  toGObject = GObject . castRef . unHTMLBaseFontElement
  unsafeCastGObject = HTMLBaseFontElement . castRef . unGObject

castToHTMLBaseFontElement :: IsGObject obj => obj -> HTMLBaseFontElement
castToHTMLBaseFontElement = castTo gTypeHTMLBaseFontElement "HTMLBaseFontElement"

foreign import javascript unsafe "window[\"HTMLBaseFontElement\"]" gTypeHTMLBaseFontElement' :: JSRef GType
gTypeHTMLBaseFontElement = GType gTypeHTMLBaseFontElement'
#else
type IsHTMLBaseFontElement o = HTMLBaseFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBodyElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement Mozilla HTMLBodyElement documentation>
newtype HTMLBodyElement = HTMLBodyElement (JSRef HTMLBodyElement) deriving (Eq)

unHTMLBodyElement (HTMLBodyElement o) = o

instance ToJSRef HTMLBodyElement where
  toJSRef = return . unHTMLBodyElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLBodyElement where
  fromJSRef = return . fmap HTMLBodyElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLBodyElement
instance IsElement HTMLBodyElement
instance IsNode HTMLBodyElement
instance IsEventTarget HTMLBodyElement
instance IsGObject HTMLBodyElement where
  toGObject = GObject . castRef . unHTMLBodyElement
  unsafeCastGObject = HTMLBodyElement . castRef . unGObject

castToHTMLBodyElement :: IsGObject obj => obj -> HTMLBodyElement
castToHTMLBodyElement = castTo gTypeHTMLBodyElement "HTMLBodyElement"

foreign import javascript unsafe "window[\"HTMLBodyElement\"]" gTypeHTMLBodyElement' :: JSRef GType
gTypeHTMLBodyElement = GType gTypeHTMLBodyElement'
#else
type IsHTMLBodyElement o = HTMLBodyElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLButtonElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement Mozilla HTMLButtonElement documentation>
newtype HTMLButtonElement = HTMLButtonElement (JSRef HTMLButtonElement) deriving (Eq)

unHTMLButtonElement (HTMLButtonElement o) = o

instance ToJSRef HTMLButtonElement where
  toJSRef = return . unHTMLButtonElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLButtonElement where
  fromJSRef = return . fmap HTMLButtonElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLButtonElement
instance IsElement HTMLButtonElement
instance IsNode HTMLButtonElement
instance IsEventTarget HTMLButtonElement
instance IsGObject HTMLButtonElement where
  toGObject = GObject . castRef . unHTMLButtonElement
  unsafeCastGObject = HTMLButtonElement . castRef . unGObject

castToHTMLButtonElement :: IsGObject obj => obj -> HTMLButtonElement
castToHTMLButtonElement = castTo gTypeHTMLButtonElement "HTMLButtonElement"

foreign import javascript unsafe "window[\"HTMLButtonElement\"]" gTypeHTMLButtonElement' :: JSRef GType
gTypeHTMLButtonElement = GType gTypeHTMLButtonElement'
#else
type IsHTMLButtonElement o = HTMLButtonElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLCanvasElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement Mozilla HTMLCanvasElement documentation>
newtype HTMLCanvasElement = HTMLCanvasElement (JSRef HTMLCanvasElement) deriving (Eq)

unHTMLCanvasElement (HTMLCanvasElement o) = o

instance ToJSRef HTMLCanvasElement where
  toJSRef = return . unHTMLCanvasElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLCanvasElement where
  fromJSRef = return . fmap HTMLCanvasElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLCanvasElement
instance IsElement HTMLCanvasElement
instance IsNode HTMLCanvasElement
instance IsEventTarget HTMLCanvasElement
instance IsGObject HTMLCanvasElement where
  toGObject = GObject . castRef . unHTMLCanvasElement
  unsafeCastGObject = HTMLCanvasElement . castRef . unGObject

castToHTMLCanvasElement :: IsGObject obj => obj -> HTMLCanvasElement
castToHTMLCanvasElement = castTo gTypeHTMLCanvasElement "HTMLCanvasElement"

foreign import javascript unsafe "window[\"HTMLCanvasElement\"]" gTypeHTMLCanvasElement' :: JSRef GType
gTypeHTMLCanvasElement = GType gTypeHTMLCanvasElement'
#else
type IsHTMLCanvasElement o = HTMLCanvasElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection Mozilla HTMLCollection documentation>
newtype HTMLCollection = HTMLCollection (JSRef HTMLCollection) deriving (Eq)

unHTMLCollection (HTMLCollection o) = o

instance ToJSRef HTMLCollection where
  toJSRef = return . unHTMLCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLCollection where
  fromJSRef = return . fmap HTMLCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsHTMLCollection o
toHTMLCollection :: IsHTMLCollection o => o -> HTMLCollection
toHTMLCollection = unsafeCastGObject . toGObject

instance IsHTMLCollection HTMLCollection
instance IsGObject HTMLCollection where
  toGObject = GObject . castRef . unHTMLCollection
  unsafeCastGObject = HTMLCollection . castRef . unGObject

castToHTMLCollection :: IsGObject obj => obj -> HTMLCollection
castToHTMLCollection = castTo gTypeHTMLCollection "HTMLCollection"

foreign import javascript unsafe "window[\"HTMLCollection\"]" gTypeHTMLCollection' :: JSRef GType
gTypeHTMLCollection = GType gTypeHTMLCollection'
#else
type IsHTMLCollection o = HTMLCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement Mozilla HTMLDListElement documentation>
newtype HTMLDListElement = HTMLDListElement (JSRef HTMLDListElement) deriving (Eq)

unHTMLDListElement (HTMLDListElement o) = o

instance ToJSRef HTMLDListElement where
  toJSRef = return . unHTMLDListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDListElement where
  fromJSRef = return . fmap HTMLDListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLDListElement
instance IsElement HTMLDListElement
instance IsNode HTMLDListElement
instance IsEventTarget HTMLDListElement
instance IsGObject HTMLDListElement where
  toGObject = GObject . castRef . unHTMLDListElement
  unsafeCastGObject = HTMLDListElement . castRef . unGObject

castToHTMLDListElement :: IsGObject obj => obj -> HTMLDListElement
castToHTMLDListElement = castTo gTypeHTMLDListElement "HTMLDListElement"

foreign import javascript unsafe "window[\"HTMLDListElement\"]" gTypeHTMLDListElement' :: JSRef GType
gTypeHTMLDListElement = GType gTypeHTMLDListElement'
#else
type IsHTMLDListElement o = HTMLDListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDataListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement Mozilla HTMLDataListElement documentation>
newtype HTMLDataListElement = HTMLDataListElement (JSRef HTMLDataListElement) deriving (Eq)

unHTMLDataListElement (HTMLDataListElement o) = o

instance ToJSRef HTMLDataListElement where
  toJSRef = return . unHTMLDataListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDataListElement where
  fromJSRef = return . fmap HTMLDataListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLDataListElement
instance IsElement HTMLDataListElement
instance IsNode HTMLDataListElement
instance IsEventTarget HTMLDataListElement
instance IsGObject HTMLDataListElement where
  toGObject = GObject . castRef . unHTMLDataListElement
  unsafeCastGObject = HTMLDataListElement . castRef . unGObject

castToHTMLDataListElement :: IsGObject obj => obj -> HTMLDataListElement
castToHTMLDataListElement = castTo gTypeHTMLDataListElement "HTMLDataListElement"

foreign import javascript unsafe "window[\"HTMLDataListElement\"]" gTypeHTMLDataListElement' :: JSRef GType
gTypeHTMLDataListElement = GType gTypeHTMLDataListElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDetailsElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement Mozilla HTMLDetailsElement documentation>
newtype HTMLDetailsElement = HTMLDetailsElement (JSRef HTMLDetailsElement) deriving (Eq)

unHTMLDetailsElement (HTMLDetailsElement o) = o

instance ToJSRef HTMLDetailsElement where
  toJSRef = return . unHTMLDetailsElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDetailsElement where
  fromJSRef = return . fmap HTMLDetailsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLDetailsElement
instance IsElement HTMLDetailsElement
instance IsNode HTMLDetailsElement
instance IsEventTarget HTMLDetailsElement
instance IsGObject HTMLDetailsElement where
  toGObject = GObject . castRef . unHTMLDetailsElement
  unsafeCastGObject = HTMLDetailsElement . castRef . unGObject

castToHTMLDetailsElement :: IsGObject obj => obj -> HTMLDetailsElement
castToHTMLDetailsElement = castTo gTypeHTMLDetailsElement "HTMLDetailsElement"

foreign import javascript unsafe "window[\"HTMLDetailsElement\"]" gTypeHTMLDetailsElement' :: JSRef GType
gTypeHTMLDetailsElement = GType gTypeHTMLDetailsElement'
#else
type IsHTMLDetailsElement o = HTMLDetailsElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDirectoryElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement Mozilla HTMLDirectoryElement documentation>
newtype HTMLDirectoryElement = HTMLDirectoryElement (JSRef HTMLDirectoryElement) deriving (Eq)

unHTMLDirectoryElement (HTMLDirectoryElement o) = o

instance ToJSRef HTMLDirectoryElement where
  toJSRef = return . unHTMLDirectoryElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDirectoryElement where
  fromJSRef = return . fmap HTMLDirectoryElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLDirectoryElement
instance IsElement HTMLDirectoryElement
instance IsNode HTMLDirectoryElement
instance IsEventTarget HTMLDirectoryElement
instance IsGObject HTMLDirectoryElement where
  toGObject = GObject . castRef . unHTMLDirectoryElement
  unsafeCastGObject = HTMLDirectoryElement . castRef . unGObject

castToHTMLDirectoryElement :: IsGObject obj => obj -> HTMLDirectoryElement
castToHTMLDirectoryElement = castTo gTypeHTMLDirectoryElement "HTMLDirectoryElement"

foreign import javascript unsafe "window[\"HTMLDirectoryElement\"]" gTypeHTMLDirectoryElement' :: JSRef GType
gTypeHTMLDirectoryElement = GType gTypeHTMLDirectoryElement'
#else
type IsHTMLDirectoryElement o = HTMLDirectoryElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDivElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement Mozilla HTMLDivElement documentation>
newtype HTMLDivElement = HTMLDivElement (JSRef HTMLDivElement) deriving (Eq)

unHTMLDivElement (HTMLDivElement o) = o

instance ToJSRef HTMLDivElement where
  toJSRef = return . unHTMLDivElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDivElement where
  fromJSRef = return . fmap HTMLDivElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLDivElement
instance IsElement HTMLDivElement
instance IsNode HTMLDivElement
instance IsEventTarget HTMLDivElement
instance IsGObject HTMLDivElement where
  toGObject = GObject . castRef . unHTMLDivElement
  unsafeCastGObject = HTMLDivElement . castRef . unGObject

castToHTMLDivElement :: IsGObject obj => obj -> HTMLDivElement
castToHTMLDivElement = castTo gTypeHTMLDivElement "HTMLDivElement"

foreign import javascript unsafe "window[\"HTMLDivElement\"]" gTypeHTMLDivElement' :: JSRef GType
gTypeHTMLDivElement = GType gTypeHTMLDivElement'
#else
type IsHTMLDivElement o = HTMLDivElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDocument".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Document"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument Mozilla HTMLDocument documentation>
newtype HTMLDocument = HTMLDocument (JSRef HTMLDocument) deriving (Eq)

unHTMLDocument (HTMLDocument o) = o

instance ToJSRef HTMLDocument where
  toJSRef = return . unHTMLDocument
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDocument where
  fromJSRef = return . fmap HTMLDocument . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsDocument HTMLDocument
instance IsNode HTMLDocument
instance IsEventTarget HTMLDocument
instance IsGObject HTMLDocument where
  toGObject = GObject . castRef . unHTMLDocument
  unsafeCastGObject = HTMLDocument . castRef . unGObject

castToHTMLDocument :: IsGObject obj => obj -> HTMLDocument
castToHTMLDocument = castTo gTypeHTMLDocument "HTMLDocument"

foreign import javascript unsafe "window[\"HTMLDocument\"]" gTypeHTMLDocument' :: JSRef GType
gTypeHTMLDocument = GType gTypeHTMLDocument'
#else
type IsHTMLDocument o = HTMLDocumentClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement Mozilla HTMLElement documentation>
newtype HTMLElement = HTMLElement (JSRef HTMLElement) deriving (Eq)

unHTMLElement (HTMLElement o) = o

instance ToJSRef HTMLElement where
  toJSRef = return . unHTMLElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLElement where
  fromJSRef = return . fmap HTMLElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsElement o => IsHTMLElement o
toHTMLElement :: IsHTMLElement o => o -> HTMLElement
toHTMLElement = unsafeCastGObject . toGObject

instance IsHTMLElement HTMLElement
instance IsElement HTMLElement
instance IsNode HTMLElement
instance IsEventTarget HTMLElement
instance IsGObject HTMLElement where
  toGObject = GObject . castRef . unHTMLElement
  unsafeCastGObject = HTMLElement . castRef . unGObject

castToHTMLElement :: IsGObject obj => obj -> HTMLElement
castToHTMLElement = castTo gTypeHTMLElement "HTMLElement"

foreign import javascript unsafe "window[\"HTMLElement\"]" gTypeHTMLElement' :: JSRef GType
gTypeHTMLElement = GType gTypeHTMLElement'
#else
type IsHTMLElement o = HTMLElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLEmbedElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement Mozilla HTMLEmbedElement documentation>
newtype HTMLEmbedElement = HTMLEmbedElement (JSRef HTMLEmbedElement) deriving (Eq)

unHTMLEmbedElement (HTMLEmbedElement o) = o

instance ToJSRef HTMLEmbedElement where
  toJSRef = return . unHTMLEmbedElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLEmbedElement where
  fromJSRef = return . fmap HTMLEmbedElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLEmbedElement
instance IsElement HTMLEmbedElement
instance IsNode HTMLEmbedElement
instance IsEventTarget HTMLEmbedElement
instance IsGObject HTMLEmbedElement where
  toGObject = GObject . castRef . unHTMLEmbedElement
  unsafeCastGObject = HTMLEmbedElement . castRef . unGObject

castToHTMLEmbedElement :: IsGObject obj => obj -> HTMLEmbedElement
castToHTMLEmbedElement = castTo gTypeHTMLEmbedElement "HTMLEmbedElement"

foreign import javascript unsafe "window[\"HTMLEmbedElement\"]" gTypeHTMLEmbedElement' :: JSRef GType
gTypeHTMLEmbedElement = GType gTypeHTMLEmbedElement'
#else
type IsHTMLEmbedElement o = HTMLEmbedElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFieldSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement Mozilla HTMLFieldSetElement documentation>
newtype HTMLFieldSetElement = HTMLFieldSetElement (JSRef HTMLFieldSetElement) deriving (Eq)

unHTMLFieldSetElement (HTMLFieldSetElement o) = o

instance ToJSRef HTMLFieldSetElement where
  toJSRef = return . unHTMLFieldSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFieldSetElement where
  fromJSRef = return . fmap HTMLFieldSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLFieldSetElement
instance IsElement HTMLFieldSetElement
instance IsNode HTMLFieldSetElement
instance IsEventTarget HTMLFieldSetElement
instance IsGObject HTMLFieldSetElement where
  toGObject = GObject . castRef . unHTMLFieldSetElement
  unsafeCastGObject = HTMLFieldSetElement . castRef . unGObject

castToHTMLFieldSetElement :: IsGObject obj => obj -> HTMLFieldSetElement
castToHTMLFieldSetElement = castTo gTypeHTMLFieldSetElement "HTMLFieldSetElement"

foreign import javascript unsafe "window[\"HTMLFieldSetElement\"]" gTypeHTMLFieldSetElement' :: JSRef GType
gTypeHTMLFieldSetElement = GType gTypeHTMLFieldSetElement'
#else
type IsHTMLFieldSetElement o = HTMLFieldSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement Mozilla HTMLFontElement documentation>
newtype HTMLFontElement = HTMLFontElement (JSRef HTMLFontElement) deriving (Eq)

unHTMLFontElement (HTMLFontElement o) = o

instance ToJSRef HTMLFontElement where
  toJSRef = return . unHTMLFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFontElement where
  fromJSRef = return . fmap HTMLFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLFontElement
instance IsElement HTMLFontElement
instance IsNode HTMLFontElement
instance IsEventTarget HTMLFontElement
instance IsGObject HTMLFontElement where
  toGObject = GObject . castRef . unHTMLFontElement
  unsafeCastGObject = HTMLFontElement . castRef . unGObject

castToHTMLFontElement :: IsGObject obj => obj -> HTMLFontElement
castToHTMLFontElement = castTo gTypeHTMLFontElement "HTMLFontElement"

foreign import javascript unsafe "window[\"HTMLFontElement\"]" gTypeHTMLFontElement' :: JSRef GType
gTypeHTMLFontElement = GType gTypeHTMLFontElement'
#else
type IsHTMLFontElement o = HTMLFontElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFormControlsCollection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLCollection"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection Mozilla HTMLFormControlsCollection documentation>
newtype HTMLFormControlsCollection = HTMLFormControlsCollection (JSRef HTMLFormControlsCollection) deriving (Eq)

unHTMLFormControlsCollection (HTMLFormControlsCollection o) = o

instance ToJSRef HTMLFormControlsCollection where
  toJSRef = return . unHTMLFormControlsCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFormControlsCollection where
  fromJSRef = return . fmap HTMLFormControlsCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLCollection HTMLFormControlsCollection
instance IsGObject HTMLFormControlsCollection where
  toGObject = GObject . castRef . unHTMLFormControlsCollection
  unsafeCastGObject = HTMLFormControlsCollection . castRef . unGObject

castToHTMLFormControlsCollection :: IsGObject obj => obj -> HTMLFormControlsCollection
castToHTMLFormControlsCollection = castTo gTypeHTMLFormControlsCollection "HTMLFormControlsCollection"

foreign import javascript unsafe "window[\"HTMLFormControlsCollection\"]" gTypeHTMLFormControlsCollection' :: JSRef GType
gTypeHTMLFormControlsCollection = GType gTypeHTMLFormControlsCollection'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFormElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement Mozilla HTMLFormElement documentation>
newtype HTMLFormElement = HTMLFormElement (JSRef HTMLFormElement) deriving (Eq)

unHTMLFormElement (HTMLFormElement o) = o

instance ToJSRef HTMLFormElement where
  toJSRef = return . unHTMLFormElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFormElement where
  fromJSRef = return . fmap HTMLFormElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLFormElement
instance IsElement HTMLFormElement
instance IsNode HTMLFormElement
instance IsEventTarget HTMLFormElement
instance IsGObject HTMLFormElement where
  toGObject = GObject . castRef . unHTMLFormElement
  unsafeCastGObject = HTMLFormElement . castRef . unGObject

castToHTMLFormElement :: IsGObject obj => obj -> HTMLFormElement
castToHTMLFormElement = castTo gTypeHTMLFormElement "HTMLFormElement"

foreign import javascript unsafe "window[\"HTMLFormElement\"]" gTypeHTMLFormElement' :: JSRef GType
gTypeHTMLFormElement = GType gTypeHTMLFormElement'
#else
type IsHTMLFormElement o = HTMLFormElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFrameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement Mozilla HTMLFrameElement documentation>
newtype HTMLFrameElement = HTMLFrameElement (JSRef HTMLFrameElement) deriving (Eq)

unHTMLFrameElement (HTMLFrameElement o) = o

instance ToJSRef HTMLFrameElement where
  toJSRef = return . unHTMLFrameElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFrameElement where
  fromJSRef = return . fmap HTMLFrameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLFrameElement
instance IsElement HTMLFrameElement
instance IsNode HTMLFrameElement
instance IsEventTarget HTMLFrameElement
instance IsGObject HTMLFrameElement where
  toGObject = GObject . castRef . unHTMLFrameElement
  unsafeCastGObject = HTMLFrameElement . castRef . unGObject

castToHTMLFrameElement :: IsGObject obj => obj -> HTMLFrameElement
castToHTMLFrameElement = castTo gTypeHTMLFrameElement "HTMLFrameElement"

foreign import javascript unsafe "window[\"HTMLFrameElement\"]" gTypeHTMLFrameElement' :: JSRef GType
gTypeHTMLFrameElement = GType gTypeHTMLFrameElement'
#else
type IsHTMLFrameElement o = HTMLFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFrameSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement Mozilla HTMLFrameSetElement documentation>
newtype HTMLFrameSetElement = HTMLFrameSetElement (JSRef HTMLFrameSetElement) deriving (Eq)

unHTMLFrameSetElement (HTMLFrameSetElement o) = o

instance ToJSRef HTMLFrameSetElement where
  toJSRef = return . unHTMLFrameSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLFrameSetElement where
  fromJSRef = return . fmap HTMLFrameSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLFrameSetElement
instance IsElement HTMLFrameSetElement
instance IsNode HTMLFrameSetElement
instance IsEventTarget HTMLFrameSetElement
instance IsGObject HTMLFrameSetElement where
  toGObject = GObject . castRef . unHTMLFrameSetElement
  unsafeCastGObject = HTMLFrameSetElement . castRef . unGObject

castToHTMLFrameSetElement :: IsGObject obj => obj -> HTMLFrameSetElement
castToHTMLFrameSetElement = castTo gTypeHTMLFrameSetElement "HTMLFrameSetElement"

foreign import javascript unsafe "window[\"HTMLFrameSetElement\"]" gTypeHTMLFrameSetElement' :: JSRef GType
gTypeHTMLFrameSetElement = GType gTypeHTMLFrameSetElement'
#else
type IsHTMLFrameSetElement o = HTMLFrameSetElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement Mozilla HTMLHRElement documentation>
newtype HTMLHRElement = HTMLHRElement (JSRef HTMLHRElement) deriving (Eq)

unHTMLHRElement (HTMLHRElement o) = o

instance ToJSRef HTMLHRElement where
  toJSRef = return . unHTMLHRElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHRElement where
  fromJSRef = return . fmap HTMLHRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLHRElement
instance IsElement HTMLHRElement
instance IsNode HTMLHRElement
instance IsEventTarget HTMLHRElement
instance IsGObject HTMLHRElement where
  toGObject = GObject . castRef . unHTMLHRElement
  unsafeCastGObject = HTMLHRElement . castRef . unGObject

castToHTMLHRElement :: IsGObject obj => obj -> HTMLHRElement
castToHTMLHRElement = castTo gTypeHTMLHRElement "HTMLHRElement"

foreign import javascript unsafe "window[\"HTMLHRElement\"]" gTypeHTMLHRElement' :: JSRef GType
gTypeHTMLHRElement = GType gTypeHTMLHRElement'
#else
type IsHTMLHRElement o = HTMLHRElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHeadElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement Mozilla HTMLHeadElement documentation>
newtype HTMLHeadElement = HTMLHeadElement (JSRef HTMLHeadElement) deriving (Eq)

unHTMLHeadElement (HTMLHeadElement o) = o

instance ToJSRef HTMLHeadElement where
  toJSRef = return . unHTMLHeadElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHeadElement where
  fromJSRef = return . fmap HTMLHeadElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLHeadElement
instance IsElement HTMLHeadElement
instance IsNode HTMLHeadElement
instance IsEventTarget HTMLHeadElement
instance IsGObject HTMLHeadElement where
  toGObject = GObject . castRef . unHTMLHeadElement
  unsafeCastGObject = HTMLHeadElement . castRef . unGObject

castToHTMLHeadElement :: IsGObject obj => obj -> HTMLHeadElement
castToHTMLHeadElement = castTo gTypeHTMLHeadElement "HTMLHeadElement"

foreign import javascript unsafe "window[\"HTMLHeadElement\"]" gTypeHTMLHeadElement' :: JSRef GType
gTypeHTMLHeadElement = GType gTypeHTMLHeadElement'
#else
type IsHTMLHeadElement o = HTMLHeadElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHeadingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement Mozilla HTMLHeadingElement documentation>
newtype HTMLHeadingElement = HTMLHeadingElement (JSRef HTMLHeadingElement) deriving (Eq)

unHTMLHeadingElement (HTMLHeadingElement o) = o

instance ToJSRef HTMLHeadingElement where
  toJSRef = return . unHTMLHeadingElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHeadingElement where
  fromJSRef = return . fmap HTMLHeadingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLHeadingElement
instance IsElement HTMLHeadingElement
instance IsNode HTMLHeadingElement
instance IsEventTarget HTMLHeadingElement
instance IsGObject HTMLHeadingElement where
  toGObject = GObject . castRef . unHTMLHeadingElement
  unsafeCastGObject = HTMLHeadingElement . castRef . unGObject

castToHTMLHeadingElement :: IsGObject obj => obj -> HTMLHeadingElement
castToHTMLHeadingElement = castTo gTypeHTMLHeadingElement "HTMLHeadingElement"

foreign import javascript unsafe "window[\"HTMLHeadingElement\"]" gTypeHTMLHeadingElement' :: JSRef GType
gTypeHTMLHeadingElement = GType gTypeHTMLHeadingElement'
#else
type IsHTMLHeadingElement o = HTMLHeadingElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHtmlElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement Mozilla HTMLHtmlElement documentation>
newtype HTMLHtmlElement = HTMLHtmlElement (JSRef HTMLHtmlElement) deriving (Eq)

unHTMLHtmlElement (HTMLHtmlElement o) = o

instance ToJSRef HTMLHtmlElement where
  toJSRef = return . unHTMLHtmlElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLHtmlElement where
  fromJSRef = return . fmap HTMLHtmlElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLHtmlElement
instance IsElement HTMLHtmlElement
instance IsNode HTMLHtmlElement
instance IsEventTarget HTMLHtmlElement
instance IsGObject HTMLHtmlElement where
  toGObject = GObject . castRef . unHTMLHtmlElement
  unsafeCastGObject = HTMLHtmlElement . castRef . unGObject

castToHTMLHtmlElement :: IsGObject obj => obj -> HTMLHtmlElement
castToHTMLHtmlElement = castTo gTypeHTMLHtmlElement "HTMLHtmlElement"

foreign import javascript unsafe "window[\"HTMLHtmlElement\"]" gTypeHTMLHtmlElement' :: JSRef GType
gTypeHTMLHtmlElement = GType gTypeHTMLHtmlElement'
#else
type IsHTMLHtmlElement o = HTMLHtmlElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLIFrameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement Mozilla HTMLIFrameElement documentation>
newtype HTMLIFrameElement = HTMLIFrameElement (JSRef HTMLIFrameElement) deriving (Eq)

unHTMLIFrameElement (HTMLIFrameElement o) = o

instance ToJSRef HTMLIFrameElement where
  toJSRef = return . unHTMLIFrameElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLIFrameElement where
  fromJSRef = return . fmap HTMLIFrameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLIFrameElement
instance IsElement HTMLIFrameElement
instance IsNode HTMLIFrameElement
instance IsEventTarget HTMLIFrameElement
instance IsGObject HTMLIFrameElement where
  toGObject = GObject . castRef . unHTMLIFrameElement
  unsafeCastGObject = HTMLIFrameElement . castRef . unGObject

castToHTMLIFrameElement :: IsGObject obj => obj -> HTMLIFrameElement
castToHTMLIFrameElement = castTo gTypeHTMLIFrameElement "HTMLIFrameElement"

foreign import javascript unsafe "window[\"HTMLIFrameElement\"]" gTypeHTMLIFrameElement' :: JSRef GType
gTypeHTMLIFrameElement = GType gTypeHTMLIFrameElement'
#else
type IsHTMLIFrameElement o = HTMLIFrameElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement Mozilla HTMLImageElement documentation>
newtype HTMLImageElement = HTMLImageElement (JSRef HTMLImageElement) deriving (Eq)

unHTMLImageElement (HTMLImageElement o) = o

instance ToJSRef HTMLImageElement where
  toJSRef = return . unHTMLImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLImageElement where
  fromJSRef = return . fmap HTMLImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLImageElement
instance IsElement HTMLImageElement
instance IsNode HTMLImageElement
instance IsEventTarget HTMLImageElement
instance IsGObject HTMLImageElement where
  toGObject = GObject . castRef . unHTMLImageElement
  unsafeCastGObject = HTMLImageElement . castRef . unGObject

castToHTMLImageElement :: IsGObject obj => obj -> HTMLImageElement
castToHTMLImageElement = castTo gTypeHTMLImageElement "HTMLImageElement"

foreign import javascript unsafe "window[\"HTMLImageElement\"]" gTypeHTMLImageElement' :: JSRef GType
gTypeHTMLImageElement = GType gTypeHTMLImageElement'
#else
type IsHTMLImageElement o = HTMLImageElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLInputElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement Mozilla HTMLInputElement documentation>
newtype HTMLInputElement = HTMLInputElement (JSRef HTMLInputElement) deriving (Eq)

unHTMLInputElement (HTMLInputElement o) = o

instance ToJSRef HTMLInputElement where
  toJSRef = return . unHTMLInputElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLInputElement where
  fromJSRef = return . fmap HTMLInputElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLInputElement
instance IsElement HTMLInputElement
instance IsNode HTMLInputElement
instance IsEventTarget HTMLInputElement
instance IsGObject HTMLInputElement where
  toGObject = GObject . castRef . unHTMLInputElement
  unsafeCastGObject = HTMLInputElement . castRef . unGObject

castToHTMLInputElement :: IsGObject obj => obj -> HTMLInputElement
castToHTMLInputElement = castTo gTypeHTMLInputElement "HTMLInputElement"

foreign import javascript unsafe "window[\"HTMLInputElement\"]" gTypeHTMLInputElement' :: JSRef GType
gTypeHTMLInputElement = GType gTypeHTMLInputElement'
#else
type IsHTMLInputElement o = HTMLInputElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLKeygenElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement Mozilla HTMLKeygenElement documentation>
newtype HTMLKeygenElement = HTMLKeygenElement (JSRef HTMLKeygenElement) deriving (Eq)

unHTMLKeygenElement (HTMLKeygenElement o) = o

instance ToJSRef HTMLKeygenElement where
  toJSRef = return . unHTMLKeygenElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLKeygenElement where
  fromJSRef = return . fmap HTMLKeygenElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLKeygenElement
instance IsElement HTMLKeygenElement
instance IsNode HTMLKeygenElement
instance IsEventTarget HTMLKeygenElement
instance IsGObject HTMLKeygenElement where
  toGObject = GObject . castRef . unHTMLKeygenElement
  unsafeCastGObject = HTMLKeygenElement . castRef . unGObject

castToHTMLKeygenElement :: IsGObject obj => obj -> HTMLKeygenElement
castToHTMLKeygenElement = castTo gTypeHTMLKeygenElement "HTMLKeygenElement"

foreign import javascript unsafe "window[\"HTMLKeygenElement\"]" gTypeHTMLKeygenElement' :: JSRef GType
gTypeHTMLKeygenElement = GType gTypeHTMLKeygenElement'
#else
type IsHTMLKeygenElement o = HTMLKeygenElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLIElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement Mozilla HTMLLIElement documentation>
newtype HTMLLIElement = HTMLLIElement (JSRef HTMLLIElement) deriving (Eq)

unHTMLLIElement (HTMLLIElement o) = o

instance ToJSRef HTMLLIElement where
  toJSRef = return . unHTMLLIElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLIElement where
  fromJSRef = return . fmap HTMLLIElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLLIElement
instance IsElement HTMLLIElement
instance IsNode HTMLLIElement
instance IsEventTarget HTMLLIElement
instance IsGObject HTMLLIElement where
  toGObject = GObject . castRef . unHTMLLIElement
  unsafeCastGObject = HTMLLIElement . castRef . unGObject

castToHTMLLIElement :: IsGObject obj => obj -> HTMLLIElement
castToHTMLLIElement = castTo gTypeHTMLLIElement "HTMLLIElement"

foreign import javascript unsafe "window[\"HTMLLIElement\"]" gTypeHTMLLIElement' :: JSRef GType
gTypeHTMLLIElement = GType gTypeHTMLLIElement'
#else
type IsHTMLLIElement o = HTMLLIElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLabelElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement Mozilla HTMLLabelElement documentation>
newtype HTMLLabelElement = HTMLLabelElement (JSRef HTMLLabelElement) deriving (Eq)

unHTMLLabelElement (HTMLLabelElement o) = o

instance ToJSRef HTMLLabelElement where
  toJSRef = return . unHTMLLabelElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLabelElement where
  fromJSRef = return . fmap HTMLLabelElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLLabelElement
instance IsElement HTMLLabelElement
instance IsNode HTMLLabelElement
instance IsEventTarget HTMLLabelElement
instance IsGObject HTMLLabelElement where
  toGObject = GObject . castRef . unHTMLLabelElement
  unsafeCastGObject = HTMLLabelElement . castRef . unGObject

castToHTMLLabelElement :: IsGObject obj => obj -> HTMLLabelElement
castToHTMLLabelElement = castTo gTypeHTMLLabelElement "HTMLLabelElement"

foreign import javascript unsafe "window[\"HTMLLabelElement\"]" gTypeHTMLLabelElement' :: JSRef GType
gTypeHTMLLabelElement = GType gTypeHTMLLabelElement'
#else
type IsHTMLLabelElement o = HTMLLabelElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLegendElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement Mozilla HTMLLegendElement documentation>
newtype HTMLLegendElement = HTMLLegendElement (JSRef HTMLLegendElement) deriving (Eq)

unHTMLLegendElement (HTMLLegendElement o) = o

instance ToJSRef HTMLLegendElement where
  toJSRef = return . unHTMLLegendElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLegendElement where
  fromJSRef = return . fmap HTMLLegendElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLLegendElement
instance IsElement HTMLLegendElement
instance IsNode HTMLLegendElement
instance IsEventTarget HTMLLegendElement
instance IsGObject HTMLLegendElement where
  toGObject = GObject . castRef . unHTMLLegendElement
  unsafeCastGObject = HTMLLegendElement . castRef . unGObject

castToHTMLLegendElement :: IsGObject obj => obj -> HTMLLegendElement
castToHTMLLegendElement = castTo gTypeHTMLLegendElement "HTMLLegendElement"

foreign import javascript unsafe "window[\"HTMLLegendElement\"]" gTypeHTMLLegendElement' :: JSRef GType
gTypeHTMLLegendElement = GType gTypeHTMLLegendElement'
#else
type IsHTMLLegendElement o = HTMLLegendElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLinkElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement Mozilla HTMLLinkElement documentation>
newtype HTMLLinkElement = HTMLLinkElement (JSRef HTMLLinkElement) deriving (Eq)

unHTMLLinkElement (HTMLLinkElement o) = o

instance ToJSRef HTMLLinkElement where
  toJSRef = return . unHTMLLinkElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLLinkElement where
  fromJSRef = return . fmap HTMLLinkElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLLinkElement
instance IsElement HTMLLinkElement
instance IsNode HTMLLinkElement
instance IsEventTarget HTMLLinkElement
instance IsGObject HTMLLinkElement where
  toGObject = GObject . castRef . unHTMLLinkElement
  unsafeCastGObject = HTMLLinkElement . castRef . unGObject

castToHTMLLinkElement :: IsGObject obj => obj -> HTMLLinkElement
castToHTMLLinkElement = castTo gTypeHTMLLinkElement "HTMLLinkElement"

foreign import javascript unsafe "window[\"HTMLLinkElement\"]" gTypeHTMLLinkElement' :: JSRef GType
gTypeHTMLLinkElement = GType gTypeHTMLLinkElement'
#else
type IsHTMLLinkElement o = HTMLLinkElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMapElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement Mozilla HTMLMapElement documentation>
newtype HTMLMapElement = HTMLMapElement (JSRef HTMLMapElement) deriving (Eq)

unHTMLMapElement (HTMLMapElement o) = o

instance ToJSRef HTMLMapElement where
  toJSRef = return . unHTMLMapElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMapElement where
  fromJSRef = return . fmap HTMLMapElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLMapElement
instance IsElement HTMLMapElement
instance IsNode HTMLMapElement
instance IsEventTarget HTMLMapElement
instance IsGObject HTMLMapElement where
  toGObject = GObject . castRef . unHTMLMapElement
  unsafeCastGObject = HTMLMapElement . castRef . unGObject

castToHTMLMapElement :: IsGObject obj => obj -> HTMLMapElement
castToHTMLMapElement = castTo gTypeHTMLMapElement "HTMLMapElement"

foreign import javascript unsafe "window[\"HTMLMapElement\"]" gTypeHTMLMapElement' :: JSRef GType
gTypeHTMLMapElement = GType gTypeHTMLMapElement'
#else
type IsHTMLMapElement o = HTMLMapElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMarqueeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement Mozilla HTMLMarqueeElement documentation>
newtype HTMLMarqueeElement = HTMLMarqueeElement (JSRef HTMLMarqueeElement) deriving (Eq)

unHTMLMarqueeElement (HTMLMarqueeElement o) = o

instance ToJSRef HTMLMarqueeElement where
  toJSRef = return . unHTMLMarqueeElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMarqueeElement where
  fromJSRef = return . fmap HTMLMarqueeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLMarqueeElement
instance IsElement HTMLMarqueeElement
instance IsNode HTMLMarqueeElement
instance IsEventTarget HTMLMarqueeElement
instance IsGObject HTMLMarqueeElement where
  toGObject = GObject . castRef . unHTMLMarqueeElement
  unsafeCastGObject = HTMLMarqueeElement . castRef . unGObject

castToHTMLMarqueeElement :: IsGObject obj => obj -> HTMLMarqueeElement
castToHTMLMarqueeElement = castTo gTypeHTMLMarqueeElement "HTMLMarqueeElement"

foreign import javascript unsafe "window[\"HTMLMarqueeElement\"]" gTypeHTMLMarqueeElement' :: JSRef GType
gTypeHTMLMarqueeElement = GType gTypeHTMLMarqueeElement'
#else
type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMediaElement".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement Mozilla HTMLMediaElement documentation>
newtype HTMLMediaElement = HTMLMediaElement (JSRef HTMLMediaElement) deriving (Eq)

unHTMLMediaElement (HTMLMediaElement o) = o

instance ToJSRef HTMLMediaElement where
  toJSRef = return . unHTMLMediaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMediaElement where
  fromJSRef = return . fmap HTMLMediaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsHTMLMediaElement o
toHTMLMediaElement :: IsHTMLMediaElement o => o -> HTMLMediaElement
toHTMLMediaElement = unsafeCastGObject . toGObject

instance IsHTMLMediaElement HTMLMediaElement
instance IsGObject HTMLMediaElement where
  toGObject = GObject . castRef . unHTMLMediaElement
  unsafeCastGObject = HTMLMediaElement . castRef . unGObject

castToHTMLMediaElement :: IsGObject obj => obj -> HTMLMediaElement
castToHTMLMediaElement = castTo gTypeHTMLMediaElement "HTMLMediaElement"

foreign import javascript unsafe "window[\"HTMLMediaElement\"]" gTypeHTMLMediaElement' :: JSRef GType
gTypeHTMLMediaElement = GType gTypeHTMLMediaElement'
#else
type IsHTMLMediaElement o = HTMLMediaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMenuElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement Mozilla HTMLMenuElement documentation>
newtype HTMLMenuElement = HTMLMenuElement (JSRef HTMLMenuElement) deriving (Eq)

unHTMLMenuElement (HTMLMenuElement o) = o

instance ToJSRef HTMLMenuElement where
  toJSRef = return . unHTMLMenuElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMenuElement where
  fromJSRef = return . fmap HTMLMenuElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLMenuElement
instance IsElement HTMLMenuElement
instance IsNode HTMLMenuElement
instance IsEventTarget HTMLMenuElement
instance IsGObject HTMLMenuElement where
  toGObject = GObject . castRef . unHTMLMenuElement
  unsafeCastGObject = HTMLMenuElement . castRef . unGObject

castToHTMLMenuElement :: IsGObject obj => obj -> HTMLMenuElement
castToHTMLMenuElement = castTo gTypeHTMLMenuElement "HTMLMenuElement"

foreign import javascript unsafe "window[\"HTMLMenuElement\"]" gTypeHTMLMenuElement' :: JSRef GType
gTypeHTMLMenuElement = GType gTypeHTMLMenuElement'
#else
type IsHTMLMenuElement o = HTMLMenuElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMetaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement Mozilla HTMLMetaElement documentation>
newtype HTMLMetaElement = HTMLMetaElement (JSRef HTMLMetaElement) deriving (Eq)

unHTMLMetaElement (HTMLMetaElement o) = o

instance ToJSRef HTMLMetaElement where
  toJSRef = return . unHTMLMetaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMetaElement where
  fromJSRef = return . fmap HTMLMetaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLMetaElement
instance IsElement HTMLMetaElement
instance IsNode HTMLMetaElement
instance IsEventTarget HTMLMetaElement
instance IsGObject HTMLMetaElement where
  toGObject = GObject . castRef . unHTMLMetaElement
  unsafeCastGObject = HTMLMetaElement . castRef . unGObject

castToHTMLMetaElement :: IsGObject obj => obj -> HTMLMetaElement
castToHTMLMetaElement = castTo gTypeHTMLMetaElement "HTMLMetaElement"

foreign import javascript unsafe "window[\"HTMLMetaElement\"]" gTypeHTMLMetaElement' :: JSRef GType
gTypeHTMLMetaElement = GType gTypeHTMLMetaElement'
#else
type IsHTMLMetaElement o = HTMLMetaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMeterElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement Mozilla HTMLMeterElement documentation>
newtype HTMLMeterElement = HTMLMeterElement (JSRef HTMLMeterElement) deriving (Eq)

unHTMLMeterElement (HTMLMeterElement o) = o

instance ToJSRef HTMLMeterElement where
  toJSRef = return . unHTMLMeterElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMeterElement where
  fromJSRef = return . fmap HTMLMeterElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLMeterElement
instance IsElement HTMLMeterElement
instance IsNode HTMLMeterElement
instance IsEventTarget HTMLMeterElement
instance IsGObject HTMLMeterElement where
  toGObject = GObject . castRef . unHTMLMeterElement
  unsafeCastGObject = HTMLMeterElement . castRef . unGObject

castToHTMLMeterElement :: IsGObject obj => obj -> HTMLMeterElement
castToHTMLMeterElement = castTo gTypeHTMLMeterElement "HTMLMeterElement"

foreign import javascript unsafe "window[\"HTMLMeterElement\"]" gTypeHTMLMeterElement' :: JSRef GType
gTypeHTMLMeterElement = GType gTypeHTMLMeterElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLModElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement Mozilla HTMLModElement documentation>
newtype HTMLModElement = HTMLModElement (JSRef HTMLModElement) deriving (Eq)

unHTMLModElement (HTMLModElement o) = o

instance ToJSRef HTMLModElement where
  toJSRef = return . unHTMLModElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLModElement where
  fromJSRef = return . fmap HTMLModElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLModElement
instance IsElement HTMLModElement
instance IsNode HTMLModElement
instance IsEventTarget HTMLModElement
instance IsGObject HTMLModElement where
  toGObject = GObject . castRef . unHTMLModElement
  unsafeCastGObject = HTMLModElement . castRef . unGObject

castToHTMLModElement :: IsGObject obj => obj -> HTMLModElement
castToHTMLModElement = castTo gTypeHTMLModElement "HTMLModElement"

foreign import javascript unsafe "window[\"HTMLModElement\"]" gTypeHTMLModElement' :: JSRef GType
gTypeHTMLModElement = GType gTypeHTMLModElement'
#else
type IsHTMLModElement o = HTMLModElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement Mozilla HTMLOListElement documentation>
newtype HTMLOListElement = HTMLOListElement (JSRef HTMLOListElement) deriving (Eq)

unHTMLOListElement (HTMLOListElement o) = o

instance ToJSRef HTMLOListElement where
  toJSRef = return . unHTMLOListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOListElement where
  fromJSRef = return . fmap HTMLOListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLOListElement
instance IsElement HTMLOListElement
instance IsNode HTMLOListElement
instance IsEventTarget HTMLOListElement
instance IsGObject HTMLOListElement where
  toGObject = GObject . castRef . unHTMLOListElement
  unsafeCastGObject = HTMLOListElement . castRef . unGObject

castToHTMLOListElement :: IsGObject obj => obj -> HTMLOListElement
castToHTMLOListElement = castTo gTypeHTMLOListElement "HTMLOListElement"

foreign import javascript unsafe "window[\"HTMLOListElement\"]" gTypeHTMLOListElement' :: JSRef GType
gTypeHTMLOListElement = GType gTypeHTMLOListElement'
#else
type IsHTMLOListElement o = HTMLOListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLObjectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement Mozilla HTMLObjectElement documentation>
newtype HTMLObjectElement = HTMLObjectElement (JSRef HTMLObjectElement) deriving (Eq)

unHTMLObjectElement (HTMLObjectElement o) = o

instance ToJSRef HTMLObjectElement where
  toJSRef = return . unHTMLObjectElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLObjectElement where
  fromJSRef = return . fmap HTMLObjectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLObjectElement
instance IsElement HTMLObjectElement
instance IsNode HTMLObjectElement
instance IsEventTarget HTMLObjectElement
instance IsGObject HTMLObjectElement where
  toGObject = GObject . castRef . unHTMLObjectElement
  unsafeCastGObject = HTMLObjectElement . castRef . unGObject

castToHTMLObjectElement :: IsGObject obj => obj -> HTMLObjectElement
castToHTMLObjectElement = castTo gTypeHTMLObjectElement "HTMLObjectElement"

foreign import javascript unsafe "window[\"HTMLObjectElement\"]" gTypeHTMLObjectElement' :: JSRef GType
gTypeHTMLObjectElement = GType gTypeHTMLObjectElement'
#else
type IsHTMLObjectElement o = HTMLObjectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOptGroupElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement Mozilla HTMLOptGroupElement documentation>
newtype HTMLOptGroupElement = HTMLOptGroupElement (JSRef HTMLOptGroupElement) deriving (Eq)

unHTMLOptGroupElement (HTMLOptGroupElement o) = o

instance ToJSRef HTMLOptGroupElement where
  toJSRef = return . unHTMLOptGroupElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptGroupElement where
  fromJSRef = return . fmap HTMLOptGroupElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLOptGroupElement
instance IsElement HTMLOptGroupElement
instance IsNode HTMLOptGroupElement
instance IsEventTarget HTMLOptGroupElement
instance IsGObject HTMLOptGroupElement where
  toGObject = GObject . castRef . unHTMLOptGroupElement
  unsafeCastGObject = HTMLOptGroupElement . castRef . unGObject

castToHTMLOptGroupElement :: IsGObject obj => obj -> HTMLOptGroupElement
castToHTMLOptGroupElement = castTo gTypeHTMLOptGroupElement "HTMLOptGroupElement"

foreign import javascript unsafe "window[\"HTMLOptGroupElement\"]" gTypeHTMLOptGroupElement' :: JSRef GType
gTypeHTMLOptGroupElement = GType gTypeHTMLOptGroupElement'
#else
type IsHTMLOptGroupElement o = HTMLOptGroupElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOptionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement Mozilla HTMLOptionElement documentation>
newtype HTMLOptionElement = HTMLOptionElement (JSRef HTMLOptionElement) deriving (Eq)

unHTMLOptionElement (HTMLOptionElement o) = o

instance ToJSRef HTMLOptionElement where
  toJSRef = return . unHTMLOptionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptionElement where
  fromJSRef = return . fmap HTMLOptionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLOptionElement
instance IsElement HTMLOptionElement
instance IsNode HTMLOptionElement
instance IsEventTarget HTMLOptionElement
instance IsGObject HTMLOptionElement where
  toGObject = GObject . castRef . unHTMLOptionElement
  unsafeCastGObject = HTMLOptionElement . castRef . unGObject

castToHTMLOptionElement :: IsGObject obj => obj -> HTMLOptionElement
castToHTMLOptionElement = castTo gTypeHTMLOptionElement "HTMLOptionElement"

foreign import javascript unsafe "window[\"HTMLOptionElement\"]" gTypeHTMLOptionElement' :: JSRef GType
gTypeHTMLOptionElement = GType gTypeHTMLOptionElement'
#else
type IsHTMLOptionElement o = HTMLOptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOptionsCollection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLCollection"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection Mozilla HTMLOptionsCollection documentation>
newtype HTMLOptionsCollection = HTMLOptionsCollection (JSRef HTMLOptionsCollection) deriving (Eq)

unHTMLOptionsCollection (HTMLOptionsCollection o) = o

instance ToJSRef HTMLOptionsCollection where
  toJSRef = return . unHTMLOptionsCollection
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOptionsCollection where
  fromJSRef = return . fmap HTMLOptionsCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLCollection HTMLOptionsCollection
instance IsGObject HTMLOptionsCollection where
  toGObject = GObject . castRef . unHTMLOptionsCollection
  unsafeCastGObject = HTMLOptionsCollection . castRef . unGObject

castToHTMLOptionsCollection :: IsGObject obj => obj -> HTMLOptionsCollection
castToHTMLOptionsCollection = castTo gTypeHTMLOptionsCollection "HTMLOptionsCollection"

foreign import javascript unsafe "window[\"HTMLOptionsCollection\"]" gTypeHTMLOptionsCollection' :: JSRef GType
gTypeHTMLOptionsCollection = GType gTypeHTMLOptionsCollection'
#else
type IsHTMLOptionsCollection o = HTMLOptionsCollectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOutputElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement Mozilla HTMLOutputElement documentation>
newtype HTMLOutputElement = HTMLOutputElement (JSRef HTMLOutputElement) deriving (Eq)

unHTMLOutputElement (HTMLOutputElement o) = o

instance ToJSRef HTMLOutputElement where
  toJSRef = return . unHTMLOutputElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOutputElement where
  fromJSRef = return . fmap HTMLOutputElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLOutputElement
instance IsElement HTMLOutputElement
instance IsNode HTMLOutputElement
instance IsEventTarget HTMLOutputElement
instance IsGObject HTMLOutputElement where
  toGObject = GObject . castRef . unHTMLOutputElement
  unsafeCastGObject = HTMLOutputElement . castRef . unGObject

castToHTMLOutputElement :: IsGObject obj => obj -> HTMLOutputElement
castToHTMLOutputElement = castTo gTypeHTMLOutputElement "HTMLOutputElement"

foreign import javascript unsafe "window[\"HTMLOutputElement\"]" gTypeHTMLOutputElement' :: JSRef GType
gTypeHTMLOutputElement = GType gTypeHTMLOutputElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLParagraphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement Mozilla HTMLParagraphElement documentation>
newtype HTMLParagraphElement = HTMLParagraphElement (JSRef HTMLParagraphElement) deriving (Eq)

unHTMLParagraphElement (HTMLParagraphElement o) = o

instance ToJSRef HTMLParagraphElement where
  toJSRef = return . unHTMLParagraphElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLParagraphElement where
  fromJSRef = return . fmap HTMLParagraphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLParagraphElement
instance IsElement HTMLParagraphElement
instance IsNode HTMLParagraphElement
instance IsEventTarget HTMLParagraphElement
instance IsGObject HTMLParagraphElement where
  toGObject = GObject . castRef . unHTMLParagraphElement
  unsafeCastGObject = HTMLParagraphElement . castRef . unGObject

castToHTMLParagraphElement :: IsGObject obj => obj -> HTMLParagraphElement
castToHTMLParagraphElement = castTo gTypeHTMLParagraphElement "HTMLParagraphElement"

foreign import javascript unsafe "window[\"HTMLParagraphElement\"]" gTypeHTMLParagraphElement' :: JSRef GType
gTypeHTMLParagraphElement = GType gTypeHTMLParagraphElement'
#else
type IsHTMLParagraphElement o = HTMLParagraphElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLParamElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement Mozilla HTMLParamElement documentation>
newtype HTMLParamElement = HTMLParamElement (JSRef HTMLParamElement) deriving (Eq)

unHTMLParamElement (HTMLParamElement o) = o

instance ToJSRef HTMLParamElement where
  toJSRef = return . unHTMLParamElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLParamElement where
  fromJSRef = return . fmap HTMLParamElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLParamElement
instance IsElement HTMLParamElement
instance IsNode HTMLParamElement
instance IsEventTarget HTMLParamElement
instance IsGObject HTMLParamElement where
  toGObject = GObject . castRef . unHTMLParamElement
  unsafeCastGObject = HTMLParamElement . castRef . unGObject

castToHTMLParamElement :: IsGObject obj => obj -> HTMLParamElement
castToHTMLParamElement = castTo gTypeHTMLParamElement "HTMLParamElement"

foreign import javascript unsafe "window[\"HTMLParamElement\"]" gTypeHTMLParamElement' :: JSRef GType
gTypeHTMLParamElement = GType gTypeHTMLParamElement'
#else
type IsHTMLParamElement o = HTMLParamElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLPreElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement Mozilla HTMLPreElement documentation>
newtype HTMLPreElement = HTMLPreElement (JSRef HTMLPreElement) deriving (Eq)

unHTMLPreElement (HTMLPreElement o) = o

instance ToJSRef HTMLPreElement where
  toJSRef = return . unHTMLPreElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLPreElement where
  fromJSRef = return . fmap HTMLPreElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLPreElement
instance IsElement HTMLPreElement
instance IsNode HTMLPreElement
instance IsEventTarget HTMLPreElement
instance IsGObject HTMLPreElement where
  toGObject = GObject . castRef . unHTMLPreElement
  unsafeCastGObject = HTMLPreElement . castRef . unGObject

castToHTMLPreElement :: IsGObject obj => obj -> HTMLPreElement
castToHTMLPreElement = castTo gTypeHTMLPreElement "HTMLPreElement"

foreign import javascript unsafe "window[\"HTMLPreElement\"]" gTypeHTMLPreElement' :: JSRef GType
gTypeHTMLPreElement = GType gTypeHTMLPreElement'
#else
type IsHTMLPreElement o = HTMLPreElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLProgressElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement Mozilla HTMLProgressElement documentation>
newtype HTMLProgressElement = HTMLProgressElement (JSRef HTMLProgressElement) deriving (Eq)

unHTMLProgressElement (HTMLProgressElement o) = o

instance ToJSRef HTMLProgressElement where
  toJSRef = return . unHTMLProgressElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLProgressElement where
  fromJSRef = return . fmap HTMLProgressElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLProgressElement
instance IsElement HTMLProgressElement
instance IsNode HTMLProgressElement
instance IsEventTarget HTMLProgressElement
instance IsGObject HTMLProgressElement where
  toGObject = GObject . castRef . unHTMLProgressElement
  unsafeCastGObject = HTMLProgressElement . castRef . unGObject

castToHTMLProgressElement :: IsGObject obj => obj -> HTMLProgressElement
castToHTMLProgressElement = castTo gTypeHTMLProgressElement "HTMLProgressElement"

foreign import javascript unsafe "window[\"HTMLProgressElement\"]" gTypeHTMLProgressElement' :: JSRef GType
gTypeHTMLProgressElement = GType gTypeHTMLProgressElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLQuoteElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement Mozilla HTMLQuoteElement documentation>
newtype HTMLQuoteElement = HTMLQuoteElement (JSRef HTMLQuoteElement) deriving (Eq)

unHTMLQuoteElement (HTMLQuoteElement o) = o

instance ToJSRef HTMLQuoteElement where
  toJSRef = return . unHTMLQuoteElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLQuoteElement where
  fromJSRef = return . fmap HTMLQuoteElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLQuoteElement
instance IsElement HTMLQuoteElement
instance IsNode HTMLQuoteElement
instance IsEventTarget HTMLQuoteElement
instance IsGObject HTMLQuoteElement where
  toGObject = GObject . castRef . unHTMLQuoteElement
  unsafeCastGObject = HTMLQuoteElement . castRef . unGObject

castToHTMLQuoteElement :: IsGObject obj => obj -> HTMLQuoteElement
castToHTMLQuoteElement = castTo gTypeHTMLQuoteElement "HTMLQuoteElement"

foreign import javascript unsafe "window[\"HTMLQuoteElement\"]" gTypeHTMLQuoteElement' :: JSRef GType
gTypeHTMLQuoteElement = GType gTypeHTMLQuoteElement'
#else
type IsHTMLQuoteElement o = HTMLQuoteElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLScriptElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement Mozilla HTMLScriptElement documentation>
newtype HTMLScriptElement = HTMLScriptElement (JSRef HTMLScriptElement) deriving (Eq)

unHTMLScriptElement (HTMLScriptElement o) = o

instance ToJSRef HTMLScriptElement where
  toJSRef = return . unHTMLScriptElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLScriptElement where
  fromJSRef = return . fmap HTMLScriptElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLScriptElement
instance IsElement HTMLScriptElement
instance IsNode HTMLScriptElement
instance IsEventTarget HTMLScriptElement
instance IsGObject HTMLScriptElement where
  toGObject = GObject . castRef . unHTMLScriptElement
  unsafeCastGObject = HTMLScriptElement . castRef . unGObject

castToHTMLScriptElement :: IsGObject obj => obj -> HTMLScriptElement
castToHTMLScriptElement = castTo gTypeHTMLScriptElement "HTMLScriptElement"

foreign import javascript unsafe "window[\"HTMLScriptElement\"]" gTypeHTMLScriptElement' :: JSRef GType
gTypeHTMLScriptElement = GType gTypeHTMLScriptElement'
#else
type IsHTMLScriptElement o = HTMLScriptElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLSelectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement Mozilla HTMLSelectElement documentation>
newtype HTMLSelectElement = HTMLSelectElement (JSRef HTMLSelectElement) deriving (Eq)

unHTMLSelectElement (HTMLSelectElement o) = o

instance ToJSRef HTMLSelectElement where
  toJSRef = return . unHTMLSelectElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSelectElement where
  fromJSRef = return . fmap HTMLSelectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLSelectElement
instance IsElement HTMLSelectElement
instance IsNode HTMLSelectElement
instance IsEventTarget HTMLSelectElement
instance IsGObject HTMLSelectElement where
  toGObject = GObject . castRef . unHTMLSelectElement
  unsafeCastGObject = HTMLSelectElement . castRef . unGObject

castToHTMLSelectElement :: IsGObject obj => obj -> HTMLSelectElement
castToHTMLSelectElement = castTo gTypeHTMLSelectElement "HTMLSelectElement"

foreign import javascript unsafe "window[\"HTMLSelectElement\"]" gTypeHTMLSelectElement' :: JSRef GType
gTypeHTMLSelectElement = GType gTypeHTMLSelectElement'
#else
type IsHTMLSelectElement o = HTMLSelectElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLSourceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement Mozilla HTMLSourceElement documentation>
newtype HTMLSourceElement = HTMLSourceElement (JSRef HTMLSourceElement) deriving (Eq)

unHTMLSourceElement (HTMLSourceElement o) = o

instance ToJSRef HTMLSourceElement where
  toJSRef = return . unHTMLSourceElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSourceElement where
  fromJSRef = return . fmap HTMLSourceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLSourceElement
instance IsElement HTMLSourceElement
instance IsNode HTMLSourceElement
instance IsEventTarget HTMLSourceElement
instance IsGObject HTMLSourceElement where
  toGObject = GObject . castRef . unHTMLSourceElement
  unsafeCastGObject = HTMLSourceElement . castRef . unGObject

castToHTMLSourceElement :: IsGObject obj => obj -> HTMLSourceElement
castToHTMLSourceElement = castTo gTypeHTMLSourceElement "HTMLSourceElement"

foreign import javascript unsafe "window[\"HTMLSourceElement\"]" gTypeHTMLSourceElement' :: JSRef GType
gTypeHTMLSourceElement = GType gTypeHTMLSourceElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLSpanElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement Mozilla HTMLSpanElement documentation>
newtype HTMLSpanElement = HTMLSpanElement (JSRef HTMLSpanElement) deriving (Eq)

unHTMLSpanElement (HTMLSpanElement o) = o

instance ToJSRef HTMLSpanElement where
  toJSRef = return . unHTMLSpanElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSpanElement where
  fromJSRef = return . fmap HTMLSpanElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLSpanElement
instance IsElement HTMLSpanElement
instance IsNode HTMLSpanElement
instance IsEventTarget HTMLSpanElement
instance IsGObject HTMLSpanElement where
  toGObject = GObject . castRef . unHTMLSpanElement
  unsafeCastGObject = HTMLSpanElement . castRef . unGObject

castToHTMLSpanElement :: IsGObject obj => obj -> HTMLSpanElement
castToHTMLSpanElement = castTo gTypeHTMLSpanElement "HTMLSpanElement"

foreign import javascript unsafe "window[\"HTMLSpanElement\"]" gTypeHTMLSpanElement' :: JSRef GType
gTypeHTMLSpanElement = GType gTypeHTMLSpanElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLStyleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement Mozilla HTMLStyleElement documentation>
newtype HTMLStyleElement = HTMLStyleElement (JSRef HTMLStyleElement) deriving (Eq)

unHTMLStyleElement (HTMLStyleElement o) = o

instance ToJSRef HTMLStyleElement where
  toJSRef = return . unHTMLStyleElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLStyleElement where
  fromJSRef = return . fmap HTMLStyleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLStyleElement
instance IsElement HTMLStyleElement
instance IsNode HTMLStyleElement
instance IsEventTarget HTMLStyleElement
instance IsGObject HTMLStyleElement where
  toGObject = GObject . castRef . unHTMLStyleElement
  unsafeCastGObject = HTMLStyleElement . castRef . unGObject

castToHTMLStyleElement :: IsGObject obj => obj -> HTMLStyleElement
castToHTMLStyleElement = castTo gTypeHTMLStyleElement "HTMLStyleElement"

foreign import javascript unsafe "window[\"HTMLStyleElement\"]" gTypeHTMLStyleElement' :: JSRef GType
gTypeHTMLStyleElement = GType gTypeHTMLStyleElement'
#else
type IsHTMLStyleElement o = HTMLStyleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableCaptionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement Mozilla HTMLTableCaptionElement documentation>
newtype HTMLTableCaptionElement = HTMLTableCaptionElement (JSRef HTMLTableCaptionElement) deriving (Eq)

unHTMLTableCaptionElement (HTMLTableCaptionElement o) = o

instance ToJSRef HTMLTableCaptionElement where
  toJSRef = return . unHTMLTableCaptionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableCaptionElement where
  fromJSRef = return . fmap HTMLTableCaptionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableCaptionElement
instance IsElement HTMLTableCaptionElement
instance IsNode HTMLTableCaptionElement
instance IsEventTarget HTMLTableCaptionElement
instance IsGObject HTMLTableCaptionElement where
  toGObject = GObject . castRef . unHTMLTableCaptionElement
  unsafeCastGObject = HTMLTableCaptionElement . castRef . unGObject

castToHTMLTableCaptionElement :: IsGObject obj => obj -> HTMLTableCaptionElement
castToHTMLTableCaptionElement = castTo gTypeHTMLTableCaptionElement "HTMLTableCaptionElement"

foreign import javascript unsafe "window[\"HTMLTableCaptionElement\"]" gTypeHTMLTableCaptionElement' :: JSRef GType
gTypeHTMLTableCaptionElement = GType gTypeHTMLTableCaptionElement'
#else
type IsHTMLTableCaptionElement o = HTMLTableCaptionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableCellElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement Mozilla HTMLTableCellElement documentation>
newtype HTMLTableCellElement = HTMLTableCellElement (JSRef HTMLTableCellElement) deriving (Eq)

unHTMLTableCellElement (HTMLTableCellElement o) = o

instance ToJSRef HTMLTableCellElement where
  toJSRef = return . unHTMLTableCellElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableCellElement where
  fromJSRef = return . fmap HTMLTableCellElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableCellElement
instance IsElement HTMLTableCellElement
instance IsNode HTMLTableCellElement
instance IsEventTarget HTMLTableCellElement
instance IsGObject HTMLTableCellElement where
  toGObject = GObject . castRef . unHTMLTableCellElement
  unsafeCastGObject = HTMLTableCellElement . castRef . unGObject

castToHTMLTableCellElement :: IsGObject obj => obj -> HTMLTableCellElement
castToHTMLTableCellElement = castTo gTypeHTMLTableCellElement "HTMLTableCellElement"

foreign import javascript unsafe "window[\"HTMLTableCellElement\"]" gTypeHTMLTableCellElement' :: JSRef GType
gTypeHTMLTableCellElement = GType gTypeHTMLTableCellElement'
#else
type IsHTMLTableCellElement o = HTMLTableCellElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableColElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement Mozilla HTMLTableColElement documentation>
newtype HTMLTableColElement = HTMLTableColElement (JSRef HTMLTableColElement) deriving (Eq)

unHTMLTableColElement (HTMLTableColElement o) = o

instance ToJSRef HTMLTableColElement where
  toJSRef = return . unHTMLTableColElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableColElement where
  fromJSRef = return . fmap HTMLTableColElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableColElement
instance IsElement HTMLTableColElement
instance IsNode HTMLTableColElement
instance IsEventTarget HTMLTableColElement
instance IsGObject HTMLTableColElement where
  toGObject = GObject . castRef . unHTMLTableColElement
  unsafeCastGObject = HTMLTableColElement . castRef . unGObject

castToHTMLTableColElement :: IsGObject obj => obj -> HTMLTableColElement
castToHTMLTableColElement = castTo gTypeHTMLTableColElement "HTMLTableColElement"

foreign import javascript unsafe "window[\"HTMLTableColElement\"]" gTypeHTMLTableColElement' :: JSRef GType
gTypeHTMLTableColElement = GType gTypeHTMLTableColElement'
#else
type IsHTMLTableColElement o = HTMLTableColElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement Mozilla HTMLTableElement documentation>
newtype HTMLTableElement = HTMLTableElement (JSRef HTMLTableElement) deriving (Eq)

unHTMLTableElement (HTMLTableElement o) = o

instance ToJSRef HTMLTableElement where
  toJSRef = return . unHTMLTableElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableElement where
  fromJSRef = return . fmap HTMLTableElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableElement
instance IsElement HTMLTableElement
instance IsNode HTMLTableElement
instance IsEventTarget HTMLTableElement
instance IsGObject HTMLTableElement where
  toGObject = GObject . castRef . unHTMLTableElement
  unsafeCastGObject = HTMLTableElement . castRef . unGObject

castToHTMLTableElement :: IsGObject obj => obj -> HTMLTableElement
castToHTMLTableElement = castTo gTypeHTMLTableElement "HTMLTableElement"

foreign import javascript unsafe "window[\"HTMLTableElement\"]" gTypeHTMLTableElement' :: JSRef GType
gTypeHTMLTableElement = GType gTypeHTMLTableElement'
#else
type IsHTMLTableElement o = HTMLTableElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableRowElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement Mozilla HTMLTableRowElement documentation>
newtype HTMLTableRowElement = HTMLTableRowElement (JSRef HTMLTableRowElement) deriving (Eq)

unHTMLTableRowElement (HTMLTableRowElement o) = o

instance ToJSRef HTMLTableRowElement where
  toJSRef = return . unHTMLTableRowElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableRowElement where
  fromJSRef = return . fmap HTMLTableRowElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableRowElement
instance IsElement HTMLTableRowElement
instance IsNode HTMLTableRowElement
instance IsEventTarget HTMLTableRowElement
instance IsGObject HTMLTableRowElement where
  toGObject = GObject . castRef . unHTMLTableRowElement
  unsafeCastGObject = HTMLTableRowElement . castRef . unGObject

castToHTMLTableRowElement :: IsGObject obj => obj -> HTMLTableRowElement
castToHTMLTableRowElement = castTo gTypeHTMLTableRowElement "HTMLTableRowElement"

foreign import javascript unsafe "window[\"HTMLTableRowElement\"]" gTypeHTMLTableRowElement' :: JSRef GType
gTypeHTMLTableRowElement = GType gTypeHTMLTableRowElement'
#else
type IsHTMLTableRowElement o = HTMLTableRowElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableSectionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement Mozilla HTMLTableSectionElement documentation>
newtype HTMLTableSectionElement = HTMLTableSectionElement (JSRef HTMLTableSectionElement) deriving (Eq)

unHTMLTableSectionElement (HTMLTableSectionElement o) = o

instance ToJSRef HTMLTableSectionElement where
  toJSRef = return . unHTMLTableSectionElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTableSectionElement where
  fromJSRef = return . fmap HTMLTableSectionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTableSectionElement
instance IsElement HTMLTableSectionElement
instance IsNode HTMLTableSectionElement
instance IsEventTarget HTMLTableSectionElement
instance IsGObject HTMLTableSectionElement where
  toGObject = GObject . castRef . unHTMLTableSectionElement
  unsafeCastGObject = HTMLTableSectionElement . castRef . unGObject

castToHTMLTableSectionElement :: IsGObject obj => obj -> HTMLTableSectionElement
castToHTMLTableSectionElement = castTo gTypeHTMLTableSectionElement "HTMLTableSectionElement"

foreign import javascript unsafe "window[\"HTMLTableSectionElement\"]" gTypeHTMLTableSectionElement' :: JSRef GType
gTypeHTMLTableSectionElement = GType gTypeHTMLTableSectionElement'
#else
type IsHTMLTableSectionElement o = HTMLTableSectionElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTemplateElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement Mozilla HTMLTemplateElement documentation>
newtype HTMLTemplateElement = HTMLTemplateElement (JSRef HTMLTemplateElement) deriving (Eq)

unHTMLTemplateElement (HTMLTemplateElement o) = o

instance ToJSRef HTMLTemplateElement where
  toJSRef = return . unHTMLTemplateElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTemplateElement where
  fromJSRef = return . fmap HTMLTemplateElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTemplateElement
instance IsElement HTMLTemplateElement
instance IsNode HTMLTemplateElement
instance IsEventTarget HTMLTemplateElement
instance IsGObject HTMLTemplateElement where
  toGObject = GObject . castRef . unHTMLTemplateElement
  unsafeCastGObject = HTMLTemplateElement . castRef . unGObject

castToHTMLTemplateElement :: IsGObject obj => obj -> HTMLTemplateElement
castToHTMLTemplateElement = castTo gTypeHTMLTemplateElement "HTMLTemplateElement"

foreign import javascript unsafe "window[\"HTMLTemplateElement\"]" gTypeHTMLTemplateElement' :: JSRef GType
gTypeHTMLTemplateElement = GType gTypeHTMLTemplateElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTextAreaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement Mozilla HTMLTextAreaElement documentation>
newtype HTMLTextAreaElement = HTMLTextAreaElement (JSRef HTMLTextAreaElement) deriving (Eq)

unHTMLTextAreaElement (HTMLTextAreaElement o) = o

instance ToJSRef HTMLTextAreaElement where
  toJSRef = return . unHTMLTextAreaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTextAreaElement where
  fromJSRef = return . fmap HTMLTextAreaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTextAreaElement
instance IsElement HTMLTextAreaElement
instance IsNode HTMLTextAreaElement
instance IsEventTarget HTMLTextAreaElement
instance IsGObject HTMLTextAreaElement where
  toGObject = GObject . castRef . unHTMLTextAreaElement
  unsafeCastGObject = HTMLTextAreaElement . castRef . unGObject

castToHTMLTextAreaElement :: IsGObject obj => obj -> HTMLTextAreaElement
castToHTMLTextAreaElement = castTo gTypeHTMLTextAreaElement "HTMLTextAreaElement"

foreign import javascript unsafe "window[\"HTMLTextAreaElement\"]" gTypeHTMLTextAreaElement' :: JSRef GType
gTypeHTMLTextAreaElement = GType gTypeHTMLTextAreaElement'
#else
type IsHTMLTextAreaElement o = HTMLTextAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTitleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement Mozilla HTMLTitleElement documentation>
newtype HTMLTitleElement = HTMLTitleElement (JSRef HTMLTitleElement) deriving (Eq)

unHTMLTitleElement (HTMLTitleElement o) = o

instance ToJSRef HTMLTitleElement where
  toJSRef = return . unHTMLTitleElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTitleElement where
  fromJSRef = return . fmap HTMLTitleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTitleElement
instance IsElement HTMLTitleElement
instance IsNode HTMLTitleElement
instance IsEventTarget HTMLTitleElement
instance IsGObject HTMLTitleElement where
  toGObject = GObject . castRef . unHTMLTitleElement
  unsafeCastGObject = HTMLTitleElement . castRef . unGObject

castToHTMLTitleElement :: IsGObject obj => obj -> HTMLTitleElement
castToHTMLTitleElement = castTo gTypeHTMLTitleElement "HTMLTitleElement"

foreign import javascript unsafe "window[\"HTMLTitleElement\"]" gTypeHTMLTitleElement' :: JSRef GType
gTypeHTMLTitleElement = GType gTypeHTMLTitleElement'
#else
type IsHTMLTitleElement o = HTMLTitleElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTrackElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement Mozilla HTMLTrackElement documentation>
newtype HTMLTrackElement = HTMLTrackElement (JSRef HTMLTrackElement) deriving (Eq)

unHTMLTrackElement (HTMLTrackElement o) = o

instance ToJSRef HTMLTrackElement where
  toJSRef = return . unHTMLTrackElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTrackElement where
  fromJSRef = return . fmap HTMLTrackElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLTrackElement
instance IsElement HTMLTrackElement
instance IsNode HTMLTrackElement
instance IsEventTarget HTMLTrackElement
instance IsGObject HTMLTrackElement where
  toGObject = GObject . castRef . unHTMLTrackElement
  unsafeCastGObject = HTMLTrackElement . castRef . unGObject

castToHTMLTrackElement :: IsGObject obj => obj -> HTMLTrackElement
castToHTMLTrackElement = castTo gTypeHTMLTrackElement "HTMLTrackElement"

foreign import javascript unsafe "window[\"HTMLTrackElement\"]" gTypeHTMLTrackElement' :: JSRef GType
gTypeHTMLTrackElement = GType gTypeHTMLTrackElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLUListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement Mozilla HTMLUListElement documentation>
newtype HTMLUListElement = HTMLUListElement (JSRef HTMLUListElement) deriving (Eq)

unHTMLUListElement (HTMLUListElement o) = o

instance ToJSRef HTMLUListElement where
  toJSRef = return . unHTMLUListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLUListElement where
  fromJSRef = return . fmap HTMLUListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLUListElement
instance IsElement HTMLUListElement
instance IsNode HTMLUListElement
instance IsEventTarget HTMLUListElement
instance IsGObject HTMLUListElement where
  toGObject = GObject . castRef . unHTMLUListElement
  unsafeCastGObject = HTMLUListElement . castRef . unGObject

castToHTMLUListElement :: IsGObject obj => obj -> HTMLUListElement
castToHTMLUListElement = castTo gTypeHTMLUListElement "HTMLUListElement"

foreign import javascript unsafe "window[\"HTMLUListElement\"]" gTypeHTMLUListElement' :: JSRef GType
gTypeHTMLUListElement = GType gTypeHTMLUListElement'
#else
type IsHTMLUListElement o = HTMLUListElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLUnknownElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement Mozilla HTMLUnknownElement documentation>
newtype HTMLUnknownElement = HTMLUnknownElement (JSRef HTMLUnknownElement) deriving (Eq)

unHTMLUnknownElement (HTMLUnknownElement o) = o

instance ToJSRef HTMLUnknownElement where
  toJSRef = return . unHTMLUnknownElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLUnknownElement where
  fromJSRef = return . fmap HTMLUnknownElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLElement HTMLUnknownElement
instance IsElement HTMLUnknownElement
instance IsNode HTMLUnknownElement
instance IsEventTarget HTMLUnknownElement
instance IsGObject HTMLUnknownElement where
  toGObject = GObject . castRef . unHTMLUnknownElement
  unsafeCastGObject = HTMLUnknownElement . castRef . unGObject

castToHTMLUnknownElement :: IsGObject obj => obj -> HTMLUnknownElement
castToHTMLUnknownElement = castTo gTypeHTMLUnknownElement "HTMLUnknownElement"

foreign import javascript unsafe "window[\"HTMLUnknownElement\"]" gTypeHTMLUnknownElement' :: JSRef GType
gTypeHTMLUnknownElement = GType gTypeHTMLUnknownElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLVideoElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLMediaElement"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement Mozilla HTMLVideoElement documentation>
newtype HTMLVideoElement = HTMLVideoElement (JSRef HTMLVideoElement) deriving (Eq)

unHTMLVideoElement (HTMLVideoElement o) = o

instance ToJSRef HTMLVideoElement where
  toJSRef = return . unHTMLVideoElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLVideoElement where
  fromJSRef = return . fmap HTMLVideoElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsHTMLMediaElement HTMLVideoElement
instance IsGObject HTMLVideoElement where
  toGObject = GObject . castRef . unHTMLVideoElement
  unsafeCastGObject = HTMLVideoElement . castRef . unGObject

castToHTMLVideoElement :: IsGObject obj => obj -> HTMLVideoElement
castToHTMLVideoElement = castTo gTypeHTMLVideoElement "HTMLVideoElement"

foreign import javascript unsafe "window[\"HTMLVideoElement\"]" gTypeHTMLVideoElement' :: JSRef GType
gTypeHTMLVideoElement = GType gTypeHTMLVideoElement'
#else
type IsHTMLVideoElement o = HTMLVideoElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HashChangeEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent Mozilla HashChangeEvent documentation>
newtype HashChangeEvent = HashChangeEvent (JSRef HashChangeEvent) deriving (Eq)

unHashChangeEvent (HashChangeEvent o) = o

instance ToJSRef HashChangeEvent where
  toJSRef = return . unHashChangeEvent
  {-# INLINE toJSRef #-}

instance FromJSRef HashChangeEvent where
  fromJSRef = return . fmap HashChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent HashChangeEvent
instance IsGObject HashChangeEvent where
  toGObject = GObject . castRef . unHashChangeEvent
  unsafeCastGObject = HashChangeEvent . castRef . unGObject

castToHashChangeEvent :: IsGObject obj => obj -> HashChangeEvent
castToHashChangeEvent = castTo gTypeHashChangeEvent "HashChangeEvent"

foreign import javascript unsafe "window[\"HashChangeEvent\"]" gTypeHashChangeEvent' :: JSRef GType
gTypeHashChangeEvent = GType gTypeHashChangeEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.History".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/History Mozilla History documentation>
newtype History = History (JSRef History) deriving (Eq)

unHistory (History o) = o

instance ToJSRef History where
  toJSRef = return . unHistory
  {-# INLINE toJSRef #-}

instance FromJSRef History where
  fromJSRef = return . fmap History . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject History where
  toGObject = GObject . castRef . unHistory
  unsafeCastGObject = History . castRef . unGObject

castToHistory :: IsGObject obj => obj -> History
castToHistory = castTo gTypeHistory "History"

foreign import javascript unsafe "window[\"History\"]" gTypeHistory' :: JSRef GType
gTypeHistory = GType gTypeHistory'
#else
type IsHistory o = HistoryClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBAny".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBAny Mozilla IDBAny documentation>
newtype IDBAny = IDBAny (JSRef IDBAny) deriving (Eq)

unIDBAny (IDBAny o) = o

instance ToJSRef IDBAny where
  toJSRef = return . unIDBAny
  {-# INLINE toJSRef #-}

instance FromJSRef IDBAny where
  fromJSRef = return . fmap IDBAny . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject IDBAny where
  toGObject = GObject . castRef . unIDBAny
  unsafeCastGObject = IDBAny . castRef . unGObject

castToIDBAny :: IsGObject obj => obj -> IDBAny
castToIDBAny = castTo gTypeIDBAny "IDBAny"

foreign import javascript unsafe "window[\"IDBAny\"]" gTypeIDBAny' :: JSRef GType
gTypeIDBAny = GType gTypeIDBAny'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBCursor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor Mozilla IDBCursor documentation>
newtype IDBCursor = IDBCursor (JSRef IDBCursor) deriving (Eq)

unIDBCursor (IDBCursor o) = o

instance ToJSRef IDBCursor where
  toJSRef = return . unIDBCursor
  {-# INLINE toJSRef #-}

instance FromJSRef IDBCursor where
  fromJSRef = return . fmap IDBCursor . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsIDBCursor o
toIDBCursor :: IsIDBCursor o => o -> IDBCursor
toIDBCursor = unsafeCastGObject . toGObject

instance IsIDBCursor IDBCursor
instance IsGObject IDBCursor where
  toGObject = GObject . castRef . unIDBCursor
  unsafeCastGObject = IDBCursor . castRef . unGObject

castToIDBCursor :: IsGObject obj => obj -> IDBCursor
castToIDBCursor = castTo gTypeIDBCursor "IDBCursor"

foreign import javascript unsafe "window[\"IDBCursor\"]" gTypeIDBCursor' :: JSRef GType
gTypeIDBCursor = GType gTypeIDBCursor'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBCursorWithValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.IDBCursor"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue Mozilla IDBCursorWithValue documentation>
newtype IDBCursorWithValue = IDBCursorWithValue (JSRef IDBCursorWithValue) deriving (Eq)

unIDBCursorWithValue (IDBCursorWithValue o) = o

instance ToJSRef IDBCursorWithValue where
  toJSRef = return . unIDBCursorWithValue
  {-# INLINE toJSRef #-}

instance FromJSRef IDBCursorWithValue where
  fromJSRef = return . fmap IDBCursorWithValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsIDBCursor IDBCursorWithValue
instance IsGObject IDBCursorWithValue where
  toGObject = GObject . castRef . unIDBCursorWithValue
  unsafeCastGObject = IDBCursorWithValue . castRef . unGObject

castToIDBCursorWithValue :: IsGObject obj => obj -> IDBCursorWithValue
castToIDBCursorWithValue = castTo gTypeIDBCursorWithValue "IDBCursorWithValue"

foreign import javascript unsafe "window[\"IDBCursorWithValue\"]" gTypeIDBCursorWithValue' :: JSRef GType
gTypeIDBCursorWithValue = GType gTypeIDBCursorWithValue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBDatabase".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase Mozilla IDBDatabase documentation>
newtype IDBDatabase = IDBDatabase (JSRef IDBDatabase) deriving (Eq)

unIDBDatabase (IDBDatabase o) = o

instance ToJSRef IDBDatabase where
  toJSRef = return . unIDBDatabase
  {-# INLINE toJSRef #-}

instance FromJSRef IDBDatabase where
  fromJSRef = return . fmap IDBDatabase . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget IDBDatabase
instance IsGObject IDBDatabase where
  toGObject = GObject . castRef . unIDBDatabase
  unsafeCastGObject = IDBDatabase . castRef . unGObject

castToIDBDatabase :: IsGObject obj => obj -> IDBDatabase
castToIDBDatabase = castTo gTypeIDBDatabase "IDBDatabase"

foreign import javascript unsafe "window[\"IDBDatabase\"]" gTypeIDBDatabase' :: JSRef GType
gTypeIDBDatabase = GType gTypeIDBDatabase'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBFactory".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory Mozilla IDBFactory documentation>
newtype IDBFactory = IDBFactory (JSRef IDBFactory) deriving (Eq)

unIDBFactory (IDBFactory o) = o

instance ToJSRef IDBFactory where
  toJSRef = return . unIDBFactory
  {-# INLINE toJSRef #-}

instance FromJSRef IDBFactory where
  fromJSRef = return . fmap IDBFactory . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject IDBFactory where
  toGObject = GObject . castRef . unIDBFactory
  unsafeCastGObject = IDBFactory . castRef . unGObject

castToIDBFactory :: IsGObject obj => obj -> IDBFactory
castToIDBFactory = castTo gTypeIDBFactory "IDBFactory"

foreign import javascript unsafe "window[\"IDBFactory\"]" gTypeIDBFactory' :: JSRef GType
gTypeIDBFactory = GType gTypeIDBFactory'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBIndex".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex Mozilla IDBIndex documentation>
newtype IDBIndex = IDBIndex (JSRef IDBIndex) deriving (Eq)

unIDBIndex (IDBIndex o) = o

instance ToJSRef IDBIndex where
  toJSRef = return . unIDBIndex
  {-# INLINE toJSRef #-}

instance FromJSRef IDBIndex where
  fromJSRef = return . fmap IDBIndex . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject IDBIndex where
  toGObject = GObject . castRef . unIDBIndex
  unsafeCastGObject = IDBIndex . castRef . unGObject

castToIDBIndex :: IsGObject obj => obj -> IDBIndex
castToIDBIndex = castTo gTypeIDBIndex "IDBIndex"

foreign import javascript unsafe "window[\"IDBIndex\"]" gTypeIDBIndex' :: JSRef GType
gTypeIDBIndex = GType gTypeIDBIndex'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBKeyRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange Mozilla IDBKeyRange documentation>
newtype IDBKeyRange = IDBKeyRange (JSRef IDBKeyRange) deriving (Eq)

unIDBKeyRange (IDBKeyRange o) = o

instance ToJSRef IDBKeyRange where
  toJSRef = return . unIDBKeyRange
  {-# INLINE toJSRef #-}

instance FromJSRef IDBKeyRange where
  fromJSRef = return . fmap IDBKeyRange . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject IDBKeyRange where
  toGObject = GObject . castRef . unIDBKeyRange
  unsafeCastGObject = IDBKeyRange . castRef . unGObject

castToIDBKeyRange :: IsGObject obj => obj -> IDBKeyRange
castToIDBKeyRange = castTo gTypeIDBKeyRange "IDBKeyRange"

foreign import javascript unsafe "window[\"IDBKeyRange\"]" gTypeIDBKeyRange' :: JSRef GType
gTypeIDBKeyRange = GType gTypeIDBKeyRange'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBObjectStore".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore Mozilla IDBObjectStore documentation>
newtype IDBObjectStore = IDBObjectStore (JSRef IDBObjectStore) deriving (Eq)

unIDBObjectStore (IDBObjectStore o) = o

instance ToJSRef IDBObjectStore where
  toJSRef = return . unIDBObjectStore
  {-# INLINE toJSRef #-}

instance FromJSRef IDBObjectStore where
  fromJSRef = return . fmap IDBObjectStore . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject IDBObjectStore where
  toGObject = GObject . castRef . unIDBObjectStore
  unsafeCastGObject = IDBObjectStore . castRef . unGObject

castToIDBObjectStore :: IsGObject obj => obj -> IDBObjectStore
castToIDBObjectStore = castTo gTypeIDBObjectStore "IDBObjectStore"

foreign import javascript unsafe "window[\"IDBObjectStore\"]" gTypeIDBObjectStore' :: JSRef GType
gTypeIDBObjectStore = GType gTypeIDBObjectStore'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBOpenDBRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.IDBRequest"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest Mozilla IDBOpenDBRequest documentation>
newtype IDBOpenDBRequest = IDBOpenDBRequest (JSRef IDBOpenDBRequest) deriving (Eq)

unIDBOpenDBRequest (IDBOpenDBRequest o) = o

instance ToJSRef IDBOpenDBRequest where
  toJSRef = return . unIDBOpenDBRequest
  {-# INLINE toJSRef #-}

instance FromJSRef IDBOpenDBRequest where
  fromJSRef = return . fmap IDBOpenDBRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsIDBRequest IDBOpenDBRequest
instance IsEventTarget IDBOpenDBRequest
instance IsGObject IDBOpenDBRequest where
  toGObject = GObject . castRef . unIDBOpenDBRequest
  unsafeCastGObject = IDBOpenDBRequest . castRef . unGObject

castToIDBOpenDBRequest :: IsGObject obj => obj -> IDBOpenDBRequest
castToIDBOpenDBRequest = castTo gTypeIDBOpenDBRequest "IDBOpenDBRequest"

foreign import javascript unsafe "window[\"IDBOpenDBRequest\"]" gTypeIDBOpenDBRequest' :: JSRef GType
gTypeIDBOpenDBRequest = GType gTypeIDBOpenDBRequest'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest Mozilla IDBRequest documentation>
newtype IDBRequest = IDBRequest (JSRef IDBRequest) deriving (Eq)

unIDBRequest (IDBRequest o) = o

instance ToJSRef IDBRequest where
  toJSRef = return . unIDBRequest
  {-# INLINE toJSRef #-}

instance FromJSRef IDBRequest where
  fromJSRef = return . fmap IDBRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsIDBRequest o
toIDBRequest :: IsIDBRequest o => o -> IDBRequest
toIDBRequest = unsafeCastGObject . toGObject

instance IsIDBRequest IDBRequest
instance IsEventTarget IDBRequest
instance IsGObject IDBRequest where
  toGObject = GObject . castRef . unIDBRequest
  unsafeCastGObject = IDBRequest . castRef . unGObject

castToIDBRequest :: IsGObject obj => obj -> IDBRequest
castToIDBRequest = castTo gTypeIDBRequest "IDBRequest"

foreign import javascript unsafe "window[\"IDBRequest\"]" gTypeIDBRequest' :: JSRef GType
gTypeIDBRequest = GType gTypeIDBRequest'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBTransaction".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction Mozilla IDBTransaction documentation>
newtype IDBTransaction = IDBTransaction (JSRef IDBTransaction) deriving (Eq)

unIDBTransaction (IDBTransaction o) = o

instance ToJSRef IDBTransaction where
  toJSRef = return . unIDBTransaction
  {-# INLINE toJSRef #-}

instance FromJSRef IDBTransaction where
  fromJSRef = return . fmap IDBTransaction . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget IDBTransaction
instance IsGObject IDBTransaction where
  toGObject = GObject . castRef . unIDBTransaction
  unsafeCastGObject = IDBTransaction . castRef . unGObject

castToIDBTransaction :: IsGObject obj => obj -> IDBTransaction
castToIDBTransaction = castTo gTypeIDBTransaction "IDBTransaction"

foreign import javascript unsafe "window[\"IDBTransaction\"]" gTypeIDBTransaction' :: JSRef GType
gTypeIDBTransaction = GType gTypeIDBTransaction'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBVersionChangeEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent Mozilla IDBVersionChangeEvent documentation>
newtype IDBVersionChangeEvent = IDBVersionChangeEvent (JSRef IDBVersionChangeEvent) deriving (Eq)

unIDBVersionChangeEvent (IDBVersionChangeEvent o) = o

instance ToJSRef IDBVersionChangeEvent where
  toJSRef = return . unIDBVersionChangeEvent
  {-# INLINE toJSRef #-}

instance FromJSRef IDBVersionChangeEvent where
  fromJSRef = return . fmap IDBVersionChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent IDBVersionChangeEvent
instance IsGObject IDBVersionChangeEvent where
  toGObject = GObject . castRef . unIDBVersionChangeEvent
  unsafeCastGObject = IDBVersionChangeEvent . castRef . unGObject

castToIDBVersionChangeEvent :: IsGObject obj => obj -> IDBVersionChangeEvent
castToIDBVersionChangeEvent = castTo gTypeIDBVersionChangeEvent "IDBVersionChangeEvent"

foreign import javascript unsafe "window[\"IDBVersionChangeEvent\"]" gTypeIDBVersionChangeEvent' :: JSRef GType
gTypeIDBVersionChangeEvent = GType gTypeIDBVersionChangeEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ImageData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation>
newtype ImageData = ImageData (JSRef ImageData) deriving (Eq)

unImageData (ImageData o) = o

instance ToJSRef ImageData where
  toJSRef = return . unImageData
  {-# INLINE toJSRef #-}

instance FromJSRef ImageData where
  fromJSRef = return . fmap ImageData . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ImageData where
  toGObject = GObject . castRef . unImageData
  unsafeCastGObject = ImageData . castRef . unGObject

castToImageData :: IsGObject obj => obj -> ImageData
castToImageData = castTo gTypeImageData "ImageData"

foreign import javascript unsafe "window[\"ImageData\"]" gTypeImageData' :: JSRef GType
gTypeImageData = GType gTypeImageData'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.InspectorFrontendHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost Mozilla InspectorFrontendHost documentation>
newtype InspectorFrontendHost = InspectorFrontendHost (JSRef InspectorFrontendHost) deriving (Eq)

unInspectorFrontendHost (InspectorFrontendHost o) = o

instance ToJSRef InspectorFrontendHost where
  toJSRef = return . unInspectorFrontendHost
  {-# INLINE toJSRef #-}

instance FromJSRef InspectorFrontendHost where
  fromJSRef = return . fmap InspectorFrontendHost . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject InspectorFrontendHost where
  toGObject = GObject . castRef . unInspectorFrontendHost
  unsafeCastGObject = InspectorFrontendHost . castRef . unGObject

castToInspectorFrontendHost :: IsGObject obj => obj -> InspectorFrontendHost
castToInspectorFrontendHost = castTo gTypeInspectorFrontendHost "InspectorFrontendHost"

foreign import javascript unsafe "window[\"InspectorFrontendHost\"]" gTypeInspectorFrontendHost' :: JSRef GType
gTypeInspectorFrontendHost = GType gTypeInspectorFrontendHost'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.InternalSettings".
-- Base interface functions are in:
--
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings Mozilla InternalSettings documentation>
newtype InternalSettings = InternalSettings (JSRef InternalSettings) deriving (Eq)

unInternalSettings (InternalSettings o) = o

instance ToJSRef InternalSettings where
  toJSRef = return . unInternalSettings
  {-# INLINE toJSRef #-}

instance FromJSRef InternalSettings where
  fromJSRef = return . fmap InternalSettings . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject InternalSettings where
  toGObject = GObject . castRef . unInternalSettings
  unsafeCastGObject = InternalSettings . castRef . unGObject

castToInternalSettings :: IsGObject obj => obj -> InternalSettings
castToInternalSettings = castTo gTypeInternalSettings "InternalSettings"

foreign import javascript unsafe "window[\"InternalSettings\"]" gTypeInternalSettings' :: JSRef GType
gTypeInternalSettings = GType gTypeInternalSettings'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Internals".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Internals Mozilla Internals documentation>
newtype Internals = Internals (JSRef Internals) deriving (Eq)

unInternals (Internals o) = o

instance ToJSRef Internals where
  toJSRef = return . unInternals
  {-# INLINE toJSRef #-}

instance FromJSRef Internals where
  fromJSRef = return . fmap Internals . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Internals where
  toGObject = GObject . castRef . unInternals
  unsafeCastGObject = Internals . castRef . unGObject

castToInternals :: IsGObject obj => obj -> Internals
castToInternals = castTo gTypeInternals "Internals"

foreign import javascript unsafe "window[\"Internals\"]" gTypeInternals' :: JSRef GType
gTypeInternals = GType gTypeInternals'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.KeyboardEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent Mozilla KeyboardEvent documentation>
newtype KeyboardEvent = KeyboardEvent (JSRef KeyboardEvent) deriving (Eq)

unKeyboardEvent (KeyboardEvent o) = o

instance ToJSRef KeyboardEvent where
  toJSRef = return . unKeyboardEvent
  {-# INLINE toJSRef #-}

instance FromJSRef KeyboardEvent where
  fromJSRef = return . fmap KeyboardEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent KeyboardEvent
instance IsEvent KeyboardEvent
instance IsGObject KeyboardEvent where
  toGObject = GObject . castRef . unKeyboardEvent
  unsafeCastGObject = KeyboardEvent . castRef . unGObject

castToKeyboardEvent :: IsGObject obj => obj -> KeyboardEvent
castToKeyboardEvent = castTo gTypeKeyboardEvent "KeyboardEvent"

foreign import javascript unsafe "window[\"KeyboardEvent\"]" gTypeKeyboardEvent' :: JSRef GType
gTypeKeyboardEvent = GType gTypeKeyboardEvent'
#else
type IsKeyboardEvent o = KeyboardEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Location".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Location Mozilla Location documentation>
newtype Location = Location (JSRef Location) deriving (Eq)

unLocation (Location o) = o

instance ToJSRef Location where
  toJSRef = return . unLocation
  {-# INLINE toJSRef #-}

instance FromJSRef Location where
  fromJSRef = return . fmap Location . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Location where
  toGObject = GObject . castRef . unLocation
  unsafeCastGObject = Location . castRef . unGObject

castToLocation :: IsGObject obj => obj -> Location
castToLocation = castTo gTypeLocation "Location"

foreign import javascript unsafe "window[\"Location\"]" gTypeLocation' :: JSRef GType
gTypeLocation = GType gTypeLocation'
#else
type IsLocation o = LocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MallocStatistics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics Mozilla MallocStatistics documentation>
newtype MallocStatistics = MallocStatistics (JSRef MallocStatistics) deriving (Eq)

unMallocStatistics (MallocStatistics o) = o

instance ToJSRef MallocStatistics where
  toJSRef = return . unMallocStatistics
  {-# INLINE toJSRef #-}

instance FromJSRef MallocStatistics where
  fromJSRef = return . fmap MallocStatistics . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MallocStatistics where
  toGObject = GObject . castRef . unMallocStatistics
  unsafeCastGObject = MallocStatistics . castRef . unGObject

castToMallocStatistics :: IsGObject obj => obj -> MallocStatistics
castToMallocStatistics = castTo gTypeMallocStatistics "MallocStatistics"

foreign import javascript unsafe "window[\"MallocStatistics\"]" gTypeMallocStatistics' :: JSRef GType
gTypeMallocStatistics = GType gTypeMallocStatistics'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaController".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation>
newtype MediaController = MediaController (JSRef MediaController) deriving (Eq)

unMediaController (MediaController o) = o

instance ToJSRef MediaController where
  toJSRef = return . unMediaController
  {-# INLINE toJSRef #-}

instance FromJSRef MediaController where
  fromJSRef = return . fmap MediaController . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget MediaController
instance IsGObject MediaController where
  toGObject = GObject . castRef . unMediaController
  unsafeCastGObject = MediaController . castRef . unGObject

castToMediaController :: IsGObject obj => obj -> MediaController
castToMediaController = castTo gTypeMediaController "MediaController"

foreign import javascript unsafe "window[\"MediaController\"]" gTypeMediaController' :: JSRef GType
gTypeMediaController = GType gTypeMediaController'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaControlsHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost Mozilla MediaControlsHost documentation>
newtype MediaControlsHost = MediaControlsHost (JSRef MediaControlsHost) deriving (Eq)

unMediaControlsHost (MediaControlsHost o) = o

instance ToJSRef MediaControlsHost where
  toJSRef = return . unMediaControlsHost
  {-# INLINE toJSRef #-}

instance FromJSRef MediaControlsHost where
  fromJSRef = return . fmap MediaControlsHost . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaControlsHost where
  toGObject = GObject . castRef . unMediaControlsHost
  unsafeCastGObject = MediaControlsHost . castRef . unGObject

castToMediaControlsHost :: IsGObject obj => obj -> MediaControlsHost
castToMediaControlsHost = castTo gTypeMediaControlsHost "MediaControlsHost"

foreign import javascript unsafe "window[\"MediaControlsHost\"]" gTypeMediaControlsHost' :: JSRef GType
gTypeMediaControlsHost = GType gTypeMediaControlsHost'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaElementAudioSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode Mozilla MediaElementAudioSourceNode documentation>
newtype MediaElementAudioSourceNode = MediaElementAudioSourceNode (JSRef MediaElementAudioSourceNode) deriving (Eq)

unMediaElementAudioSourceNode (MediaElementAudioSourceNode o) = o

instance ToJSRef MediaElementAudioSourceNode where
  toJSRef = return . unMediaElementAudioSourceNode
  {-# INLINE toJSRef #-}

instance FromJSRef MediaElementAudioSourceNode where
  fromJSRef = return . fmap MediaElementAudioSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode MediaElementAudioSourceNode
instance IsEventTarget MediaElementAudioSourceNode
instance IsGObject MediaElementAudioSourceNode where
  toGObject = GObject . castRef . unMediaElementAudioSourceNode
  unsafeCastGObject = MediaElementAudioSourceNode . castRef . unGObject

castToMediaElementAudioSourceNode :: IsGObject obj => obj -> MediaElementAudioSourceNode
castToMediaElementAudioSourceNode = castTo gTypeMediaElementAudioSourceNode "MediaElementAudioSourceNode"

foreign import javascript unsafe "window[\"MediaElementAudioSourceNode\"]" gTypeMediaElementAudioSourceNode' :: JSRef GType
gTypeMediaElementAudioSourceNode = GType gTypeMediaElementAudioSourceNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaError Mozilla MediaError documentation>
newtype MediaError = MediaError (JSRef MediaError) deriving (Eq)

unMediaError (MediaError o) = o

instance ToJSRef MediaError where
  toJSRef = return . unMediaError
  {-# INLINE toJSRef #-}

instance FromJSRef MediaError where
  fromJSRef = return . fmap MediaError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaError where
  toGObject = GObject . castRef . unMediaError
  unsafeCastGObject = MediaError . castRef . unGObject

castToMediaError :: IsGObject obj => obj -> MediaError
castToMediaError = castTo gTypeMediaError "MediaError"

foreign import javascript unsafe "window[\"MediaError\"]" gTypeMediaError' :: JSRef GType
gTypeMediaError = GType gTypeMediaError'
#else
type IsMediaError o = MediaErrorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError Mozilla WebKitMediaKeyError documentation>
newtype MediaKeyError = MediaKeyError (JSRef MediaKeyError) deriving (Eq)

unMediaKeyError (MediaKeyError o) = o

instance ToJSRef MediaKeyError where
  toJSRef = return . unMediaKeyError
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeyError where
  fromJSRef = return . fmap MediaKeyError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaKeyError where
  toGObject = GObject . castRef . unMediaKeyError
  unsafeCastGObject = MediaKeyError . castRef . unGObject

castToMediaKeyError :: IsGObject obj => obj -> MediaKeyError
castToMediaKeyError = castTo gTypeMediaKeyError "MediaKeyError"

foreign import javascript unsafe "window[\"WebKitMediaKeyError\"]" gTypeMediaKeyError' :: JSRef GType
gTypeMediaKeyError = GType gTypeMediaKeyError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent Mozilla MediaKeyEvent documentation>
newtype MediaKeyEvent = MediaKeyEvent (JSRef MediaKeyEvent) deriving (Eq)

unMediaKeyEvent (MediaKeyEvent o) = o

instance ToJSRef MediaKeyEvent where
  toJSRef = return . unMediaKeyEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeyEvent where
  fromJSRef = return . fmap MediaKeyEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MediaKeyEvent
instance IsGObject MediaKeyEvent where
  toGObject = GObject . castRef . unMediaKeyEvent
  unsafeCastGObject = MediaKeyEvent . castRef . unGObject

castToMediaKeyEvent :: IsGObject obj => obj -> MediaKeyEvent
castToMediaKeyEvent = castTo gTypeMediaKeyEvent "MediaKeyEvent"

foreign import javascript unsafe "window[\"MediaKeyEvent\"]" gTypeMediaKeyEvent' :: JSRef GType
gTypeMediaKeyEvent = GType gTypeMediaKeyEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyMessageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation>
newtype MediaKeyMessageEvent = MediaKeyMessageEvent (JSRef MediaKeyMessageEvent) deriving (Eq)

unMediaKeyMessageEvent (MediaKeyMessageEvent o) = o

instance ToJSRef MediaKeyMessageEvent where
  toJSRef = return . unMediaKeyMessageEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeyMessageEvent where
  fromJSRef = return . fmap MediaKeyMessageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MediaKeyMessageEvent
instance IsGObject MediaKeyMessageEvent where
  toGObject = GObject . castRef . unMediaKeyMessageEvent
  unsafeCastGObject = MediaKeyMessageEvent . castRef . unGObject

castToMediaKeyMessageEvent :: IsGObject obj => obj -> MediaKeyMessageEvent
castToMediaKeyMessageEvent = castTo gTypeMediaKeyMessageEvent "MediaKeyMessageEvent"

foreign import javascript unsafe "window[\"WebKitMediaKeyMessageEvent\"]" gTypeMediaKeyMessageEvent' :: JSRef GType
gTypeMediaKeyMessageEvent = GType gTypeMediaKeyMessageEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyNeededEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent Mozilla MediaKeyNeededEvent documentation>
newtype MediaKeyNeededEvent = MediaKeyNeededEvent (JSRef MediaKeyNeededEvent) deriving (Eq)

unMediaKeyNeededEvent (MediaKeyNeededEvent o) = o

instance ToJSRef MediaKeyNeededEvent where
  toJSRef = return . unMediaKeyNeededEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeyNeededEvent where
  fromJSRef = return . fmap MediaKeyNeededEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MediaKeyNeededEvent
instance IsGObject MediaKeyNeededEvent where
  toGObject = GObject . castRef . unMediaKeyNeededEvent
  unsafeCastGObject = MediaKeyNeededEvent . castRef . unGObject

castToMediaKeyNeededEvent :: IsGObject obj => obj -> MediaKeyNeededEvent
castToMediaKeyNeededEvent = castTo gTypeMediaKeyNeededEvent "MediaKeyNeededEvent"

foreign import javascript unsafe "window[\"MediaKeyNeededEvent\"]" gTypeMediaKeyNeededEvent' :: JSRef GType
gTypeMediaKeyNeededEvent = GType gTypeMediaKeyNeededEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeySession".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession Mozilla WebKitMediaKeySession documentation>
newtype MediaKeySession = MediaKeySession (JSRef MediaKeySession) deriving (Eq)

unMediaKeySession (MediaKeySession o) = o

instance ToJSRef MediaKeySession where
  toJSRef = return . unMediaKeySession
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeySession where
  fromJSRef = return . fmap MediaKeySession . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget MediaKeySession
instance IsGObject MediaKeySession where
  toGObject = GObject . castRef . unMediaKeySession
  unsafeCastGObject = MediaKeySession . castRef . unGObject

castToMediaKeySession :: IsGObject obj => obj -> MediaKeySession
castToMediaKeySession = castTo gTypeMediaKeySession "MediaKeySession"

foreign import javascript unsafe "window[\"WebKitMediaKeySession\"]" gTypeMediaKeySession' :: JSRef GType
gTypeMediaKeySession = GType gTypeMediaKeySession'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeys".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation>
newtype MediaKeys = MediaKeys (JSRef MediaKeys) deriving (Eq)

unMediaKeys (MediaKeys o) = o

instance ToJSRef MediaKeys where
  toJSRef = return . unMediaKeys
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeys where
  fromJSRef = return . fmap MediaKeys . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaKeys where
  toGObject = GObject . castRef . unMediaKeys
  unsafeCastGObject = MediaKeys . castRef . unGObject

castToMediaKeys :: IsGObject obj => obj -> MediaKeys
castToMediaKeys = castTo gTypeMediaKeys "MediaKeys"

foreign import javascript unsafe "window[\"WebKitMediaKeys\"]" gTypeMediaKeys' :: JSRef GType
gTypeMediaKeys = GType gTypeMediaKeys'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaList Mozilla MediaList documentation>
newtype MediaList = MediaList (JSRef MediaList) deriving (Eq)

unMediaList (MediaList o) = o

instance ToJSRef MediaList where
  toJSRef = return . unMediaList
  {-# INLINE toJSRef #-}

instance FromJSRef MediaList where
  fromJSRef = return . fmap MediaList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaList where
  toGObject = GObject . castRef . unMediaList
  unsafeCastGObject = MediaList . castRef . unGObject

castToMediaList :: IsGObject obj => obj -> MediaList
castToMediaList = castTo gTypeMediaList "MediaList"

foreign import javascript unsafe "window[\"MediaList\"]" gTypeMediaList' :: JSRef GType
gTypeMediaList = GType gTypeMediaList'
#else
type IsMediaList o = MediaListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaQueryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList Mozilla MediaQueryList documentation>
newtype MediaQueryList = MediaQueryList (JSRef MediaQueryList) deriving (Eq)

unMediaQueryList (MediaQueryList o) = o

instance ToJSRef MediaQueryList where
  toJSRef = return . unMediaQueryList
  {-# INLINE toJSRef #-}

instance FromJSRef MediaQueryList where
  fromJSRef = return . fmap MediaQueryList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaQueryList where
  toGObject = GObject . castRef . unMediaQueryList
  unsafeCastGObject = MediaQueryList . castRef . unGObject

castToMediaQueryList :: IsGObject obj => obj -> MediaQueryList
castToMediaQueryList = castTo gTypeMediaQueryList "MediaQueryList"

foreign import javascript unsafe "window[\"MediaQueryList\"]" gTypeMediaQueryList' :: JSRef GType
gTypeMediaQueryList = GType gTypeMediaQueryList'
#else
type IsMediaQueryList o = MediaQueryListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaQueryListListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation>
newtype MediaQueryListListener = MediaQueryListListener (JSRef MediaQueryListListener) deriving (Eq)

unMediaQueryListListener (MediaQueryListListener o) = o

instance ToJSRef MediaQueryListListener where
  toJSRef = return . unMediaQueryListListener
  {-# INLINE toJSRef #-}

instance FromJSRef MediaQueryListListener where
  fromJSRef = return . fmap MediaQueryListListener . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaQueryListListener where
  toGObject = GObject . castRef . unMediaQueryListListener
  unsafeCastGObject = MediaQueryListListener . castRef . unGObject

castToMediaQueryListListener :: IsGObject obj => obj -> MediaQueryListListener
castToMediaQueryListListener = castTo gTypeMediaQueryListListener "MediaQueryListListener"

foreign import javascript unsafe "window[\"MediaQueryListListener\"]" gTypeMediaQueryListListener' :: JSRef GType
gTypeMediaQueryListListener = GType gTypeMediaQueryListListener'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaSource".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation>
newtype MediaSource = MediaSource (JSRef MediaSource) deriving (Eq)

unMediaSource (MediaSource o) = o

instance ToJSRef MediaSource where
  toJSRef = return . unMediaSource
  {-# INLINE toJSRef #-}

instance FromJSRef MediaSource where
  fromJSRef = return . fmap MediaSource . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget MediaSource
instance IsGObject MediaSource where
  toGObject = GObject . castRef . unMediaSource
  unsafeCastGObject = MediaSource . castRef . unGObject

castToMediaSource :: IsGObject obj => obj -> MediaSource
castToMediaSource = castTo gTypeMediaSource "MediaSource"

foreign import javascript unsafe "window[\"MediaSource\"]" gTypeMediaSource' :: JSRef GType
gTypeMediaSource = GType gTypeMediaSource'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaSourceStates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates Mozilla MediaSourceStates documentation>
newtype MediaSourceStates = MediaSourceStates (JSRef MediaSourceStates) deriving (Eq)

unMediaSourceStates (MediaSourceStates o) = o

instance ToJSRef MediaSourceStates where
  toJSRef = return . unMediaSourceStates
  {-# INLINE toJSRef #-}

instance FromJSRef MediaSourceStates where
  fromJSRef = return . fmap MediaSourceStates . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaSourceStates where
  toGObject = GObject . castRef . unMediaSourceStates
  unsafeCastGObject = MediaSourceStates . castRef . unGObject

castToMediaSourceStates :: IsGObject obj => obj -> MediaSourceStates
castToMediaSourceStates = castTo gTypeMediaSourceStates "MediaSourceStates"

foreign import javascript unsafe "window[\"MediaSourceStates\"]" gTypeMediaSourceStates' :: JSRef GType
gTypeMediaSourceStates = GType gTypeMediaSourceStates'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStream".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation>
newtype MediaStream = MediaStream (JSRef MediaStream) deriving (Eq)

unMediaStream (MediaStream o) = o

instance ToJSRef MediaStream where
  toJSRef = return . unMediaStream
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStream where
  fromJSRef = return . fmap MediaStream . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget MediaStream
instance IsGObject MediaStream where
  toGObject = GObject . castRef . unMediaStream
  unsafeCastGObject = MediaStream . castRef . unGObject

castToMediaStream :: IsGObject obj => obj -> MediaStream
castToMediaStream = castTo gTypeMediaStream "MediaStream"

foreign import javascript unsafe "window[\"webkitMediaStream\"]" gTypeMediaStream' :: JSRef GType
gTypeMediaStream = GType gTypeMediaStream'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamAudioDestinationNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode Mozilla MediaStreamAudioDestinationNode documentation>
newtype MediaStreamAudioDestinationNode = MediaStreamAudioDestinationNode (JSRef MediaStreamAudioDestinationNode) deriving (Eq)

unMediaStreamAudioDestinationNode (MediaStreamAudioDestinationNode o) = o

instance ToJSRef MediaStreamAudioDestinationNode where
  toJSRef = return . unMediaStreamAudioDestinationNode
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamAudioDestinationNode where
  fromJSRef = return . fmap MediaStreamAudioDestinationNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode MediaStreamAudioDestinationNode
instance IsEventTarget MediaStreamAudioDestinationNode
instance IsGObject MediaStreamAudioDestinationNode where
  toGObject = GObject . castRef . unMediaStreamAudioDestinationNode
  unsafeCastGObject = MediaStreamAudioDestinationNode . castRef . unGObject

castToMediaStreamAudioDestinationNode :: IsGObject obj => obj -> MediaStreamAudioDestinationNode
castToMediaStreamAudioDestinationNode = castTo gTypeMediaStreamAudioDestinationNode "MediaStreamAudioDestinationNode"

foreign import javascript unsafe "window[\"MediaStreamAudioDestinationNode\"]" gTypeMediaStreamAudioDestinationNode' :: JSRef GType
gTypeMediaStreamAudioDestinationNode = GType gTypeMediaStreamAudioDestinationNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamAudioSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode Mozilla MediaStreamAudioSourceNode documentation>
newtype MediaStreamAudioSourceNode = MediaStreamAudioSourceNode (JSRef MediaStreamAudioSourceNode) deriving (Eq)

unMediaStreamAudioSourceNode (MediaStreamAudioSourceNode o) = o

instance ToJSRef MediaStreamAudioSourceNode where
  toJSRef = return . unMediaStreamAudioSourceNode
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamAudioSourceNode where
  fromJSRef = return . fmap MediaStreamAudioSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode MediaStreamAudioSourceNode
instance IsEventTarget MediaStreamAudioSourceNode
instance IsGObject MediaStreamAudioSourceNode where
  toGObject = GObject . castRef . unMediaStreamAudioSourceNode
  unsafeCastGObject = MediaStreamAudioSourceNode . castRef . unGObject

castToMediaStreamAudioSourceNode :: IsGObject obj => obj -> MediaStreamAudioSourceNode
castToMediaStreamAudioSourceNode = castTo gTypeMediaStreamAudioSourceNode "MediaStreamAudioSourceNode"

foreign import javascript unsafe "window[\"MediaStreamAudioSourceNode\"]" gTypeMediaStreamAudioSourceNode' :: JSRef GType
gTypeMediaStreamAudioSourceNode = GType gTypeMediaStreamAudioSourceNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamCapabilities".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamCapabilities Mozilla MediaStreamCapabilities documentation>
newtype MediaStreamCapabilities = MediaStreamCapabilities (JSRef MediaStreamCapabilities) deriving (Eq)

unMediaStreamCapabilities (MediaStreamCapabilities o) = o

instance ToJSRef MediaStreamCapabilities where
  toJSRef = return . unMediaStreamCapabilities
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamCapabilities where
  fromJSRef = return . fmap MediaStreamCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsMediaStreamCapabilities o
toMediaStreamCapabilities :: IsMediaStreamCapabilities o => o -> MediaStreamCapabilities
toMediaStreamCapabilities = unsafeCastGObject . toGObject

instance IsMediaStreamCapabilities MediaStreamCapabilities
instance IsGObject MediaStreamCapabilities where
  toGObject = GObject . castRef . unMediaStreamCapabilities
  unsafeCastGObject = MediaStreamCapabilities . castRef . unGObject

castToMediaStreamCapabilities :: IsGObject obj => obj -> MediaStreamCapabilities
castToMediaStreamCapabilities = castTo gTypeMediaStreamCapabilities "MediaStreamCapabilities"

foreign import javascript unsafe "window[\"MediaStreamCapabilities\"]" gTypeMediaStreamCapabilities' :: JSRef GType
gTypeMediaStreamCapabilities = GType gTypeMediaStreamCapabilities'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent Mozilla MediaStreamEvent documentation>
newtype MediaStreamEvent = MediaStreamEvent (JSRef MediaStreamEvent) deriving (Eq)

unMediaStreamEvent (MediaStreamEvent o) = o

instance ToJSRef MediaStreamEvent where
  toJSRef = return . unMediaStreamEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamEvent where
  fromJSRef = return . fmap MediaStreamEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MediaStreamEvent
instance IsGObject MediaStreamEvent where
  toGObject = GObject . castRef . unMediaStreamEvent
  unsafeCastGObject = MediaStreamEvent . castRef . unGObject

castToMediaStreamEvent :: IsGObject obj => obj -> MediaStreamEvent
castToMediaStreamEvent = castTo gTypeMediaStreamEvent "MediaStreamEvent"

foreign import javascript unsafe "window[\"MediaStreamEvent\"]" gTypeMediaStreamEvent' :: JSRef GType
gTypeMediaStreamEvent = GType gTypeMediaStreamEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack Mozilla MediaStreamTrack documentation>
newtype MediaStreamTrack = MediaStreamTrack (JSRef MediaStreamTrack) deriving (Eq)

unMediaStreamTrack (MediaStreamTrack o) = o

instance ToJSRef MediaStreamTrack where
  toJSRef = return . unMediaStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamTrack where
  fromJSRef = return . fmap MediaStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsMediaStreamTrack o
toMediaStreamTrack :: IsMediaStreamTrack o => o -> MediaStreamTrack
toMediaStreamTrack = unsafeCastGObject . toGObject

instance IsMediaStreamTrack MediaStreamTrack
instance IsEventTarget MediaStreamTrack
instance IsGObject MediaStreamTrack where
  toGObject = GObject . castRef . unMediaStreamTrack
  unsafeCastGObject = MediaStreamTrack . castRef . unGObject

castToMediaStreamTrack :: IsGObject obj => obj -> MediaStreamTrack
castToMediaStreamTrack = castTo gTypeMediaStreamTrack "MediaStreamTrack"

foreign import javascript unsafe "window[\"MediaStreamTrack\"]" gTypeMediaStreamTrack' :: JSRef GType
gTypeMediaStreamTrack = GType gTypeMediaStreamTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrackEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent Mozilla MediaStreamTrackEvent documentation>
newtype MediaStreamTrackEvent = MediaStreamTrackEvent (JSRef MediaStreamTrackEvent) deriving (Eq)

unMediaStreamTrackEvent (MediaStreamTrackEvent o) = o

instance ToJSRef MediaStreamTrackEvent where
  toJSRef = return . unMediaStreamTrackEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamTrackEvent where
  fromJSRef = return . fmap MediaStreamTrackEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MediaStreamTrackEvent
instance IsGObject MediaStreamTrackEvent where
  toGObject = GObject . castRef . unMediaStreamTrackEvent
  unsafeCastGObject = MediaStreamTrackEvent . castRef . unGObject

castToMediaStreamTrackEvent :: IsGObject obj => obj -> MediaStreamTrackEvent
castToMediaStreamTrackEvent = castTo gTypeMediaStreamTrackEvent "MediaStreamTrackEvent"

foreign import javascript unsafe "window[\"MediaStreamTrackEvent\"]" gTypeMediaStreamTrackEvent' :: JSRef GType
gTypeMediaStreamTrackEvent = GType gTypeMediaStreamTrackEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrackSourcesCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackSourcesCallback Mozilla MediaStreamTrackSourcesCallback documentation>
newtype MediaStreamTrackSourcesCallback = MediaStreamTrackSourcesCallback (JSRef MediaStreamTrackSourcesCallback) deriving (Eq)

unMediaStreamTrackSourcesCallback (MediaStreamTrackSourcesCallback o) = o

instance ToJSRef MediaStreamTrackSourcesCallback where
  toJSRef = return . unMediaStreamTrackSourcesCallback
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamTrackSourcesCallback where
  fromJSRef = return . fmap MediaStreamTrackSourcesCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaStreamTrackSourcesCallback where
  toGObject = GObject . castRef . unMediaStreamTrackSourcesCallback
  unsafeCastGObject = MediaStreamTrackSourcesCallback . castRef . unGObject

castToMediaStreamTrackSourcesCallback :: IsGObject obj => obj -> MediaStreamTrackSourcesCallback
castToMediaStreamTrackSourcesCallback = castTo gTypeMediaStreamTrackSourcesCallback "MediaStreamTrackSourcesCallback"

foreign import javascript unsafe "window[\"MediaStreamTrackSourcesCallback\"]" gTypeMediaStreamTrackSourcesCallback' :: JSRef GType
gTypeMediaStreamTrackSourcesCallback = GType gTypeMediaStreamTrackSourcesCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraint Mozilla MediaTrackConstraint documentation>
newtype MediaTrackConstraint = MediaTrackConstraint (JSRef MediaTrackConstraint) deriving (Eq)

unMediaTrackConstraint (MediaTrackConstraint o) = o

instance ToJSRef MediaTrackConstraint where
  toJSRef = return . unMediaTrackConstraint
  {-# INLINE toJSRef #-}

instance FromJSRef MediaTrackConstraint where
  fromJSRef = return . fmap MediaTrackConstraint . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaTrackConstraint where
  toGObject = GObject . castRef . unMediaTrackConstraint
  unsafeCastGObject = MediaTrackConstraint . castRef . unGObject

castToMediaTrackConstraint :: IsGObject obj => obj -> MediaTrackConstraint
castToMediaTrackConstraint = castTo gTypeMediaTrackConstraint "MediaTrackConstraint"

foreign import javascript unsafe "window[\"MediaTrackConstraint\"]" gTypeMediaTrackConstraint' :: JSRef GType
gTypeMediaTrackConstraint = GType gTypeMediaTrackConstraint'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraintSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraintSet Mozilla MediaTrackConstraintSet documentation>
newtype MediaTrackConstraintSet = MediaTrackConstraintSet (JSRef MediaTrackConstraintSet) deriving (Eq)

unMediaTrackConstraintSet (MediaTrackConstraintSet o) = o

instance ToJSRef MediaTrackConstraintSet where
  toJSRef = return . unMediaTrackConstraintSet
  {-# INLINE toJSRef #-}

instance FromJSRef MediaTrackConstraintSet where
  fromJSRef = return . fmap MediaTrackConstraintSet . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaTrackConstraintSet where
  toGObject = GObject . castRef . unMediaTrackConstraintSet
  unsafeCastGObject = MediaTrackConstraintSet . castRef . unGObject

castToMediaTrackConstraintSet :: IsGObject obj => obj -> MediaTrackConstraintSet
castToMediaTrackConstraintSet = castTo gTypeMediaTrackConstraintSet "MediaTrackConstraintSet"

foreign import javascript unsafe "window[\"MediaTrackConstraintSet\"]" gTypeMediaTrackConstraintSet' :: JSRef GType
gTypeMediaTrackConstraintSet = GType gTypeMediaTrackConstraintSet'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraints".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints Mozilla MediaTrackConstraints documentation>
newtype MediaTrackConstraints = MediaTrackConstraints (JSRef MediaTrackConstraints) deriving (Eq)

unMediaTrackConstraints (MediaTrackConstraints o) = o

instance ToJSRef MediaTrackConstraints where
  toJSRef = return . unMediaTrackConstraints
  {-# INLINE toJSRef #-}

instance FromJSRef MediaTrackConstraints where
  fromJSRef = return . fmap MediaTrackConstraints . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MediaTrackConstraints where
  toGObject = GObject . castRef . unMediaTrackConstraints
  unsafeCastGObject = MediaTrackConstraints . castRef . unGObject

castToMediaTrackConstraints :: IsGObject obj => obj -> MediaTrackConstraints
castToMediaTrackConstraints = castTo gTypeMediaTrackConstraints "MediaTrackConstraints"

foreign import javascript unsafe "window[\"MediaTrackConstraints\"]" gTypeMediaTrackConstraints' :: JSRef GType
gTypeMediaTrackConstraints = GType gTypeMediaTrackConstraints'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MemoryInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo Mozilla MemoryInfo documentation>
newtype MemoryInfo = MemoryInfo (JSRef MemoryInfo) deriving (Eq)

unMemoryInfo (MemoryInfo o) = o

instance ToJSRef MemoryInfo where
  toJSRef = return . unMemoryInfo
  {-# INLINE toJSRef #-}

instance FromJSRef MemoryInfo where
  fromJSRef = return . fmap MemoryInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MemoryInfo where
  toGObject = GObject . castRef . unMemoryInfo
  unsafeCastGObject = MemoryInfo . castRef . unGObject

castToMemoryInfo :: IsGObject obj => obj -> MemoryInfo
castToMemoryInfo = castTo gTypeMemoryInfo "MemoryInfo"

foreign import javascript unsafe "window[\"MemoryInfo\"]" gTypeMemoryInfo' :: JSRef GType
gTypeMemoryInfo = GType gTypeMemoryInfo'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessageChannel".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation>
newtype MessageChannel = MessageChannel (JSRef MessageChannel) deriving (Eq)

unMessageChannel (MessageChannel o) = o

instance ToJSRef MessageChannel where
  toJSRef = return . unMessageChannel
  {-# INLINE toJSRef #-}

instance FromJSRef MessageChannel where
  fromJSRef = return . fmap MessageChannel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MessageChannel where
  toGObject = GObject . castRef . unMessageChannel
  unsafeCastGObject = MessageChannel . castRef . unGObject

castToMessageChannel :: IsGObject obj => obj -> MessageChannel
castToMessageChannel = castTo gTypeMessageChannel "MessageChannel"

foreign import javascript unsafe "window[\"MessageChannel\"]" gTypeMessageChannel' :: JSRef GType
gTypeMessageChannel = GType gTypeMessageChannel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent Mozilla MessageEvent documentation>
newtype MessageEvent = MessageEvent (JSRef MessageEvent) deriving (Eq)

unMessageEvent (MessageEvent o) = o

instance ToJSRef MessageEvent where
  toJSRef = return . unMessageEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MessageEvent where
  fromJSRef = return . fmap MessageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MessageEvent
instance IsGObject MessageEvent where
  toGObject = GObject . castRef . unMessageEvent
  unsafeCastGObject = MessageEvent . castRef . unGObject

castToMessageEvent :: IsGObject obj => obj -> MessageEvent
castToMessageEvent = castTo gTypeMessageEvent "MessageEvent"

foreign import javascript unsafe "window[\"MessageEvent\"]" gTypeMessageEvent' :: JSRef GType
gTypeMessageEvent = GType gTypeMessageEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessagePort".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort Mozilla MessagePort documentation>
newtype MessagePort = MessagePort (JSRef MessagePort) deriving (Eq)

unMessagePort (MessagePort o) = o

instance ToJSRef MessagePort where
  toJSRef = return . unMessagePort
  {-# INLINE toJSRef #-}

instance FromJSRef MessagePort where
  fromJSRef = return . fmap MessagePort . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget MessagePort
instance IsGObject MessagePort where
  toGObject = GObject . castRef . unMessagePort
  unsafeCastGObject = MessagePort . castRef . unGObject

castToMessagePort :: IsGObject obj => obj -> MessagePort
castToMessagePort = castTo gTypeMessagePort "MessagePort"

foreign import javascript unsafe "window[\"MessagePort\"]" gTypeMessagePort' :: JSRef GType
gTypeMessagePort = GType gTypeMessagePort'
#else
type IsMessagePort o = MessagePortClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MouseEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent Mozilla MouseEvent documentation>
newtype MouseEvent = MouseEvent (JSRef MouseEvent) deriving (Eq)

unMouseEvent (MouseEvent o) = o

instance ToJSRef MouseEvent where
  toJSRef = return . unMouseEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MouseEvent where
  fromJSRef = return . fmap MouseEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsMouseEvent o
toMouseEvent :: IsMouseEvent o => o -> MouseEvent
toMouseEvent = unsafeCastGObject . toGObject

instance IsMouseEvent MouseEvent
instance IsUIEvent MouseEvent
instance IsEvent MouseEvent
instance IsGObject MouseEvent where
  toGObject = GObject . castRef . unMouseEvent
  unsafeCastGObject = MouseEvent . castRef . unGObject

castToMouseEvent :: IsGObject obj => obj -> MouseEvent
castToMouseEvent = castTo gTypeMouseEvent "MouseEvent"

foreign import javascript unsafe "window[\"MouseEvent\"]" gTypeMouseEvent' :: JSRef GType
gTypeMouseEvent = GType gTypeMouseEvent'
#else
type IsMouseEvent o = MouseEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MutationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent Mozilla MutationEvent documentation>
newtype MutationEvent = MutationEvent (JSRef MutationEvent) deriving (Eq)

unMutationEvent (MutationEvent o) = o

instance ToJSRef MutationEvent where
  toJSRef = return . unMutationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef MutationEvent where
  fromJSRef = return . fmap MutationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent MutationEvent
instance IsGObject MutationEvent where
  toGObject = GObject . castRef . unMutationEvent
  unsafeCastGObject = MutationEvent . castRef . unGObject

castToMutationEvent :: IsGObject obj => obj -> MutationEvent
castToMutationEvent = castTo gTypeMutationEvent "MutationEvent"

foreign import javascript unsafe "window[\"MutationEvent\"]" gTypeMutationEvent' :: JSRef GType
gTypeMutationEvent = GType gTypeMutationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MutationObserver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation>
newtype MutationObserver = MutationObserver (JSRef MutationObserver) deriving (Eq)

unMutationObserver (MutationObserver o) = o

instance ToJSRef MutationObserver where
  toJSRef = return . unMutationObserver
  {-# INLINE toJSRef #-}

instance FromJSRef MutationObserver where
  fromJSRef = return . fmap MutationObserver . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MutationObserver where
  toGObject = GObject . castRef . unMutationObserver
  unsafeCastGObject = MutationObserver . castRef . unGObject

castToMutationObserver :: IsGObject obj => obj -> MutationObserver
castToMutationObserver = castTo gTypeMutationObserver "MutationObserver"

foreign import javascript unsafe "window[\"MutationObserver\"]" gTypeMutationObserver' :: JSRef GType
gTypeMutationObserver = GType gTypeMutationObserver'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MutationRecord".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord Mozilla MutationRecord documentation>
newtype MutationRecord = MutationRecord (JSRef MutationRecord) deriving (Eq)

unMutationRecord (MutationRecord o) = o

instance ToJSRef MutationRecord where
  toJSRef = return . unMutationRecord
  {-# INLINE toJSRef #-}

instance FromJSRef MutationRecord where
  fromJSRef = return . fmap MutationRecord . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject MutationRecord where
  toGObject = GObject . castRef . unMutationRecord
  unsafeCastGObject = MutationRecord . castRef . unGObject

castToMutationRecord :: IsGObject obj => obj -> MutationRecord
castToMutationRecord = castTo gTypeMutationRecord "MutationRecord"

foreign import javascript unsafe "window[\"MutationRecord\"]" gTypeMutationRecord' :: JSRef GType
gTypeMutationRecord = GType gTypeMutationRecord'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NamedNodeMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap Mozilla NamedNodeMap documentation>
newtype NamedNodeMap = NamedNodeMap (JSRef NamedNodeMap) deriving (Eq)

unNamedNodeMap (NamedNodeMap o) = o

instance ToJSRef NamedNodeMap where
  toJSRef = return . unNamedNodeMap
  {-# INLINE toJSRef #-}

instance FromJSRef NamedNodeMap where
  fromJSRef = return . fmap NamedNodeMap . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NamedNodeMap where
  toGObject = GObject . castRef . unNamedNodeMap
  unsafeCastGObject = NamedNodeMap . castRef . unGObject

castToNamedNodeMap :: IsGObject obj => obj -> NamedNodeMap
castToNamedNodeMap = castTo gTypeNamedNodeMap "NamedNodeMap"

foreign import javascript unsafe "window[\"NamedNodeMap\"]" gTypeNamedNodeMap' :: JSRef GType
gTypeNamedNodeMap = GType gTypeNamedNodeMap'
#else
type IsNamedNodeMap o = NamedNodeMapClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Navigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Navigator Mozilla Navigator documentation>
newtype Navigator = Navigator (JSRef Navigator) deriving (Eq)

unNavigator (Navigator o) = o

instance ToJSRef Navigator where
  toJSRef = return . unNavigator
  {-# INLINE toJSRef #-}

instance FromJSRef Navigator where
  fromJSRef = return . fmap Navigator . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Navigator where
  toGObject = GObject . castRef . unNavigator
  unsafeCastGObject = Navigator . castRef . unGObject

castToNavigator :: IsGObject obj => obj -> Navigator
castToNavigator = castTo gTypeNavigator "Navigator"

foreign import javascript unsafe "window[\"Navigator\"]" gTypeNavigator' :: JSRef GType
gTypeNavigator = GType gTypeNavigator'
#else
type IsNavigator o = NavigatorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NavigatorUserMediaError".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.DOMError"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaError Mozilla NavigatorUserMediaError documentation>
newtype NavigatorUserMediaError = NavigatorUserMediaError (JSRef NavigatorUserMediaError) deriving (Eq)

unNavigatorUserMediaError (NavigatorUserMediaError o) = o

instance ToJSRef NavigatorUserMediaError where
  toJSRef = return . unNavigatorUserMediaError
  {-# INLINE toJSRef #-}

instance FromJSRef NavigatorUserMediaError where
  fromJSRef = return . fmap NavigatorUserMediaError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsDOMError NavigatorUserMediaError
instance IsGObject NavigatorUserMediaError where
  toGObject = GObject . castRef . unNavigatorUserMediaError
  unsafeCastGObject = NavigatorUserMediaError . castRef . unGObject

castToNavigatorUserMediaError :: IsGObject obj => obj -> NavigatorUserMediaError
castToNavigatorUserMediaError = castTo gTypeNavigatorUserMediaError "NavigatorUserMediaError"

foreign import javascript unsafe "window[\"NavigatorUserMediaError\"]" gTypeNavigatorUserMediaError' :: JSRef GType
gTypeNavigatorUserMediaError = GType gTypeNavigatorUserMediaError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NavigatorUserMediaErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaErrorCallback Mozilla NavigatorUserMediaErrorCallback documentation>
newtype NavigatorUserMediaErrorCallback = NavigatorUserMediaErrorCallback (JSRef NavigatorUserMediaErrorCallback) deriving (Eq)

unNavigatorUserMediaErrorCallback (NavigatorUserMediaErrorCallback o) = o

instance ToJSRef NavigatorUserMediaErrorCallback where
  toJSRef = return . unNavigatorUserMediaErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef NavigatorUserMediaErrorCallback where
  fromJSRef = return . fmap NavigatorUserMediaErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NavigatorUserMediaErrorCallback where
  toGObject = GObject . castRef . unNavigatorUserMediaErrorCallback
  unsafeCastGObject = NavigatorUserMediaErrorCallback . castRef . unGObject

castToNavigatorUserMediaErrorCallback :: IsGObject obj => obj -> NavigatorUserMediaErrorCallback
castToNavigatorUserMediaErrorCallback = castTo gTypeNavigatorUserMediaErrorCallback "NavigatorUserMediaErrorCallback"

foreign import javascript unsafe "window[\"NavigatorUserMediaErrorCallback\"]" gTypeNavigatorUserMediaErrorCallback' :: JSRef GType
gTypeNavigatorUserMediaErrorCallback = GType gTypeNavigatorUserMediaErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NavigatorUserMediaSuccessCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaSuccessCallback Mozilla NavigatorUserMediaSuccessCallback documentation>
newtype NavigatorUserMediaSuccessCallback = NavigatorUserMediaSuccessCallback (JSRef NavigatorUserMediaSuccessCallback) deriving (Eq)

unNavigatorUserMediaSuccessCallback (NavigatorUserMediaSuccessCallback o) = o

instance ToJSRef NavigatorUserMediaSuccessCallback where
  toJSRef = return . unNavigatorUserMediaSuccessCallback
  {-# INLINE toJSRef #-}

instance FromJSRef NavigatorUserMediaSuccessCallback where
  fromJSRef = return . fmap NavigatorUserMediaSuccessCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NavigatorUserMediaSuccessCallback where
  toGObject = GObject . castRef . unNavigatorUserMediaSuccessCallback
  unsafeCastGObject = NavigatorUserMediaSuccessCallback . castRef . unGObject

castToNavigatorUserMediaSuccessCallback :: IsGObject obj => obj -> NavigatorUserMediaSuccessCallback
castToNavigatorUserMediaSuccessCallback = castTo gTypeNavigatorUserMediaSuccessCallback "NavigatorUserMediaSuccessCallback"

foreign import javascript unsafe "window[\"NavigatorUserMediaSuccessCallback\"]" gTypeNavigatorUserMediaSuccessCallback' :: JSRef GType
gTypeNavigatorUserMediaSuccessCallback = GType gTypeNavigatorUserMediaSuccessCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Node".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Node Mozilla Node documentation>
newtype Node = Node (JSRef Node) deriving (Eq)

unNode (Node o) = o

instance ToJSRef Node where
  toJSRef = return . unNode
  {-# INLINE toJSRef #-}

instance FromJSRef Node where
  fromJSRef = return . fmap Node . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsNode o
toNode :: IsNode o => o -> Node
toNode = unsafeCastGObject . toGObject

instance IsNode Node
instance IsEventTarget Node
instance IsGObject Node where
  toGObject = GObject . castRef . unNode
  unsafeCastGObject = Node . castRef . unGObject

castToNode :: IsGObject obj => obj -> Node
castToNode = castTo gTypeNode "Node"

foreign import javascript unsafe "window[\"Node\"]" gTypeNode' :: JSRef GType
gTypeNode = GType gTypeNode'
#else
type IsNode o = NodeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeFilter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation>
newtype NodeFilter = NodeFilter (JSRef NodeFilter) deriving (Eq)

unNodeFilter (NodeFilter o) = o

instance ToJSRef NodeFilter where
  toJSRef = return . unNodeFilter
  {-# INLINE toJSRef #-}

instance FromJSRef NodeFilter where
  fromJSRef = return . fmap NodeFilter . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NodeFilter where
  toGObject = GObject . castRef . unNodeFilter
  unsafeCastGObject = NodeFilter . castRef . unGObject

castToNodeFilter :: IsGObject obj => obj -> NodeFilter
castToNodeFilter = castTo gTypeNodeFilter "NodeFilter"

foreign import javascript unsafe "window[\"NodeFilter\"]" gTypeNodeFilter' :: JSRef GType
gTypeNodeFilter = GType gTypeNodeFilter'
#else
type IsNodeFilter o = NodeFilterClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeIterator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator Mozilla NodeIterator documentation>
newtype NodeIterator = NodeIterator (JSRef NodeIterator) deriving (Eq)

unNodeIterator (NodeIterator o) = o

instance ToJSRef NodeIterator where
  toJSRef = return . unNodeIterator
  {-# INLINE toJSRef #-}

instance FromJSRef NodeIterator where
  fromJSRef = return . fmap NodeIterator . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NodeIterator where
  toGObject = GObject . castRef . unNodeIterator
  unsafeCastGObject = NodeIterator . castRef . unGObject

castToNodeIterator :: IsGObject obj => obj -> NodeIterator
castToNodeIterator = castTo gTypeNodeIterator "NodeIterator"

foreign import javascript unsafe "window[\"NodeIterator\"]" gTypeNodeIterator' :: JSRef GType
gTypeNodeIterator = GType gTypeNodeIterator'
#else
type IsNodeIterator o = NodeIteratorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeList Mozilla NodeList documentation>
newtype NodeList = NodeList (JSRef NodeList) deriving (Eq)

unNodeList (NodeList o) = o

instance ToJSRef NodeList where
  toJSRef = return . unNodeList
  {-# INLINE toJSRef #-}

instance FromJSRef NodeList where
  fromJSRef = return . fmap NodeList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsNodeList o
toNodeList :: IsNodeList o => o -> NodeList
toNodeList = unsafeCastGObject . toGObject

instance IsNodeList NodeList
instance IsGObject NodeList where
  toGObject = GObject . castRef . unNodeList
  unsafeCastGObject = NodeList . castRef . unGObject

castToNodeList :: IsGObject obj => obj -> NodeList
castToNodeList = castTo gTypeNodeList "NodeList"

foreign import javascript unsafe "window[\"NodeList\"]" gTypeNodeList' :: JSRef GType
gTypeNodeList = GType gTypeNodeList'
#else
type IsNodeList o = NodeListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Notification".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Notification Mozilla Notification documentation>
newtype Notification = Notification (JSRef Notification) deriving (Eq)

unNotification (Notification o) = o

instance ToJSRef Notification where
  toJSRef = return . unNotification
  {-# INLINE toJSRef #-}

instance FromJSRef Notification where
  fromJSRef = return . fmap Notification . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget Notification
instance IsGObject Notification where
  toGObject = GObject . castRef . unNotification
  unsafeCastGObject = Notification . castRef . unGObject

castToNotification :: IsGObject obj => obj -> Notification
castToNotification = castTo gTypeNotification "Notification"

foreign import javascript unsafe "window[\"Notification\"]" gTypeNotification' :: JSRef GType
gTypeNotification = GType gTypeNotification'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NotificationCenter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter Mozilla NotificationCenter documentation>
newtype NotificationCenter = NotificationCenter (JSRef NotificationCenter) deriving (Eq)

unNotificationCenter (NotificationCenter o) = o

instance ToJSRef NotificationCenter where
  toJSRef = return . unNotificationCenter
  {-# INLINE toJSRef #-}

instance FromJSRef NotificationCenter where
  fromJSRef = return . fmap NotificationCenter . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NotificationCenter where
  toGObject = GObject . castRef . unNotificationCenter
  unsafeCastGObject = NotificationCenter . castRef . unGObject

castToNotificationCenter :: IsGObject obj => obj -> NotificationCenter
castToNotificationCenter = castTo gTypeNotificationCenter "NotificationCenter"

foreign import javascript unsafe "window[\"NotificationCenter\"]" gTypeNotificationCenter' :: JSRef GType
gTypeNotificationCenter = GType gTypeNotificationCenter'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NotificationPermissionCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback Mozilla NotificationPermissionCallback documentation>
newtype NotificationPermissionCallback = NotificationPermissionCallback (JSRef NotificationPermissionCallback) deriving (Eq)

unNotificationPermissionCallback (NotificationPermissionCallback o) = o

instance ToJSRef NotificationPermissionCallback where
  toJSRef = return . unNotificationPermissionCallback
  {-# INLINE toJSRef #-}

instance FromJSRef NotificationPermissionCallback where
  fromJSRef = return . fmap NotificationPermissionCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject NotificationPermissionCallback where
  toGObject = GObject . castRef . unNotificationPermissionCallback
  unsafeCastGObject = NotificationPermissionCallback . castRef . unGObject

castToNotificationPermissionCallback :: IsGObject obj => obj -> NotificationPermissionCallback
castToNotificationPermissionCallback = castTo gTypeNotificationPermissionCallback "NotificationPermissionCallback"

foreign import javascript unsafe "window[\"NotificationPermissionCallback\"]" gTypeNotificationPermissionCallback' :: JSRef GType
gTypeNotificationPermissionCallback = GType gTypeNotificationPermissionCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESElementIndexUint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESElementIndexUint Mozilla OESElementIndexUint documentation>
newtype OESElementIndexUint = OESElementIndexUint (JSRef OESElementIndexUint) deriving (Eq)

unOESElementIndexUint (OESElementIndexUint o) = o

instance ToJSRef OESElementIndexUint where
  toJSRef = return . unOESElementIndexUint
  {-# INLINE toJSRef #-}

instance FromJSRef OESElementIndexUint where
  fromJSRef = return . fmap OESElementIndexUint . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESElementIndexUint where
  toGObject = GObject . castRef . unOESElementIndexUint
  unsafeCastGObject = OESElementIndexUint . castRef . unGObject

castToOESElementIndexUint :: IsGObject obj => obj -> OESElementIndexUint
castToOESElementIndexUint = castTo gTypeOESElementIndexUint "OESElementIndexUint"

foreign import javascript unsafe "window[\"OESElementIndexUint\"]" gTypeOESElementIndexUint' :: JSRef GType
gTypeOESElementIndexUint = GType gTypeOESElementIndexUint'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESStandardDerivatives".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESStandardDerivatives Mozilla OESStandardDerivatives documentation>
newtype OESStandardDerivatives = OESStandardDerivatives (JSRef OESStandardDerivatives) deriving (Eq)

unOESStandardDerivatives (OESStandardDerivatives o) = o

instance ToJSRef OESStandardDerivatives where
  toJSRef = return . unOESStandardDerivatives
  {-# INLINE toJSRef #-}

instance FromJSRef OESStandardDerivatives where
  fromJSRef = return . fmap OESStandardDerivatives . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESStandardDerivatives where
  toGObject = GObject . castRef . unOESStandardDerivatives
  unsafeCastGObject = OESStandardDerivatives . castRef . unGObject

castToOESStandardDerivatives :: IsGObject obj => obj -> OESStandardDerivatives
castToOESStandardDerivatives = castTo gTypeOESStandardDerivatives "OESStandardDerivatives"

foreign import javascript unsafe "window[\"OESStandardDerivatives\"]" gTypeOESStandardDerivatives' :: JSRef GType
gTypeOESStandardDerivatives = GType gTypeOESStandardDerivatives'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloat Mozilla OESTextureFloat documentation>
newtype OESTextureFloat = OESTextureFloat (JSRef OESTextureFloat) deriving (Eq)

unOESTextureFloat (OESTextureFloat o) = o

instance ToJSRef OESTextureFloat where
  toJSRef = return . unOESTextureFloat
  {-# INLINE toJSRef #-}

instance FromJSRef OESTextureFloat where
  fromJSRef = return . fmap OESTextureFloat . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESTextureFloat where
  toGObject = GObject . castRef . unOESTextureFloat
  unsafeCastGObject = OESTextureFloat . castRef . unGObject

castToOESTextureFloat :: IsGObject obj => obj -> OESTextureFloat
castToOESTextureFloat = castTo gTypeOESTextureFloat "OESTextureFloat"

foreign import javascript unsafe "window[\"OESTextureFloat\"]" gTypeOESTextureFloat' :: JSRef GType
gTypeOESTextureFloat = GType gTypeOESTextureFloat'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloatLinear Mozilla OESTextureFloatLinear documentation>
newtype OESTextureFloatLinear = OESTextureFloatLinear (JSRef OESTextureFloatLinear) deriving (Eq)

unOESTextureFloatLinear (OESTextureFloatLinear o) = o

instance ToJSRef OESTextureFloatLinear where
  toJSRef = return . unOESTextureFloatLinear
  {-# INLINE toJSRef #-}

instance FromJSRef OESTextureFloatLinear where
  fromJSRef = return . fmap OESTextureFloatLinear . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESTextureFloatLinear where
  toGObject = GObject . castRef . unOESTextureFloatLinear
  unsafeCastGObject = OESTextureFloatLinear . castRef . unGObject

castToOESTextureFloatLinear :: IsGObject obj => obj -> OESTextureFloatLinear
castToOESTextureFloatLinear = castTo gTypeOESTextureFloatLinear "OESTextureFloatLinear"

foreign import javascript unsafe "window[\"OESTextureFloatLinear\"]" gTypeOESTextureFloatLinear' :: JSRef GType
gTypeOESTextureFloatLinear = GType gTypeOESTextureFloatLinear'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureHalfFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloat Mozilla OESTextureHalfFloat documentation>
newtype OESTextureHalfFloat = OESTextureHalfFloat (JSRef OESTextureHalfFloat) deriving (Eq)

unOESTextureHalfFloat (OESTextureHalfFloat o) = o

instance ToJSRef OESTextureHalfFloat where
  toJSRef = return . unOESTextureHalfFloat
  {-# INLINE toJSRef #-}

instance FromJSRef OESTextureHalfFloat where
  fromJSRef = return . fmap OESTextureHalfFloat . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESTextureHalfFloat where
  toGObject = GObject . castRef . unOESTextureHalfFloat
  unsafeCastGObject = OESTextureHalfFloat . castRef . unGObject

castToOESTextureHalfFloat :: IsGObject obj => obj -> OESTextureHalfFloat
castToOESTextureHalfFloat = castTo gTypeOESTextureHalfFloat "OESTextureHalfFloat"

foreign import javascript unsafe "window[\"OESTextureHalfFloat\"]" gTypeOESTextureHalfFloat' :: JSRef GType
gTypeOESTextureHalfFloat = GType gTypeOESTextureHalfFloat'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureHalfFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloatLinear Mozilla OESTextureHalfFloatLinear documentation>
newtype OESTextureHalfFloatLinear = OESTextureHalfFloatLinear (JSRef OESTextureHalfFloatLinear) deriving (Eq)

unOESTextureHalfFloatLinear (OESTextureHalfFloatLinear o) = o

instance ToJSRef OESTextureHalfFloatLinear where
  toJSRef = return . unOESTextureHalfFloatLinear
  {-# INLINE toJSRef #-}

instance FromJSRef OESTextureHalfFloatLinear where
  fromJSRef = return . fmap OESTextureHalfFloatLinear . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESTextureHalfFloatLinear where
  toGObject = GObject . castRef . unOESTextureHalfFloatLinear
  unsafeCastGObject = OESTextureHalfFloatLinear . castRef . unGObject

castToOESTextureHalfFloatLinear :: IsGObject obj => obj -> OESTextureHalfFloatLinear
castToOESTextureHalfFloatLinear = castTo gTypeOESTextureHalfFloatLinear "OESTextureHalfFloatLinear"

foreign import javascript unsafe "window[\"OESTextureHalfFloatLinear\"]" gTypeOESTextureHalfFloatLinear' :: JSRef GType
gTypeOESTextureHalfFloatLinear = GType gTypeOESTextureHalfFloatLinear'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject Mozilla OESVertexArrayObject documentation>
newtype OESVertexArrayObject = OESVertexArrayObject (JSRef OESVertexArrayObject) deriving (Eq)

unOESVertexArrayObject (OESVertexArrayObject o) = o

instance ToJSRef OESVertexArrayObject where
  toJSRef = return . unOESVertexArrayObject
  {-# INLINE toJSRef #-}

instance FromJSRef OESVertexArrayObject where
  fromJSRef = return . fmap OESVertexArrayObject . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject OESVertexArrayObject where
  toGObject = GObject . castRef . unOESVertexArrayObject
  unsafeCastGObject = OESVertexArrayObject . castRef . unGObject

castToOESVertexArrayObject :: IsGObject obj => obj -> OESVertexArrayObject
castToOESVertexArrayObject = castTo gTypeOESVertexArrayObject "OESVertexArrayObject"

foreign import javascript unsafe "window[\"OESVertexArrayObject\"]" gTypeOESVertexArrayObject' :: JSRef GType
gTypeOESVertexArrayObject = GType gTypeOESVertexArrayObject'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OfflineAudioCompletionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent Mozilla OfflineAudioCompletionEvent documentation>
newtype OfflineAudioCompletionEvent = OfflineAudioCompletionEvent (JSRef OfflineAudioCompletionEvent) deriving (Eq)

unOfflineAudioCompletionEvent (OfflineAudioCompletionEvent o) = o

instance ToJSRef OfflineAudioCompletionEvent where
  toJSRef = return . unOfflineAudioCompletionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef OfflineAudioCompletionEvent where
  fromJSRef = return . fmap OfflineAudioCompletionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent OfflineAudioCompletionEvent
instance IsGObject OfflineAudioCompletionEvent where
  toGObject = GObject . castRef . unOfflineAudioCompletionEvent
  unsafeCastGObject = OfflineAudioCompletionEvent . castRef . unGObject

castToOfflineAudioCompletionEvent :: IsGObject obj => obj -> OfflineAudioCompletionEvent
castToOfflineAudioCompletionEvent = castTo gTypeOfflineAudioCompletionEvent "OfflineAudioCompletionEvent"

foreign import javascript unsafe "window[\"OfflineAudioCompletionEvent\"]" gTypeOfflineAudioCompletionEvent' :: JSRef GType
gTypeOfflineAudioCompletionEvent = GType gTypeOfflineAudioCompletionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OfflineAudioContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioContext"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioContext Mozilla OfflineAudioContext documentation>
newtype OfflineAudioContext = OfflineAudioContext (JSRef OfflineAudioContext) deriving (Eq)

unOfflineAudioContext (OfflineAudioContext o) = o

instance ToJSRef OfflineAudioContext where
  toJSRef = return . unOfflineAudioContext
  {-# INLINE toJSRef #-}

instance FromJSRef OfflineAudioContext where
  fromJSRef = return . fmap OfflineAudioContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioContext OfflineAudioContext
instance IsEventTarget OfflineAudioContext
instance IsGObject OfflineAudioContext where
  toGObject = GObject . castRef . unOfflineAudioContext
  unsafeCastGObject = OfflineAudioContext . castRef . unGObject

castToOfflineAudioContext :: IsGObject obj => obj -> OfflineAudioContext
castToOfflineAudioContext = castTo gTypeOfflineAudioContext "OfflineAudioContext"

foreign import javascript unsafe "window[\"OfflineAudioContext\"]" gTypeOfflineAudioContext' :: JSRef GType
gTypeOfflineAudioContext = GType gTypeOfflineAudioContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OscillatorNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode Mozilla OscillatorNode documentation>
newtype OscillatorNode = OscillatorNode (JSRef OscillatorNode) deriving (Eq)

unOscillatorNode (OscillatorNode o) = o

instance ToJSRef OscillatorNode where
  toJSRef = return . unOscillatorNode
  {-# INLINE toJSRef #-}

instance FromJSRef OscillatorNode where
  fromJSRef = return . fmap OscillatorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode OscillatorNode
instance IsEventTarget OscillatorNode
instance IsGObject OscillatorNode where
  toGObject = GObject . castRef . unOscillatorNode
  unsafeCastGObject = OscillatorNode . castRef . unGObject

castToOscillatorNode :: IsGObject obj => obj -> OscillatorNode
castToOscillatorNode = castTo gTypeOscillatorNode "OscillatorNode"

foreign import javascript unsafe "window[\"OscillatorNode\"]" gTypeOscillatorNode' :: JSRef GType
gTypeOscillatorNode = GType gTypeOscillatorNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OverflowEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent Mozilla OverflowEvent documentation>
newtype OverflowEvent = OverflowEvent (JSRef OverflowEvent) deriving (Eq)

unOverflowEvent (OverflowEvent o) = o

instance ToJSRef OverflowEvent where
  toJSRef = return . unOverflowEvent
  {-# INLINE toJSRef #-}

instance FromJSRef OverflowEvent where
  fromJSRef = return . fmap OverflowEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent OverflowEvent
instance IsGObject OverflowEvent where
  toGObject = GObject . castRef . unOverflowEvent
  unsafeCastGObject = OverflowEvent . castRef . unGObject

castToOverflowEvent :: IsGObject obj => obj -> OverflowEvent
castToOverflowEvent = castTo gTypeOverflowEvent "OverflowEvent"

foreign import javascript unsafe "window[\"OverflowEvent\"]" gTypeOverflowEvent' :: JSRef GType
gTypeOverflowEvent = GType gTypeOverflowEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PageTransitionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent Mozilla PageTransitionEvent documentation>
newtype PageTransitionEvent = PageTransitionEvent (JSRef PageTransitionEvent) deriving (Eq)

unPageTransitionEvent (PageTransitionEvent o) = o

instance ToJSRef PageTransitionEvent where
  toJSRef = return . unPageTransitionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef PageTransitionEvent where
  fromJSRef = return . fmap PageTransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent PageTransitionEvent
instance IsGObject PageTransitionEvent where
  toGObject = GObject . castRef . unPageTransitionEvent
  unsafeCastGObject = PageTransitionEvent . castRef . unGObject

castToPageTransitionEvent :: IsGObject obj => obj -> PageTransitionEvent
castToPageTransitionEvent = castTo gTypePageTransitionEvent "PageTransitionEvent"

foreign import javascript unsafe "window[\"PageTransitionEvent\"]" gTypePageTransitionEvent' :: JSRef GType
gTypePageTransitionEvent = GType gTypePageTransitionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PannerNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode Mozilla webkitAudioPannerNode documentation>
newtype PannerNode = PannerNode (JSRef PannerNode) deriving (Eq)

unPannerNode (PannerNode o) = o

instance ToJSRef PannerNode where
  toJSRef = return . unPannerNode
  {-# INLINE toJSRef #-}

instance FromJSRef PannerNode where
  fromJSRef = return . fmap PannerNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode PannerNode
instance IsEventTarget PannerNode
instance IsGObject PannerNode where
  toGObject = GObject . castRef . unPannerNode
  unsafeCastGObject = PannerNode . castRef . unGObject

castToPannerNode :: IsGObject obj => obj -> PannerNode
castToPannerNode = castTo gTypePannerNode "PannerNode"

foreign import javascript unsafe "window[\"webkitAudioPannerNode\"]" gTypePannerNode' :: JSRef GType
gTypePannerNode = GType gTypePannerNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Performance".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Performance Mozilla Performance documentation>
newtype Performance = Performance (JSRef Performance) deriving (Eq)

unPerformance (Performance o) = o

instance ToJSRef Performance where
  toJSRef = return . unPerformance
  {-# INLINE toJSRef #-}

instance FromJSRef Performance where
  fromJSRef = return . fmap Performance . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget Performance
instance IsGObject Performance where
  toGObject = GObject . castRef . unPerformance
  unsafeCastGObject = Performance . castRef . unGObject

castToPerformance :: IsGObject obj => obj -> Performance
castToPerformance = castTo gTypePerformance "Performance"

foreign import javascript unsafe "window[\"Performance\"]" gTypePerformance' :: JSRef GType
gTypePerformance = GType gTypePerformance'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceEntry".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry Mozilla PerformanceEntry documentation>
newtype PerformanceEntry = PerformanceEntry (JSRef PerformanceEntry) deriving (Eq)

unPerformanceEntry (PerformanceEntry o) = o

instance ToJSRef PerformanceEntry where
  toJSRef = return . unPerformanceEntry
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceEntry where
  fromJSRef = return . fmap PerformanceEntry . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsPerformanceEntry o
toPerformanceEntry :: IsPerformanceEntry o => o -> PerformanceEntry
toPerformanceEntry = unsafeCastGObject . toGObject

instance IsPerformanceEntry PerformanceEntry
instance IsGObject PerformanceEntry where
  toGObject = GObject . castRef . unPerformanceEntry
  unsafeCastGObject = PerformanceEntry . castRef . unGObject

castToPerformanceEntry :: IsGObject obj => obj -> PerformanceEntry
castToPerformanceEntry = castTo gTypePerformanceEntry "PerformanceEntry"

foreign import javascript unsafe "window[\"PerformanceEntry\"]" gTypePerformanceEntry' :: JSRef GType
gTypePerformanceEntry = GType gTypePerformanceEntry'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceEntryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList Mozilla PerformanceEntryList documentation>
newtype PerformanceEntryList = PerformanceEntryList (JSRef PerformanceEntryList) deriving (Eq)

unPerformanceEntryList (PerformanceEntryList o) = o

instance ToJSRef PerformanceEntryList where
  toJSRef = return . unPerformanceEntryList
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceEntryList where
  fromJSRef = return . fmap PerformanceEntryList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PerformanceEntryList where
  toGObject = GObject . castRef . unPerformanceEntryList
  unsafeCastGObject = PerformanceEntryList . castRef . unGObject

castToPerformanceEntryList :: IsGObject obj => obj -> PerformanceEntryList
castToPerformanceEntryList = castTo gTypePerformanceEntryList "PerformanceEntryList"

foreign import javascript unsafe "window[\"PerformanceEntryList\"]" gTypePerformanceEntryList' :: JSRef GType
gTypePerformanceEntryList = GType gTypePerformanceEntryList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceMark".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMark Mozilla PerformanceMark documentation>
newtype PerformanceMark = PerformanceMark (JSRef PerformanceMark) deriving (Eq)

unPerformanceMark (PerformanceMark o) = o

instance ToJSRef PerformanceMark where
  toJSRef = return . unPerformanceMark
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceMark where
  fromJSRef = return . fmap PerformanceMark . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsPerformanceEntry PerformanceMark
instance IsGObject PerformanceMark where
  toGObject = GObject . castRef . unPerformanceMark
  unsafeCastGObject = PerformanceMark . castRef . unGObject

castToPerformanceMark :: IsGObject obj => obj -> PerformanceMark
castToPerformanceMark = castTo gTypePerformanceMark "PerformanceMark"

foreign import javascript unsafe "window[\"PerformanceMark\"]" gTypePerformanceMark' :: JSRef GType
gTypePerformanceMark = GType gTypePerformanceMark'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceMeasure".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMeasure Mozilla PerformanceMeasure documentation>
newtype PerformanceMeasure = PerformanceMeasure (JSRef PerformanceMeasure) deriving (Eq)

unPerformanceMeasure (PerformanceMeasure o) = o

instance ToJSRef PerformanceMeasure where
  toJSRef = return . unPerformanceMeasure
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceMeasure where
  fromJSRef = return . fmap PerformanceMeasure . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsPerformanceEntry PerformanceMeasure
instance IsGObject PerformanceMeasure where
  toGObject = GObject . castRef . unPerformanceMeasure
  unsafeCastGObject = PerformanceMeasure . castRef . unGObject

castToPerformanceMeasure :: IsGObject obj => obj -> PerformanceMeasure
castToPerformanceMeasure = castTo gTypePerformanceMeasure "PerformanceMeasure"

foreign import javascript unsafe "window[\"PerformanceMeasure\"]" gTypePerformanceMeasure' :: JSRef GType
gTypePerformanceMeasure = GType gTypePerformanceMeasure'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceNavigation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation Mozilla PerformanceNavigation documentation>
newtype PerformanceNavigation = PerformanceNavigation (JSRef PerformanceNavigation) deriving (Eq)

unPerformanceNavigation (PerformanceNavigation o) = o

instance ToJSRef PerformanceNavigation where
  toJSRef = return . unPerformanceNavigation
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceNavigation where
  fromJSRef = return . fmap PerformanceNavigation . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PerformanceNavigation where
  toGObject = GObject . castRef . unPerformanceNavigation
  unsafeCastGObject = PerformanceNavigation . castRef . unGObject

castToPerformanceNavigation :: IsGObject obj => obj -> PerformanceNavigation
castToPerformanceNavigation = castTo gTypePerformanceNavigation "PerformanceNavigation"

foreign import javascript unsafe "window[\"PerformanceNavigation\"]" gTypePerformanceNavigation' :: JSRef GType
gTypePerformanceNavigation = GType gTypePerformanceNavigation'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceResourceTiming".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming Mozilla PerformanceResourceTiming documentation>
newtype PerformanceResourceTiming = PerformanceResourceTiming (JSRef PerformanceResourceTiming) deriving (Eq)

unPerformanceResourceTiming (PerformanceResourceTiming o) = o

instance ToJSRef PerformanceResourceTiming where
  toJSRef = return . unPerformanceResourceTiming
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceResourceTiming where
  fromJSRef = return . fmap PerformanceResourceTiming . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsPerformanceEntry PerformanceResourceTiming
instance IsGObject PerformanceResourceTiming where
  toGObject = GObject . castRef . unPerformanceResourceTiming
  unsafeCastGObject = PerformanceResourceTiming . castRef . unGObject

castToPerformanceResourceTiming :: IsGObject obj => obj -> PerformanceResourceTiming
castToPerformanceResourceTiming = castTo gTypePerformanceResourceTiming "PerformanceResourceTiming"

foreign import javascript unsafe "window[\"PerformanceResourceTiming\"]" gTypePerformanceResourceTiming' :: JSRef GType
gTypePerformanceResourceTiming = GType gTypePerformanceResourceTiming'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceTiming".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming Mozilla PerformanceTiming documentation>
newtype PerformanceTiming = PerformanceTiming (JSRef PerformanceTiming) deriving (Eq)

unPerformanceTiming (PerformanceTiming o) = o

instance ToJSRef PerformanceTiming where
  toJSRef = return . unPerformanceTiming
  {-# INLINE toJSRef #-}

instance FromJSRef PerformanceTiming where
  fromJSRef = return . fmap PerformanceTiming . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PerformanceTiming where
  toGObject = GObject . castRef . unPerformanceTiming
  unsafeCastGObject = PerformanceTiming . castRef . unGObject

castToPerformanceTiming :: IsGObject obj => obj -> PerformanceTiming
castToPerformanceTiming = castTo gTypePerformanceTiming "PerformanceTiming"

foreign import javascript unsafe "window[\"PerformanceTiming\"]" gTypePerformanceTiming' :: JSRef GType
gTypePerformanceTiming = GType gTypePerformanceTiming'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PeriodicWave".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PeriodicWave Mozilla PeriodicWave documentation>
newtype PeriodicWave = PeriodicWave (JSRef PeriodicWave) deriving (Eq)

unPeriodicWave (PeriodicWave o) = o

instance ToJSRef PeriodicWave where
  toJSRef = return . unPeriodicWave
  {-# INLINE toJSRef #-}

instance FromJSRef PeriodicWave where
  fromJSRef = return . fmap PeriodicWave . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PeriodicWave where
  toGObject = GObject . castRef . unPeriodicWave
  unsafeCastGObject = PeriodicWave . castRef . unGObject

castToPeriodicWave :: IsGObject obj => obj -> PeriodicWave
castToPeriodicWave = castTo gTypePeriodicWave "PeriodicWave"

foreign import javascript unsafe "window[\"PeriodicWave\"]" gTypePeriodicWave' :: JSRef GType
gTypePeriodicWave = GType gTypePeriodicWave'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PopStateEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent Mozilla PopStateEvent documentation>
newtype PopStateEvent = PopStateEvent (JSRef PopStateEvent) deriving (Eq)

unPopStateEvent (PopStateEvent o) = o

instance ToJSRef PopStateEvent where
  toJSRef = return . unPopStateEvent
  {-# INLINE toJSRef #-}

instance FromJSRef PopStateEvent where
  fromJSRef = return . fmap PopStateEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent PopStateEvent
instance IsGObject PopStateEvent where
  toGObject = GObject . castRef . unPopStateEvent
  unsafeCastGObject = PopStateEvent . castRef . unGObject

castToPopStateEvent :: IsGObject obj => obj -> PopStateEvent
castToPopStateEvent = castTo gTypePopStateEvent "PopStateEvent"

foreign import javascript unsafe "window[\"PopStateEvent\"]" gTypePopStateEvent' :: JSRef GType
gTypePopStateEvent = GType gTypePopStateEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PositionCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PositionCallback Mozilla PositionCallback documentation>
newtype PositionCallback = PositionCallback (JSRef PositionCallback) deriving (Eq)

unPositionCallback (PositionCallback o) = o

instance ToJSRef PositionCallback where
  toJSRef = return . unPositionCallback
  {-# INLINE toJSRef #-}

instance FromJSRef PositionCallback where
  fromJSRef = return . fmap PositionCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PositionCallback where
  toGObject = GObject . castRef . unPositionCallback
  unsafeCastGObject = PositionCallback . castRef . unGObject

castToPositionCallback :: IsGObject obj => obj -> PositionCallback
castToPositionCallback = castTo gTypePositionCallback "PositionCallback"

foreign import javascript unsafe "window[\"PositionCallback\"]" gTypePositionCallback' :: JSRef GType
gTypePositionCallback = GType gTypePositionCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PositionError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PositionError Mozilla PositionError documentation>
newtype PositionError = PositionError (JSRef PositionError) deriving (Eq)

unPositionError (PositionError o) = o

instance ToJSRef PositionError where
  toJSRef = return . unPositionError
  {-# INLINE toJSRef #-}

instance FromJSRef PositionError where
  fromJSRef = return . fmap PositionError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PositionError where
  toGObject = GObject . castRef . unPositionError
  unsafeCastGObject = PositionError . castRef . unGObject

castToPositionError :: IsGObject obj => obj -> PositionError
castToPositionError = castTo gTypePositionError "PositionError"

foreign import javascript unsafe "window[\"PositionError\"]" gTypePositionError' :: JSRef GType
gTypePositionError = GType gTypePositionError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PositionErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PositionErrorCallback Mozilla PositionErrorCallback documentation>
newtype PositionErrorCallback = PositionErrorCallback (JSRef PositionErrorCallback) deriving (Eq)

unPositionErrorCallback (PositionErrorCallback o) = o

instance ToJSRef PositionErrorCallback where
  toJSRef = return . unPositionErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef PositionErrorCallback where
  fromJSRef = return . fmap PositionErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject PositionErrorCallback where
  toGObject = GObject . castRef . unPositionErrorCallback
  unsafeCastGObject = PositionErrorCallback . castRef . unGObject

castToPositionErrorCallback :: IsGObject obj => obj -> PositionErrorCallback
castToPositionErrorCallback = castTo gTypePositionErrorCallback "PositionErrorCallback"

foreign import javascript unsafe "window[\"PositionErrorCallback\"]" gTypePositionErrorCallback' :: JSRef GType
gTypePositionErrorCallback = GType gTypePositionErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ProcessingInstruction".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CharacterData"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction Mozilla ProcessingInstruction documentation>
newtype ProcessingInstruction = ProcessingInstruction (JSRef ProcessingInstruction) deriving (Eq)

unProcessingInstruction (ProcessingInstruction o) = o

instance ToJSRef ProcessingInstruction where
  toJSRef = return . unProcessingInstruction
  {-# INLINE toJSRef #-}

instance FromJSRef ProcessingInstruction where
  fromJSRef = return . fmap ProcessingInstruction . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCharacterData ProcessingInstruction
instance IsNode ProcessingInstruction
instance IsEventTarget ProcessingInstruction
instance IsGObject ProcessingInstruction where
  toGObject = GObject . castRef . unProcessingInstruction
  unsafeCastGObject = ProcessingInstruction . castRef . unGObject

castToProcessingInstruction :: IsGObject obj => obj -> ProcessingInstruction
castToProcessingInstruction = castTo gTypeProcessingInstruction "ProcessingInstruction"

foreign import javascript unsafe "window[\"ProcessingInstruction\"]" gTypeProcessingInstruction' :: JSRef GType
gTypeProcessingInstruction = GType gTypeProcessingInstruction'
#else
type IsProcessingInstruction o = ProcessingInstructionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ProgressEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent Mozilla ProgressEvent documentation>
newtype ProgressEvent = ProgressEvent (JSRef ProgressEvent) deriving (Eq)

unProgressEvent (ProgressEvent o) = o

instance ToJSRef ProgressEvent where
  toJSRef = return . unProgressEvent
  {-# INLINE toJSRef #-}

instance FromJSRef ProgressEvent where
  fromJSRef = return . fmap ProgressEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEvent o => IsProgressEvent o
toProgressEvent :: IsProgressEvent o => o -> ProgressEvent
toProgressEvent = unsafeCastGObject . toGObject

instance IsProgressEvent ProgressEvent
instance IsEvent ProgressEvent
instance IsGObject ProgressEvent where
  toGObject = GObject . castRef . unProgressEvent
  unsafeCastGObject = ProgressEvent . castRef . unGObject

castToProgressEvent :: IsGObject obj => obj -> ProgressEvent
castToProgressEvent = castTo gTypeProgressEvent "ProgressEvent"

foreign import javascript unsafe "window[\"ProgressEvent\"]" gTypeProgressEvent' :: JSRef GType
gTypeProgressEvent = GType gTypeProgressEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.QuickTimePluginReplacement".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement Mozilla QuickTimePluginReplacement documentation>
newtype QuickTimePluginReplacement = QuickTimePluginReplacement (JSRef QuickTimePluginReplacement) deriving (Eq)

unQuickTimePluginReplacement (QuickTimePluginReplacement o) = o

instance ToJSRef QuickTimePluginReplacement where
  toJSRef = return . unQuickTimePluginReplacement
  {-# INLINE toJSRef #-}

instance FromJSRef QuickTimePluginReplacement where
  fromJSRef = return . fmap QuickTimePluginReplacement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject QuickTimePluginReplacement where
  toGObject = GObject . castRef . unQuickTimePluginReplacement
  unsafeCastGObject = QuickTimePluginReplacement . castRef . unGObject

castToQuickTimePluginReplacement :: IsGObject obj => obj -> QuickTimePluginReplacement
castToQuickTimePluginReplacement = castTo gTypeQuickTimePluginReplacement "QuickTimePluginReplacement"

foreign import javascript unsafe "window[\"QuickTimePluginReplacement\"]" gTypeQuickTimePluginReplacement' :: JSRef GType
gTypeQuickTimePluginReplacement = GType gTypeQuickTimePluginReplacement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RGBColor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor Mozilla RGBColor documentation>
newtype RGBColor = RGBColor (JSRef RGBColor) deriving (Eq)

unRGBColor (RGBColor o) = o

instance ToJSRef RGBColor where
  toJSRef = return . unRGBColor
  {-# INLINE toJSRef #-}

instance FromJSRef RGBColor where
  fromJSRef = return . fmap RGBColor . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RGBColor where
  toGObject = GObject . castRef . unRGBColor
  unsafeCastGObject = RGBColor . castRef . unGObject

castToRGBColor :: IsGObject obj => obj -> RGBColor
castToRGBColor = castTo gTypeRGBColor "RGBColor"

foreign import javascript unsafe "window[\"RGBColor\"]" gTypeRGBColor' :: JSRef GType
gTypeRGBColor = GType gTypeRGBColor'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCConfiguration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration Mozilla RTCConfiguration documentation>
newtype RTCConfiguration = RTCConfiguration (JSRef RTCConfiguration) deriving (Eq)

unRTCConfiguration (RTCConfiguration o) = o

instance ToJSRef RTCConfiguration where
  toJSRef = return . unRTCConfiguration
  {-# INLINE toJSRef #-}

instance FromJSRef RTCConfiguration where
  fromJSRef = return . fmap RTCConfiguration . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCConfiguration where
  toGObject = GObject . castRef . unRTCConfiguration
  unsafeCastGObject = RTCConfiguration . castRef . unGObject

castToRTCConfiguration :: IsGObject obj => obj -> RTCConfiguration
castToRTCConfiguration = castTo gTypeRTCConfiguration "RTCConfiguration"

foreign import javascript unsafe "window[\"RTCConfiguration\"]" gTypeRTCConfiguration' :: JSRef GType
gTypeRTCConfiguration = GType gTypeRTCConfiguration'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDTMFSender".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender Mozilla RTCDTMFSender documentation>
newtype RTCDTMFSender = RTCDTMFSender (JSRef RTCDTMFSender) deriving (Eq)

unRTCDTMFSender (RTCDTMFSender o) = o

instance ToJSRef RTCDTMFSender where
  toJSRef = return . unRTCDTMFSender
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDTMFSender where
  fromJSRef = return . fmap RTCDTMFSender . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget RTCDTMFSender
instance IsGObject RTCDTMFSender where
  toGObject = GObject . castRef . unRTCDTMFSender
  unsafeCastGObject = RTCDTMFSender . castRef . unGObject

castToRTCDTMFSender :: IsGObject obj => obj -> RTCDTMFSender
castToRTCDTMFSender = castTo gTypeRTCDTMFSender "RTCDTMFSender"

foreign import javascript unsafe "window[\"RTCDTMFSender\"]" gTypeRTCDTMFSender' :: JSRef GType
gTypeRTCDTMFSender = GType gTypeRTCDTMFSender'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDTMFToneChangeEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent Mozilla RTCDTMFToneChangeEvent documentation>
newtype RTCDTMFToneChangeEvent = RTCDTMFToneChangeEvent (JSRef RTCDTMFToneChangeEvent) deriving (Eq)

unRTCDTMFToneChangeEvent (RTCDTMFToneChangeEvent o) = o

instance ToJSRef RTCDTMFToneChangeEvent where
  toJSRef = return . unRTCDTMFToneChangeEvent
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDTMFToneChangeEvent where
  fromJSRef = return . fmap RTCDTMFToneChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent RTCDTMFToneChangeEvent
instance IsGObject RTCDTMFToneChangeEvent where
  toGObject = GObject . castRef . unRTCDTMFToneChangeEvent
  unsafeCastGObject = RTCDTMFToneChangeEvent . castRef . unGObject

castToRTCDTMFToneChangeEvent :: IsGObject obj => obj -> RTCDTMFToneChangeEvent
castToRTCDTMFToneChangeEvent = castTo gTypeRTCDTMFToneChangeEvent "RTCDTMFToneChangeEvent"

foreign import javascript unsafe "window[\"RTCDTMFToneChangeEvent\"]" gTypeRTCDTMFToneChangeEvent' :: JSRef GType
gTypeRTCDTMFToneChangeEvent = GType gTypeRTCDTMFToneChangeEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDataChannel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel Mozilla RTCDataChannel documentation>
newtype RTCDataChannel = RTCDataChannel (JSRef RTCDataChannel) deriving (Eq)

unRTCDataChannel (RTCDataChannel o) = o

instance ToJSRef RTCDataChannel where
  toJSRef = return . unRTCDataChannel
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDataChannel where
  fromJSRef = return . fmap RTCDataChannel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget RTCDataChannel
instance IsGObject RTCDataChannel where
  toGObject = GObject . castRef . unRTCDataChannel
  unsafeCastGObject = RTCDataChannel . castRef . unGObject

castToRTCDataChannel :: IsGObject obj => obj -> RTCDataChannel
castToRTCDataChannel = castTo gTypeRTCDataChannel "RTCDataChannel"

foreign import javascript unsafe "window[\"RTCDataChannel\"]" gTypeRTCDataChannel' :: JSRef GType
gTypeRTCDataChannel = GType gTypeRTCDataChannel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDataChannelEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent Mozilla RTCDataChannelEvent documentation>
newtype RTCDataChannelEvent = RTCDataChannelEvent (JSRef RTCDataChannelEvent) deriving (Eq)

unRTCDataChannelEvent (RTCDataChannelEvent o) = o

instance ToJSRef RTCDataChannelEvent where
  toJSRef = return . unRTCDataChannelEvent
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDataChannelEvent where
  fromJSRef = return . fmap RTCDataChannelEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent RTCDataChannelEvent
instance IsGObject RTCDataChannelEvent where
  toGObject = GObject . castRef . unRTCDataChannelEvent
  unsafeCastGObject = RTCDataChannelEvent . castRef . unGObject

castToRTCDataChannelEvent :: IsGObject obj => obj -> RTCDataChannelEvent
castToRTCDataChannelEvent = castTo gTypeRTCDataChannelEvent "RTCDataChannelEvent"

foreign import javascript unsafe "window[\"RTCDataChannelEvent\"]" gTypeRTCDataChannelEvent' :: JSRef GType
gTypeRTCDataChannelEvent = GType gTypeRTCDataChannelEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceCandidate".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation>
newtype RTCIceCandidate = RTCIceCandidate (JSRef RTCIceCandidate) deriving (Eq)

unRTCIceCandidate (RTCIceCandidate o) = o

instance ToJSRef RTCIceCandidate where
  toJSRef = return . unRTCIceCandidate
  {-# INLINE toJSRef #-}

instance FromJSRef RTCIceCandidate where
  fromJSRef = return . fmap RTCIceCandidate . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCIceCandidate where
  toGObject = GObject . castRef . unRTCIceCandidate
  unsafeCastGObject = RTCIceCandidate . castRef . unGObject

castToRTCIceCandidate :: IsGObject obj => obj -> RTCIceCandidate
castToRTCIceCandidate = castTo gTypeRTCIceCandidate "RTCIceCandidate"

foreign import javascript unsafe "window[\"RTCIceCandidate\"]" gTypeRTCIceCandidate' :: JSRef GType
gTypeRTCIceCandidate = GType gTypeRTCIceCandidate'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceCandidateEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateEvent Mozilla RTCIceCandidateEvent documentation>
newtype RTCIceCandidateEvent = RTCIceCandidateEvent (JSRef RTCIceCandidateEvent) deriving (Eq)

unRTCIceCandidateEvent (RTCIceCandidateEvent o) = o

instance ToJSRef RTCIceCandidateEvent where
  toJSRef = return . unRTCIceCandidateEvent
  {-# INLINE toJSRef #-}

instance FromJSRef RTCIceCandidateEvent where
  fromJSRef = return . fmap RTCIceCandidateEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent RTCIceCandidateEvent
instance IsGObject RTCIceCandidateEvent where
  toGObject = GObject . castRef . unRTCIceCandidateEvent
  unsafeCastGObject = RTCIceCandidateEvent . castRef . unGObject

castToRTCIceCandidateEvent :: IsGObject obj => obj -> RTCIceCandidateEvent
castToRTCIceCandidateEvent = castTo gTypeRTCIceCandidateEvent "RTCIceCandidateEvent"

foreign import javascript unsafe "window[\"RTCIceCandidateEvent\"]" gTypeRTCIceCandidateEvent' :: JSRef GType
gTypeRTCIceCandidateEvent = GType gTypeRTCIceCandidateEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceServer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer Mozilla RTCIceServer documentation>
newtype RTCIceServer = RTCIceServer (JSRef RTCIceServer) deriving (Eq)

unRTCIceServer (RTCIceServer o) = o

instance ToJSRef RTCIceServer where
  toJSRef = return . unRTCIceServer
  {-# INLINE toJSRef #-}

instance FromJSRef RTCIceServer where
  fromJSRef = return . fmap RTCIceServer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCIceServer where
  toGObject = GObject . castRef . unRTCIceServer
  unsafeCastGObject = RTCIceServer . castRef . unGObject

castToRTCIceServer :: IsGObject obj => obj -> RTCIceServer
castToRTCIceServer = castTo gTypeRTCIceServer "RTCIceServer"

foreign import javascript unsafe "window[\"RTCIceServer\"]" gTypeRTCIceServer' :: JSRef GType
gTypeRTCIceServer = GType gTypeRTCIceServer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCPeerConnection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation>
newtype RTCPeerConnection = RTCPeerConnection (JSRef RTCPeerConnection) deriving (Eq)

unRTCPeerConnection (RTCPeerConnection o) = o

instance ToJSRef RTCPeerConnection where
  toJSRef = return . unRTCPeerConnection
  {-# INLINE toJSRef #-}

instance FromJSRef RTCPeerConnection where
  fromJSRef = return . fmap RTCPeerConnection . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget RTCPeerConnection
instance IsGObject RTCPeerConnection where
  toGObject = GObject . castRef . unRTCPeerConnection
  unsafeCastGObject = RTCPeerConnection . castRef . unGObject

castToRTCPeerConnection :: IsGObject obj => obj -> RTCPeerConnection
castToRTCPeerConnection = castTo gTypeRTCPeerConnection "RTCPeerConnection"

foreign import javascript unsafe "window[\"webkitRTCPeerConnection\"]" gTypeRTCPeerConnection' :: JSRef GType
gTypeRTCPeerConnection = GType gTypeRTCPeerConnection'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCPeerConnectionErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation>
newtype RTCPeerConnectionErrorCallback = RTCPeerConnectionErrorCallback (JSRef RTCPeerConnectionErrorCallback) deriving (Eq)

unRTCPeerConnectionErrorCallback (RTCPeerConnectionErrorCallback o) = o

instance ToJSRef RTCPeerConnectionErrorCallback where
  toJSRef = return . unRTCPeerConnectionErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef RTCPeerConnectionErrorCallback where
  fromJSRef = return . fmap RTCPeerConnectionErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCPeerConnectionErrorCallback where
  toGObject = GObject . castRef . unRTCPeerConnectionErrorCallback
  unsafeCastGObject = RTCPeerConnectionErrorCallback . castRef . unGObject

castToRTCPeerConnectionErrorCallback :: IsGObject obj => obj -> RTCPeerConnectionErrorCallback
castToRTCPeerConnectionErrorCallback = castTo gTypeRTCPeerConnectionErrorCallback "RTCPeerConnectionErrorCallback"

foreign import javascript unsafe "window[\"RTCPeerConnectionErrorCallback\"]" gTypeRTCPeerConnectionErrorCallback' :: JSRef GType
gTypeRTCPeerConnectionErrorCallback = GType gTypeRTCPeerConnectionErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCSessionDescription".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation>
newtype RTCSessionDescription = RTCSessionDescription (JSRef RTCSessionDescription) deriving (Eq)

unRTCSessionDescription (RTCSessionDescription o) = o

instance ToJSRef RTCSessionDescription where
  toJSRef = return . unRTCSessionDescription
  {-# INLINE toJSRef #-}

instance FromJSRef RTCSessionDescription where
  fromJSRef = return . fmap RTCSessionDescription . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCSessionDescription where
  toGObject = GObject . castRef . unRTCSessionDescription
  unsafeCastGObject = RTCSessionDescription . castRef . unGObject

castToRTCSessionDescription :: IsGObject obj => obj -> RTCSessionDescription
castToRTCSessionDescription = castTo gTypeRTCSessionDescription "RTCSessionDescription"

foreign import javascript unsafe "window[\"RTCSessionDescription\"]" gTypeRTCSessionDescription' :: JSRef GType
gTypeRTCSessionDescription = GType gTypeRTCSessionDescription'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCSessionDescriptionCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation>
newtype RTCSessionDescriptionCallback = RTCSessionDescriptionCallback (JSRef RTCSessionDescriptionCallback) deriving (Eq)

unRTCSessionDescriptionCallback (RTCSessionDescriptionCallback o) = o

instance ToJSRef RTCSessionDescriptionCallback where
  toJSRef = return . unRTCSessionDescriptionCallback
  {-# INLINE toJSRef #-}

instance FromJSRef RTCSessionDescriptionCallback where
  fromJSRef = return . fmap RTCSessionDescriptionCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCSessionDescriptionCallback where
  toGObject = GObject . castRef . unRTCSessionDescriptionCallback
  unsafeCastGObject = RTCSessionDescriptionCallback . castRef . unGObject

castToRTCSessionDescriptionCallback :: IsGObject obj => obj -> RTCSessionDescriptionCallback
castToRTCSessionDescriptionCallback = castTo gTypeRTCSessionDescriptionCallback "RTCSessionDescriptionCallback"

foreign import javascript unsafe "window[\"RTCSessionDescriptionCallback\"]" gTypeRTCSessionDescriptionCallback' :: JSRef GType
gTypeRTCSessionDescriptionCallback = GType gTypeRTCSessionDescriptionCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCStatsCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsCallback Mozilla RTCStatsCallback documentation>
newtype RTCStatsCallback = RTCStatsCallback (JSRef RTCStatsCallback) deriving (Eq)

unRTCStatsCallback (RTCStatsCallback o) = o

instance ToJSRef RTCStatsCallback where
  toJSRef = return . unRTCStatsCallback
  {-# INLINE toJSRef #-}

instance FromJSRef RTCStatsCallback where
  fromJSRef = return . fmap RTCStatsCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCStatsCallback where
  toGObject = GObject . castRef . unRTCStatsCallback
  unsafeCastGObject = RTCStatsCallback . castRef . unGObject

castToRTCStatsCallback :: IsGObject obj => obj -> RTCStatsCallback
castToRTCStatsCallback = castTo gTypeRTCStatsCallback "RTCStatsCallback"

foreign import javascript unsafe "window[\"RTCStatsCallback\"]" gTypeRTCStatsCallback' :: JSRef GType
gTypeRTCStatsCallback = GType gTypeRTCStatsCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCStatsReport".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport Mozilla RTCStatsReport documentation>
newtype RTCStatsReport = RTCStatsReport (JSRef RTCStatsReport) deriving (Eq)

unRTCStatsReport (RTCStatsReport o) = o

instance ToJSRef RTCStatsReport where
  toJSRef = return . unRTCStatsReport
  {-# INLINE toJSRef #-}

instance FromJSRef RTCStatsReport where
  fromJSRef = return . fmap RTCStatsReport . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCStatsReport where
  toGObject = GObject . castRef . unRTCStatsReport
  unsafeCastGObject = RTCStatsReport . castRef . unGObject

castToRTCStatsReport :: IsGObject obj => obj -> RTCStatsReport
castToRTCStatsReport = castTo gTypeRTCStatsReport "RTCStatsReport"

foreign import javascript unsafe "window[\"RTCStatsReport\"]" gTypeRTCStatsReport' :: JSRef GType
gTypeRTCStatsReport = GType gTypeRTCStatsReport'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCStatsResponse".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse Mozilla RTCStatsResponse documentation>
newtype RTCStatsResponse = RTCStatsResponse (JSRef RTCStatsResponse) deriving (Eq)

unRTCStatsResponse (RTCStatsResponse o) = o

instance ToJSRef RTCStatsResponse where
  toJSRef = return . unRTCStatsResponse
  {-# INLINE toJSRef #-}

instance FromJSRef RTCStatsResponse where
  fromJSRef = return . fmap RTCStatsResponse . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RTCStatsResponse where
  toGObject = GObject . castRef . unRTCStatsResponse
  unsafeCastGObject = RTCStatsResponse . castRef . unGObject

castToRTCStatsResponse :: IsGObject obj => obj -> RTCStatsResponse
castToRTCStatsResponse = castTo gTypeRTCStatsResponse "RTCStatsResponse"

foreign import javascript unsafe "window[\"RTCStatsResponse\"]" gTypeRTCStatsResponse' :: JSRef GType
gTypeRTCStatsResponse = GType gTypeRTCStatsResponse'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RadioNodeList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.NodeList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList Mozilla RadioNodeList documentation>
newtype RadioNodeList = RadioNodeList (JSRef RadioNodeList) deriving (Eq)

unRadioNodeList (RadioNodeList o) = o

instance ToJSRef RadioNodeList where
  toJSRef = return . unRadioNodeList
  {-# INLINE toJSRef #-}

instance FromJSRef RadioNodeList where
  fromJSRef = return . fmap RadioNodeList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsNodeList RadioNodeList
instance IsGObject RadioNodeList where
  toGObject = GObject . castRef . unRadioNodeList
  unsafeCastGObject = RadioNodeList . castRef . unGObject

castToRadioNodeList :: IsGObject obj => obj -> RadioNodeList
castToRadioNodeList = castTo gTypeRadioNodeList "RadioNodeList"

foreign import javascript unsafe "window[\"RadioNodeList\"]" gTypeRadioNodeList' :: JSRef GType
gTypeRadioNodeList = GType gTypeRadioNodeList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMRange Mozilla DOMRange documentation>
newtype DOMRange = DOMRange (JSRef DOMRange) deriving (Eq)

unDOMRange (DOMRange o) = o

instance ToJSRef DOMRange where
  toJSRef = return . unDOMRange
  {-# INLINE toJSRef #-}

instance FromJSRef DOMRange where
  fromJSRef = return . fmap DOMRange . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMRange where
  toGObject = GObject . castRef . unDOMRange
  unsafeCastGObject = DOMRange . castRef . unGObject

castToDOMRange :: IsGObject obj => obj -> DOMRange
castToDOMRange = castTo gTypeDOMRange "DOMRange"

foreign import javascript unsafe "window[\"DOMRange\"]" gTypeDOMRange' :: JSRef GType
gTypeDOMRange = GType gTypeDOMRange'
#else
type IsDOMRange o = DOMRangeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ReadableStream".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation>
newtype ReadableStream = ReadableStream (JSRef ReadableStream) deriving (Eq)

unReadableStream (ReadableStream o) = o

instance ToJSRef ReadableStream where
  toJSRef = return . unReadableStream
  {-# INLINE toJSRef #-}

instance FromJSRef ReadableStream where
  fromJSRef = return . fmap ReadableStream . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ReadableStream where
  toGObject = GObject . castRef . unReadableStream
  unsafeCastGObject = ReadableStream . castRef . unGObject

castToReadableStream :: IsGObject obj => obj -> ReadableStream
castToReadableStream = castTo gTypeReadableStream "ReadableStream"

foreign import javascript unsafe "window[\"ReadableStream\"]" gTypeReadableStream' :: JSRef GType
gTypeReadableStream = GType gTypeReadableStream'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Rect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Rect Mozilla Rect documentation>
newtype Rect = Rect (JSRef Rect) deriving (Eq)

unRect (Rect o) = o

instance ToJSRef Rect where
  toJSRef = return . unRect
  {-# INLINE toJSRef #-}

instance FromJSRef Rect where
  fromJSRef = return . fmap Rect . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Rect where
  toGObject = GObject . castRef . unRect
  unsafeCastGObject = Rect . castRef . unGObject

castToRect :: IsGObject obj => obj -> Rect
castToRect = castTo gTypeRect "Rect"

foreign import javascript unsafe "window[\"Rect\"]" gTypeRect' :: JSRef GType
gTypeRect = GType gTypeRect'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RequestAnimationFrameCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation>
newtype RequestAnimationFrameCallback = RequestAnimationFrameCallback (JSRef RequestAnimationFrameCallback) deriving (Eq)

unRequestAnimationFrameCallback (RequestAnimationFrameCallback o) = o

instance ToJSRef RequestAnimationFrameCallback where
  toJSRef = return . unRequestAnimationFrameCallback
  {-# INLINE toJSRef #-}

instance FromJSRef RequestAnimationFrameCallback where
  fromJSRef = return . fmap RequestAnimationFrameCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject RequestAnimationFrameCallback where
  toGObject = GObject . castRef . unRequestAnimationFrameCallback
  unsafeCastGObject = RequestAnimationFrameCallback . castRef . unGObject

castToRequestAnimationFrameCallback :: IsGObject obj => obj -> RequestAnimationFrameCallback
castToRequestAnimationFrameCallback = castTo gTypeRequestAnimationFrameCallback "RequestAnimationFrameCallback"

foreign import javascript unsafe "window[\"RequestAnimationFrameCallback\"]" gTypeRequestAnimationFrameCallback' :: JSRef GType
gTypeRequestAnimationFrameCallback = GType gTypeRequestAnimationFrameCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLError Mozilla SQLError documentation>
newtype SQLError = SQLError (JSRef SQLError) deriving (Eq)

unSQLError (SQLError o) = o

instance ToJSRef SQLError where
  toJSRef = return . unSQLError
  {-# INLINE toJSRef #-}

instance FromJSRef SQLError where
  fromJSRef = return . fmap SQLError . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLError where
  toGObject = GObject . castRef . unSQLError
  unsafeCastGObject = SQLError . castRef . unGObject

castToSQLError :: IsGObject obj => obj -> SQLError
castToSQLError = castTo gTypeSQLError "SQLError"

foreign import javascript unsafe "window[\"SQLError\"]" gTypeSQLError' :: JSRef GType
gTypeSQLError = GType gTypeSQLError'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLResultSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet Mozilla SQLResultSet documentation>
newtype SQLResultSet = SQLResultSet (JSRef SQLResultSet) deriving (Eq)

unSQLResultSet (SQLResultSet o) = o

instance ToJSRef SQLResultSet where
  toJSRef = return . unSQLResultSet
  {-# INLINE toJSRef #-}

instance FromJSRef SQLResultSet where
  fromJSRef = return . fmap SQLResultSet . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLResultSet where
  toGObject = GObject . castRef . unSQLResultSet
  unsafeCastGObject = SQLResultSet . castRef . unGObject

castToSQLResultSet :: IsGObject obj => obj -> SQLResultSet
castToSQLResultSet = castTo gTypeSQLResultSet "SQLResultSet"

foreign import javascript unsafe "window[\"SQLResultSet\"]" gTypeSQLResultSet' :: JSRef GType
gTypeSQLResultSet = GType gTypeSQLResultSet'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLResultSetRowList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList Mozilla SQLResultSetRowList documentation>
newtype SQLResultSetRowList = SQLResultSetRowList (JSRef SQLResultSetRowList) deriving (Eq)

unSQLResultSetRowList (SQLResultSetRowList o) = o

instance ToJSRef SQLResultSetRowList where
  toJSRef = return . unSQLResultSetRowList
  {-# INLINE toJSRef #-}

instance FromJSRef SQLResultSetRowList where
  fromJSRef = return . fmap SQLResultSetRowList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLResultSetRowList where
  toGObject = GObject . castRef . unSQLResultSetRowList
  unsafeCastGObject = SQLResultSetRowList . castRef . unGObject

castToSQLResultSetRowList :: IsGObject obj => obj -> SQLResultSetRowList
castToSQLResultSetRowList = castTo gTypeSQLResultSetRowList "SQLResultSetRowList"

foreign import javascript unsafe "window[\"SQLResultSetRowList\"]" gTypeSQLResultSetRowList' :: JSRef GType
gTypeSQLResultSetRowList = GType gTypeSQLResultSetRowList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLStatementCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementCallback Mozilla SQLStatementCallback documentation>
newtype SQLStatementCallback = SQLStatementCallback (JSRef SQLStatementCallback) deriving (Eq)

unSQLStatementCallback (SQLStatementCallback o) = o

instance ToJSRef SQLStatementCallback where
  toJSRef = return . unSQLStatementCallback
  {-# INLINE toJSRef #-}

instance FromJSRef SQLStatementCallback where
  fromJSRef = return . fmap SQLStatementCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLStatementCallback where
  toGObject = GObject . castRef . unSQLStatementCallback
  unsafeCastGObject = SQLStatementCallback . castRef . unGObject

castToSQLStatementCallback :: IsGObject obj => obj -> SQLStatementCallback
castToSQLStatementCallback = castTo gTypeSQLStatementCallback "SQLStatementCallback"

foreign import javascript unsafe "window[\"SQLStatementCallback\"]" gTypeSQLStatementCallback' :: JSRef GType
gTypeSQLStatementCallback = GType gTypeSQLStatementCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLStatementErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation>
newtype SQLStatementErrorCallback = SQLStatementErrorCallback (JSRef SQLStatementErrorCallback) deriving (Eq)

unSQLStatementErrorCallback (SQLStatementErrorCallback o) = o

instance ToJSRef SQLStatementErrorCallback where
  toJSRef = return . unSQLStatementErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef SQLStatementErrorCallback where
  fromJSRef = return . fmap SQLStatementErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLStatementErrorCallback where
  toGObject = GObject . castRef . unSQLStatementErrorCallback
  unsafeCastGObject = SQLStatementErrorCallback . castRef . unGObject

castToSQLStatementErrorCallback :: IsGObject obj => obj -> SQLStatementErrorCallback
castToSQLStatementErrorCallback = castTo gTypeSQLStatementErrorCallback "SQLStatementErrorCallback"

foreign import javascript unsafe "window[\"SQLStatementErrorCallback\"]" gTypeSQLStatementErrorCallback' :: JSRef GType
gTypeSQLStatementErrorCallback = GType gTypeSQLStatementErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransaction".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction Mozilla SQLTransaction documentation>
newtype SQLTransaction = SQLTransaction (JSRef SQLTransaction) deriving (Eq)

unSQLTransaction (SQLTransaction o) = o

instance ToJSRef SQLTransaction where
  toJSRef = return . unSQLTransaction
  {-# INLINE toJSRef #-}

instance FromJSRef SQLTransaction where
  fromJSRef = return . fmap SQLTransaction . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLTransaction where
  toGObject = GObject . castRef . unSQLTransaction
  unsafeCastGObject = SQLTransaction . castRef . unGObject

castToSQLTransaction :: IsGObject obj => obj -> SQLTransaction
castToSQLTransaction = castTo gTypeSQLTransaction "SQLTransaction"

foreign import javascript unsafe "window[\"SQLTransaction\"]" gTypeSQLTransaction' :: JSRef GType
gTypeSQLTransaction = GType gTypeSQLTransaction'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransactionCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionCallback Mozilla SQLTransactionCallback documentation>
newtype SQLTransactionCallback = SQLTransactionCallback (JSRef SQLTransactionCallback) deriving (Eq)

unSQLTransactionCallback (SQLTransactionCallback o) = o

instance ToJSRef SQLTransactionCallback where
  toJSRef = return . unSQLTransactionCallback
  {-# INLINE toJSRef #-}

instance FromJSRef SQLTransactionCallback where
  fromJSRef = return . fmap SQLTransactionCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLTransactionCallback where
  toGObject = GObject . castRef . unSQLTransactionCallback
  unsafeCastGObject = SQLTransactionCallback . castRef . unGObject

castToSQLTransactionCallback :: IsGObject obj => obj -> SQLTransactionCallback
castToSQLTransactionCallback = castTo gTypeSQLTransactionCallback "SQLTransactionCallback"

foreign import javascript unsafe "window[\"SQLTransactionCallback\"]" gTypeSQLTransactionCallback' :: JSRef GType
gTypeSQLTransactionCallback = GType gTypeSQLTransactionCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransactionErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation>
newtype SQLTransactionErrorCallback = SQLTransactionErrorCallback (JSRef SQLTransactionErrorCallback) deriving (Eq)

unSQLTransactionErrorCallback (SQLTransactionErrorCallback o) = o

instance ToJSRef SQLTransactionErrorCallback where
  toJSRef = return . unSQLTransactionErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef SQLTransactionErrorCallback where
  fromJSRef = return . fmap SQLTransactionErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SQLTransactionErrorCallback where
  toGObject = GObject . castRef . unSQLTransactionErrorCallback
  unsafeCastGObject = SQLTransactionErrorCallback . castRef . unGObject

castToSQLTransactionErrorCallback :: IsGObject obj => obj -> SQLTransactionErrorCallback
castToSQLTransactionErrorCallback = castTo gTypeSQLTransactionErrorCallback "SQLTransactionErrorCallback"

foreign import javascript unsafe "window[\"SQLTransactionErrorCallback\"]" gTypeSQLTransactionErrorCallback' :: JSRef GType
gTypeSQLTransactionErrorCallback = GType gTypeSQLTransactionErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement Mozilla SVGAElement documentation>
newtype SVGAElement = SVGAElement (JSRef SVGAElement) deriving (Eq)

unSVGAElement (SVGAElement o) = o

instance ToJSRef SVGAElement where
  toJSRef = return . unSVGAElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAElement where
  fromJSRef = return . fmap SVGAElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGAElement
instance IsSVGElement SVGAElement
instance IsElement SVGAElement
instance IsNode SVGAElement
instance IsEventTarget SVGAElement
instance IsGObject SVGAElement where
  toGObject = GObject . castRef . unSVGAElement
  unsafeCastGObject = SVGAElement . castRef . unGObject

castToSVGAElement :: IsGObject obj => obj -> SVGAElement
castToSVGAElement = castTo gTypeSVGAElement "SVGAElement"

foreign import javascript unsafe "window[\"SVGAElement\"]" gTypeSVGAElement' :: JSRef GType
gTypeSVGAElement = GType gTypeSVGAElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAltGlyphDefElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphDefElement Mozilla SVGAltGlyphDefElement documentation>
newtype SVGAltGlyphDefElement = SVGAltGlyphDefElement (JSRef SVGAltGlyphDefElement) deriving (Eq)

unSVGAltGlyphDefElement (SVGAltGlyphDefElement o) = o

instance ToJSRef SVGAltGlyphDefElement where
  toJSRef = return . unSVGAltGlyphDefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphDefElement where
  fromJSRef = return . fmap SVGAltGlyphDefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGAltGlyphDefElement
instance IsElement SVGAltGlyphDefElement
instance IsNode SVGAltGlyphDefElement
instance IsEventTarget SVGAltGlyphDefElement
instance IsGObject SVGAltGlyphDefElement where
  toGObject = GObject . castRef . unSVGAltGlyphDefElement
  unsafeCastGObject = SVGAltGlyphDefElement . castRef . unGObject

castToSVGAltGlyphDefElement :: IsGObject obj => obj -> SVGAltGlyphDefElement
castToSVGAltGlyphDefElement = castTo gTypeSVGAltGlyphDefElement "SVGAltGlyphDefElement"

foreign import javascript unsafe "window[\"SVGAltGlyphDefElement\"]" gTypeSVGAltGlyphDefElement' :: JSRef GType
gTypeSVGAltGlyphDefElement = GType gTypeSVGAltGlyphDefElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAltGlyphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextPositioningElement"
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement Mozilla SVGAltGlyphElement documentation>
newtype SVGAltGlyphElement = SVGAltGlyphElement (JSRef SVGAltGlyphElement) deriving (Eq)

unSVGAltGlyphElement (SVGAltGlyphElement o) = o

instance ToJSRef SVGAltGlyphElement where
  toJSRef = return . unSVGAltGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphElement where
  fromJSRef = return . fmap SVGAltGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGTextPositioningElement SVGAltGlyphElement
instance IsSVGTextContentElement SVGAltGlyphElement
instance IsSVGGraphicsElement SVGAltGlyphElement
instance IsSVGElement SVGAltGlyphElement
instance IsElement SVGAltGlyphElement
instance IsNode SVGAltGlyphElement
instance IsEventTarget SVGAltGlyphElement
instance IsGObject SVGAltGlyphElement where
  toGObject = GObject . castRef . unSVGAltGlyphElement
  unsafeCastGObject = SVGAltGlyphElement . castRef . unGObject

castToSVGAltGlyphElement :: IsGObject obj => obj -> SVGAltGlyphElement
castToSVGAltGlyphElement = castTo gTypeSVGAltGlyphElement "SVGAltGlyphElement"

foreign import javascript unsafe "window[\"SVGAltGlyphElement\"]" gTypeSVGAltGlyphElement' :: JSRef GType
gTypeSVGAltGlyphElement = GType gTypeSVGAltGlyphElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAltGlyphItemElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphItemElement Mozilla SVGAltGlyphItemElement documentation>
newtype SVGAltGlyphItemElement = SVGAltGlyphItemElement (JSRef SVGAltGlyphItemElement) deriving (Eq)

unSVGAltGlyphItemElement (SVGAltGlyphItemElement o) = o

instance ToJSRef SVGAltGlyphItemElement where
  toJSRef = return . unSVGAltGlyphItemElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAltGlyphItemElement where
  fromJSRef = return . fmap SVGAltGlyphItemElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGAltGlyphItemElement
instance IsElement SVGAltGlyphItemElement
instance IsNode SVGAltGlyphItemElement
instance IsEventTarget SVGAltGlyphItemElement
instance IsGObject SVGAltGlyphItemElement where
  toGObject = GObject . castRef . unSVGAltGlyphItemElement
  unsafeCastGObject = SVGAltGlyphItemElement . castRef . unGObject

castToSVGAltGlyphItemElement :: IsGObject obj => obj -> SVGAltGlyphItemElement
castToSVGAltGlyphItemElement = castTo gTypeSVGAltGlyphItemElement "SVGAltGlyphItemElement"

foreign import javascript unsafe "window[\"SVGAltGlyphItemElement\"]" gTypeSVGAltGlyphItemElement' :: JSRef GType
gTypeSVGAltGlyphItemElement = GType gTypeSVGAltGlyphItemElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle Mozilla SVGAngle documentation>
newtype SVGAngle = SVGAngle (JSRef SVGAngle) deriving (Eq)

unSVGAngle (SVGAngle o) = o

instance ToJSRef SVGAngle where
  toJSRef = return . unSVGAngle
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAngle where
  fromJSRef = return . fmap SVGAngle . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAngle where
  toGObject = GObject . castRef . unSVGAngle
  unsafeCastGObject = SVGAngle . castRef . unGObject

castToSVGAngle :: IsGObject obj => obj -> SVGAngle
castToSVGAngle = castTo gTypeSVGAngle "SVGAngle"

foreign import javascript unsafe "window[\"SVGAngle\"]" gTypeSVGAngle' :: JSRef GType
gTypeSVGAngle = GType gTypeSVGAngle'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateColorElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateColorElement Mozilla SVGAnimateColorElement documentation>
newtype SVGAnimateColorElement = SVGAnimateColorElement (JSRef SVGAnimateColorElement) deriving (Eq)

unSVGAnimateColorElement (SVGAnimateColorElement o) = o

instance ToJSRef SVGAnimateColorElement where
  toJSRef = return . unSVGAnimateColorElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateColorElement where
  fromJSRef = return . fmap SVGAnimateColorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGAnimationElement SVGAnimateColorElement
instance IsSVGElement SVGAnimateColorElement
instance IsElement SVGAnimateColorElement
instance IsNode SVGAnimateColorElement
instance IsEventTarget SVGAnimateColorElement
instance IsGObject SVGAnimateColorElement where
  toGObject = GObject . castRef . unSVGAnimateColorElement
  unsafeCastGObject = SVGAnimateColorElement . castRef . unGObject

castToSVGAnimateColorElement :: IsGObject obj => obj -> SVGAnimateColorElement
castToSVGAnimateColorElement = castTo gTypeSVGAnimateColorElement "SVGAnimateColorElement"

foreign import javascript unsafe "window[\"SVGAnimateColorElement\"]" gTypeSVGAnimateColorElement' :: JSRef GType
gTypeSVGAnimateColorElement = GType gTypeSVGAnimateColorElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateElement Mozilla SVGAnimateElement documentation>
newtype SVGAnimateElement = SVGAnimateElement (JSRef SVGAnimateElement) deriving (Eq)

unSVGAnimateElement (SVGAnimateElement o) = o

instance ToJSRef SVGAnimateElement where
  toJSRef = return . unSVGAnimateElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateElement where
  fromJSRef = return . fmap SVGAnimateElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGAnimationElement SVGAnimateElement
instance IsSVGElement SVGAnimateElement
instance IsElement SVGAnimateElement
instance IsNode SVGAnimateElement
instance IsEventTarget SVGAnimateElement
instance IsGObject SVGAnimateElement where
  toGObject = GObject . castRef . unSVGAnimateElement
  unsafeCastGObject = SVGAnimateElement . castRef . unGObject

castToSVGAnimateElement :: IsGObject obj => obj -> SVGAnimateElement
castToSVGAnimateElement = castTo gTypeSVGAnimateElement "SVGAnimateElement"

foreign import javascript unsafe "window[\"SVGAnimateElement\"]" gTypeSVGAnimateElement' :: JSRef GType
gTypeSVGAnimateElement = GType gTypeSVGAnimateElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateMotionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateMotionElement Mozilla SVGAnimateMotionElement documentation>
newtype SVGAnimateMotionElement = SVGAnimateMotionElement (JSRef SVGAnimateMotionElement) deriving (Eq)

unSVGAnimateMotionElement (SVGAnimateMotionElement o) = o

instance ToJSRef SVGAnimateMotionElement where
  toJSRef = return . unSVGAnimateMotionElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateMotionElement where
  fromJSRef = return . fmap SVGAnimateMotionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGAnimationElement SVGAnimateMotionElement
instance IsSVGElement SVGAnimateMotionElement
instance IsElement SVGAnimateMotionElement
instance IsNode SVGAnimateMotionElement
instance IsEventTarget SVGAnimateMotionElement
instance IsGObject SVGAnimateMotionElement where
  toGObject = GObject . castRef . unSVGAnimateMotionElement
  unsafeCastGObject = SVGAnimateMotionElement . castRef . unGObject

castToSVGAnimateMotionElement :: IsGObject obj => obj -> SVGAnimateMotionElement
castToSVGAnimateMotionElement = castTo gTypeSVGAnimateMotionElement "SVGAnimateMotionElement"

foreign import javascript unsafe "window[\"SVGAnimateMotionElement\"]" gTypeSVGAnimateMotionElement' :: JSRef GType
gTypeSVGAnimateMotionElement = GType gTypeSVGAnimateMotionElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateTransformElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateTransformElement Mozilla SVGAnimateTransformElement documentation>
newtype SVGAnimateTransformElement = SVGAnimateTransformElement (JSRef SVGAnimateTransformElement) deriving (Eq)

unSVGAnimateTransformElement (SVGAnimateTransformElement o) = o

instance ToJSRef SVGAnimateTransformElement where
  toJSRef = return . unSVGAnimateTransformElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimateTransformElement where
  fromJSRef = return . fmap SVGAnimateTransformElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGAnimationElement SVGAnimateTransformElement
instance IsSVGElement SVGAnimateTransformElement
instance IsElement SVGAnimateTransformElement
instance IsNode SVGAnimateTransformElement
instance IsEventTarget SVGAnimateTransformElement
instance IsGObject SVGAnimateTransformElement where
  toGObject = GObject . castRef . unSVGAnimateTransformElement
  unsafeCastGObject = SVGAnimateTransformElement . castRef . unGObject

castToSVGAnimateTransformElement :: IsGObject obj => obj -> SVGAnimateTransformElement
castToSVGAnimateTransformElement = castTo gTypeSVGAnimateTransformElement "SVGAnimateTransformElement"

foreign import javascript unsafe "window[\"SVGAnimateTransformElement\"]" gTypeSVGAnimateTransformElement' :: JSRef GType
gTypeSVGAnimateTransformElement = GType gTypeSVGAnimateTransformElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle Mozilla SVGAnimatedAngle documentation>
newtype SVGAnimatedAngle = SVGAnimatedAngle (JSRef SVGAnimatedAngle) deriving (Eq)

unSVGAnimatedAngle (SVGAnimatedAngle o) = o

instance ToJSRef SVGAnimatedAngle where
  toJSRef = return . unSVGAnimatedAngle
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedAngle where
  fromJSRef = return . fmap SVGAnimatedAngle . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedAngle where
  toGObject = GObject . castRef . unSVGAnimatedAngle
  unsafeCastGObject = SVGAnimatedAngle . castRef . unGObject

castToSVGAnimatedAngle :: IsGObject obj => obj -> SVGAnimatedAngle
castToSVGAnimatedAngle = castTo gTypeSVGAnimatedAngle "SVGAnimatedAngle"

foreign import javascript unsafe "window[\"SVGAnimatedAngle\"]" gTypeSVGAnimatedAngle' :: JSRef GType
gTypeSVGAnimatedAngle = GType gTypeSVGAnimatedAngle'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedBoolean".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean Mozilla SVGAnimatedBoolean documentation>
newtype SVGAnimatedBoolean = SVGAnimatedBoolean (JSRef SVGAnimatedBoolean) deriving (Eq)

unSVGAnimatedBoolean (SVGAnimatedBoolean o) = o

instance ToJSRef SVGAnimatedBoolean where
  toJSRef = return . unSVGAnimatedBoolean
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedBoolean where
  fromJSRef = return . fmap SVGAnimatedBoolean . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedBoolean where
  toGObject = GObject . castRef . unSVGAnimatedBoolean
  unsafeCastGObject = SVGAnimatedBoolean . castRef . unGObject

castToSVGAnimatedBoolean :: IsGObject obj => obj -> SVGAnimatedBoolean
castToSVGAnimatedBoolean = castTo gTypeSVGAnimatedBoolean "SVGAnimatedBoolean"

foreign import javascript unsafe "window[\"SVGAnimatedBoolean\"]" gTypeSVGAnimatedBoolean' :: JSRef GType
gTypeSVGAnimatedBoolean = GType gTypeSVGAnimatedBoolean'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedEnumeration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration Mozilla SVGAnimatedEnumeration documentation>
newtype SVGAnimatedEnumeration = SVGAnimatedEnumeration (JSRef SVGAnimatedEnumeration) deriving (Eq)

unSVGAnimatedEnumeration (SVGAnimatedEnumeration o) = o

instance ToJSRef SVGAnimatedEnumeration where
  toJSRef = return . unSVGAnimatedEnumeration
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedEnumeration where
  fromJSRef = return . fmap SVGAnimatedEnumeration . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedEnumeration where
  toGObject = GObject . castRef . unSVGAnimatedEnumeration
  unsafeCastGObject = SVGAnimatedEnumeration . castRef . unGObject

castToSVGAnimatedEnumeration :: IsGObject obj => obj -> SVGAnimatedEnumeration
castToSVGAnimatedEnumeration = castTo gTypeSVGAnimatedEnumeration "SVGAnimatedEnumeration"

foreign import javascript unsafe "window[\"SVGAnimatedEnumeration\"]" gTypeSVGAnimatedEnumeration' :: JSRef GType
gTypeSVGAnimatedEnumeration = GType gTypeSVGAnimatedEnumeration'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedInteger".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger Mozilla SVGAnimatedInteger documentation>
newtype SVGAnimatedInteger = SVGAnimatedInteger (JSRef SVGAnimatedInteger) deriving (Eq)

unSVGAnimatedInteger (SVGAnimatedInteger o) = o

instance ToJSRef SVGAnimatedInteger where
  toJSRef = return . unSVGAnimatedInteger
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedInteger where
  fromJSRef = return . fmap SVGAnimatedInteger . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedInteger where
  toGObject = GObject . castRef . unSVGAnimatedInteger
  unsafeCastGObject = SVGAnimatedInteger . castRef . unGObject

castToSVGAnimatedInteger :: IsGObject obj => obj -> SVGAnimatedInteger
castToSVGAnimatedInteger = castTo gTypeSVGAnimatedInteger "SVGAnimatedInteger"

foreign import javascript unsafe "window[\"SVGAnimatedInteger\"]" gTypeSVGAnimatedInteger' :: JSRef GType
gTypeSVGAnimatedInteger = GType gTypeSVGAnimatedInteger'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength Mozilla SVGAnimatedLength documentation>
newtype SVGAnimatedLength = SVGAnimatedLength (JSRef SVGAnimatedLength) deriving (Eq)

unSVGAnimatedLength (SVGAnimatedLength o) = o

instance ToJSRef SVGAnimatedLength where
  toJSRef = return . unSVGAnimatedLength
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedLength where
  fromJSRef = return . fmap SVGAnimatedLength . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedLength where
  toGObject = GObject . castRef . unSVGAnimatedLength
  unsafeCastGObject = SVGAnimatedLength . castRef . unGObject

castToSVGAnimatedLength :: IsGObject obj => obj -> SVGAnimatedLength
castToSVGAnimatedLength = castTo gTypeSVGAnimatedLength "SVGAnimatedLength"

foreign import javascript unsafe "window[\"SVGAnimatedLength\"]" gTypeSVGAnimatedLength' :: JSRef GType
gTypeSVGAnimatedLength = GType gTypeSVGAnimatedLength'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList Mozilla SVGAnimatedLengthList documentation>
newtype SVGAnimatedLengthList = SVGAnimatedLengthList (JSRef SVGAnimatedLengthList) deriving (Eq)

unSVGAnimatedLengthList (SVGAnimatedLengthList o) = o

instance ToJSRef SVGAnimatedLengthList where
  toJSRef = return . unSVGAnimatedLengthList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedLengthList where
  fromJSRef = return . fmap SVGAnimatedLengthList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedLengthList where
  toGObject = GObject . castRef . unSVGAnimatedLengthList
  unsafeCastGObject = SVGAnimatedLengthList . castRef . unGObject

castToSVGAnimatedLengthList :: IsGObject obj => obj -> SVGAnimatedLengthList
castToSVGAnimatedLengthList = castTo gTypeSVGAnimatedLengthList "SVGAnimatedLengthList"

foreign import javascript unsafe "window[\"SVGAnimatedLengthList\"]" gTypeSVGAnimatedLengthList' :: JSRef GType
gTypeSVGAnimatedLengthList = GType gTypeSVGAnimatedLengthList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber Mozilla SVGAnimatedNumber documentation>
newtype SVGAnimatedNumber = SVGAnimatedNumber (JSRef SVGAnimatedNumber) deriving (Eq)

unSVGAnimatedNumber (SVGAnimatedNumber o) = o

instance ToJSRef SVGAnimatedNumber where
  toJSRef = return . unSVGAnimatedNumber
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedNumber where
  fromJSRef = return . fmap SVGAnimatedNumber . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedNumber where
  toGObject = GObject . castRef . unSVGAnimatedNumber
  unsafeCastGObject = SVGAnimatedNumber . castRef . unGObject

castToSVGAnimatedNumber :: IsGObject obj => obj -> SVGAnimatedNumber
castToSVGAnimatedNumber = castTo gTypeSVGAnimatedNumber "SVGAnimatedNumber"

foreign import javascript unsafe "window[\"SVGAnimatedNumber\"]" gTypeSVGAnimatedNumber' :: JSRef GType
gTypeSVGAnimatedNumber = GType gTypeSVGAnimatedNumber'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList Mozilla SVGAnimatedNumberList documentation>
newtype SVGAnimatedNumberList = SVGAnimatedNumberList (JSRef SVGAnimatedNumberList) deriving (Eq)

unSVGAnimatedNumberList (SVGAnimatedNumberList o) = o

instance ToJSRef SVGAnimatedNumberList where
  toJSRef = return . unSVGAnimatedNumberList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedNumberList where
  fromJSRef = return . fmap SVGAnimatedNumberList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedNumberList where
  toGObject = GObject . castRef . unSVGAnimatedNumberList
  unsafeCastGObject = SVGAnimatedNumberList . castRef . unGObject

castToSVGAnimatedNumberList :: IsGObject obj => obj -> SVGAnimatedNumberList
castToSVGAnimatedNumberList = castTo gTypeSVGAnimatedNumberList "SVGAnimatedNumberList"

foreign import javascript unsafe "window[\"SVGAnimatedNumberList\"]" gTypeSVGAnimatedNumberList' :: JSRef GType
gTypeSVGAnimatedNumberList = GType gTypeSVGAnimatedNumberList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio Mozilla SVGAnimatedPreserveAspectRatio documentation>
newtype SVGAnimatedPreserveAspectRatio = SVGAnimatedPreserveAspectRatio (JSRef SVGAnimatedPreserveAspectRatio) deriving (Eq)

unSVGAnimatedPreserveAspectRatio (SVGAnimatedPreserveAspectRatio o) = o

instance ToJSRef SVGAnimatedPreserveAspectRatio where
  toJSRef = return . unSVGAnimatedPreserveAspectRatio
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedPreserveAspectRatio where
  fromJSRef = return . fmap SVGAnimatedPreserveAspectRatio . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedPreserveAspectRatio where
  toGObject = GObject . castRef . unSVGAnimatedPreserveAspectRatio
  unsafeCastGObject = SVGAnimatedPreserveAspectRatio . castRef . unGObject

castToSVGAnimatedPreserveAspectRatio :: IsGObject obj => obj -> SVGAnimatedPreserveAspectRatio
castToSVGAnimatedPreserveAspectRatio = castTo gTypeSVGAnimatedPreserveAspectRatio "SVGAnimatedPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGAnimatedPreserveAspectRatio\"]" gTypeSVGAnimatedPreserveAspectRatio' :: JSRef GType
gTypeSVGAnimatedPreserveAspectRatio = GType gTypeSVGAnimatedPreserveAspectRatio'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect Mozilla SVGAnimatedRect documentation>
newtype SVGAnimatedRect = SVGAnimatedRect (JSRef SVGAnimatedRect) deriving (Eq)

unSVGAnimatedRect (SVGAnimatedRect o) = o

instance ToJSRef SVGAnimatedRect where
  toJSRef = return . unSVGAnimatedRect
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedRect where
  fromJSRef = return . fmap SVGAnimatedRect . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedRect where
  toGObject = GObject . castRef . unSVGAnimatedRect
  unsafeCastGObject = SVGAnimatedRect . castRef . unGObject

castToSVGAnimatedRect :: IsGObject obj => obj -> SVGAnimatedRect
castToSVGAnimatedRect = castTo gTypeSVGAnimatedRect "SVGAnimatedRect"

foreign import javascript unsafe "window[\"SVGAnimatedRect\"]" gTypeSVGAnimatedRect' :: JSRef GType
gTypeSVGAnimatedRect = GType gTypeSVGAnimatedRect'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedString".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString Mozilla SVGAnimatedString documentation>
newtype SVGAnimatedString = SVGAnimatedString (JSRef SVGAnimatedString) deriving (Eq)

unSVGAnimatedString (SVGAnimatedString o) = o

instance ToJSRef SVGAnimatedString where
  toJSRef = return . unSVGAnimatedString
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedString where
  fromJSRef = return . fmap SVGAnimatedString . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedString where
  toGObject = GObject . castRef . unSVGAnimatedString
  unsafeCastGObject = SVGAnimatedString . castRef . unGObject

castToSVGAnimatedString :: IsGObject obj => obj -> SVGAnimatedString
castToSVGAnimatedString = castTo gTypeSVGAnimatedString "SVGAnimatedString"

foreign import javascript unsafe "window[\"SVGAnimatedString\"]" gTypeSVGAnimatedString' :: JSRef GType
gTypeSVGAnimatedString = GType gTypeSVGAnimatedString'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList Mozilla SVGAnimatedTransformList documentation>
newtype SVGAnimatedTransformList = SVGAnimatedTransformList (JSRef SVGAnimatedTransformList) deriving (Eq)

unSVGAnimatedTransformList (SVGAnimatedTransformList o) = o

instance ToJSRef SVGAnimatedTransformList where
  toJSRef = return . unSVGAnimatedTransformList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimatedTransformList where
  fromJSRef = return . fmap SVGAnimatedTransformList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGAnimatedTransformList where
  toGObject = GObject . castRef . unSVGAnimatedTransformList
  unsafeCastGObject = SVGAnimatedTransformList . castRef . unGObject

castToSVGAnimatedTransformList :: IsGObject obj => obj -> SVGAnimatedTransformList
castToSVGAnimatedTransformList = castTo gTypeSVGAnimatedTransformList "SVGAnimatedTransformList"

foreign import javascript unsafe "window[\"SVGAnimatedTransformList\"]" gTypeSVGAnimatedTransformList' :: JSRef GType
gTypeSVGAnimatedTransformList = GType gTypeSVGAnimatedTransformList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimationElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement Mozilla SVGAnimationElement documentation>
newtype SVGAnimationElement = SVGAnimationElement (JSRef SVGAnimationElement) deriving (Eq)

unSVGAnimationElement (SVGAnimationElement o) = o

instance ToJSRef SVGAnimationElement where
  toJSRef = return . unSVGAnimationElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGAnimationElement where
  fromJSRef = return . fmap SVGAnimationElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGAnimationElement o
toSVGAnimationElement :: IsSVGAnimationElement o => o -> SVGAnimationElement
toSVGAnimationElement = unsafeCastGObject . toGObject

instance IsSVGAnimationElement SVGAnimationElement
instance IsSVGElement SVGAnimationElement
instance IsElement SVGAnimationElement
instance IsNode SVGAnimationElement
instance IsEventTarget SVGAnimationElement
instance IsGObject SVGAnimationElement where
  toGObject = GObject . castRef . unSVGAnimationElement
  unsafeCastGObject = SVGAnimationElement . castRef . unGObject

castToSVGAnimationElement :: IsGObject obj => obj -> SVGAnimationElement
castToSVGAnimationElement = castTo gTypeSVGAnimationElement "SVGAnimationElement"

foreign import javascript unsafe "window[\"SVGAnimationElement\"]" gTypeSVGAnimationElement' :: JSRef GType
gTypeSVGAnimationElement = GType gTypeSVGAnimationElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGCircleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement Mozilla SVGCircleElement documentation>
newtype SVGCircleElement = SVGCircleElement (JSRef SVGCircleElement) deriving (Eq)

unSVGCircleElement (SVGCircleElement o) = o

instance ToJSRef SVGCircleElement where
  toJSRef = return . unSVGCircleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGCircleElement where
  fromJSRef = return . fmap SVGCircleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGCircleElement
instance IsSVGElement SVGCircleElement
instance IsElement SVGCircleElement
instance IsNode SVGCircleElement
instance IsEventTarget SVGCircleElement
instance IsGObject SVGCircleElement where
  toGObject = GObject . castRef . unSVGCircleElement
  unsafeCastGObject = SVGCircleElement . castRef . unGObject

castToSVGCircleElement :: IsGObject obj => obj -> SVGCircleElement
castToSVGCircleElement = castTo gTypeSVGCircleElement "SVGCircleElement"

foreign import javascript unsafe "window[\"SVGCircleElement\"]" gTypeSVGCircleElement' :: JSRef GType
gTypeSVGCircleElement = GType gTypeSVGCircleElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGClipPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement Mozilla SVGClipPathElement documentation>
newtype SVGClipPathElement = SVGClipPathElement (JSRef SVGClipPathElement) deriving (Eq)

unSVGClipPathElement (SVGClipPathElement o) = o

instance ToJSRef SVGClipPathElement where
  toJSRef = return . unSVGClipPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGClipPathElement where
  fromJSRef = return . fmap SVGClipPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGClipPathElement
instance IsSVGElement SVGClipPathElement
instance IsElement SVGClipPathElement
instance IsNode SVGClipPathElement
instance IsEventTarget SVGClipPathElement
instance IsGObject SVGClipPathElement where
  toGObject = GObject . castRef . unSVGClipPathElement
  unsafeCastGObject = SVGClipPathElement . castRef . unGObject

castToSVGClipPathElement :: IsGObject obj => obj -> SVGClipPathElement
castToSVGClipPathElement = castTo gTypeSVGClipPathElement "SVGClipPathElement"

foreign import javascript unsafe "window[\"SVGClipPathElement\"]" gTypeSVGClipPathElement' :: JSRef GType
gTypeSVGClipPathElement = GType gTypeSVGClipPathElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGColor".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor Mozilla SVGColor documentation>
newtype SVGColor = SVGColor (JSRef SVGColor) deriving (Eq)

unSVGColor (SVGColor o) = o

instance ToJSRef SVGColor where
  toJSRef = return . unSVGColor
  {-# INLINE toJSRef #-}

instance FromJSRef SVGColor where
  fromJSRef = return . fmap SVGColor . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsCSSValue o => IsSVGColor o
toSVGColor :: IsSVGColor o => o -> SVGColor
toSVGColor = unsafeCastGObject . toGObject

instance IsSVGColor SVGColor
instance IsCSSValue SVGColor
instance IsGObject SVGColor where
  toGObject = GObject . castRef . unSVGColor
  unsafeCastGObject = SVGColor . castRef . unGObject

castToSVGColor :: IsGObject obj => obj -> SVGColor
castToSVGColor = castTo gTypeSVGColor "SVGColor"

foreign import javascript unsafe "window[\"SVGColor\"]" gTypeSVGColor' :: JSRef GType
gTypeSVGColor = GType gTypeSVGColor'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGComponentTransferFunctionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement Mozilla SVGComponentTransferFunctionElement documentation>
newtype SVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement (JSRef SVGComponentTransferFunctionElement) deriving (Eq)

unSVGComponentTransferFunctionElement (SVGComponentTransferFunctionElement o) = o

instance ToJSRef SVGComponentTransferFunctionElement where
  toJSRef = return . unSVGComponentTransferFunctionElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGComponentTransferFunctionElement where
  fromJSRef = return . fmap SVGComponentTransferFunctionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGComponentTransferFunctionElement o
toSVGComponentTransferFunctionElement :: IsSVGComponentTransferFunctionElement o => o -> SVGComponentTransferFunctionElement
toSVGComponentTransferFunctionElement = unsafeCastGObject . toGObject

instance IsSVGComponentTransferFunctionElement SVGComponentTransferFunctionElement
instance IsSVGElement SVGComponentTransferFunctionElement
instance IsElement SVGComponentTransferFunctionElement
instance IsNode SVGComponentTransferFunctionElement
instance IsEventTarget SVGComponentTransferFunctionElement
instance IsGObject SVGComponentTransferFunctionElement where
  toGObject = GObject . castRef . unSVGComponentTransferFunctionElement
  unsafeCastGObject = SVGComponentTransferFunctionElement . castRef . unGObject

castToSVGComponentTransferFunctionElement :: IsGObject obj => obj -> SVGComponentTransferFunctionElement
castToSVGComponentTransferFunctionElement = castTo gTypeSVGComponentTransferFunctionElement "SVGComponentTransferFunctionElement"

foreign import javascript unsafe "window[\"SVGComponentTransferFunctionElement\"]" gTypeSVGComponentTransferFunctionElement' :: JSRef GType
gTypeSVGComponentTransferFunctionElement = GType gTypeSVGComponentTransferFunctionElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGCursorElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement Mozilla SVGCursorElement documentation>
newtype SVGCursorElement = SVGCursorElement (JSRef SVGCursorElement) deriving (Eq)

unSVGCursorElement (SVGCursorElement o) = o

instance ToJSRef SVGCursorElement where
  toJSRef = return . unSVGCursorElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGCursorElement where
  fromJSRef = return . fmap SVGCursorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGCursorElement
instance IsElement SVGCursorElement
instance IsNode SVGCursorElement
instance IsEventTarget SVGCursorElement
instance IsGObject SVGCursorElement where
  toGObject = GObject . castRef . unSVGCursorElement
  unsafeCastGObject = SVGCursorElement . castRef . unGObject

castToSVGCursorElement :: IsGObject obj => obj -> SVGCursorElement
castToSVGCursorElement = castTo gTypeSVGCursorElement "SVGCursorElement"

foreign import javascript unsafe "window[\"SVGCursorElement\"]" gTypeSVGCursorElement' :: JSRef GType
gTypeSVGCursorElement = GType gTypeSVGCursorElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDefsElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement Mozilla SVGDefsElement documentation>
newtype SVGDefsElement = SVGDefsElement (JSRef SVGDefsElement) deriving (Eq)

unSVGDefsElement (SVGDefsElement o) = o

instance ToJSRef SVGDefsElement where
  toJSRef = return . unSVGDefsElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDefsElement where
  fromJSRef = return . fmap SVGDefsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGDefsElement
instance IsSVGElement SVGDefsElement
instance IsElement SVGDefsElement
instance IsNode SVGDefsElement
instance IsEventTarget SVGDefsElement
instance IsGObject SVGDefsElement where
  toGObject = GObject . castRef . unSVGDefsElement
  unsafeCastGObject = SVGDefsElement . castRef . unGObject

castToSVGDefsElement :: IsGObject obj => obj -> SVGDefsElement
castToSVGDefsElement = castTo gTypeSVGDefsElement "SVGDefsElement"

foreign import javascript unsafe "window[\"SVGDefsElement\"]" gTypeSVGDefsElement' :: JSRef GType
gTypeSVGDefsElement = GType gTypeSVGDefsElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDescElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement Mozilla SVGDescElement documentation>
newtype SVGDescElement = SVGDescElement (JSRef SVGDescElement) deriving (Eq)

unSVGDescElement (SVGDescElement o) = o

instance ToJSRef SVGDescElement where
  toJSRef = return . unSVGDescElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDescElement where
  fromJSRef = return . fmap SVGDescElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGDescElement
instance IsElement SVGDescElement
instance IsNode SVGDescElement
instance IsEventTarget SVGDescElement
instance IsGObject SVGDescElement where
  toGObject = GObject . castRef . unSVGDescElement
  unsafeCastGObject = SVGDescElement . castRef . unGObject

castToSVGDescElement :: IsGObject obj => obj -> SVGDescElement
castToSVGDescElement = castTo gTypeSVGDescElement "SVGDescElement"

foreign import javascript unsafe "window[\"SVGDescElement\"]" gTypeSVGDescElement' :: JSRef GType
gTypeSVGDescElement = GType gTypeSVGDescElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDocument".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Document"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument Mozilla SVGDocument documentation>
newtype SVGDocument = SVGDocument (JSRef SVGDocument) deriving (Eq)

unSVGDocument (SVGDocument o) = o

instance ToJSRef SVGDocument where
  toJSRef = return . unSVGDocument
  {-# INLINE toJSRef #-}

instance FromJSRef SVGDocument where
  fromJSRef = return . fmap SVGDocument . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsDocument SVGDocument
instance IsNode SVGDocument
instance IsEventTarget SVGDocument
instance IsGObject SVGDocument where
  toGObject = GObject . castRef . unSVGDocument
  unsafeCastGObject = SVGDocument . castRef . unGObject

castToSVGDocument :: IsGObject obj => obj -> SVGDocument
castToSVGDocument = castTo gTypeSVGDocument "SVGDocument"

foreign import javascript unsafe "window[\"SVGDocument\"]" gTypeSVGDocument' :: JSRef GType
gTypeSVGDocument = GType gTypeSVGDocument'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement Mozilla SVGElement documentation>
newtype SVGElement = SVGElement (JSRef SVGElement) deriving (Eq)

unSVGElement (SVGElement o) = o

instance ToJSRef SVGElement where
  toJSRef = return . unSVGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGElement where
  fromJSRef = return . fmap SVGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsElement o => IsSVGElement o
toSVGElement :: IsSVGElement o => o -> SVGElement
toSVGElement = unsafeCastGObject . toGObject

instance IsSVGElement SVGElement
instance IsElement SVGElement
instance IsNode SVGElement
instance IsEventTarget SVGElement
instance IsGObject SVGElement where
  toGObject = GObject . castRef . unSVGElement
  unsafeCastGObject = SVGElement . castRef . unGObject

castToSVGElement :: IsGObject obj => obj -> SVGElement
castToSVGElement = castTo gTypeSVGElement "SVGElement"

foreign import javascript unsafe "window[\"SVGElement\"]" gTypeSVGElement' :: JSRef GType
gTypeSVGElement = GType gTypeSVGElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGEllipseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement Mozilla SVGEllipseElement documentation>
newtype SVGEllipseElement = SVGEllipseElement (JSRef SVGEllipseElement) deriving (Eq)

unSVGEllipseElement (SVGEllipseElement o) = o

instance ToJSRef SVGEllipseElement where
  toJSRef = return . unSVGEllipseElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGEllipseElement where
  fromJSRef = return . fmap SVGEllipseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGEllipseElement
instance IsSVGElement SVGEllipseElement
instance IsElement SVGEllipseElement
instance IsNode SVGEllipseElement
instance IsEventTarget SVGEllipseElement
instance IsGObject SVGEllipseElement where
  toGObject = GObject . castRef . unSVGEllipseElement
  unsafeCastGObject = SVGEllipseElement . castRef . unGObject

castToSVGEllipseElement :: IsGObject obj => obj -> SVGEllipseElement
castToSVGEllipseElement = castTo gTypeSVGEllipseElement "SVGEllipseElement"

foreign import javascript unsafe "window[\"SVGEllipseElement\"]" gTypeSVGEllipseElement' :: JSRef GType
gTypeSVGEllipseElement = GType gTypeSVGEllipseElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGExternalResourcesRequired".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired Mozilla SVGExternalResourcesRequired documentation>
newtype SVGExternalResourcesRequired = SVGExternalResourcesRequired (JSRef SVGExternalResourcesRequired) deriving (Eq)

unSVGExternalResourcesRequired (SVGExternalResourcesRequired o) = o

instance ToJSRef SVGExternalResourcesRequired where
  toJSRef = return . unSVGExternalResourcesRequired
  {-# INLINE toJSRef #-}

instance FromJSRef SVGExternalResourcesRequired where
  fromJSRef = return . fmap SVGExternalResourcesRequired . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGExternalResourcesRequired where
  toGObject = GObject . castRef . unSVGExternalResourcesRequired
  unsafeCastGObject = SVGExternalResourcesRequired . castRef . unGObject

castToSVGExternalResourcesRequired :: IsGObject obj => obj -> SVGExternalResourcesRequired
castToSVGExternalResourcesRequired = castTo gTypeSVGExternalResourcesRequired "SVGExternalResourcesRequired"

foreign import javascript unsafe "window[\"SVGExternalResourcesRequired\"]" gTypeSVGExternalResourcesRequired' :: JSRef GType
gTypeSVGExternalResourcesRequired = GType gTypeSVGExternalResourcesRequired'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEBlendElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement Mozilla SVGFEBlendElement documentation>
newtype SVGFEBlendElement = SVGFEBlendElement (JSRef SVGFEBlendElement) deriving (Eq)

unSVGFEBlendElement (SVGFEBlendElement o) = o

instance ToJSRef SVGFEBlendElement where
  toJSRef = return . unSVGFEBlendElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEBlendElement where
  fromJSRef = return . fmap SVGFEBlendElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEBlendElement
instance IsElement SVGFEBlendElement
instance IsNode SVGFEBlendElement
instance IsEventTarget SVGFEBlendElement
instance IsGObject SVGFEBlendElement where
  toGObject = GObject . castRef . unSVGFEBlendElement
  unsafeCastGObject = SVGFEBlendElement . castRef . unGObject

castToSVGFEBlendElement :: IsGObject obj => obj -> SVGFEBlendElement
castToSVGFEBlendElement = castTo gTypeSVGFEBlendElement "SVGFEBlendElement"

foreign import javascript unsafe "window[\"SVGFEBlendElement\"]" gTypeSVGFEBlendElement' :: JSRef GType
gTypeSVGFEBlendElement = GType gTypeSVGFEBlendElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEColorMatrixElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement Mozilla SVGFEColorMatrixElement documentation>
newtype SVGFEColorMatrixElement = SVGFEColorMatrixElement (JSRef SVGFEColorMatrixElement) deriving (Eq)

unSVGFEColorMatrixElement (SVGFEColorMatrixElement o) = o

instance ToJSRef SVGFEColorMatrixElement where
  toJSRef = return . unSVGFEColorMatrixElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEColorMatrixElement where
  fromJSRef = return . fmap SVGFEColorMatrixElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEColorMatrixElement
instance IsElement SVGFEColorMatrixElement
instance IsNode SVGFEColorMatrixElement
instance IsEventTarget SVGFEColorMatrixElement
instance IsGObject SVGFEColorMatrixElement where
  toGObject = GObject . castRef . unSVGFEColorMatrixElement
  unsafeCastGObject = SVGFEColorMatrixElement . castRef . unGObject

castToSVGFEColorMatrixElement :: IsGObject obj => obj -> SVGFEColorMatrixElement
castToSVGFEColorMatrixElement = castTo gTypeSVGFEColorMatrixElement "SVGFEColorMatrixElement"

foreign import javascript unsafe "window[\"SVGFEColorMatrixElement\"]" gTypeSVGFEColorMatrixElement' :: JSRef GType
gTypeSVGFEColorMatrixElement = GType gTypeSVGFEColorMatrixElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEComponentTransferElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement Mozilla SVGFEComponentTransferElement documentation>
newtype SVGFEComponentTransferElement = SVGFEComponentTransferElement (JSRef SVGFEComponentTransferElement) deriving (Eq)

unSVGFEComponentTransferElement (SVGFEComponentTransferElement o) = o

instance ToJSRef SVGFEComponentTransferElement where
  toJSRef = return . unSVGFEComponentTransferElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEComponentTransferElement where
  fromJSRef = return . fmap SVGFEComponentTransferElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEComponentTransferElement
instance IsElement SVGFEComponentTransferElement
instance IsNode SVGFEComponentTransferElement
instance IsEventTarget SVGFEComponentTransferElement
instance IsGObject SVGFEComponentTransferElement where
  toGObject = GObject . castRef . unSVGFEComponentTransferElement
  unsafeCastGObject = SVGFEComponentTransferElement . castRef . unGObject

castToSVGFEComponentTransferElement :: IsGObject obj => obj -> SVGFEComponentTransferElement
castToSVGFEComponentTransferElement = castTo gTypeSVGFEComponentTransferElement "SVGFEComponentTransferElement"

foreign import javascript unsafe "window[\"SVGFEComponentTransferElement\"]" gTypeSVGFEComponentTransferElement' :: JSRef GType
gTypeSVGFEComponentTransferElement = GType gTypeSVGFEComponentTransferElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFECompositeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement Mozilla SVGFECompositeElement documentation>
newtype SVGFECompositeElement = SVGFECompositeElement (JSRef SVGFECompositeElement) deriving (Eq)

unSVGFECompositeElement (SVGFECompositeElement o) = o

instance ToJSRef SVGFECompositeElement where
  toJSRef = return . unSVGFECompositeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFECompositeElement where
  fromJSRef = return . fmap SVGFECompositeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFECompositeElement
instance IsElement SVGFECompositeElement
instance IsNode SVGFECompositeElement
instance IsEventTarget SVGFECompositeElement
instance IsGObject SVGFECompositeElement where
  toGObject = GObject . castRef . unSVGFECompositeElement
  unsafeCastGObject = SVGFECompositeElement . castRef . unGObject

castToSVGFECompositeElement :: IsGObject obj => obj -> SVGFECompositeElement
castToSVGFECompositeElement = castTo gTypeSVGFECompositeElement "SVGFECompositeElement"

foreign import javascript unsafe "window[\"SVGFECompositeElement\"]" gTypeSVGFECompositeElement' :: JSRef GType
gTypeSVGFECompositeElement = GType gTypeSVGFECompositeElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEConvolveMatrixElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement Mozilla SVGFEConvolveMatrixElement documentation>
newtype SVGFEConvolveMatrixElement = SVGFEConvolveMatrixElement (JSRef SVGFEConvolveMatrixElement) deriving (Eq)

unSVGFEConvolveMatrixElement (SVGFEConvolveMatrixElement o) = o

instance ToJSRef SVGFEConvolveMatrixElement where
  toJSRef = return . unSVGFEConvolveMatrixElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEConvolveMatrixElement where
  fromJSRef = return . fmap SVGFEConvolveMatrixElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEConvolveMatrixElement
instance IsElement SVGFEConvolveMatrixElement
instance IsNode SVGFEConvolveMatrixElement
instance IsEventTarget SVGFEConvolveMatrixElement
instance IsGObject SVGFEConvolveMatrixElement where
  toGObject = GObject . castRef . unSVGFEConvolveMatrixElement
  unsafeCastGObject = SVGFEConvolveMatrixElement . castRef . unGObject

castToSVGFEConvolveMatrixElement :: IsGObject obj => obj -> SVGFEConvolveMatrixElement
castToSVGFEConvolveMatrixElement = castTo gTypeSVGFEConvolveMatrixElement "SVGFEConvolveMatrixElement"

foreign import javascript unsafe "window[\"SVGFEConvolveMatrixElement\"]" gTypeSVGFEConvolveMatrixElement' :: JSRef GType
gTypeSVGFEConvolveMatrixElement = GType gTypeSVGFEConvolveMatrixElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDiffuseLightingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement Mozilla SVGFEDiffuseLightingElement documentation>
newtype SVGFEDiffuseLightingElement = SVGFEDiffuseLightingElement (JSRef SVGFEDiffuseLightingElement) deriving (Eq)

unSVGFEDiffuseLightingElement (SVGFEDiffuseLightingElement o) = o

instance ToJSRef SVGFEDiffuseLightingElement where
  toJSRef = return . unSVGFEDiffuseLightingElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDiffuseLightingElement where
  fromJSRef = return . fmap SVGFEDiffuseLightingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEDiffuseLightingElement
instance IsElement SVGFEDiffuseLightingElement
instance IsNode SVGFEDiffuseLightingElement
instance IsEventTarget SVGFEDiffuseLightingElement
instance IsGObject SVGFEDiffuseLightingElement where
  toGObject = GObject . castRef . unSVGFEDiffuseLightingElement
  unsafeCastGObject = SVGFEDiffuseLightingElement . castRef . unGObject

castToSVGFEDiffuseLightingElement :: IsGObject obj => obj -> SVGFEDiffuseLightingElement
castToSVGFEDiffuseLightingElement = castTo gTypeSVGFEDiffuseLightingElement "SVGFEDiffuseLightingElement"

foreign import javascript unsafe "window[\"SVGFEDiffuseLightingElement\"]" gTypeSVGFEDiffuseLightingElement' :: JSRef GType
gTypeSVGFEDiffuseLightingElement = GType gTypeSVGFEDiffuseLightingElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDisplacementMapElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement Mozilla SVGFEDisplacementMapElement documentation>
newtype SVGFEDisplacementMapElement = SVGFEDisplacementMapElement (JSRef SVGFEDisplacementMapElement) deriving (Eq)

unSVGFEDisplacementMapElement (SVGFEDisplacementMapElement o) = o

instance ToJSRef SVGFEDisplacementMapElement where
  toJSRef = return . unSVGFEDisplacementMapElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDisplacementMapElement where
  fromJSRef = return . fmap SVGFEDisplacementMapElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEDisplacementMapElement
instance IsElement SVGFEDisplacementMapElement
instance IsNode SVGFEDisplacementMapElement
instance IsEventTarget SVGFEDisplacementMapElement
instance IsGObject SVGFEDisplacementMapElement where
  toGObject = GObject . castRef . unSVGFEDisplacementMapElement
  unsafeCastGObject = SVGFEDisplacementMapElement . castRef . unGObject

castToSVGFEDisplacementMapElement :: IsGObject obj => obj -> SVGFEDisplacementMapElement
castToSVGFEDisplacementMapElement = castTo gTypeSVGFEDisplacementMapElement "SVGFEDisplacementMapElement"

foreign import javascript unsafe "window[\"SVGFEDisplacementMapElement\"]" gTypeSVGFEDisplacementMapElement' :: JSRef GType
gTypeSVGFEDisplacementMapElement = GType gTypeSVGFEDisplacementMapElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDistantLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement Mozilla SVGFEDistantLightElement documentation>
newtype SVGFEDistantLightElement = SVGFEDistantLightElement (JSRef SVGFEDistantLightElement) deriving (Eq)

unSVGFEDistantLightElement (SVGFEDistantLightElement o) = o

instance ToJSRef SVGFEDistantLightElement where
  toJSRef = return . unSVGFEDistantLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDistantLightElement where
  fromJSRef = return . fmap SVGFEDistantLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEDistantLightElement
instance IsElement SVGFEDistantLightElement
instance IsNode SVGFEDistantLightElement
instance IsEventTarget SVGFEDistantLightElement
instance IsGObject SVGFEDistantLightElement where
  toGObject = GObject . castRef . unSVGFEDistantLightElement
  unsafeCastGObject = SVGFEDistantLightElement . castRef . unGObject

castToSVGFEDistantLightElement :: IsGObject obj => obj -> SVGFEDistantLightElement
castToSVGFEDistantLightElement = castTo gTypeSVGFEDistantLightElement "SVGFEDistantLightElement"

foreign import javascript unsafe "window[\"SVGFEDistantLightElement\"]" gTypeSVGFEDistantLightElement' :: JSRef GType
gTypeSVGFEDistantLightElement = GType gTypeSVGFEDistantLightElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDropShadowElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement Mozilla SVGFEDropShadowElement documentation>
newtype SVGFEDropShadowElement = SVGFEDropShadowElement (JSRef SVGFEDropShadowElement) deriving (Eq)

unSVGFEDropShadowElement (SVGFEDropShadowElement o) = o

instance ToJSRef SVGFEDropShadowElement where
  toJSRef = return . unSVGFEDropShadowElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEDropShadowElement where
  fromJSRef = return . fmap SVGFEDropShadowElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEDropShadowElement
instance IsElement SVGFEDropShadowElement
instance IsNode SVGFEDropShadowElement
instance IsEventTarget SVGFEDropShadowElement
instance IsGObject SVGFEDropShadowElement where
  toGObject = GObject . castRef . unSVGFEDropShadowElement
  unsafeCastGObject = SVGFEDropShadowElement . castRef . unGObject

castToSVGFEDropShadowElement :: IsGObject obj => obj -> SVGFEDropShadowElement
castToSVGFEDropShadowElement = castTo gTypeSVGFEDropShadowElement "SVGFEDropShadowElement"

foreign import javascript unsafe "window[\"SVGFEDropShadowElement\"]" gTypeSVGFEDropShadowElement' :: JSRef GType
gTypeSVGFEDropShadowElement = GType gTypeSVGFEDropShadowElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFloodElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFloodElement Mozilla SVGFEFloodElement documentation>
newtype SVGFEFloodElement = SVGFEFloodElement (JSRef SVGFEFloodElement) deriving (Eq)

unSVGFEFloodElement (SVGFEFloodElement o) = o

instance ToJSRef SVGFEFloodElement where
  toJSRef = return . unSVGFEFloodElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFloodElement where
  fromJSRef = return . fmap SVGFEFloodElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEFloodElement
instance IsElement SVGFEFloodElement
instance IsNode SVGFEFloodElement
instance IsEventTarget SVGFEFloodElement
instance IsGObject SVGFEFloodElement where
  toGObject = GObject . castRef . unSVGFEFloodElement
  unsafeCastGObject = SVGFEFloodElement . castRef . unGObject

castToSVGFEFloodElement :: IsGObject obj => obj -> SVGFEFloodElement
castToSVGFEFloodElement = castTo gTypeSVGFEFloodElement "SVGFEFloodElement"

foreign import javascript unsafe "window[\"SVGFEFloodElement\"]" gTypeSVGFEFloodElement' :: JSRef GType
gTypeSVGFEFloodElement = GType gTypeSVGFEFloodElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncAElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncAElement Mozilla SVGFEFuncAElement documentation>
newtype SVGFEFuncAElement = SVGFEFuncAElement (JSRef SVGFEFuncAElement) deriving (Eq)

unSVGFEFuncAElement (SVGFEFuncAElement o) = o

instance ToJSRef SVGFEFuncAElement where
  toJSRef = return . unSVGFEFuncAElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncAElement where
  fromJSRef = return . fmap SVGFEFuncAElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncAElement
instance IsSVGElement SVGFEFuncAElement
instance IsElement SVGFEFuncAElement
instance IsNode SVGFEFuncAElement
instance IsEventTarget SVGFEFuncAElement
instance IsGObject SVGFEFuncAElement where
  toGObject = GObject . castRef . unSVGFEFuncAElement
  unsafeCastGObject = SVGFEFuncAElement . castRef . unGObject

castToSVGFEFuncAElement :: IsGObject obj => obj -> SVGFEFuncAElement
castToSVGFEFuncAElement = castTo gTypeSVGFEFuncAElement "SVGFEFuncAElement"

foreign import javascript unsafe "window[\"SVGFEFuncAElement\"]" gTypeSVGFEFuncAElement' :: JSRef GType
gTypeSVGFEFuncAElement = GType gTypeSVGFEFuncAElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncBElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncBElement Mozilla SVGFEFuncBElement documentation>
newtype SVGFEFuncBElement = SVGFEFuncBElement (JSRef SVGFEFuncBElement) deriving (Eq)

unSVGFEFuncBElement (SVGFEFuncBElement o) = o

instance ToJSRef SVGFEFuncBElement where
  toJSRef = return . unSVGFEFuncBElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncBElement where
  fromJSRef = return . fmap SVGFEFuncBElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncBElement
instance IsSVGElement SVGFEFuncBElement
instance IsElement SVGFEFuncBElement
instance IsNode SVGFEFuncBElement
instance IsEventTarget SVGFEFuncBElement
instance IsGObject SVGFEFuncBElement where
  toGObject = GObject . castRef . unSVGFEFuncBElement
  unsafeCastGObject = SVGFEFuncBElement . castRef . unGObject

castToSVGFEFuncBElement :: IsGObject obj => obj -> SVGFEFuncBElement
castToSVGFEFuncBElement = castTo gTypeSVGFEFuncBElement "SVGFEFuncBElement"

foreign import javascript unsafe "window[\"SVGFEFuncBElement\"]" gTypeSVGFEFuncBElement' :: JSRef GType
gTypeSVGFEFuncBElement = GType gTypeSVGFEFuncBElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncGElement Mozilla SVGFEFuncGElement documentation>
newtype SVGFEFuncGElement = SVGFEFuncGElement (JSRef SVGFEFuncGElement) deriving (Eq)

unSVGFEFuncGElement (SVGFEFuncGElement o) = o

instance ToJSRef SVGFEFuncGElement where
  toJSRef = return . unSVGFEFuncGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncGElement where
  fromJSRef = return . fmap SVGFEFuncGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncGElement
instance IsSVGElement SVGFEFuncGElement
instance IsElement SVGFEFuncGElement
instance IsNode SVGFEFuncGElement
instance IsEventTarget SVGFEFuncGElement
instance IsGObject SVGFEFuncGElement where
  toGObject = GObject . castRef . unSVGFEFuncGElement
  unsafeCastGObject = SVGFEFuncGElement . castRef . unGObject

castToSVGFEFuncGElement :: IsGObject obj => obj -> SVGFEFuncGElement
castToSVGFEFuncGElement = castTo gTypeSVGFEFuncGElement "SVGFEFuncGElement"

foreign import javascript unsafe "window[\"SVGFEFuncGElement\"]" gTypeSVGFEFuncGElement' :: JSRef GType
gTypeSVGFEFuncGElement = GType gTypeSVGFEFuncGElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncRElement Mozilla SVGFEFuncRElement documentation>
newtype SVGFEFuncRElement = SVGFEFuncRElement (JSRef SVGFEFuncRElement) deriving (Eq)

unSVGFEFuncRElement (SVGFEFuncRElement o) = o

instance ToJSRef SVGFEFuncRElement where
  toJSRef = return . unSVGFEFuncRElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEFuncRElement where
  fromJSRef = return . fmap SVGFEFuncRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncRElement
instance IsSVGElement SVGFEFuncRElement
instance IsElement SVGFEFuncRElement
instance IsNode SVGFEFuncRElement
instance IsEventTarget SVGFEFuncRElement
instance IsGObject SVGFEFuncRElement where
  toGObject = GObject . castRef . unSVGFEFuncRElement
  unsafeCastGObject = SVGFEFuncRElement . castRef . unGObject

castToSVGFEFuncRElement :: IsGObject obj => obj -> SVGFEFuncRElement
castToSVGFEFuncRElement = castTo gTypeSVGFEFuncRElement "SVGFEFuncRElement"

foreign import javascript unsafe "window[\"SVGFEFuncRElement\"]" gTypeSVGFEFuncRElement' :: JSRef GType
gTypeSVGFEFuncRElement = GType gTypeSVGFEFuncRElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEGaussianBlurElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement Mozilla SVGFEGaussianBlurElement documentation>
newtype SVGFEGaussianBlurElement = SVGFEGaussianBlurElement (JSRef SVGFEGaussianBlurElement) deriving (Eq)

unSVGFEGaussianBlurElement (SVGFEGaussianBlurElement o) = o

instance ToJSRef SVGFEGaussianBlurElement where
  toJSRef = return . unSVGFEGaussianBlurElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEGaussianBlurElement where
  fromJSRef = return . fmap SVGFEGaussianBlurElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEGaussianBlurElement
instance IsElement SVGFEGaussianBlurElement
instance IsNode SVGFEGaussianBlurElement
instance IsEventTarget SVGFEGaussianBlurElement
instance IsGObject SVGFEGaussianBlurElement where
  toGObject = GObject . castRef . unSVGFEGaussianBlurElement
  unsafeCastGObject = SVGFEGaussianBlurElement . castRef . unGObject

castToSVGFEGaussianBlurElement :: IsGObject obj => obj -> SVGFEGaussianBlurElement
castToSVGFEGaussianBlurElement = castTo gTypeSVGFEGaussianBlurElement "SVGFEGaussianBlurElement"

foreign import javascript unsafe "window[\"SVGFEGaussianBlurElement\"]" gTypeSVGFEGaussianBlurElement' :: JSRef GType
gTypeSVGFEGaussianBlurElement = GType gTypeSVGFEGaussianBlurElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement Mozilla SVGFEImageElement documentation>
newtype SVGFEImageElement = SVGFEImageElement (JSRef SVGFEImageElement) deriving (Eq)

unSVGFEImageElement (SVGFEImageElement o) = o

instance ToJSRef SVGFEImageElement where
  toJSRef = return . unSVGFEImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEImageElement where
  fromJSRef = return . fmap SVGFEImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEImageElement
instance IsElement SVGFEImageElement
instance IsNode SVGFEImageElement
instance IsEventTarget SVGFEImageElement
instance IsGObject SVGFEImageElement where
  toGObject = GObject . castRef . unSVGFEImageElement
  unsafeCastGObject = SVGFEImageElement . castRef . unGObject

castToSVGFEImageElement :: IsGObject obj => obj -> SVGFEImageElement
castToSVGFEImageElement = castTo gTypeSVGFEImageElement "SVGFEImageElement"

foreign import javascript unsafe "window[\"SVGFEImageElement\"]" gTypeSVGFEImageElement' :: JSRef GType
gTypeSVGFEImageElement = GType gTypeSVGFEImageElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMergeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeElement Mozilla SVGFEMergeElement documentation>
newtype SVGFEMergeElement = SVGFEMergeElement (JSRef SVGFEMergeElement) deriving (Eq)

unSVGFEMergeElement (SVGFEMergeElement o) = o

instance ToJSRef SVGFEMergeElement where
  toJSRef = return . unSVGFEMergeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMergeElement where
  fromJSRef = return . fmap SVGFEMergeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEMergeElement
instance IsElement SVGFEMergeElement
instance IsNode SVGFEMergeElement
instance IsEventTarget SVGFEMergeElement
instance IsGObject SVGFEMergeElement where
  toGObject = GObject . castRef . unSVGFEMergeElement
  unsafeCastGObject = SVGFEMergeElement . castRef . unGObject

castToSVGFEMergeElement :: IsGObject obj => obj -> SVGFEMergeElement
castToSVGFEMergeElement = castTo gTypeSVGFEMergeElement "SVGFEMergeElement"

foreign import javascript unsafe "window[\"SVGFEMergeElement\"]" gTypeSVGFEMergeElement' :: JSRef GType
gTypeSVGFEMergeElement = GType gTypeSVGFEMergeElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMergeNodeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeNodeElement Mozilla SVGFEMergeNodeElement documentation>
newtype SVGFEMergeNodeElement = SVGFEMergeNodeElement (JSRef SVGFEMergeNodeElement) deriving (Eq)

unSVGFEMergeNodeElement (SVGFEMergeNodeElement o) = o

instance ToJSRef SVGFEMergeNodeElement where
  toJSRef = return . unSVGFEMergeNodeElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMergeNodeElement where
  fromJSRef = return . fmap SVGFEMergeNodeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEMergeNodeElement
instance IsElement SVGFEMergeNodeElement
instance IsNode SVGFEMergeNodeElement
instance IsEventTarget SVGFEMergeNodeElement
instance IsGObject SVGFEMergeNodeElement where
  toGObject = GObject . castRef . unSVGFEMergeNodeElement
  unsafeCastGObject = SVGFEMergeNodeElement . castRef . unGObject

castToSVGFEMergeNodeElement :: IsGObject obj => obj -> SVGFEMergeNodeElement
castToSVGFEMergeNodeElement = castTo gTypeSVGFEMergeNodeElement "SVGFEMergeNodeElement"

foreign import javascript unsafe "window[\"SVGFEMergeNodeElement\"]" gTypeSVGFEMergeNodeElement' :: JSRef GType
gTypeSVGFEMergeNodeElement = GType gTypeSVGFEMergeNodeElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMorphologyElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement Mozilla SVGFEMorphologyElement documentation>
newtype SVGFEMorphologyElement = SVGFEMorphologyElement (JSRef SVGFEMorphologyElement) deriving (Eq)

unSVGFEMorphologyElement (SVGFEMorphologyElement o) = o

instance ToJSRef SVGFEMorphologyElement where
  toJSRef = return . unSVGFEMorphologyElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEMorphologyElement where
  fromJSRef = return . fmap SVGFEMorphologyElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEMorphologyElement
instance IsElement SVGFEMorphologyElement
instance IsNode SVGFEMorphologyElement
instance IsEventTarget SVGFEMorphologyElement
instance IsGObject SVGFEMorphologyElement where
  toGObject = GObject . castRef . unSVGFEMorphologyElement
  unsafeCastGObject = SVGFEMorphologyElement . castRef . unGObject

castToSVGFEMorphologyElement :: IsGObject obj => obj -> SVGFEMorphologyElement
castToSVGFEMorphologyElement = castTo gTypeSVGFEMorphologyElement "SVGFEMorphologyElement"

foreign import javascript unsafe "window[\"SVGFEMorphologyElement\"]" gTypeSVGFEMorphologyElement' :: JSRef GType
gTypeSVGFEMorphologyElement = GType gTypeSVGFEMorphologyElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEOffsetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement Mozilla SVGFEOffsetElement documentation>
newtype SVGFEOffsetElement = SVGFEOffsetElement (JSRef SVGFEOffsetElement) deriving (Eq)

unSVGFEOffsetElement (SVGFEOffsetElement o) = o

instance ToJSRef SVGFEOffsetElement where
  toJSRef = return . unSVGFEOffsetElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEOffsetElement where
  fromJSRef = return . fmap SVGFEOffsetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEOffsetElement
instance IsElement SVGFEOffsetElement
instance IsNode SVGFEOffsetElement
instance IsEventTarget SVGFEOffsetElement
instance IsGObject SVGFEOffsetElement where
  toGObject = GObject . castRef . unSVGFEOffsetElement
  unsafeCastGObject = SVGFEOffsetElement . castRef . unGObject

castToSVGFEOffsetElement :: IsGObject obj => obj -> SVGFEOffsetElement
castToSVGFEOffsetElement = castTo gTypeSVGFEOffsetElement "SVGFEOffsetElement"

foreign import javascript unsafe "window[\"SVGFEOffsetElement\"]" gTypeSVGFEOffsetElement' :: JSRef GType
gTypeSVGFEOffsetElement = GType gTypeSVGFEOffsetElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEPointLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement Mozilla SVGFEPointLightElement documentation>
newtype SVGFEPointLightElement = SVGFEPointLightElement (JSRef SVGFEPointLightElement) deriving (Eq)

unSVGFEPointLightElement (SVGFEPointLightElement o) = o

instance ToJSRef SVGFEPointLightElement where
  toJSRef = return . unSVGFEPointLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFEPointLightElement where
  fromJSRef = return . fmap SVGFEPointLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFEPointLightElement
instance IsElement SVGFEPointLightElement
instance IsNode SVGFEPointLightElement
instance IsEventTarget SVGFEPointLightElement
instance IsGObject SVGFEPointLightElement where
  toGObject = GObject . castRef . unSVGFEPointLightElement
  unsafeCastGObject = SVGFEPointLightElement . castRef . unGObject

castToSVGFEPointLightElement :: IsGObject obj => obj -> SVGFEPointLightElement
castToSVGFEPointLightElement = castTo gTypeSVGFEPointLightElement "SVGFEPointLightElement"

foreign import javascript unsafe "window[\"SVGFEPointLightElement\"]" gTypeSVGFEPointLightElement' :: JSRef GType
gTypeSVGFEPointLightElement = GType gTypeSVGFEPointLightElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFESpecularLightingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement Mozilla SVGFESpecularLightingElement documentation>
newtype SVGFESpecularLightingElement = SVGFESpecularLightingElement (JSRef SVGFESpecularLightingElement) deriving (Eq)

unSVGFESpecularLightingElement (SVGFESpecularLightingElement o) = o

instance ToJSRef SVGFESpecularLightingElement where
  toJSRef = return . unSVGFESpecularLightingElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFESpecularLightingElement where
  fromJSRef = return . fmap SVGFESpecularLightingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFESpecularLightingElement
instance IsElement SVGFESpecularLightingElement
instance IsNode SVGFESpecularLightingElement
instance IsEventTarget SVGFESpecularLightingElement
instance IsGObject SVGFESpecularLightingElement where
  toGObject = GObject . castRef . unSVGFESpecularLightingElement
  unsafeCastGObject = SVGFESpecularLightingElement . castRef . unGObject

castToSVGFESpecularLightingElement :: IsGObject obj => obj -> SVGFESpecularLightingElement
castToSVGFESpecularLightingElement = castTo gTypeSVGFESpecularLightingElement "SVGFESpecularLightingElement"

foreign import javascript unsafe "window[\"SVGFESpecularLightingElement\"]" gTypeSVGFESpecularLightingElement' :: JSRef GType
gTypeSVGFESpecularLightingElement = GType gTypeSVGFESpecularLightingElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFESpotLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement Mozilla SVGFESpotLightElement documentation>
newtype SVGFESpotLightElement = SVGFESpotLightElement (JSRef SVGFESpotLightElement) deriving (Eq)

unSVGFESpotLightElement (SVGFESpotLightElement o) = o

instance ToJSRef SVGFESpotLightElement where
  toJSRef = return . unSVGFESpotLightElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFESpotLightElement where
  fromJSRef = return . fmap SVGFESpotLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFESpotLightElement
instance IsElement SVGFESpotLightElement
instance IsNode SVGFESpotLightElement
instance IsEventTarget SVGFESpotLightElement
instance IsGObject SVGFESpotLightElement where
  toGObject = GObject . castRef . unSVGFESpotLightElement
  unsafeCastGObject = SVGFESpotLightElement . castRef . unGObject

castToSVGFESpotLightElement :: IsGObject obj => obj -> SVGFESpotLightElement
castToSVGFESpotLightElement = castTo gTypeSVGFESpotLightElement "SVGFESpotLightElement"

foreign import javascript unsafe "window[\"SVGFESpotLightElement\"]" gTypeSVGFESpotLightElement' :: JSRef GType
gTypeSVGFESpotLightElement = GType gTypeSVGFESpotLightElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFETileElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETileElement Mozilla SVGFETileElement documentation>
newtype SVGFETileElement = SVGFETileElement (JSRef SVGFETileElement) deriving (Eq)

unSVGFETileElement (SVGFETileElement o) = o

instance ToJSRef SVGFETileElement where
  toJSRef = return . unSVGFETileElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFETileElement where
  fromJSRef = return . fmap SVGFETileElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFETileElement
instance IsElement SVGFETileElement
instance IsNode SVGFETileElement
instance IsEventTarget SVGFETileElement
instance IsGObject SVGFETileElement where
  toGObject = GObject . castRef . unSVGFETileElement
  unsafeCastGObject = SVGFETileElement . castRef . unGObject

castToSVGFETileElement :: IsGObject obj => obj -> SVGFETileElement
castToSVGFETileElement = castTo gTypeSVGFETileElement "SVGFETileElement"

foreign import javascript unsafe "window[\"SVGFETileElement\"]" gTypeSVGFETileElement' :: JSRef GType
gTypeSVGFETileElement = GType gTypeSVGFETileElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFETurbulenceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement Mozilla SVGFETurbulenceElement documentation>
newtype SVGFETurbulenceElement = SVGFETurbulenceElement (JSRef SVGFETurbulenceElement) deriving (Eq)

unSVGFETurbulenceElement (SVGFETurbulenceElement o) = o

instance ToJSRef SVGFETurbulenceElement where
  toJSRef = return . unSVGFETurbulenceElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFETurbulenceElement where
  fromJSRef = return . fmap SVGFETurbulenceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFETurbulenceElement
instance IsElement SVGFETurbulenceElement
instance IsNode SVGFETurbulenceElement
instance IsEventTarget SVGFETurbulenceElement
instance IsGObject SVGFETurbulenceElement where
  toGObject = GObject . castRef . unSVGFETurbulenceElement
  unsafeCastGObject = SVGFETurbulenceElement . castRef . unGObject

castToSVGFETurbulenceElement :: IsGObject obj => obj -> SVGFETurbulenceElement
castToSVGFETurbulenceElement = castTo gTypeSVGFETurbulenceElement "SVGFETurbulenceElement"

foreign import javascript unsafe "window[\"SVGFETurbulenceElement\"]" gTypeSVGFETurbulenceElement' :: JSRef GType
gTypeSVGFETurbulenceElement = GType gTypeSVGFETurbulenceElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFilterElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement Mozilla SVGFilterElement documentation>
newtype SVGFilterElement = SVGFilterElement (JSRef SVGFilterElement) deriving (Eq)

unSVGFilterElement (SVGFilterElement o) = o

instance ToJSRef SVGFilterElement where
  toJSRef = return . unSVGFilterElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFilterElement where
  fromJSRef = return . fmap SVGFilterElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFilterElement
instance IsElement SVGFilterElement
instance IsNode SVGFilterElement
instance IsEventTarget SVGFilterElement
instance IsGObject SVGFilterElement where
  toGObject = GObject . castRef . unSVGFilterElement
  unsafeCastGObject = SVGFilterElement . castRef . unGObject

castToSVGFilterElement :: IsGObject obj => obj -> SVGFilterElement
castToSVGFilterElement = castTo gTypeSVGFilterElement "SVGFilterElement"

foreign import javascript unsafe "window[\"SVGFilterElement\"]" gTypeSVGFilterElement' :: JSRef GType
gTypeSVGFilterElement = GType gTypeSVGFilterElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFilterPrimitiveStandardAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes Mozilla SVGFilterPrimitiveStandardAttributes documentation>
newtype SVGFilterPrimitiveStandardAttributes = SVGFilterPrimitiveStandardAttributes (JSRef SVGFilterPrimitiveStandardAttributes) deriving (Eq)

unSVGFilterPrimitiveStandardAttributes (SVGFilterPrimitiveStandardAttributes o) = o

instance ToJSRef SVGFilterPrimitiveStandardAttributes where
  toJSRef = return . unSVGFilterPrimitiveStandardAttributes
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFilterPrimitiveStandardAttributes where
  fromJSRef = return . fmap SVGFilterPrimitiveStandardAttributes . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGFilterPrimitiveStandardAttributes where
  toGObject = GObject . castRef . unSVGFilterPrimitiveStandardAttributes
  unsafeCastGObject = SVGFilterPrimitiveStandardAttributes . castRef . unGObject

castToSVGFilterPrimitiveStandardAttributes :: IsGObject obj => obj -> SVGFilterPrimitiveStandardAttributes
castToSVGFilterPrimitiveStandardAttributes = castTo gTypeSVGFilterPrimitiveStandardAttributes "SVGFilterPrimitiveStandardAttributes"

foreign import javascript unsafe "window[\"SVGFilterPrimitiveStandardAttributes\"]" gTypeSVGFilterPrimitiveStandardAttributes' :: JSRef GType
gTypeSVGFilterPrimitiveStandardAttributes = GType gTypeSVGFilterPrimitiveStandardAttributes'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFitToViewBox".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox Mozilla SVGFitToViewBox documentation>
newtype SVGFitToViewBox = SVGFitToViewBox (JSRef SVGFitToViewBox) deriving (Eq)

unSVGFitToViewBox (SVGFitToViewBox o) = o

instance ToJSRef SVGFitToViewBox where
  toJSRef = return . unSVGFitToViewBox
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFitToViewBox where
  fromJSRef = return . fmap SVGFitToViewBox . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGFitToViewBox where
  toGObject = GObject . castRef . unSVGFitToViewBox
  unsafeCastGObject = SVGFitToViewBox . castRef . unGObject

castToSVGFitToViewBox :: IsGObject obj => obj -> SVGFitToViewBox
castToSVGFitToViewBox = castTo gTypeSVGFitToViewBox "SVGFitToViewBox"

foreign import javascript unsafe "window[\"SVGFitToViewBox\"]" gTypeSVGFitToViewBox' :: JSRef GType
gTypeSVGFitToViewBox = GType gTypeSVGFitToViewBox'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontElement Mozilla SVGFontElement documentation>
newtype SVGFontElement = SVGFontElement (JSRef SVGFontElement) deriving (Eq)

unSVGFontElement (SVGFontElement o) = o

instance ToJSRef SVGFontElement where
  toJSRef = return . unSVGFontElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontElement where
  fromJSRef = return . fmap SVGFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontElement
instance IsElement SVGFontElement
instance IsNode SVGFontElement
instance IsEventTarget SVGFontElement
instance IsGObject SVGFontElement where
  toGObject = GObject . castRef . unSVGFontElement
  unsafeCastGObject = SVGFontElement . castRef . unGObject

castToSVGFontElement :: IsGObject obj => obj -> SVGFontElement
castToSVGFontElement = castTo gTypeSVGFontElement "SVGFontElement"

foreign import javascript unsafe "window[\"SVGFontElement\"]" gTypeSVGFontElement' :: JSRef GType
gTypeSVGFontElement = GType gTypeSVGFontElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceElement Mozilla SVGFontFaceElement documentation>
newtype SVGFontFaceElement = SVGFontFaceElement (JSRef SVGFontFaceElement) deriving (Eq)

unSVGFontFaceElement (SVGFontFaceElement o) = o

instance ToJSRef SVGFontFaceElement where
  toJSRef = return . unSVGFontFaceElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceElement where
  fromJSRef = return . fmap SVGFontFaceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontFaceElement
instance IsElement SVGFontFaceElement
instance IsNode SVGFontFaceElement
instance IsEventTarget SVGFontFaceElement
instance IsGObject SVGFontFaceElement where
  toGObject = GObject . castRef . unSVGFontFaceElement
  unsafeCastGObject = SVGFontFaceElement . castRef . unGObject

castToSVGFontFaceElement :: IsGObject obj => obj -> SVGFontFaceElement
castToSVGFontFaceElement = castTo gTypeSVGFontFaceElement "SVGFontFaceElement"

foreign import javascript unsafe "window[\"SVGFontFaceElement\"]" gTypeSVGFontFaceElement' :: JSRef GType
gTypeSVGFontFaceElement = GType gTypeSVGFontFaceElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceFormatElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceFormatElement Mozilla SVGFontFaceFormatElement documentation>
newtype SVGFontFaceFormatElement = SVGFontFaceFormatElement (JSRef SVGFontFaceFormatElement) deriving (Eq)

unSVGFontFaceFormatElement (SVGFontFaceFormatElement o) = o

instance ToJSRef SVGFontFaceFormatElement where
  toJSRef = return . unSVGFontFaceFormatElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceFormatElement where
  fromJSRef = return . fmap SVGFontFaceFormatElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontFaceFormatElement
instance IsElement SVGFontFaceFormatElement
instance IsNode SVGFontFaceFormatElement
instance IsEventTarget SVGFontFaceFormatElement
instance IsGObject SVGFontFaceFormatElement where
  toGObject = GObject . castRef . unSVGFontFaceFormatElement
  unsafeCastGObject = SVGFontFaceFormatElement . castRef . unGObject

castToSVGFontFaceFormatElement :: IsGObject obj => obj -> SVGFontFaceFormatElement
castToSVGFontFaceFormatElement = castTo gTypeSVGFontFaceFormatElement "SVGFontFaceFormatElement"

foreign import javascript unsafe "window[\"SVGFontFaceFormatElement\"]" gTypeSVGFontFaceFormatElement' :: JSRef GType
gTypeSVGFontFaceFormatElement = GType gTypeSVGFontFaceFormatElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceNameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceNameElement Mozilla SVGFontFaceNameElement documentation>
newtype SVGFontFaceNameElement = SVGFontFaceNameElement (JSRef SVGFontFaceNameElement) deriving (Eq)

unSVGFontFaceNameElement (SVGFontFaceNameElement o) = o

instance ToJSRef SVGFontFaceNameElement where
  toJSRef = return . unSVGFontFaceNameElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceNameElement where
  fromJSRef = return . fmap SVGFontFaceNameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontFaceNameElement
instance IsElement SVGFontFaceNameElement
instance IsNode SVGFontFaceNameElement
instance IsEventTarget SVGFontFaceNameElement
instance IsGObject SVGFontFaceNameElement where
  toGObject = GObject . castRef . unSVGFontFaceNameElement
  unsafeCastGObject = SVGFontFaceNameElement . castRef . unGObject

castToSVGFontFaceNameElement :: IsGObject obj => obj -> SVGFontFaceNameElement
castToSVGFontFaceNameElement = castTo gTypeSVGFontFaceNameElement "SVGFontFaceNameElement"

foreign import javascript unsafe "window[\"SVGFontFaceNameElement\"]" gTypeSVGFontFaceNameElement' :: JSRef GType
gTypeSVGFontFaceNameElement = GType gTypeSVGFontFaceNameElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceSrcElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceSrcElement Mozilla SVGFontFaceSrcElement documentation>
newtype SVGFontFaceSrcElement = SVGFontFaceSrcElement (JSRef SVGFontFaceSrcElement) deriving (Eq)

unSVGFontFaceSrcElement (SVGFontFaceSrcElement o) = o

instance ToJSRef SVGFontFaceSrcElement where
  toJSRef = return . unSVGFontFaceSrcElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceSrcElement where
  fromJSRef = return . fmap SVGFontFaceSrcElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontFaceSrcElement
instance IsElement SVGFontFaceSrcElement
instance IsNode SVGFontFaceSrcElement
instance IsEventTarget SVGFontFaceSrcElement
instance IsGObject SVGFontFaceSrcElement where
  toGObject = GObject . castRef . unSVGFontFaceSrcElement
  unsafeCastGObject = SVGFontFaceSrcElement . castRef . unGObject

castToSVGFontFaceSrcElement :: IsGObject obj => obj -> SVGFontFaceSrcElement
castToSVGFontFaceSrcElement = castTo gTypeSVGFontFaceSrcElement "SVGFontFaceSrcElement"

foreign import javascript unsafe "window[\"SVGFontFaceSrcElement\"]" gTypeSVGFontFaceSrcElement' :: JSRef GType
gTypeSVGFontFaceSrcElement = GType gTypeSVGFontFaceSrcElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceUriElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceUriElement Mozilla SVGFontFaceUriElement documentation>
newtype SVGFontFaceUriElement = SVGFontFaceUriElement (JSRef SVGFontFaceUriElement) deriving (Eq)

unSVGFontFaceUriElement (SVGFontFaceUriElement o) = o

instance ToJSRef SVGFontFaceUriElement where
  toJSRef = return . unSVGFontFaceUriElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGFontFaceUriElement where
  fromJSRef = return . fmap SVGFontFaceUriElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGFontFaceUriElement
instance IsElement SVGFontFaceUriElement
instance IsNode SVGFontFaceUriElement
instance IsEventTarget SVGFontFaceUriElement
instance IsGObject SVGFontFaceUriElement where
  toGObject = GObject . castRef . unSVGFontFaceUriElement
  unsafeCastGObject = SVGFontFaceUriElement . castRef . unGObject

castToSVGFontFaceUriElement :: IsGObject obj => obj -> SVGFontFaceUriElement
castToSVGFontFaceUriElement = castTo gTypeSVGFontFaceUriElement "SVGFontFaceUriElement"

foreign import javascript unsafe "window[\"SVGFontFaceUriElement\"]" gTypeSVGFontFaceUriElement' :: JSRef GType
gTypeSVGFontFaceUriElement = GType gTypeSVGFontFaceUriElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGForeignObjectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement Mozilla SVGForeignObjectElement documentation>
newtype SVGForeignObjectElement = SVGForeignObjectElement (JSRef SVGForeignObjectElement) deriving (Eq)

unSVGForeignObjectElement (SVGForeignObjectElement o) = o

instance ToJSRef SVGForeignObjectElement where
  toJSRef = return . unSVGForeignObjectElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGForeignObjectElement where
  fromJSRef = return . fmap SVGForeignObjectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGForeignObjectElement
instance IsSVGElement SVGForeignObjectElement
instance IsElement SVGForeignObjectElement
instance IsNode SVGForeignObjectElement
instance IsEventTarget SVGForeignObjectElement
instance IsGObject SVGForeignObjectElement where
  toGObject = GObject . castRef . unSVGForeignObjectElement
  unsafeCastGObject = SVGForeignObjectElement . castRef . unGObject

castToSVGForeignObjectElement :: IsGObject obj => obj -> SVGForeignObjectElement
castToSVGForeignObjectElement = castTo gTypeSVGForeignObjectElement "SVGForeignObjectElement"

foreign import javascript unsafe "window[\"SVGForeignObjectElement\"]" gTypeSVGForeignObjectElement' :: JSRef GType
gTypeSVGForeignObjectElement = GType gTypeSVGForeignObjectElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement Mozilla SVGGElement documentation>
newtype SVGGElement = SVGGElement (JSRef SVGGElement) deriving (Eq)

unSVGGElement (SVGGElement o) = o

instance ToJSRef SVGGElement where
  toJSRef = return . unSVGGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGElement where
  fromJSRef = return . fmap SVGGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGGElement
instance IsSVGElement SVGGElement
instance IsElement SVGGElement
instance IsNode SVGGElement
instance IsEventTarget SVGGElement
instance IsGObject SVGGElement where
  toGObject = GObject . castRef . unSVGGElement
  unsafeCastGObject = SVGGElement . castRef . unGObject

castToSVGGElement :: IsGObject obj => obj -> SVGGElement
castToSVGGElement = castTo gTypeSVGGElement "SVGGElement"

foreign import javascript unsafe "window[\"SVGGElement\"]" gTypeSVGGElement' :: JSRef GType
gTypeSVGGElement = GType gTypeSVGGElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGlyphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphElement Mozilla SVGGlyphElement documentation>
newtype SVGGlyphElement = SVGGlyphElement (JSRef SVGGlyphElement) deriving (Eq)

unSVGGlyphElement (SVGGlyphElement o) = o

instance ToJSRef SVGGlyphElement where
  toJSRef = return . unSVGGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGlyphElement where
  fromJSRef = return . fmap SVGGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGGlyphElement
instance IsElement SVGGlyphElement
instance IsNode SVGGlyphElement
instance IsEventTarget SVGGlyphElement
instance IsGObject SVGGlyphElement where
  toGObject = GObject . castRef . unSVGGlyphElement
  unsafeCastGObject = SVGGlyphElement . castRef . unGObject

castToSVGGlyphElement :: IsGObject obj => obj -> SVGGlyphElement
castToSVGGlyphElement = castTo gTypeSVGGlyphElement "SVGGlyphElement"

foreign import javascript unsafe "window[\"SVGGlyphElement\"]" gTypeSVGGlyphElement' :: JSRef GType
gTypeSVGGlyphElement = GType gTypeSVGGlyphElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGlyphRefElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement Mozilla SVGGlyphRefElement documentation>
newtype SVGGlyphRefElement = SVGGlyphRefElement (JSRef SVGGlyphRefElement) deriving (Eq)

unSVGGlyphRefElement (SVGGlyphRefElement o) = o

instance ToJSRef SVGGlyphRefElement where
  toJSRef = return . unSVGGlyphRefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGlyphRefElement where
  fromJSRef = return . fmap SVGGlyphRefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGGlyphRefElement
instance IsElement SVGGlyphRefElement
instance IsNode SVGGlyphRefElement
instance IsEventTarget SVGGlyphRefElement
instance IsGObject SVGGlyphRefElement where
  toGObject = GObject . castRef . unSVGGlyphRefElement
  unsafeCastGObject = SVGGlyphRefElement . castRef . unGObject

castToSVGGlyphRefElement :: IsGObject obj => obj -> SVGGlyphRefElement
castToSVGGlyphRefElement = castTo gTypeSVGGlyphRefElement "SVGGlyphRefElement"

foreign import javascript unsafe "window[\"SVGGlyphRefElement\"]" gTypeSVGGlyphRefElement' :: JSRef GType
gTypeSVGGlyphRefElement = GType gTypeSVGGlyphRefElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement Mozilla SVGGradientElement documentation>
newtype SVGGradientElement = SVGGradientElement (JSRef SVGGradientElement) deriving (Eq)

unSVGGradientElement (SVGGradientElement o) = o

instance ToJSRef SVGGradientElement where
  toJSRef = return . unSVGGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGradientElement where
  fromJSRef = return . fmap SVGGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGradientElement o
toSVGGradientElement :: IsSVGGradientElement o => o -> SVGGradientElement
toSVGGradientElement = unsafeCastGObject . toGObject

instance IsSVGGradientElement SVGGradientElement
instance IsSVGElement SVGGradientElement
instance IsElement SVGGradientElement
instance IsNode SVGGradientElement
instance IsEventTarget SVGGradientElement
instance IsGObject SVGGradientElement where
  toGObject = GObject . castRef . unSVGGradientElement
  unsafeCastGObject = SVGGradientElement . castRef . unGObject

castToSVGGradientElement :: IsGObject obj => obj -> SVGGradientElement
castToSVGGradientElement = castTo gTypeSVGGradientElement "SVGGradientElement"

foreign import javascript unsafe "window[\"SVGGradientElement\"]" gTypeSVGGradientElement' :: JSRef GType
gTypeSVGGradientElement = GType gTypeSVGGradientElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGraphicsElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement Mozilla SVGGraphicsElement documentation>
newtype SVGGraphicsElement = SVGGraphicsElement (JSRef SVGGraphicsElement) deriving (Eq)

unSVGGraphicsElement (SVGGraphicsElement o) = o

instance ToJSRef SVGGraphicsElement where
  toJSRef = return . unSVGGraphicsElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGGraphicsElement where
  fromJSRef = return . fmap SVGGraphicsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsSVGElement o => IsSVGGraphicsElement o
toSVGGraphicsElement :: IsSVGGraphicsElement o => o -> SVGGraphicsElement
toSVGGraphicsElement = unsafeCastGObject . toGObject

instance IsSVGGraphicsElement SVGGraphicsElement
instance IsSVGElement SVGGraphicsElement
instance IsElement SVGGraphicsElement
instance IsNode SVGGraphicsElement
instance IsEventTarget SVGGraphicsElement
instance IsGObject SVGGraphicsElement where
  toGObject = GObject . castRef . unSVGGraphicsElement
  unsafeCastGObject = SVGGraphicsElement . castRef . unGObject

castToSVGGraphicsElement :: IsGObject obj => obj -> SVGGraphicsElement
castToSVGGraphicsElement = castTo gTypeSVGGraphicsElement "SVGGraphicsElement"

foreign import javascript unsafe "window[\"SVGGraphicsElement\"]" gTypeSVGGraphicsElement' :: JSRef GType
gTypeSVGGraphicsElement = GType gTypeSVGGraphicsElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGHKernElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGHKernElement Mozilla SVGHKernElement documentation>
newtype SVGHKernElement = SVGHKernElement (JSRef SVGHKernElement) deriving (Eq)

unSVGHKernElement (SVGHKernElement o) = o

instance ToJSRef SVGHKernElement where
  toJSRef = return . unSVGHKernElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGHKernElement where
  fromJSRef = return . fmap SVGHKernElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGHKernElement
instance IsElement SVGHKernElement
instance IsNode SVGHKernElement
instance IsEventTarget SVGHKernElement
instance IsGObject SVGHKernElement where
  toGObject = GObject . castRef . unSVGHKernElement
  unsafeCastGObject = SVGHKernElement . castRef . unGObject

castToSVGHKernElement :: IsGObject obj => obj -> SVGHKernElement
castToSVGHKernElement = castTo gTypeSVGHKernElement "SVGHKernElement"

foreign import javascript unsafe "window[\"SVGHKernElement\"]" gTypeSVGHKernElement' :: JSRef GType
gTypeSVGHKernElement = GType gTypeSVGHKernElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement Mozilla SVGImageElement documentation>
newtype SVGImageElement = SVGImageElement (JSRef SVGImageElement) deriving (Eq)

unSVGImageElement (SVGImageElement o) = o

instance ToJSRef SVGImageElement where
  toJSRef = return . unSVGImageElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGImageElement where
  fromJSRef = return . fmap SVGImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGImageElement
instance IsSVGElement SVGImageElement
instance IsElement SVGImageElement
instance IsNode SVGImageElement
instance IsEventTarget SVGImageElement
instance IsGObject SVGImageElement where
  toGObject = GObject . castRef . unSVGImageElement
  unsafeCastGObject = SVGImageElement . castRef . unGObject

castToSVGImageElement :: IsGObject obj => obj -> SVGImageElement
castToSVGImageElement = castTo gTypeSVGImageElement "SVGImageElement"

foreign import javascript unsafe "window[\"SVGImageElement\"]" gTypeSVGImageElement' :: JSRef GType
gTypeSVGImageElement = GType gTypeSVGImageElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength Mozilla SVGLength documentation>
newtype SVGLength = SVGLength (JSRef SVGLength) deriving (Eq)

unSVGLength (SVGLength o) = o

instance ToJSRef SVGLength where
  toJSRef = return . unSVGLength
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLength where
  fromJSRef = return . fmap SVGLength . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGLength where
  toGObject = GObject . castRef . unSVGLength
  unsafeCastGObject = SVGLength . castRef . unGObject

castToSVGLength :: IsGObject obj => obj -> SVGLength
castToSVGLength = castTo gTypeSVGLength "SVGLength"

foreign import javascript unsafe "window[\"SVGLength\"]" gTypeSVGLength' :: JSRef GType
gTypeSVGLength = GType gTypeSVGLength'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList Mozilla SVGLengthList documentation>
newtype SVGLengthList = SVGLengthList (JSRef SVGLengthList) deriving (Eq)

unSVGLengthList (SVGLengthList o) = o

instance ToJSRef SVGLengthList where
  toJSRef = return . unSVGLengthList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLengthList where
  fromJSRef = return . fmap SVGLengthList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGLengthList where
  toGObject = GObject . castRef . unSVGLengthList
  unsafeCastGObject = SVGLengthList . castRef . unGObject

castToSVGLengthList :: IsGObject obj => obj -> SVGLengthList
castToSVGLengthList = castTo gTypeSVGLengthList "SVGLengthList"

foreign import javascript unsafe "window[\"SVGLengthList\"]" gTypeSVGLengthList' :: JSRef GType
gTypeSVGLengthList = GType gTypeSVGLengthList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLineElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement Mozilla SVGLineElement documentation>
newtype SVGLineElement = SVGLineElement (JSRef SVGLineElement) deriving (Eq)

unSVGLineElement (SVGLineElement o) = o

instance ToJSRef SVGLineElement where
  toJSRef = return . unSVGLineElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLineElement where
  fromJSRef = return . fmap SVGLineElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGLineElement
instance IsSVGElement SVGLineElement
instance IsElement SVGLineElement
instance IsNode SVGLineElement
instance IsEventTarget SVGLineElement
instance IsGObject SVGLineElement where
  toGObject = GObject . castRef . unSVGLineElement
  unsafeCastGObject = SVGLineElement . castRef . unGObject

castToSVGLineElement :: IsGObject obj => obj -> SVGLineElement
castToSVGLineElement = castTo gTypeSVGLineElement "SVGLineElement"

foreign import javascript unsafe "window[\"SVGLineElement\"]" gTypeSVGLineElement' :: JSRef GType
gTypeSVGLineElement = GType gTypeSVGLineElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLinearGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGradientElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement Mozilla SVGLinearGradientElement documentation>
newtype SVGLinearGradientElement = SVGLinearGradientElement (JSRef SVGLinearGradientElement) deriving (Eq)

unSVGLinearGradientElement (SVGLinearGradientElement o) = o

instance ToJSRef SVGLinearGradientElement where
  toJSRef = return . unSVGLinearGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGLinearGradientElement where
  fromJSRef = return . fmap SVGLinearGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGradientElement SVGLinearGradientElement
instance IsSVGElement SVGLinearGradientElement
instance IsElement SVGLinearGradientElement
instance IsNode SVGLinearGradientElement
instance IsEventTarget SVGLinearGradientElement
instance IsGObject SVGLinearGradientElement where
  toGObject = GObject . castRef . unSVGLinearGradientElement
  unsafeCastGObject = SVGLinearGradientElement . castRef . unGObject

castToSVGLinearGradientElement :: IsGObject obj => obj -> SVGLinearGradientElement
castToSVGLinearGradientElement = castTo gTypeSVGLinearGradientElement "SVGLinearGradientElement"

foreign import javascript unsafe "window[\"SVGLinearGradientElement\"]" gTypeSVGLinearGradientElement' :: JSRef GType
gTypeSVGLinearGradientElement = GType gTypeSVGLinearGradientElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMPathElement Mozilla SVGMPathElement documentation>
newtype SVGMPathElement = SVGMPathElement (JSRef SVGMPathElement) deriving (Eq)

unSVGMPathElement (SVGMPathElement o) = o

instance ToJSRef SVGMPathElement where
  toJSRef = return . unSVGMPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMPathElement where
  fromJSRef = return . fmap SVGMPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGMPathElement
instance IsElement SVGMPathElement
instance IsNode SVGMPathElement
instance IsEventTarget SVGMPathElement
instance IsGObject SVGMPathElement where
  toGObject = GObject . castRef . unSVGMPathElement
  unsafeCastGObject = SVGMPathElement . castRef . unGObject

castToSVGMPathElement :: IsGObject obj => obj -> SVGMPathElement
castToSVGMPathElement = castTo gTypeSVGMPathElement "SVGMPathElement"

foreign import javascript unsafe "window[\"SVGMPathElement\"]" gTypeSVGMPathElement' :: JSRef GType
gTypeSVGMPathElement = GType gTypeSVGMPathElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMarkerElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement Mozilla SVGMarkerElement documentation>
newtype SVGMarkerElement = SVGMarkerElement (JSRef SVGMarkerElement) deriving (Eq)

unSVGMarkerElement (SVGMarkerElement o) = o

instance ToJSRef SVGMarkerElement where
  toJSRef = return . unSVGMarkerElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMarkerElement where
  fromJSRef = return . fmap SVGMarkerElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGMarkerElement
instance IsElement SVGMarkerElement
instance IsNode SVGMarkerElement
instance IsEventTarget SVGMarkerElement
instance IsGObject SVGMarkerElement where
  toGObject = GObject . castRef . unSVGMarkerElement
  unsafeCastGObject = SVGMarkerElement . castRef . unGObject

castToSVGMarkerElement :: IsGObject obj => obj -> SVGMarkerElement
castToSVGMarkerElement = castTo gTypeSVGMarkerElement "SVGMarkerElement"

foreign import javascript unsafe "window[\"SVGMarkerElement\"]" gTypeSVGMarkerElement' :: JSRef GType
gTypeSVGMarkerElement = GType gTypeSVGMarkerElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMaskElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement Mozilla SVGMaskElement documentation>
newtype SVGMaskElement = SVGMaskElement (JSRef SVGMaskElement) deriving (Eq)

unSVGMaskElement (SVGMaskElement o) = o

instance ToJSRef SVGMaskElement where
  toJSRef = return . unSVGMaskElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMaskElement where
  fromJSRef = return . fmap SVGMaskElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGMaskElement
instance IsElement SVGMaskElement
instance IsNode SVGMaskElement
instance IsEventTarget SVGMaskElement
instance IsGObject SVGMaskElement where
  toGObject = GObject . castRef . unSVGMaskElement
  unsafeCastGObject = SVGMaskElement . castRef . unGObject

castToSVGMaskElement :: IsGObject obj => obj -> SVGMaskElement
castToSVGMaskElement = castTo gTypeSVGMaskElement "SVGMaskElement"

foreign import javascript unsafe "window[\"SVGMaskElement\"]" gTypeSVGMaskElement' :: JSRef GType
gTypeSVGMaskElement = GType gTypeSVGMaskElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix Mozilla SVGMatrix documentation>
newtype SVGMatrix = SVGMatrix (JSRef SVGMatrix) deriving (Eq)

unSVGMatrix (SVGMatrix o) = o

instance ToJSRef SVGMatrix where
  toJSRef = return . unSVGMatrix
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMatrix where
  fromJSRef = return . fmap SVGMatrix . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGMatrix where
  toGObject = GObject . castRef . unSVGMatrix
  unsafeCastGObject = SVGMatrix . castRef . unGObject

castToSVGMatrix :: IsGObject obj => obj -> SVGMatrix
castToSVGMatrix = castTo gTypeSVGMatrix "SVGMatrix"

foreign import javascript unsafe "window[\"SVGMatrix\"]" gTypeSVGMatrix' :: JSRef GType
gTypeSVGMatrix = GType gTypeSVGMatrix'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMetadataElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement Mozilla SVGMetadataElement documentation>
newtype SVGMetadataElement = SVGMetadataElement (JSRef SVGMetadataElement) deriving (Eq)

unSVGMetadataElement (SVGMetadataElement o) = o

instance ToJSRef SVGMetadataElement where
  toJSRef = return . unSVGMetadataElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMetadataElement where
  fromJSRef = return . fmap SVGMetadataElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGMetadataElement
instance IsElement SVGMetadataElement
instance IsNode SVGMetadataElement
instance IsEventTarget SVGMetadataElement
instance IsGObject SVGMetadataElement where
  toGObject = GObject . castRef . unSVGMetadataElement
  unsafeCastGObject = SVGMetadataElement . castRef . unGObject

castToSVGMetadataElement :: IsGObject obj => obj -> SVGMetadataElement
castToSVGMetadataElement = castTo gTypeSVGMetadataElement "SVGMetadataElement"

foreign import javascript unsafe "window[\"SVGMetadataElement\"]" gTypeSVGMetadataElement' :: JSRef GType
gTypeSVGMetadataElement = GType gTypeSVGMetadataElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMissingGlyphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMissingGlyphElement Mozilla SVGMissingGlyphElement documentation>
newtype SVGMissingGlyphElement = SVGMissingGlyphElement (JSRef SVGMissingGlyphElement) deriving (Eq)

unSVGMissingGlyphElement (SVGMissingGlyphElement o) = o

instance ToJSRef SVGMissingGlyphElement where
  toJSRef = return . unSVGMissingGlyphElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGMissingGlyphElement where
  fromJSRef = return . fmap SVGMissingGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGMissingGlyphElement
instance IsElement SVGMissingGlyphElement
instance IsNode SVGMissingGlyphElement
instance IsEventTarget SVGMissingGlyphElement
instance IsGObject SVGMissingGlyphElement where
  toGObject = GObject . castRef . unSVGMissingGlyphElement
  unsafeCastGObject = SVGMissingGlyphElement . castRef . unGObject

castToSVGMissingGlyphElement :: IsGObject obj => obj -> SVGMissingGlyphElement
castToSVGMissingGlyphElement = castTo gTypeSVGMissingGlyphElement "SVGMissingGlyphElement"

foreign import javascript unsafe "window[\"SVGMissingGlyphElement\"]" gTypeSVGMissingGlyphElement' :: JSRef GType
gTypeSVGMissingGlyphElement = GType gTypeSVGMissingGlyphElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber Mozilla SVGNumber documentation>
newtype SVGNumber = SVGNumber (JSRef SVGNumber) deriving (Eq)

unSVGNumber (SVGNumber o) = o

instance ToJSRef SVGNumber where
  toJSRef = return . unSVGNumber
  {-# INLINE toJSRef #-}

instance FromJSRef SVGNumber where
  fromJSRef = return . fmap SVGNumber . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGNumber where
  toGObject = GObject . castRef . unSVGNumber
  unsafeCastGObject = SVGNumber . castRef . unGObject

castToSVGNumber :: IsGObject obj => obj -> SVGNumber
castToSVGNumber = castTo gTypeSVGNumber "SVGNumber"

foreign import javascript unsafe "window[\"SVGNumber\"]" gTypeSVGNumber' :: JSRef GType
gTypeSVGNumber = GType gTypeSVGNumber'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList Mozilla SVGNumberList documentation>
newtype SVGNumberList = SVGNumberList (JSRef SVGNumberList) deriving (Eq)

unSVGNumberList (SVGNumberList o) = o

instance ToJSRef SVGNumberList where
  toJSRef = return . unSVGNumberList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGNumberList where
  fromJSRef = return . fmap SVGNumberList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGNumberList where
  toGObject = GObject . castRef . unSVGNumberList
  unsafeCastGObject = SVGNumberList . castRef . unGObject

castToSVGNumberList :: IsGObject obj => obj -> SVGNumberList
castToSVGNumberList = castTo gTypeSVGNumberList "SVGNumberList"

foreign import javascript unsafe "window[\"SVGNumberList\"]" gTypeSVGNumberList' :: JSRef GType
gTypeSVGNumberList = GType gTypeSVGNumberList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPaint".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGColor"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint Mozilla SVGPaint documentation>
newtype SVGPaint = SVGPaint (JSRef SVGPaint) deriving (Eq)

unSVGPaint (SVGPaint o) = o

instance ToJSRef SVGPaint where
  toJSRef = return . unSVGPaint
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPaint where
  fromJSRef = return . fmap SVGPaint . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGColor SVGPaint
instance IsCSSValue SVGPaint
instance IsGObject SVGPaint where
  toGObject = GObject . castRef . unSVGPaint
  unsafeCastGObject = SVGPaint . castRef . unGObject

castToSVGPaint :: IsGObject obj => obj -> SVGPaint
castToSVGPaint = castTo gTypeSVGPaint "SVGPaint"

foreign import javascript unsafe "window[\"SVGPaint\"]" gTypeSVGPaint' :: JSRef GType
gTypeSVGPaint = GType gTypeSVGPaint'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement Mozilla SVGPathElement documentation>
newtype SVGPathElement = SVGPathElement (JSRef SVGPathElement) deriving (Eq)

unSVGPathElement (SVGPathElement o) = o

instance ToJSRef SVGPathElement where
  toJSRef = return . unSVGPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathElement where
  fromJSRef = return . fmap SVGPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGPathElement
instance IsSVGElement SVGPathElement
instance IsElement SVGPathElement
instance IsNode SVGPathElement
instance IsEventTarget SVGPathElement
instance IsGObject SVGPathElement where
  toGObject = GObject . castRef . unSVGPathElement
  unsafeCastGObject = SVGPathElement . castRef . unGObject

castToSVGPathElement :: IsGObject obj => obj -> SVGPathElement
castToSVGPathElement = castTo gTypeSVGPathElement "SVGPathElement"

foreign import javascript unsafe "window[\"SVGPathElement\"]" gTypeSVGPathElement' :: JSRef GType
gTypeSVGPathElement = GType gTypeSVGPathElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSeg".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg Mozilla SVGPathSeg documentation>
newtype SVGPathSeg = SVGPathSeg (JSRef SVGPathSeg) deriving (Eq)

unSVGPathSeg (SVGPathSeg o) = o

instance ToJSRef SVGPathSeg where
  toJSRef = return . unSVGPathSeg
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSeg where
  fromJSRef = return . fmap SVGPathSeg . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsSVGPathSeg o
toSVGPathSeg :: IsSVGPathSeg o => o -> SVGPathSeg
toSVGPathSeg = unsafeCastGObject . toGObject

instance IsSVGPathSeg SVGPathSeg
instance IsGObject SVGPathSeg where
  toGObject = GObject . castRef . unSVGPathSeg
  unsafeCastGObject = SVGPathSeg . castRef . unGObject

castToSVGPathSeg :: IsGObject obj => obj -> SVGPathSeg
castToSVGPathSeg = castTo gTypeSVGPathSeg "SVGPathSeg"

foreign import javascript unsafe "window[\"SVGPathSeg\"]" gTypeSVGPathSeg' :: JSRef GType
gTypeSVGPathSeg = GType gTypeSVGPathSeg'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegArcAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs Mozilla SVGPathSegArcAbs documentation>
newtype SVGPathSegArcAbs = SVGPathSegArcAbs (JSRef SVGPathSegArcAbs) deriving (Eq)

unSVGPathSegArcAbs (SVGPathSegArcAbs o) = o

instance ToJSRef SVGPathSegArcAbs where
  toJSRef = return . unSVGPathSegArcAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegArcAbs where
  fromJSRef = return . fmap SVGPathSegArcAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegArcAbs
instance IsGObject SVGPathSegArcAbs where
  toGObject = GObject . castRef . unSVGPathSegArcAbs
  unsafeCastGObject = SVGPathSegArcAbs . castRef . unGObject

castToSVGPathSegArcAbs :: IsGObject obj => obj -> SVGPathSegArcAbs
castToSVGPathSegArcAbs = castTo gTypeSVGPathSegArcAbs "SVGPathSegArcAbs"

foreign import javascript unsafe "window[\"SVGPathSegArcAbs\"]" gTypeSVGPathSegArcAbs' :: JSRef GType
gTypeSVGPathSegArcAbs = GType gTypeSVGPathSegArcAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegArcRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel Mozilla SVGPathSegArcRel documentation>
newtype SVGPathSegArcRel = SVGPathSegArcRel (JSRef SVGPathSegArcRel) deriving (Eq)

unSVGPathSegArcRel (SVGPathSegArcRel o) = o

instance ToJSRef SVGPathSegArcRel where
  toJSRef = return . unSVGPathSegArcRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegArcRel where
  fromJSRef = return . fmap SVGPathSegArcRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegArcRel
instance IsGObject SVGPathSegArcRel where
  toGObject = GObject . castRef . unSVGPathSegArcRel
  unsafeCastGObject = SVGPathSegArcRel . castRef . unGObject

castToSVGPathSegArcRel :: IsGObject obj => obj -> SVGPathSegArcRel
castToSVGPathSegArcRel = castTo gTypeSVGPathSegArcRel "SVGPathSegArcRel"

foreign import javascript unsafe "window[\"SVGPathSegArcRel\"]" gTypeSVGPathSegArcRel' :: JSRef GType
gTypeSVGPathSegArcRel = GType gTypeSVGPathSegArcRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegClosePath".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegClosePath Mozilla SVGPathSegClosePath documentation>
newtype SVGPathSegClosePath = SVGPathSegClosePath (JSRef SVGPathSegClosePath) deriving (Eq)

unSVGPathSegClosePath (SVGPathSegClosePath o) = o

instance ToJSRef SVGPathSegClosePath where
  toJSRef = return . unSVGPathSegClosePath
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegClosePath where
  fromJSRef = return . fmap SVGPathSegClosePath . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegClosePath
instance IsGObject SVGPathSegClosePath where
  toGObject = GObject . castRef . unSVGPathSegClosePath
  unsafeCastGObject = SVGPathSegClosePath . castRef . unGObject

castToSVGPathSegClosePath :: IsGObject obj => obj -> SVGPathSegClosePath
castToSVGPathSegClosePath = castTo gTypeSVGPathSegClosePath "SVGPathSegClosePath"

foreign import javascript unsafe "window[\"SVGPathSegClosePath\"]" gTypeSVGPathSegClosePath' :: JSRef GType
gTypeSVGPathSegClosePath = GType gTypeSVGPathSegClosePath'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs Mozilla SVGPathSegCurvetoCubicAbs documentation>
newtype SVGPathSegCurvetoCubicAbs = SVGPathSegCurvetoCubicAbs (JSRef SVGPathSegCurvetoCubicAbs) deriving (Eq)

unSVGPathSegCurvetoCubicAbs (SVGPathSegCurvetoCubicAbs o) = o

instance ToJSRef SVGPathSegCurvetoCubicAbs where
  toJSRef = return . unSVGPathSegCurvetoCubicAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicAbs
instance IsGObject SVGPathSegCurvetoCubicAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicAbs
  unsafeCastGObject = SVGPathSegCurvetoCubicAbs . castRef . unGObject

castToSVGPathSegCurvetoCubicAbs :: IsGObject obj => obj -> SVGPathSegCurvetoCubicAbs
castToSVGPathSegCurvetoCubicAbs = castTo gTypeSVGPathSegCurvetoCubicAbs "SVGPathSegCurvetoCubicAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicAbs\"]" gTypeSVGPathSegCurvetoCubicAbs' :: JSRef GType
gTypeSVGPathSegCurvetoCubicAbs = GType gTypeSVGPathSegCurvetoCubicAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel Mozilla SVGPathSegCurvetoCubicRel documentation>
newtype SVGPathSegCurvetoCubicRel = SVGPathSegCurvetoCubicRel (JSRef SVGPathSegCurvetoCubicRel) deriving (Eq)

unSVGPathSegCurvetoCubicRel (SVGPathSegCurvetoCubicRel o) = o

instance ToJSRef SVGPathSegCurvetoCubicRel where
  toJSRef = return . unSVGPathSegCurvetoCubicRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicRel where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicRel
instance IsGObject SVGPathSegCurvetoCubicRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicRel
  unsafeCastGObject = SVGPathSegCurvetoCubicRel . castRef . unGObject

castToSVGPathSegCurvetoCubicRel :: IsGObject obj => obj -> SVGPathSegCurvetoCubicRel
castToSVGPathSegCurvetoCubicRel = castTo gTypeSVGPathSegCurvetoCubicRel "SVGPathSegCurvetoCubicRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicRel\"]" gTypeSVGPathSegCurvetoCubicRel' :: JSRef GType
gTypeSVGPathSegCurvetoCubicRel = GType gTypeSVGPathSegCurvetoCubicRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathSegCurvetoCubicSmoothAbs documentation>
newtype SVGPathSegCurvetoCubicSmoothAbs = SVGPathSegCurvetoCubicSmoothAbs (JSRef SVGPathSegCurvetoCubicSmoothAbs) deriving (Eq)

unSVGPathSegCurvetoCubicSmoothAbs (SVGPathSegCurvetoCubicSmoothAbs o) = o

instance ToJSRef SVGPathSegCurvetoCubicSmoothAbs where
  toJSRef = return . unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicSmoothAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicSmoothAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothAbs
instance IsGObject SVGPathSegCurvetoCubicSmoothAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicSmoothAbs
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothAbs . castRef . unGObject

castToSVGPathSegCurvetoCubicSmoothAbs :: IsGObject obj => obj -> SVGPathSegCurvetoCubicSmoothAbs
castToSVGPathSegCurvetoCubicSmoothAbs = castTo gTypeSVGPathSegCurvetoCubicSmoothAbs "SVGPathSegCurvetoCubicSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothAbs\"]" gTypeSVGPathSegCurvetoCubicSmoothAbs' :: JSRef GType
gTypeSVGPathSegCurvetoCubicSmoothAbs = GType gTypeSVGPathSegCurvetoCubicSmoothAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicSmoothRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathSegCurvetoCubicSmoothRel documentation>
newtype SVGPathSegCurvetoCubicSmoothRel = SVGPathSegCurvetoCubicSmoothRel (JSRef SVGPathSegCurvetoCubicSmoothRel) deriving (Eq)

unSVGPathSegCurvetoCubicSmoothRel (SVGPathSegCurvetoCubicSmoothRel o) = o

instance ToJSRef SVGPathSegCurvetoCubicSmoothRel where
  toJSRef = return . unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoCubicSmoothRel where
  fromJSRef = return . fmap SVGPathSegCurvetoCubicSmoothRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothRel
instance IsGObject SVGPathSegCurvetoCubicSmoothRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoCubicSmoothRel
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothRel . castRef . unGObject

castToSVGPathSegCurvetoCubicSmoothRel :: IsGObject obj => obj -> SVGPathSegCurvetoCubicSmoothRel
castToSVGPathSegCurvetoCubicSmoothRel = castTo gTypeSVGPathSegCurvetoCubicSmoothRel "SVGPathSegCurvetoCubicSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothRel\"]" gTypeSVGPathSegCurvetoCubicSmoothRel' :: JSRef GType
gTypeSVGPathSegCurvetoCubicSmoothRel = GType gTypeSVGPathSegCurvetoCubicSmoothRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs Mozilla SVGPathSegCurvetoQuadraticAbs documentation>
newtype SVGPathSegCurvetoQuadraticAbs = SVGPathSegCurvetoQuadraticAbs (JSRef SVGPathSegCurvetoQuadraticAbs) deriving (Eq)

unSVGPathSegCurvetoQuadraticAbs (SVGPathSegCurvetoQuadraticAbs o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticAbs where
  toJSRef = return . unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticAbs
instance IsGObject SVGPathSegCurvetoQuadraticAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticAbs
  unsafeCastGObject = SVGPathSegCurvetoQuadraticAbs . castRef . unGObject

castToSVGPathSegCurvetoQuadraticAbs :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticAbs
castToSVGPathSegCurvetoQuadraticAbs = castTo gTypeSVGPathSegCurvetoQuadraticAbs "SVGPathSegCurvetoQuadraticAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticAbs\"]" gTypeSVGPathSegCurvetoQuadraticAbs' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticAbs = GType gTypeSVGPathSegCurvetoQuadraticAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel Mozilla SVGPathSegCurvetoQuadraticRel documentation>
newtype SVGPathSegCurvetoQuadraticRel = SVGPathSegCurvetoQuadraticRel (JSRef SVGPathSegCurvetoQuadraticRel) deriving (Eq)

unSVGPathSegCurvetoQuadraticRel (SVGPathSegCurvetoQuadraticRel o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticRel where
  toJSRef = return . unSVGPathSegCurvetoQuadraticRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticRel where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticRel
instance IsGObject SVGPathSegCurvetoQuadraticRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticRel
  unsafeCastGObject = SVGPathSegCurvetoQuadraticRel . castRef . unGObject

castToSVGPathSegCurvetoQuadraticRel :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticRel
castToSVGPathSegCurvetoQuadraticRel = castTo gTypeSVGPathSegCurvetoQuadraticRel "SVGPathSegCurvetoQuadraticRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticRel\"]" gTypeSVGPathSegCurvetoQuadraticRel' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticRel = GType gTypeSVGPathSegCurvetoQuadraticRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathSegCurvetoQuadraticSmoothAbs documentation>
newtype SVGPathSegCurvetoQuadraticSmoothAbs = SVGPathSegCurvetoQuadraticSmoothAbs (JSRef SVGPathSegCurvetoQuadraticSmoothAbs) deriving (Eq)

unSVGPathSegCurvetoQuadraticSmoothAbs (SVGPathSegCurvetoQuadraticSmoothAbs o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticSmoothAbs where
  toJSRef = return . unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticSmoothAbs where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticSmoothAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothAbs
instance IsGObject SVGPathSegCurvetoQuadraticSmoothAbs where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticSmoothAbs
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothAbs . castRef . unGObject

castToSVGPathSegCurvetoQuadraticSmoothAbs :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticSmoothAbs
castToSVGPathSegCurvetoQuadraticSmoothAbs = castTo gTypeSVGPathSegCurvetoQuadraticSmoothAbs "SVGPathSegCurvetoQuadraticSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothAbs\"]" gTypeSVGPathSegCurvetoQuadraticSmoothAbs' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticSmoothAbs = GType gTypeSVGPathSegCurvetoQuadraticSmoothAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathSegCurvetoQuadraticSmoothRel documentation>
newtype SVGPathSegCurvetoQuadraticSmoothRel = SVGPathSegCurvetoQuadraticSmoothRel (JSRef SVGPathSegCurvetoQuadraticSmoothRel) deriving (Eq)

unSVGPathSegCurvetoQuadraticSmoothRel (SVGPathSegCurvetoQuadraticSmoothRel o) = o

instance ToJSRef SVGPathSegCurvetoQuadraticSmoothRel where
  toJSRef = return . unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegCurvetoQuadraticSmoothRel where
  fromJSRef = return . fmap SVGPathSegCurvetoQuadraticSmoothRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothRel
instance IsGObject SVGPathSegCurvetoQuadraticSmoothRel where
  toGObject = GObject . castRef . unSVGPathSegCurvetoQuadraticSmoothRel
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothRel . castRef . unGObject

castToSVGPathSegCurvetoQuadraticSmoothRel :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticSmoothRel
castToSVGPathSegCurvetoQuadraticSmoothRel = castTo gTypeSVGPathSegCurvetoQuadraticSmoothRel "SVGPathSegCurvetoQuadraticSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothRel\"]" gTypeSVGPathSegCurvetoQuadraticSmoothRel' :: JSRef GType
gTypeSVGPathSegCurvetoQuadraticSmoothRel = GType gTypeSVGPathSegCurvetoQuadraticSmoothRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs Mozilla SVGPathSegLinetoAbs documentation>
newtype SVGPathSegLinetoAbs = SVGPathSegLinetoAbs (JSRef SVGPathSegLinetoAbs) deriving (Eq)

unSVGPathSegLinetoAbs (SVGPathSegLinetoAbs o) = o

instance ToJSRef SVGPathSegLinetoAbs where
  toJSRef = return . unSVGPathSegLinetoAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoAbs where
  fromJSRef = return . fmap SVGPathSegLinetoAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoAbs
instance IsGObject SVGPathSegLinetoAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoAbs
  unsafeCastGObject = SVGPathSegLinetoAbs . castRef . unGObject

castToSVGPathSegLinetoAbs :: IsGObject obj => obj -> SVGPathSegLinetoAbs
castToSVGPathSegLinetoAbs = castTo gTypeSVGPathSegLinetoAbs "SVGPathSegLinetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoAbs\"]" gTypeSVGPathSegLinetoAbs' :: JSRef GType
gTypeSVGPathSegLinetoAbs = GType gTypeSVGPathSegLinetoAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoHorizontalAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs Mozilla SVGPathSegLinetoHorizontalAbs documentation>
newtype SVGPathSegLinetoHorizontalAbs = SVGPathSegLinetoHorizontalAbs (JSRef SVGPathSegLinetoHorizontalAbs) deriving (Eq)

unSVGPathSegLinetoHorizontalAbs (SVGPathSegLinetoHorizontalAbs o) = o

instance ToJSRef SVGPathSegLinetoHorizontalAbs where
  toJSRef = return . unSVGPathSegLinetoHorizontalAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoHorizontalAbs where
  fromJSRef = return . fmap SVGPathSegLinetoHorizontalAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoHorizontalAbs
instance IsGObject SVGPathSegLinetoHorizontalAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoHorizontalAbs
  unsafeCastGObject = SVGPathSegLinetoHorizontalAbs . castRef . unGObject

castToSVGPathSegLinetoHorizontalAbs :: IsGObject obj => obj -> SVGPathSegLinetoHorizontalAbs
castToSVGPathSegLinetoHorizontalAbs = castTo gTypeSVGPathSegLinetoHorizontalAbs "SVGPathSegLinetoHorizontalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalAbs\"]" gTypeSVGPathSegLinetoHorizontalAbs' :: JSRef GType
gTypeSVGPathSegLinetoHorizontalAbs = GType gTypeSVGPathSegLinetoHorizontalAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoHorizontalRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel Mozilla SVGPathSegLinetoHorizontalRel documentation>
newtype SVGPathSegLinetoHorizontalRel = SVGPathSegLinetoHorizontalRel (JSRef SVGPathSegLinetoHorizontalRel) deriving (Eq)

unSVGPathSegLinetoHorizontalRel (SVGPathSegLinetoHorizontalRel o) = o

instance ToJSRef SVGPathSegLinetoHorizontalRel where
  toJSRef = return . unSVGPathSegLinetoHorizontalRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoHorizontalRel where
  fromJSRef = return . fmap SVGPathSegLinetoHorizontalRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoHorizontalRel
instance IsGObject SVGPathSegLinetoHorizontalRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoHorizontalRel
  unsafeCastGObject = SVGPathSegLinetoHorizontalRel . castRef . unGObject

castToSVGPathSegLinetoHorizontalRel :: IsGObject obj => obj -> SVGPathSegLinetoHorizontalRel
castToSVGPathSegLinetoHorizontalRel = castTo gTypeSVGPathSegLinetoHorizontalRel "SVGPathSegLinetoHorizontalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalRel\"]" gTypeSVGPathSegLinetoHorizontalRel' :: JSRef GType
gTypeSVGPathSegLinetoHorizontalRel = GType gTypeSVGPathSegLinetoHorizontalRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel Mozilla SVGPathSegLinetoRel documentation>
newtype SVGPathSegLinetoRel = SVGPathSegLinetoRel (JSRef SVGPathSegLinetoRel) deriving (Eq)

unSVGPathSegLinetoRel (SVGPathSegLinetoRel o) = o

instance ToJSRef SVGPathSegLinetoRel where
  toJSRef = return . unSVGPathSegLinetoRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoRel where
  fromJSRef = return . fmap SVGPathSegLinetoRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoRel
instance IsGObject SVGPathSegLinetoRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoRel
  unsafeCastGObject = SVGPathSegLinetoRel . castRef . unGObject

castToSVGPathSegLinetoRel :: IsGObject obj => obj -> SVGPathSegLinetoRel
castToSVGPathSegLinetoRel = castTo gTypeSVGPathSegLinetoRel "SVGPathSegLinetoRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoRel\"]" gTypeSVGPathSegLinetoRel' :: JSRef GType
gTypeSVGPathSegLinetoRel = GType gTypeSVGPathSegLinetoRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoVerticalAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs Mozilla SVGPathSegLinetoVerticalAbs documentation>
newtype SVGPathSegLinetoVerticalAbs = SVGPathSegLinetoVerticalAbs (JSRef SVGPathSegLinetoVerticalAbs) deriving (Eq)

unSVGPathSegLinetoVerticalAbs (SVGPathSegLinetoVerticalAbs o) = o

instance ToJSRef SVGPathSegLinetoVerticalAbs where
  toJSRef = return . unSVGPathSegLinetoVerticalAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoVerticalAbs where
  fromJSRef = return . fmap SVGPathSegLinetoVerticalAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoVerticalAbs
instance IsGObject SVGPathSegLinetoVerticalAbs where
  toGObject = GObject . castRef . unSVGPathSegLinetoVerticalAbs
  unsafeCastGObject = SVGPathSegLinetoVerticalAbs . castRef . unGObject

castToSVGPathSegLinetoVerticalAbs :: IsGObject obj => obj -> SVGPathSegLinetoVerticalAbs
castToSVGPathSegLinetoVerticalAbs = castTo gTypeSVGPathSegLinetoVerticalAbs "SVGPathSegLinetoVerticalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalAbs\"]" gTypeSVGPathSegLinetoVerticalAbs' :: JSRef GType
gTypeSVGPathSegLinetoVerticalAbs = GType gTypeSVGPathSegLinetoVerticalAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoVerticalRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel Mozilla SVGPathSegLinetoVerticalRel documentation>
newtype SVGPathSegLinetoVerticalRel = SVGPathSegLinetoVerticalRel (JSRef SVGPathSegLinetoVerticalRel) deriving (Eq)

unSVGPathSegLinetoVerticalRel (SVGPathSegLinetoVerticalRel o) = o

instance ToJSRef SVGPathSegLinetoVerticalRel where
  toJSRef = return . unSVGPathSegLinetoVerticalRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegLinetoVerticalRel where
  fromJSRef = return . fmap SVGPathSegLinetoVerticalRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegLinetoVerticalRel
instance IsGObject SVGPathSegLinetoVerticalRel where
  toGObject = GObject . castRef . unSVGPathSegLinetoVerticalRel
  unsafeCastGObject = SVGPathSegLinetoVerticalRel . castRef . unGObject

castToSVGPathSegLinetoVerticalRel :: IsGObject obj => obj -> SVGPathSegLinetoVerticalRel
castToSVGPathSegLinetoVerticalRel = castTo gTypeSVGPathSegLinetoVerticalRel "SVGPathSegLinetoVerticalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalRel\"]" gTypeSVGPathSegLinetoVerticalRel' :: JSRef GType
gTypeSVGPathSegLinetoVerticalRel = GType gTypeSVGPathSegLinetoVerticalRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList Mozilla SVGPathSegList documentation>
newtype SVGPathSegList = SVGPathSegList (JSRef SVGPathSegList) deriving (Eq)

unSVGPathSegList (SVGPathSegList o) = o

instance ToJSRef SVGPathSegList where
  toJSRef = return . unSVGPathSegList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegList where
  fromJSRef = return . fmap SVGPathSegList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGPathSegList where
  toGObject = GObject . castRef . unSVGPathSegList
  unsafeCastGObject = SVGPathSegList . castRef . unGObject

castToSVGPathSegList :: IsGObject obj => obj -> SVGPathSegList
castToSVGPathSegList = castTo gTypeSVGPathSegList "SVGPathSegList"

foreign import javascript unsafe "window[\"SVGPathSegList\"]" gTypeSVGPathSegList' :: JSRef GType
gTypeSVGPathSegList = GType gTypeSVGPathSegList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegMovetoAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs Mozilla SVGPathSegMovetoAbs documentation>
newtype SVGPathSegMovetoAbs = SVGPathSegMovetoAbs (JSRef SVGPathSegMovetoAbs) deriving (Eq)

unSVGPathSegMovetoAbs (SVGPathSegMovetoAbs o) = o

instance ToJSRef SVGPathSegMovetoAbs where
  toJSRef = return . unSVGPathSegMovetoAbs
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegMovetoAbs where
  fromJSRef = return . fmap SVGPathSegMovetoAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegMovetoAbs
instance IsGObject SVGPathSegMovetoAbs where
  toGObject = GObject . castRef . unSVGPathSegMovetoAbs
  unsafeCastGObject = SVGPathSegMovetoAbs . castRef . unGObject

castToSVGPathSegMovetoAbs :: IsGObject obj => obj -> SVGPathSegMovetoAbs
castToSVGPathSegMovetoAbs = castTo gTypeSVGPathSegMovetoAbs "SVGPathSegMovetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegMovetoAbs\"]" gTypeSVGPathSegMovetoAbs' :: JSRef GType
gTypeSVGPathSegMovetoAbs = GType gTypeSVGPathSegMovetoAbs'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegMovetoRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel Mozilla SVGPathSegMovetoRel documentation>
newtype SVGPathSegMovetoRel = SVGPathSegMovetoRel (JSRef SVGPathSegMovetoRel) deriving (Eq)

unSVGPathSegMovetoRel (SVGPathSegMovetoRel o) = o

instance ToJSRef SVGPathSegMovetoRel where
  toJSRef = return . unSVGPathSegMovetoRel
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPathSegMovetoRel where
  fromJSRef = return . fmap SVGPathSegMovetoRel . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGPathSeg SVGPathSegMovetoRel
instance IsGObject SVGPathSegMovetoRel where
  toGObject = GObject . castRef . unSVGPathSegMovetoRel
  unsafeCastGObject = SVGPathSegMovetoRel . castRef . unGObject

castToSVGPathSegMovetoRel :: IsGObject obj => obj -> SVGPathSegMovetoRel
castToSVGPathSegMovetoRel = castTo gTypeSVGPathSegMovetoRel "SVGPathSegMovetoRel"

foreign import javascript unsafe "window[\"SVGPathSegMovetoRel\"]" gTypeSVGPathSegMovetoRel' :: JSRef GType
gTypeSVGPathSegMovetoRel = GType gTypeSVGPathSegMovetoRel'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPatternElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement Mozilla SVGPatternElement documentation>
newtype SVGPatternElement = SVGPatternElement (JSRef SVGPatternElement) deriving (Eq)

unSVGPatternElement (SVGPatternElement o) = o

instance ToJSRef SVGPatternElement where
  toJSRef = return . unSVGPatternElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPatternElement where
  fromJSRef = return . fmap SVGPatternElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGPatternElement
instance IsElement SVGPatternElement
instance IsNode SVGPatternElement
instance IsEventTarget SVGPatternElement
instance IsGObject SVGPatternElement where
  toGObject = GObject . castRef . unSVGPatternElement
  unsafeCastGObject = SVGPatternElement . castRef . unGObject

castToSVGPatternElement :: IsGObject obj => obj -> SVGPatternElement
castToSVGPatternElement = castTo gTypeSVGPatternElement "SVGPatternElement"

foreign import javascript unsafe "window[\"SVGPatternElement\"]" gTypeSVGPatternElement' :: JSRef GType
gTypeSVGPatternElement = GType gTypeSVGPatternElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint Mozilla SVGPoint documentation>
newtype SVGPoint = SVGPoint (JSRef SVGPoint) deriving (Eq)

unSVGPoint (SVGPoint o) = o

instance ToJSRef SVGPoint where
  toJSRef = return . unSVGPoint
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPoint where
  fromJSRef = return . fmap SVGPoint . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGPoint where
  toGObject = GObject . castRef . unSVGPoint
  unsafeCastGObject = SVGPoint . castRef . unGObject

castToSVGPoint :: IsGObject obj => obj -> SVGPoint
castToSVGPoint = castTo gTypeSVGPoint "SVGPoint"

foreign import javascript unsafe "window[\"SVGPoint\"]" gTypeSVGPoint' :: JSRef GType
gTypeSVGPoint = GType gTypeSVGPoint'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPointList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList Mozilla SVGPointList documentation>
newtype SVGPointList = SVGPointList (JSRef SVGPointList) deriving (Eq)

unSVGPointList (SVGPointList o) = o

instance ToJSRef SVGPointList where
  toJSRef = return . unSVGPointList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPointList where
  fromJSRef = return . fmap SVGPointList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGPointList where
  toGObject = GObject . castRef . unSVGPointList
  unsafeCastGObject = SVGPointList . castRef . unGObject

castToSVGPointList :: IsGObject obj => obj -> SVGPointList
castToSVGPointList = castTo gTypeSVGPointList "SVGPointList"

foreign import javascript unsafe "window[\"SVGPointList\"]" gTypeSVGPointList' :: JSRef GType
gTypeSVGPointList = GType gTypeSVGPointList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPolygonElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement Mozilla SVGPolygonElement documentation>
newtype SVGPolygonElement = SVGPolygonElement (JSRef SVGPolygonElement) deriving (Eq)

unSVGPolygonElement (SVGPolygonElement o) = o

instance ToJSRef SVGPolygonElement where
  toJSRef = return . unSVGPolygonElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPolygonElement where
  fromJSRef = return . fmap SVGPolygonElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGPolygonElement
instance IsSVGElement SVGPolygonElement
instance IsElement SVGPolygonElement
instance IsNode SVGPolygonElement
instance IsEventTarget SVGPolygonElement
instance IsGObject SVGPolygonElement where
  toGObject = GObject . castRef . unSVGPolygonElement
  unsafeCastGObject = SVGPolygonElement . castRef . unGObject

castToSVGPolygonElement :: IsGObject obj => obj -> SVGPolygonElement
castToSVGPolygonElement = castTo gTypeSVGPolygonElement "SVGPolygonElement"

foreign import javascript unsafe "window[\"SVGPolygonElement\"]" gTypeSVGPolygonElement' :: JSRef GType
gTypeSVGPolygonElement = GType gTypeSVGPolygonElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPolylineElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement Mozilla SVGPolylineElement documentation>
newtype SVGPolylineElement = SVGPolylineElement (JSRef SVGPolylineElement) deriving (Eq)

unSVGPolylineElement (SVGPolylineElement o) = o

instance ToJSRef SVGPolylineElement where
  toJSRef = return . unSVGPolylineElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPolylineElement where
  fromJSRef = return . fmap SVGPolylineElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGPolylineElement
instance IsSVGElement SVGPolylineElement
instance IsElement SVGPolylineElement
instance IsNode SVGPolylineElement
instance IsEventTarget SVGPolylineElement
instance IsGObject SVGPolylineElement where
  toGObject = GObject . castRef . unSVGPolylineElement
  unsafeCastGObject = SVGPolylineElement . castRef . unGObject

castToSVGPolylineElement :: IsGObject obj => obj -> SVGPolylineElement
castToSVGPolylineElement = castTo gTypeSVGPolylineElement "SVGPolylineElement"

foreign import javascript unsafe "window[\"SVGPolylineElement\"]" gTypeSVGPolylineElement' :: JSRef GType
gTypeSVGPolylineElement = GType gTypeSVGPolylineElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio Mozilla SVGPreserveAspectRatio documentation>
newtype SVGPreserveAspectRatio = SVGPreserveAspectRatio (JSRef SVGPreserveAspectRatio) deriving (Eq)

unSVGPreserveAspectRatio (SVGPreserveAspectRatio o) = o

instance ToJSRef SVGPreserveAspectRatio where
  toJSRef = return . unSVGPreserveAspectRatio
  {-# INLINE toJSRef #-}

instance FromJSRef SVGPreserveAspectRatio where
  fromJSRef = return . fmap SVGPreserveAspectRatio . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGPreserveAspectRatio where
  toGObject = GObject . castRef . unSVGPreserveAspectRatio
  unsafeCastGObject = SVGPreserveAspectRatio . castRef . unGObject

castToSVGPreserveAspectRatio :: IsGObject obj => obj -> SVGPreserveAspectRatio
castToSVGPreserveAspectRatio = castTo gTypeSVGPreserveAspectRatio "SVGPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGPreserveAspectRatio\"]" gTypeSVGPreserveAspectRatio' :: JSRef GType
gTypeSVGPreserveAspectRatio = GType gTypeSVGPreserveAspectRatio'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRadialGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGradientElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement Mozilla SVGRadialGradientElement documentation>
newtype SVGRadialGradientElement = SVGRadialGradientElement (JSRef SVGRadialGradientElement) deriving (Eq)

unSVGRadialGradientElement (SVGRadialGradientElement o) = o

instance ToJSRef SVGRadialGradientElement where
  toJSRef = return . unSVGRadialGradientElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRadialGradientElement where
  fromJSRef = return . fmap SVGRadialGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGradientElement SVGRadialGradientElement
instance IsSVGElement SVGRadialGradientElement
instance IsElement SVGRadialGradientElement
instance IsNode SVGRadialGradientElement
instance IsEventTarget SVGRadialGradientElement
instance IsGObject SVGRadialGradientElement where
  toGObject = GObject . castRef . unSVGRadialGradientElement
  unsafeCastGObject = SVGRadialGradientElement . castRef . unGObject

castToSVGRadialGradientElement :: IsGObject obj => obj -> SVGRadialGradientElement
castToSVGRadialGradientElement = castTo gTypeSVGRadialGradientElement "SVGRadialGradientElement"

foreign import javascript unsafe "window[\"SVGRadialGradientElement\"]" gTypeSVGRadialGradientElement' :: JSRef GType
gTypeSVGRadialGradientElement = GType gTypeSVGRadialGradientElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect Mozilla SVGRect documentation>
newtype SVGRect = SVGRect (JSRef SVGRect) deriving (Eq)

unSVGRect (SVGRect o) = o

instance ToJSRef SVGRect where
  toJSRef = return . unSVGRect
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRect where
  fromJSRef = return . fmap SVGRect . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGRect where
  toGObject = GObject . castRef . unSVGRect
  unsafeCastGObject = SVGRect . castRef . unGObject

castToSVGRect :: IsGObject obj => obj -> SVGRect
castToSVGRect = castTo gTypeSVGRect "SVGRect"

foreign import javascript unsafe "window[\"SVGRect\"]" gTypeSVGRect' :: JSRef GType
gTypeSVGRect = GType gTypeSVGRect'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement Mozilla SVGRectElement documentation>
newtype SVGRectElement = SVGRectElement (JSRef SVGRectElement) deriving (Eq)

unSVGRectElement (SVGRectElement o) = o

instance ToJSRef SVGRectElement where
  toJSRef = return . unSVGRectElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRectElement where
  fromJSRef = return . fmap SVGRectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGRectElement
instance IsSVGElement SVGRectElement
instance IsElement SVGRectElement
instance IsNode SVGRectElement
instance IsEventTarget SVGRectElement
instance IsGObject SVGRectElement where
  toGObject = GObject . castRef . unSVGRectElement
  unsafeCastGObject = SVGRectElement . castRef . unGObject

castToSVGRectElement :: IsGObject obj => obj -> SVGRectElement
castToSVGRectElement = castTo gTypeSVGRectElement "SVGRectElement"

foreign import javascript unsafe "window[\"SVGRectElement\"]" gTypeSVGRectElement' :: JSRef GType
gTypeSVGRectElement = GType gTypeSVGRectElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRenderingIntent".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRenderingIntent Mozilla SVGRenderingIntent documentation>
newtype SVGRenderingIntent = SVGRenderingIntent (JSRef SVGRenderingIntent) deriving (Eq)

unSVGRenderingIntent (SVGRenderingIntent o) = o

instance ToJSRef SVGRenderingIntent where
  toJSRef = return . unSVGRenderingIntent
  {-# INLINE toJSRef #-}

instance FromJSRef SVGRenderingIntent where
  fromJSRef = return . fmap SVGRenderingIntent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGRenderingIntent where
  toGObject = GObject . castRef . unSVGRenderingIntent
  unsafeCastGObject = SVGRenderingIntent . castRef . unGObject

castToSVGRenderingIntent :: IsGObject obj => obj -> SVGRenderingIntent
castToSVGRenderingIntent = castTo gTypeSVGRenderingIntent "SVGRenderingIntent"

foreign import javascript unsafe "window[\"SVGRenderingIntent\"]" gTypeSVGRenderingIntent' :: JSRef GType
gTypeSVGRenderingIntent = GType gTypeSVGRenderingIntent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSVGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement Mozilla SVGSVGElement documentation>
newtype SVGSVGElement = SVGSVGElement (JSRef SVGSVGElement) deriving (Eq)

unSVGSVGElement (SVGSVGElement o) = o

instance ToJSRef SVGSVGElement where
  toJSRef = return . unSVGSVGElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSVGElement where
  fromJSRef = return . fmap SVGSVGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGSVGElement
instance IsSVGElement SVGSVGElement
instance IsElement SVGSVGElement
instance IsNode SVGSVGElement
instance IsEventTarget SVGSVGElement
instance IsGObject SVGSVGElement where
  toGObject = GObject . castRef . unSVGSVGElement
  unsafeCastGObject = SVGSVGElement . castRef . unGObject

castToSVGSVGElement :: IsGObject obj => obj -> SVGSVGElement
castToSVGSVGElement = castTo gTypeSVGSVGElement "SVGSVGElement"

foreign import javascript unsafe "window[\"SVGSVGElement\"]" gTypeSVGSVGElement' :: JSRef GType
gTypeSVGSVGElement = GType gTypeSVGSVGElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGScriptElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement Mozilla SVGScriptElement documentation>
newtype SVGScriptElement = SVGScriptElement (JSRef SVGScriptElement) deriving (Eq)

unSVGScriptElement (SVGScriptElement o) = o

instance ToJSRef SVGScriptElement where
  toJSRef = return . unSVGScriptElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGScriptElement where
  fromJSRef = return . fmap SVGScriptElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGScriptElement
instance IsElement SVGScriptElement
instance IsNode SVGScriptElement
instance IsEventTarget SVGScriptElement
instance IsGObject SVGScriptElement where
  toGObject = GObject . castRef . unSVGScriptElement
  unsafeCastGObject = SVGScriptElement . castRef . unGObject

castToSVGScriptElement :: IsGObject obj => obj -> SVGScriptElement
castToSVGScriptElement = castTo gTypeSVGScriptElement "SVGScriptElement"

foreign import javascript unsafe "window[\"SVGScriptElement\"]" gTypeSVGScriptElement' :: JSRef GType
gTypeSVGScriptElement = GType gTypeSVGScriptElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSetElement Mozilla SVGSetElement documentation>
newtype SVGSetElement = SVGSetElement (JSRef SVGSetElement) deriving (Eq)

unSVGSetElement (SVGSetElement o) = o

instance ToJSRef SVGSetElement where
  toJSRef = return . unSVGSetElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSetElement where
  fromJSRef = return . fmap SVGSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGAnimationElement SVGSetElement
instance IsSVGElement SVGSetElement
instance IsElement SVGSetElement
instance IsNode SVGSetElement
instance IsEventTarget SVGSetElement
instance IsGObject SVGSetElement where
  toGObject = GObject . castRef . unSVGSetElement
  unsafeCastGObject = SVGSetElement . castRef . unGObject

castToSVGSetElement :: IsGObject obj => obj -> SVGSetElement
castToSVGSetElement = castTo gTypeSVGSetElement "SVGSetElement"

foreign import javascript unsafe "window[\"SVGSetElement\"]" gTypeSVGSetElement' :: JSRef GType
gTypeSVGSetElement = GType gTypeSVGSetElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStopElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement Mozilla SVGStopElement documentation>
newtype SVGStopElement = SVGStopElement (JSRef SVGStopElement) deriving (Eq)

unSVGStopElement (SVGStopElement o) = o

instance ToJSRef SVGStopElement where
  toJSRef = return . unSVGStopElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStopElement where
  fromJSRef = return . fmap SVGStopElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGStopElement
instance IsElement SVGStopElement
instance IsNode SVGStopElement
instance IsEventTarget SVGStopElement
instance IsGObject SVGStopElement where
  toGObject = GObject . castRef . unSVGStopElement
  unsafeCastGObject = SVGStopElement . castRef . unGObject

castToSVGStopElement :: IsGObject obj => obj -> SVGStopElement
castToSVGStopElement = castTo gTypeSVGStopElement "SVGStopElement"

foreign import javascript unsafe "window[\"SVGStopElement\"]" gTypeSVGStopElement' :: JSRef GType
gTypeSVGStopElement = GType gTypeSVGStopElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList Mozilla SVGStringList documentation>
newtype SVGStringList = SVGStringList (JSRef SVGStringList) deriving (Eq)

unSVGStringList (SVGStringList o) = o

instance ToJSRef SVGStringList where
  toJSRef = return . unSVGStringList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStringList where
  fromJSRef = return . fmap SVGStringList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGStringList where
  toGObject = GObject . castRef . unSVGStringList
  unsafeCastGObject = SVGStringList . castRef . unGObject

castToSVGStringList :: IsGObject obj => obj -> SVGStringList
castToSVGStringList = castTo gTypeSVGStringList "SVGStringList"

foreign import javascript unsafe "window[\"SVGStringList\"]" gTypeSVGStringList' :: JSRef GType
gTypeSVGStringList = GType gTypeSVGStringList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStyleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement Mozilla SVGStyleElement documentation>
newtype SVGStyleElement = SVGStyleElement (JSRef SVGStyleElement) deriving (Eq)

unSVGStyleElement (SVGStyleElement o) = o

instance ToJSRef SVGStyleElement where
  toJSRef = return . unSVGStyleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGStyleElement where
  fromJSRef = return . fmap SVGStyleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGStyleElement
instance IsElement SVGStyleElement
instance IsNode SVGStyleElement
instance IsEventTarget SVGStyleElement
instance IsGObject SVGStyleElement where
  toGObject = GObject . castRef . unSVGStyleElement
  unsafeCastGObject = SVGStyleElement . castRef . unGObject

castToSVGStyleElement :: IsGObject obj => obj -> SVGStyleElement
castToSVGStyleElement = castTo gTypeSVGStyleElement "SVGStyleElement"

foreign import javascript unsafe "window[\"SVGStyleElement\"]" gTypeSVGStyleElement' :: JSRef GType
gTypeSVGStyleElement = GType gTypeSVGStyleElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSwitchElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement Mozilla SVGSwitchElement documentation>
newtype SVGSwitchElement = SVGSwitchElement (JSRef SVGSwitchElement) deriving (Eq)

unSVGSwitchElement (SVGSwitchElement o) = o

instance ToJSRef SVGSwitchElement where
  toJSRef = return . unSVGSwitchElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSwitchElement where
  fromJSRef = return . fmap SVGSwitchElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGSwitchElement
instance IsSVGElement SVGSwitchElement
instance IsElement SVGSwitchElement
instance IsNode SVGSwitchElement
instance IsEventTarget SVGSwitchElement
instance IsGObject SVGSwitchElement where
  toGObject = GObject . castRef . unSVGSwitchElement
  unsafeCastGObject = SVGSwitchElement . castRef . unGObject

castToSVGSwitchElement :: IsGObject obj => obj -> SVGSwitchElement
castToSVGSwitchElement = castTo gTypeSVGSwitchElement "SVGSwitchElement"

foreign import javascript unsafe "window[\"SVGSwitchElement\"]" gTypeSVGSwitchElement' :: JSRef GType
gTypeSVGSwitchElement = GType gTypeSVGSwitchElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSymbolElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement Mozilla SVGSymbolElement documentation>
newtype SVGSymbolElement = SVGSymbolElement (JSRef SVGSymbolElement) deriving (Eq)

unSVGSymbolElement (SVGSymbolElement o) = o

instance ToJSRef SVGSymbolElement where
  toJSRef = return . unSVGSymbolElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGSymbolElement where
  fromJSRef = return . fmap SVGSymbolElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGSymbolElement
instance IsElement SVGSymbolElement
instance IsNode SVGSymbolElement
instance IsEventTarget SVGSymbolElement
instance IsGObject SVGSymbolElement where
  toGObject = GObject . castRef . unSVGSymbolElement
  unsafeCastGObject = SVGSymbolElement . castRef . unGObject

castToSVGSymbolElement :: IsGObject obj => obj -> SVGSymbolElement
castToSVGSymbolElement = castTo gTypeSVGSymbolElement "SVGSymbolElement"

foreign import javascript unsafe "window[\"SVGSymbolElement\"]" gTypeSVGSymbolElement' :: JSRef GType
gTypeSVGSymbolElement = GType gTypeSVGSymbolElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTRefElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextPositioningElement"
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTRefElement Mozilla SVGTRefElement documentation>
newtype SVGTRefElement = SVGTRefElement (JSRef SVGTRefElement) deriving (Eq)

unSVGTRefElement (SVGTRefElement o) = o

instance ToJSRef SVGTRefElement where
  toJSRef = return . unSVGTRefElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTRefElement where
  fromJSRef = return . fmap SVGTRefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGTextPositioningElement SVGTRefElement
instance IsSVGTextContentElement SVGTRefElement
instance IsSVGGraphicsElement SVGTRefElement
instance IsSVGElement SVGTRefElement
instance IsElement SVGTRefElement
instance IsNode SVGTRefElement
instance IsEventTarget SVGTRefElement
instance IsGObject SVGTRefElement where
  toGObject = GObject . castRef . unSVGTRefElement
  unsafeCastGObject = SVGTRefElement . castRef . unGObject

castToSVGTRefElement :: IsGObject obj => obj -> SVGTRefElement
castToSVGTRefElement = castTo gTypeSVGTRefElement "SVGTRefElement"

foreign import javascript unsafe "window[\"SVGTRefElement\"]" gTypeSVGTRefElement' :: JSRef GType
gTypeSVGTRefElement = GType gTypeSVGTRefElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTSpanElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextPositioningElement"
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement Mozilla SVGTSpanElement documentation>
newtype SVGTSpanElement = SVGTSpanElement (JSRef SVGTSpanElement) deriving (Eq)

unSVGTSpanElement (SVGTSpanElement o) = o

instance ToJSRef SVGTSpanElement where
  toJSRef = return . unSVGTSpanElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTSpanElement where
  fromJSRef = return . fmap SVGTSpanElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGTextPositioningElement SVGTSpanElement
instance IsSVGTextContentElement SVGTSpanElement
instance IsSVGGraphicsElement SVGTSpanElement
instance IsSVGElement SVGTSpanElement
instance IsElement SVGTSpanElement
instance IsNode SVGTSpanElement
instance IsEventTarget SVGTSpanElement
instance IsGObject SVGTSpanElement where
  toGObject = GObject . castRef . unSVGTSpanElement
  unsafeCastGObject = SVGTSpanElement . castRef . unGObject

castToSVGTSpanElement :: IsGObject obj => obj -> SVGTSpanElement
castToSVGTSpanElement = castTo gTypeSVGTSpanElement "SVGTSpanElement"

foreign import javascript unsafe "window[\"SVGTSpanElement\"]" gTypeSVGTSpanElement' :: JSRef GType
gTypeSVGTSpanElement = GType gTypeSVGTSpanElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTests".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests Mozilla SVGTests documentation>
newtype SVGTests = SVGTests (JSRef SVGTests) deriving (Eq)

unSVGTests (SVGTests o) = o

instance ToJSRef SVGTests where
  toJSRef = return . unSVGTests
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTests where
  fromJSRef = return . fmap SVGTests . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGTests where
  toGObject = GObject . castRef . unSVGTests
  unsafeCastGObject = SVGTests . castRef . unGObject

castToSVGTests :: IsGObject obj => obj -> SVGTests
castToSVGTests = castTo gTypeSVGTests "SVGTests"

foreign import javascript unsafe "window[\"SVGTests\"]" gTypeSVGTests' :: JSRef GType
gTypeSVGTests = GType gTypeSVGTests'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTextContentElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement Mozilla SVGTextContentElement documentation>
newtype SVGTextContentElement = SVGTextContentElement (JSRef SVGTextContentElement) deriving (Eq)

unSVGTextContentElement (SVGTextContentElement o) = o

instance ToJSRef SVGTextContentElement where
  toJSRef = return . unSVGTextContentElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextContentElement where
  fromJSRef = return . fmap SVGTextContentElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsSVGGraphicsElement o => IsSVGTextContentElement o
toSVGTextContentElement :: IsSVGTextContentElement o => o -> SVGTextContentElement
toSVGTextContentElement = unsafeCastGObject . toGObject

instance IsSVGTextContentElement SVGTextContentElement
instance IsSVGGraphicsElement SVGTextContentElement
instance IsSVGElement SVGTextContentElement
instance IsElement SVGTextContentElement
instance IsNode SVGTextContentElement
instance IsEventTarget SVGTextContentElement
instance IsGObject SVGTextContentElement where
  toGObject = GObject . castRef . unSVGTextContentElement
  unsafeCastGObject = SVGTextContentElement . castRef . unGObject

castToSVGTextContentElement :: IsGObject obj => obj -> SVGTextContentElement
castToSVGTextContentElement = castTo gTypeSVGTextContentElement "SVGTextContentElement"

foreign import javascript unsafe "window[\"SVGTextContentElement\"]" gTypeSVGTextContentElement' :: JSRef GType
gTypeSVGTextContentElement = GType gTypeSVGTextContentElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTextElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextPositioningElement"
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement Mozilla SVGTextElement documentation>
newtype SVGTextElement = SVGTextElement (JSRef SVGTextElement) deriving (Eq)

unSVGTextElement (SVGTextElement o) = o

instance ToJSRef SVGTextElement where
  toJSRef = return . unSVGTextElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextElement where
  fromJSRef = return . fmap SVGTextElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGTextPositioningElement SVGTextElement
instance IsSVGTextContentElement SVGTextElement
instance IsSVGGraphicsElement SVGTextElement
instance IsSVGElement SVGTextElement
instance IsElement SVGTextElement
instance IsNode SVGTextElement
instance IsEventTarget SVGTextElement
instance IsGObject SVGTextElement where
  toGObject = GObject . castRef . unSVGTextElement
  unsafeCastGObject = SVGTextElement . castRef . unGObject

castToSVGTextElement :: IsGObject obj => obj -> SVGTextElement
castToSVGTextElement = castTo gTypeSVGTextElement "SVGTextElement"

foreign import javascript unsafe "window[\"SVGTextElement\"]" gTypeSVGTextElement' :: JSRef GType
gTypeSVGTextElement = GType gTypeSVGTextElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTextPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement Mozilla SVGTextPathElement documentation>
newtype SVGTextPathElement = SVGTextPathElement (JSRef SVGTextPathElement) deriving (Eq)

unSVGTextPathElement (SVGTextPathElement o) = o

instance ToJSRef SVGTextPathElement where
  toJSRef = return . unSVGTextPathElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextPathElement where
  fromJSRef = return . fmap SVGTextPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGTextContentElement SVGTextPathElement
instance IsSVGGraphicsElement SVGTextPathElement
instance IsSVGElement SVGTextPathElement
instance IsElement SVGTextPathElement
instance IsNode SVGTextPathElement
instance IsEventTarget SVGTextPathElement
instance IsGObject SVGTextPathElement where
  toGObject = GObject . castRef . unSVGTextPathElement
  unsafeCastGObject = SVGTextPathElement . castRef . unGObject

castToSVGTextPathElement :: IsGObject obj => obj -> SVGTextPathElement
castToSVGTextPathElement = castTo gTypeSVGTextPathElement "SVGTextPathElement"

foreign import javascript unsafe "window[\"SVGTextPathElement\"]" gTypeSVGTextPathElement' :: JSRef GType
gTypeSVGTextPathElement = GType gTypeSVGTextPathElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTextPositioningElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGTextContentElement"
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement Mozilla SVGTextPositioningElement documentation>
newtype SVGTextPositioningElement = SVGTextPositioningElement (JSRef SVGTextPositioningElement) deriving (Eq)

unSVGTextPositioningElement (SVGTextPositioningElement o) = o

instance ToJSRef SVGTextPositioningElement where
  toJSRef = return . unSVGTextPositioningElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTextPositioningElement where
  fromJSRef = return . fmap SVGTextPositioningElement . maybeJSNullOrUndefined
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
instance IsEventTarget SVGTextPositioningElement
instance IsGObject SVGTextPositioningElement where
  toGObject = GObject . castRef . unSVGTextPositioningElement
  unsafeCastGObject = SVGTextPositioningElement . castRef . unGObject

castToSVGTextPositioningElement :: IsGObject obj => obj -> SVGTextPositioningElement
castToSVGTextPositioningElement = castTo gTypeSVGTextPositioningElement "SVGTextPositioningElement"

foreign import javascript unsafe "window[\"SVGTextPositioningElement\"]" gTypeSVGTextPositioningElement' :: JSRef GType
gTypeSVGTextPositioningElement = GType gTypeSVGTextPositioningElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTitleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement Mozilla SVGTitleElement documentation>
newtype SVGTitleElement = SVGTitleElement (JSRef SVGTitleElement) deriving (Eq)

unSVGTitleElement (SVGTitleElement o) = o

instance ToJSRef SVGTitleElement where
  toJSRef = return . unSVGTitleElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTitleElement where
  fromJSRef = return . fmap SVGTitleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGTitleElement
instance IsElement SVGTitleElement
instance IsNode SVGTitleElement
instance IsEventTarget SVGTitleElement
instance IsGObject SVGTitleElement where
  toGObject = GObject . castRef . unSVGTitleElement
  unsafeCastGObject = SVGTitleElement . castRef . unGObject

castToSVGTitleElement :: IsGObject obj => obj -> SVGTitleElement
castToSVGTitleElement = castTo gTypeSVGTitleElement "SVGTitleElement"

foreign import javascript unsafe "window[\"SVGTitleElement\"]" gTypeSVGTitleElement' :: JSRef GType
gTypeSVGTitleElement = GType gTypeSVGTitleElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTransform".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform Mozilla SVGTransform documentation>
newtype SVGTransform = SVGTransform (JSRef SVGTransform) deriving (Eq)

unSVGTransform (SVGTransform o) = o

instance ToJSRef SVGTransform where
  toJSRef = return . unSVGTransform
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTransform where
  fromJSRef = return . fmap SVGTransform . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGTransform where
  toGObject = GObject . castRef . unSVGTransform
  unsafeCastGObject = SVGTransform . castRef . unGObject

castToSVGTransform :: IsGObject obj => obj -> SVGTransform
castToSVGTransform = castTo gTypeSVGTransform "SVGTransform"

foreign import javascript unsafe "window[\"SVGTransform\"]" gTypeSVGTransform' :: JSRef GType
gTypeSVGTransform = GType gTypeSVGTransform'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList Mozilla SVGTransformList documentation>
newtype SVGTransformList = SVGTransformList (JSRef SVGTransformList) deriving (Eq)

unSVGTransformList (SVGTransformList o) = o

instance ToJSRef SVGTransformList where
  toJSRef = return . unSVGTransformList
  {-# INLINE toJSRef #-}

instance FromJSRef SVGTransformList where
  fromJSRef = return . fmap SVGTransformList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGTransformList where
  toGObject = GObject . castRef . unSVGTransformList
  unsafeCastGObject = SVGTransformList . castRef . unGObject

castToSVGTransformList :: IsGObject obj => obj -> SVGTransformList
castToSVGTransformList = castTo gTypeSVGTransformList "SVGTransformList"

foreign import javascript unsafe "window[\"SVGTransformList\"]" gTypeSVGTransformList' :: JSRef GType
gTypeSVGTransformList = GType gTypeSVGTransformList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGURIReference".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGURIReference Mozilla SVGURIReference documentation>
newtype SVGURIReference = SVGURIReference (JSRef SVGURIReference) deriving (Eq)

unSVGURIReference (SVGURIReference o) = o

instance ToJSRef SVGURIReference where
  toJSRef = return . unSVGURIReference
  {-# INLINE toJSRef #-}

instance FromJSRef SVGURIReference where
  fromJSRef = return . fmap SVGURIReference . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGURIReference where
  toGObject = GObject . castRef . unSVGURIReference
  unsafeCastGObject = SVGURIReference . castRef . unGObject

castToSVGURIReference :: IsGObject obj => obj -> SVGURIReference
castToSVGURIReference = castTo gTypeSVGURIReference "SVGURIReference"

foreign import javascript unsafe "window[\"SVGURIReference\"]" gTypeSVGURIReference' :: JSRef GType
gTypeSVGURIReference = GType gTypeSVGURIReference'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGUnitTypes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes Mozilla SVGUnitTypes documentation>
newtype SVGUnitTypes = SVGUnitTypes (JSRef SVGUnitTypes) deriving (Eq)

unSVGUnitTypes (SVGUnitTypes o) = o

instance ToJSRef SVGUnitTypes where
  toJSRef = return . unSVGUnitTypes
  {-# INLINE toJSRef #-}

instance FromJSRef SVGUnitTypes where
  fromJSRef = return . fmap SVGUnitTypes . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGUnitTypes where
  toGObject = GObject . castRef . unSVGUnitTypes
  unsafeCastGObject = SVGUnitTypes . castRef . unGObject

castToSVGUnitTypes :: IsGObject obj => obj -> SVGUnitTypes
castToSVGUnitTypes = castTo gTypeSVGUnitTypes "SVGUnitTypes"

foreign import javascript unsafe "window[\"SVGUnitTypes\"]" gTypeSVGUnitTypes' :: JSRef GType
gTypeSVGUnitTypes = GType gTypeSVGUnitTypes'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGUseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement Mozilla SVGUseElement documentation>
newtype SVGUseElement = SVGUseElement (JSRef SVGUseElement) deriving (Eq)

unSVGUseElement (SVGUseElement o) = o

instance ToJSRef SVGUseElement where
  toJSRef = return . unSVGUseElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGUseElement where
  fromJSRef = return . fmap SVGUseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGGraphicsElement SVGUseElement
instance IsSVGElement SVGUseElement
instance IsElement SVGUseElement
instance IsNode SVGUseElement
instance IsEventTarget SVGUseElement
instance IsGObject SVGUseElement where
  toGObject = GObject . castRef . unSVGUseElement
  unsafeCastGObject = SVGUseElement . castRef . unGObject

castToSVGUseElement :: IsGObject obj => obj -> SVGUseElement
castToSVGUseElement = castTo gTypeSVGUseElement "SVGUseElement"

foreign import javascript unsafe "window[\"SVGUseElement\"]" gTypeSVGUseElement' :: JSRef GType
gTypeSVGUseElement = GType gTypeSVGUseElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGVKernElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGVKernElement Mozilla SVGVKernElement documentation>
newtype SVGVKernElement = SVGVKernElement (JSRef SVGVKernElement) deriving (Eq)

unSVGVKernElement (SVGVKernElement o) = o

instance ToJSRef SVGVKernElement where
  toJSRef = return . unSVGVKernElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGVKernElement where
  fromJSRef = return . fmap SVGVKernElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGVKernElement
instance IsElement SVGVKernElement
instance IsNode SVGVKernElement
instance IsEventTarget SVGVKernElement
instance IsGObject SVGVKernElement where
  toGObject = GObject . castRef . unSVGVKernElement
  unsafeCastGObject = SVGVKernElement . castRef . unGObject

castToSVGVKernElement :: IsGObject obj => obj -> SVGVKernElement
castToSVGVKernElement = castTo gTypeSVGVKernElement "SVGVKernElement"

foreign import javascript unsafe "window[\"SVGVKernElement\"]" gTypeSVGVKernElement' :: JSRef GType
gTypeSVGVKernElement = GType gTypeSVGVKernElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGViewElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement Mozilla SVGViewElement documentation>
newtype SVGViewElement = SVGViewElement (JSRef SVGViewElement) deriving (Eq)

unSVGViewElement (SVGViewElement o) = o

instance ToJSRef SVGViewElement where
  toJSRef = return . unSVGViewElement
  {-# INLINE toJSRef #-}

instance FromJSRef SVGViewElement where
  fromJSRef = return . fmap SVGViewElement . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsSVGElement SVGViewElement
instance IsElement SVGViewElement
instance IsNode SVGViewElement
instance IsEventTarget SVGViewElement
instance IsGObject SVGViewElement where
  toGObject = GObject . castRef . unSVGViewElement
  unsafeCastGObject = SVGViewElement . castRef . unGObject

castToSVGViewElement :: IsGObject obj => obj -> SVGViewElement
castToSVGViewElement = castTo gTypeSVGViewElement "SVGViewElement"

foreign import javascript unsafe "window[\"SVGViewElement\"]" gTypeSVGViewElement' :: JSRef GType
gTypeSVGViewElement = GType gTypeSVGViewElement'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGViewSpec".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec Mozilla SVGViewSpec documentation>
newtype SVGViewSpec = SVGViewSpec (JSRef SVGViewSpec) deriving (Eq)

unSVGViewSpec (SVGViewSpec o) = o

instance ToJSRef SVGViewSpec where
  toJSRef = return . unSVGViewSpec
  {-# INLINE toJSRef #-}

instance FromJSRef SVGViewSpec where
  fromJSRef = return . fmap SVGViewSpec . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGViewSpec where
  toGObject = GObject . castRef . unSVGViewSpec
  unsafeCastGObject = SVGViewSpec . castRef . unGObject

castToSVGViewSpec :: IsGObject obj => obj -> SVGViewSpec
castToSVGViewSpec = castTo gTypeSVGViewSpec "SVGViewSpec"

foreign import javascript unsafe "window[\"SVGViewSpec\"]" gTypeSVGViewSpec' :: JSRef GType
gTypeSVGViewSpec = GType gTypeSVGViewSpec'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGZoomAndPan".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan Mozilla SVGZoomAndPan documentation>
newtype SVGZoomAndPan = SVGZoomAndPan (JSRef SVGZoomAndPan) deriving (Eq)

unSVGZoomAndPan (SVGZoomAndPan o) = o

instance ToJSRef SVGZoomAndPan where
  toJSRef = return . unSVGZoomAndPan
  {-# INLINE toJSRef #-}

instance FromJSRef SVGZoomAndPan where
  fromJSRef = return . fmap SVGZoomAndPan . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SVGZoomAndPan where
  toGObject = GObject . castRef . unSVGZoomAndPan
  unsafeCastGObject = SVGZoomAndPan . castRef . unGObject

castToSVGZoomAndPan :: IsGObject obj => obj -> SVGZoomAndPan
castToSVGZoomAndPan = castTo gTypeSVGZoomAndPan "SVGZoomAndPan"

foreign import javascript unsafe "window[\"SVGZoomAndPan\"]" gTypeSVGZoomAndPan' :: JSRef GType
gTypeSVGZoomAndPan = GType gTypeSVGZoomAndPan'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGZoomEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent Mozilla SVGZoomEvent documentation>
newtype SVGZoomEvent = SVGZoomEvent (JSRef SVGZoomEvent) deriving (Eq)

unSVGZoomEvent (SVGZoomEvent o) = o

instance ToJSRef SVGZoomEvent where
  toJSRef = return . unSVGZoomEvent
  {-# INLINE toJSRef #-}

instance FromJSRef SVGZoomEvent where
  fromJSRef = return . fmap SVGZoomEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent SVGZoomEvent
instance IsEvent SVGZoomEvent
instance IsGObject SVGZoomEvent where
  toGObject = GObject . castRef . unSVGZoomEvent
  unsafeCastGObject = SVGZoomEvent . castRef . unGObject

castToSVGZoomEvent :: IsGObject obj => obj -> SVGZoomEvent
castToSVGZoomEvent = castTo gTypeSVGZoomEvent "SVGZoomEvent"

foreign import javascript unsafe "window[\"SVGZoomEvent\"]" gTypeSVGZoomEvent' :: JSRef GType
gTypeSVGZoomEvent = GType gTypeSVGZoomEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMScreen".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMScreen Mozilla DOMScreen documentation>
newtype DOMScreen = DOMScreen (JSRef DOMScreen) deriving (Eq)

unDOMScreen (DOMScreen o) = o

instance ToJSRef DOMScreen where
  toJSRef = return . unDOMScreen
  {-# INLINE toJSRef #-}

instance FromJSRef DOMScreen where
  fromJSRef = return . fmap DOMScreen . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject DOMScreen where
  toGObject = GObject . castRef . unDOMScreen
  unsafeCastGObject = DOMScreen . castRef . unGObject

castToDOMScreen :: IsGObject obj => obj -> DOMScreen
castToDOMScreen = castTo gTypeDOMScreen "DOMScreen"

foreign import javascript unsafe "window[\"DOMScreen\"]" gTypeDOMScreen' :: JSRef GType
gTypeDOMScreen = GType gTypeDOMScreen'
#else
type IsDOMScreen o = DOMScreenClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProcessorNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode Mozilla ScriptProcessorNode documentation>
newtype ScriptProcessorNode = ScriptProcessorNode (JSRef ScriptProcessorNode) deriving (Eq)

unScriptProcessorNode (ScriptProcessorNode o) = o

instance ToJSRef ScriptProcessorNode where
  toJSRef = return . unScriptProcessorNode
  {-# INLINE toJSRef #-}

instance FromJSRef ScriptProcessorNode where
  fromJSRef = return . fmap ScriptProcessorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode ScriptProcessorNode
instance IsEventTarget ScriptProcessorNode
instance IsGObject ScriptProcessorNode where
  toGObject = GObject . castRef . unScriptProcessorNode
  unsafeCastGObject = ScriptProcessorNode . castRef . unGObject

castToScriptProcessorNode :: IsGObject obj => obj -> ScriptProcessorNode
castToScriptProcessorNode = castTo gTypeScriptProcessorNode "ScriptProcessorNode"

foreign import javascript unsafe "window[\"ScriptProcessorNode\"]" gTypeScriptProcessorNode' :: JSRef GType
gTypeScriptProcessorNode = GType gTypeScriptProcessorNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProfile".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile Mozilla ScriptProfile documentation>
newtype ScriptProfile = ScriptProfile (JSRef ScriptProfile) deriving (Eq)

unScriptProfile (ScriptProfile o) = o

instance ToJSRef ScriptProfile where
  toJSRef = return . unScriptProfile
  {-# INLINE toJSRef #-}

instance FromJSRef ScriptProfile where
  fromJSRef = return . fmap ScriptProfile . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ScriptProfile where
  toGObject = GObject . castRef . unScriptProfile
  unsafeCastGObject = ScriptProfile . castRef . unGObject

castToScriptProfile :: IsGObject obj => obj -> ScriptProfile
castToScriptProfile = castTo gTypeScriptProfile "ScriptProfile"

foreign import javascript unsafe "window[\"ScriptProfile\"]" gTypeScriptProfile' :: JSRef GType
gTypeScriptProfile = GType gTypeScriptProfile'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProfileNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode Mozilla ScriptProfileNode documentation>
newtype ScriptProfileNode = ScriptProfileNode (JSRef ScriptProfileNode) deriving (Eq)

unScriptProfileNode (ScriptProfileNode o) = o

instance ToJSRef ScriptProfileNode where
  toJSRef = return . unScriptProfileNode
  {-# INLINE toJSRef #-}

instance FromJSRef ScriptProfileNode where
  fromJSRef = return . fmap ScriptProfileNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ScriptProfileNode where
  toGObject = GObject . castRef . unScriptProfileNode
  unsafeCastGObject = ScriptProfileNode . castRef . unGObject

castToScriptProfileNode :: IsGObject obj => obj -> ScriptProfileNode
castToScriptProfileNode = castTo gTypeScriptProfileNode "ScriptProfileNode"

foreign import javascript unsafe "window[\"ScriptProfileNode\"]" gTypeScriptProfileNode' :: JSRef GType
gTypeScriptProfileNode = GType gTypeScriptProfileNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SecurityPolicyViolationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent Mozilla SecurityPolicyViolationEvent documentation>
newtype SecurityPolicyViolationEvent = SecurityPolicyViolationEvent (JSRef SecurityPolicyViolationEvent) deriving (Eq)

unSecurityPolicyViolationEvent (SecurityPolicyViolationEvent o) = o

instance ToJSRef SecurityPolicyViolationEvent where
  toJSRef = return . unSecurityPolicyViolationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef SecurityPolicyViolationEvent where
  fromJSRef = return . fmap SecurityPolicyViolationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent SecurityPolicyViolationEvent
instance IsGObject SecurityPolicyViolationEvent where
  toGObject = GObject . castRef . unSecurityPolicyViolationEvent
  unsafeCastGObject = SecurityPolicyViolationEvent . castRef . unGObject

castToSecurityPolicyViolationEvent :: IsGObject obj => obj -> SecurityPolicyViolationEvent
castToSecurityPolicyViolationEvent = castTo gTypeSecurityPolicyViolationEvent "SecurityPolicyViolationEvent"

foreign import javascript unsafe "window[\"SecurityPolicyViolationEvent\"]" gTypeSecurityPolicyViolationEvent' :: JSRef GType
gTypeSecurityPolicyViolationEvent = GType gTypeSecurityPolicyViolationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceBuffer".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer Mozilla SourceBuffer documentation>
newtype SourceBuffer = SourceBuffer (JSRef SourceBuffer) deriving (Eq)

unSourceBuffer (SourceBuffer o) = o

instance ToJSRef SourceBuffer where
  toJSRef = return . unSourceBuffer
  {-# INLINE toJSRef #-}

instance FromJSRef SourceBuffer where
  fromJSRef = return . fmap SourceBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget SourceBuffer
instance IsGObject SourceBuffer where
  toGObject = GObject . castRef . unSourceBuffer
  unsafeCastGObject = SourceBuffer . castRef . unGObject

castToSourceBuffer :: IsGObject obj => obj -> SourceBuffer
castToSourceBuffer = castTo gTypeSourceBuffer "SourceBuffer"

foreign import javascript unsafe "window[\"SourceBuffer\"]" gTypeSourceBuffer' :: JSRef GType
gTypeSourceBuffer = GType gTypeSourceBuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceBufferList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList Mozilla SourceBufferList documentation>
newtype SourceBufferList = SourceBufferList (JSRef SourceBufferList) deriving (Eq)

unSourceBufferList (SourceBufferList o) = o

instance ToJSRef SourceBufferList where
  toJSRef = return . unSourceBufferList
  {-# INLINE toJSRef #-}

instance FromJSRef SourceBufferList where
  fromJSRef = return . fmap SourceBufferList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget SourceBufferList
instance IsGObject SourceBufferList where
  toGObject = GObject . castRef . unSourceBufferList
  unsafeCastGObject = SourceBufferList . castRef . unGObject

castToSourceBufferList :: IsGObject obj => obj -> SourceBufferList
castToSourceBufferList = castTo gTypeSourceBufferList "SourceBufferList"

foreign import javascript unsafe "window[\"SourceBufferList\"]" gTypeSourceBufferList' :: JSRef GType
gTypeSourceBufferList = GType gTypeSourceBufferList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo Mozilla SourceInfo documentation>
newtype SourceInfo = SourceInfo (JSRef SourceInfo) deriving (Eq)

unSourceInfo (SourceInfo o) = o

instance ToJSRef SourceInfo where
  toJSRef = return . unSourceInfo
  {-# INLINE toJSRef #-}

instance FromJSRef SourceInfo where
  fromJSRef = return . fmap SourceInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SourceInfo where
  toGObject = GObject . castRef . unSourceInfo
  unsafeCastGObject = SourceInfo . castRef . unGObject

castToSourceInfo :: IsGObject obj => obj -> SourceInfo
castToSourceInfo = castTo gTypeSourceInfo "SourceInfo"

foreign import javascript unsafe "window[\"SourceInfo\"]" gTypeSourceInfo' :: JSRef GType
gTypeSourceInfo = GType gTypeSourceInfo'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesis".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis Mozilla SpeechSynthesis documentation>
newtype SpeechSynthesis = SpeechSynthesis (JSRef SpeechSynthesis) deriving (Eq)

unSpeechSynthesis (SpeechSynthesis o) = o

instance ToJSRef SpeechSynthesis where
  toJSRef = return . unSpeechSynthesis
  {-# INLINE toJSRef #-}

instance FromJSRef SpeechSynthesis where
  fromJSRef = return . fmap SpeechSynthesis . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SpeechSynthesis where
  toGObject = GObject . castRef . unSpeechSynthesis
  unsafeCastGObject = SpeechSynthesis . castRef . unGObject

castToSpeechSynthesis :: IsGObject obj => obj -> SpeechSynthesis
castToSpeechSynthesis = castTo gTypeSpeechSynthesis "SpeechSynthesis"

foreign import javascript unsafe "window[\"SpeechSynthesis\"]" gTypeSpeechSynthesis' :: JSRef GType
gTypeSpeechSynthesis = GType gTypeSpeechSynthesis'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent Mozilla SpeechSynthesisEvent documentation>
newtype SpeechSynthesisEvent = SpeechSynthesisEvent (JSRef SpeechSynthesisEvent) deriving (Eq)

unSpeechSynthesisEvent (SpeechSynthesisEvent o) = o

instance ToJSRef SpeechSynthesisEvent where
  toJSRef = return . unSpeechSynthesisEvent
  {-# INLINE toJSRef #-}

instance FromJSRef SpeechSynthesisEvent where
  fromJSRef = return . fmap SpeechSynthesisEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent SpeechSynthesisEvent
instance IsGObject SpeechSynthesisEvent where
  toGObject = GObject . castRef . unSpeechSynthesisEvent
  unsafeCastGObject = SpeechSynthesisEvent . castRef . unGObject

castToSpeechSynthesisEvent :: IsGObject obj => obj -> SpeechSynthesisEvent
castToSpeechSynthesisEvent = castTo gTypeSpeechSynthesisEvent "SpeechSynthesisEvent"

foreign import javascript unsafe "window[\"SpeechSynthesisEvent\"]" gTypeSpeechSynthesisEvent' :: JSRef GType
gTypeSpeechSynthesisEvent = GType gTypeSpeechSynthesisEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisUtterance".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation>
newtype SpeechSynthesisUtterance = SpeechSynthesisUtterance (JSRef SpeechSynthesisUtterance) deriving (Eq)

unSpeechSynthesisUtterance (SpeechSynthesisUtterance o) = o

instance ToJSRef SpeechSynthesisUtterance where
  toJSRef = return . unSpeechSynthesisUtterance
  {-# INLINE toJSRef #-}

instance FromJSRef SpeechSynthesisUtterance where
  fromJSRef = return . fmap SpeechSynthesisUtterance . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget SpeechSynthesisUtterance
instance IsGObject SpeechSynthesisUtterance where
  toGObject = GObject . castRef . unSpeechSynthesisUtterance
  unsafeCastGObject = SpeechSynthesisUtterance . castRef . unGObject

castToSpeechSynthesisUtterance :: IsGObject obj => obj -> SpeechSynthesisUtterance
castToSpeechSynthesisUtterance = castTo gTypeSpeechSynthesisUtterance "SpeechSynthesisUtterance"

foreign import javascript unsafe "window[\"SpeechSynthesisUtterance\"]" gTypeSpeechSynthesisUtterance' :: JSRef GType
gTypeSpeechSynthesisUtterance = GType gTypeSpeechSynthesisUtterance'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisVoice".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice Mozilla SpeechSynthesisVoice documentation>
newtype SpeechSynthesisVoice = SpeechSynthesisVoice (JSRef SpeechSynthesisVoice) deriving (Eq)

unSpeechSynthesisVoice (SpeechSynthesisVoice o) = o

instance ToJSRef SpeechSynthesisVoice where
  toJSRef = return . unSpeechSynthesisVoice
  {-# INLINE toJSRef #-}

instance FromJSRef SpeechSynthesisVoice where
  fromJSRef = return . fmap SpeechSynthesisVoice . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SpeechSynthesisVoice where
  toGObject = GObject . castRef . unSpeechSynthesisVoice
  unsafeCastGObject = SpeechSynthesisVoice . castRef . unGObject

castToSpeechSynthesisVoice :: IsGObject obj => obj -> SpeechSynthesisVoice
castToSpeechSynthesisVoice = castTo gTypeSpeechSynthesisVoice "SpeechSynthesisVoice"

foreign import javascript unsafe "window[\"SpeechSynthesisVoice\"]" gTypeSpeechSynthesisVoice' :: JSRef GType
gTypeSpeechSynthesisVoice = GType gTypeSpeechSynthesisVoice'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Storage".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Storage Mozilla Storage documentation>
newtype Storage = Storage (JSRef Storage) deriving (Eq)

unStorage (Storage o) = o

instance ToJSRef Storage where
  toJSRef = return . unStorage
  {-# INLINE toJSRef #-}

instance FromJSRef Storage where
  fromJSRef = return . fmap Storage . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Storage where
  toGObject = GObject . castRef . unStorage
  unsafeCastGObject = Storage . castRef . unGObject

castToStorage :: IsGObject obj => obj -> Storage
castToStorage = castTo gTypeStorage "Storage"

foreign import javascript unsafe "window[\"Storage\"]" gTypeStorage' :: JSRef GType
gTypeStorage = GType gTypeStorage'
#else
type IsStorage o = StorageClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation>
newtype StorageErrorCallback = StorageErrorCallback (JSRef StorageErrorCallback) deriving (Eq)

unStorageErrorCallback (StorageErrorCallback o) = o

instance ToJSRef StorageErrorCallback where
  toJSRef = return . unStorageErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef StorageErrorCallback where
  fromJSRef = return . fmap StorageErrorCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StorageErrorCallback where
  toGObject = GObject . castRef . unStorageErrorCallback
  unsafeCastGObject = StorageErrorCallback . castRef . unGObject

castToStorageErrorCallback :: IsGObject obj => obj -> StorageErrorCallback
castToStorageErrorCallback = castTo gTypeStorageErrorCallback "StorageErrorCallback"

foreign import javascript unsafe "window[\"StorageErrorCallback\"]" gTypeStorageErrorCallback' :: JSRef GType
gTypeStorageErrorCallback = GType gTypeStorageErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent Mozilla StorageEvent documentation>
newtype StorageEvent = StorageEvent (JSRef StorageEvent) deriving (Eq)

unStorageEvent (StorageEvent o) = o

instance ToJSRef StorageEvent where
  toJSRef = return . unStorageEvent
  {-# INLINE toJSRef #-}

instance FromJSRef StorageEvent where
  fromJSRef = return . fmap StorageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent StorageEvent
instance IsGObject StorageEvent where
  toGObject = GObject . castRef . unStorageEvent
  unsafeCastGObject = StorageEvent . castRef . unGObject

castToStorageEvent :: IsGObject obj => obj -> StorageEvent
castToStorageEvent = castTo gTypeStorageEvent "StorageEvent"

foreign import javascript unsafe "window[\"StorageEvent\"]" gTypeStorageEvent' :: JSRef GType
gTypeStorageEvent = GType gTypeStorageEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo Mozilla StorageInfo documentation>
newtype StorageInfo = StorageInfo (JSRef StorageInfo) deriving (Eq)

unStorageInfo (StorageInfo o) = o

instance ToJSRef StorageInfo where
  toJSRef = return . unStorageInfo
  {-# INLINE toJSRef #-}

instance FromJSRef StorageInfo where
  fromJSRef = return . fmap StorageInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StorageInfo where
  toGObject = GObject . castRef . unStorageInfo
  unsafeCastGObject = StorageInfo . castRef . unGObject

castToStorageInfo :: IsGObject obj => obj -> StorageInfo
castToStorageInfo = castTo gTypeStorageInfo "StorageInfo"

foreign import javascript unsafe "window[\"StorageInfo\"]" gTypeStorageInfo' :: JSRef GType
gTypeStorageInfo = GType gTypeStorageInfo'
#else
type IsStorageInfo o = StorageInfoClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageQuota".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota Mozilla StorageQuota documentation>
newtype StorageQuota = StorageQuota (JSRef StorageQuota) deriving (Eq)

unStorageQuota (StorageQuota o) = o

instance ToJSRef StorageQuota where
  toJSRef = return . unStorageQuota
  {-# INLINE toJSRef #-}

instance FromJSRef StorageQuota where
  fromJSRef = return . fmap StorageQuota . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StorageQuota where
  toGObject = GObject . castRef . unStorageQuota
  unsafeCastGObject = StorageQuota . castRef . unGObject

castToStorageQuota :: IsGObject obj => obj -> StorageQuota
castToStorageQuota = castTo gTypeStorageQuota "StorageQuota"

foreign import javascript unsafe "window[\"StorageQuota\"]" gTypeStorageQuota' :: JSRef GType
gTypeStorageQuota = GType gTypeStorageQuota'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageQuotaCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation>
newtype StorageQuotaCallback = StorageQuotaCallback (JSRef StorageQuotaCallback) deriving (Eq)

unStorageQuotaCallback (StorageQuotaCallback o) = o

instance ToJSRef StorageQuotaCallback where
  toJSRef = return . unStorageQuotaCallback
  {-# INLINE toJSRef #-}

instance FromJSRef StorageQuotaCallback where
  fromJSRef = return . fmap StorageQuotaCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StorageQuotaCallback where
  toGObject = GObject . castRef . unStorageQuotaCallback
  unsafeCastGObject = StorageQuotaCallback . castRef . unGObject

castToStorageQuotaCallback :: IsGObject obj => obj -> StorageQuotaCallback
castToStorageQuotaCallback = castTo gTypeStorageQuotaCallback "StorageQuotaCallback"

foreign import javascript unsafe "window[\"StorageQuotaCallback\"]" gTypeStorageQuotaCallback' :: JSRef GType
gTypeStorageQuotaCallback = GType gTypeStorageQuotaCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageUsageCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation>
newtype StorageUsageCallback = StorageUsageCallback (JSRef StorageUsageCallback) deriving (Eq)

unStorageUsageCallback (StorageUsageCallback o) = o

instance ToJSRef StorageUsageCallback where
  toJSRef = return . unStorageUsageCallback
  {-# INLINE toJSRef #-}

instance FromJSRef StorageUsageCallback where
  fromJSRef = return . fmap StorageUsageCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StorageUsageCallback where
  toGObject = GObject . castRef . unStorageUsageCallback
  unsafeCastGObject = StorageUsageCallback . castRef . unGObject

castToStorageUsageCallback :: IsGObject obj => obj -> StorageUsageCallback
castToStorageUsageCallback = castTo gTypeStorageUsageCallback "StorageUsageCallback"

foreign import javascript unsafe "window[\"StorageUsageCallback\"]" gTypeStorageUsageCallback' :: JSRef GType
gTypeStorageUsageCallback = GType gTypeStorageUsageCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StringCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation>
newtype StringCallback = StringCallback (JSRef StringCallback) deriving (Eq)

unStringCallback (StringCallback o) = o

instance ToJSRef StringCallback where
  toJSRef = return . unStringCallback
  {-# INLINE toJSRef #-}

instance FromJSRef StringCallback where
  fromJSRef = return . fmap StringCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StringCallback where
  toGObject = GObject . castRef . unStringCallback
  unsafeCastGObject = StringCallback . castRef . unGObject

castToStringCallback :: IsGObject obj => obj -> StringCallback
castToStringCallback = castTo gTypeStringCallback "StringCallback"

foreign import javascript unsafe "window[\"StringCallback\"]" gTypeStringCallback' :: JSRef GType
gTypeStringCallback = GType gTypeStringCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleMedia".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia Mozilla StyleMedia documentation>
newtype StyleMedia = StyleMedia (JSRef StyleMedia) deriving (Eq)

unStyleMedia (StyleMedia o) = o

instance ToJSRef StyleMedia where
  toJSRef = return . unStyleMedia
  {-# INLINE toJSRef #-}

instance FromJSRef StyleMedia where
  fromJSRef = return . fmap StyleMedia . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StyleMedia where
  toGObject = GObject . castRef . unStyleMedia
  unsafeCastGObject = StyleMedia . castRef . unGObject

castToStyleMedia :: IsGObject obj => obj -> StyleMedia
castToStyleMedia = castTo gTypeStyleMedia "StyleMedia"

foreign import javascript unsafe "window[\"StyleMedia\"]" gTypeStyleMedia' :: JSRef GType
gTypeStyleMedia = GType gTypeStyleMedia'
#else
type IsStyleMedia o = StyleMediaClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet Mozilla StyleSheet documentation>
newtype StyleSheet = StyleSheet (JSRef StyleSheet) deriving (Eq)

unStyleSheet (StyleSheet o) = o

instance ToJSRef StyleSheet where
  toJSRef = return . unStyleSheet
  {-# INLINE toJSRef #-}

instance FromJSRef StyleSheet where
  fromJSRef = return . fmap StyleSheet . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsGObject o => IsStyleSheet o
toStyleSheet :: IsStyleSheet o => o -> StyleSheet
toStyleSheet = unsafeCastGObject . toGObject

instance IsStyleSheet StyleSheet
instance IsGObject StyleSheet where
  toGObject = GObject . castRef . unStyleSheet
  unsafeCastGObject = StyleSheet . castRef . unGObject

castToStyleSheet :: IsGObject obj => obj -> StyleSheet
castToStyleSheet = castTo gTypeStyleSheet "StyleSheet"

foreign import javascript unsafe "window[\"StyleSheet\"]" gTypeStyleSheet' :: JSRef GType
gTypeStyleSheet = GType gTypeStyleSheet'
#else
type IsStyleSheet o = StyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheetList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList Mozilla StyleSheetList documentation>
newtype StyleSheetList = StyleSheetList (JSRef StyleSheetList) deriving (Eq)

unStyleSheetList (StyleSheetList o) = o

instance ToJSRef StyleSheetList where
  toJSRef = return . unStyleSheetList
  {-# INLINE toJSRef #-}

instance FromJSRef StyleSheetList where
  fromJSRef = return . fmap StyleSheetList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject StyleSheetList where
  toGObject = GObject . castRef . unStyleSheetList
  unsafeCastGObject = StyleSheetList . castRef . unGObject

castToStyleSheetList :: IsGObject obj => obj -> StyleSheetList
castToStyleSheetList = castTo gTypeStyleSheetList "StyleSheetList"

foreign import javascript unsafe "window[\"StyleSheetList\"]" gTypeStyleSheetList' :: JSRef GType
gTypeStyleSheetList = GType gTypeStyleSheetList'
#else
type IsStyleSheetList o = StyleSheetListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SubtleCrypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto Mozilla WebKitSubtleCrypto documentation>
newtype SubtleCrypto = SubtleCrypto (JSRef SubtleCrypto) deriving (Eq)

unSubtleCrypto (SubtleCrypto o) = o

instance ToJSRef SubtleCrypto where
  toJSRef = return . unSubtleCrypto
  {-# INLINE toJSRef #-}

instance FromJSRef SubtleCrypto where
  fromJSRef = return . fmap SubtleCrypto . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject SubtleCrypto where
  toGObject = GObject . castRef . unSubtleCrypto
  unsafeCastGObject = SubtleCrypto . castRef . unGObject

castToSubtleCrypto :: IsGObject obj => obj -> SubtleCrypto
castToSubtleCrypto = castTo gTypeSubtleCrypto "SubtleCrypto"

foreign import javascript unsafe "window[\"WebKitSubtleCrypto\"]" gTypeSubtleCrypto' :: JSRef GType
gTypeSubtleCrypto = GType gTypeSubtleCrypto'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Text".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CharacterData"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation>
newtype Text = Text (JSRef Text) deriving (Eq)

unText (Text o) = o

instance ToJSRef Text where
  toJSRef = return . unText
  {-# INLINE toJSRef #-}

instance FromJSRef Text where
  fromJSRef = return . fmap Text . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsCharacterData o => IsText o
toText :: IsText o => o -> Text
toText = unsafeCastGObject . toGObject

instance IsText Text
instance IsCharacterData Text
instance IsNode Text
instance IsEventTarget Text
instance IsGObject Text where
  toGObject = GObject . castRef . unText
  unsafeCastGObject = Text . castRef . unGObject

castToText :: IsGObject obj => obj -> Text
castToText = castTo gTypeText "Text"

foreign import javascript unsafe "window[\"Text\"]" gTypeText' :: JSRef GType
gTypeText = GType gTypeText'
#else
type IsText o = TextClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent Mozilla TextEvent documentation>
newtype TextEvent = TextEvent (JSRef TextEvent) deriving (Eq)

unTextEvent (TextEvent o) = o

instance ToJSRef TextEvent where
  toJSRef = return . unTextEvent
  {-# INLINE toJSRef #-}

instance FromJSRef TextEvent where
  fromJSRef = return . fmap TextEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent TextEvent
instance IsEvent TextEvent
instance IsGObject TextEvent where
  toGObject = GObject . castRef . unTextEvent
  unsafeCastGObject = TextEvent . castRef . unGObject

castToTextEvent :: IsGObject obj => obj -> TextEvent
castToTextEvent = castTo gTypeTextEvent "TextEvent"

foreign import javascript unsafe "window[\"TextEvent\"]" gTypeTextEvent' :: JSRef GType
gTypeTextEvent = GType gTypeTextEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextMetrics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics Mozilla TextMetrics documentation>
newtype TextMetrics = TextMetrics (JSRef TextMetrics) deriving (Eq)

unTextMetrics (TextMetrics o) = o

instance ToJSRef TextMetrics where
  toJSRef = return . unTextMetrics
  {-# INLINE toJSRef #-}

instance FromJSRef TextMetrics where
  fromJSRef = return . fmap TextMetrics . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TextMetrics where
  toGObject = GObject . castRef . unTextMetrics
  unsafeCastGObject = TextMetrics . castRef . unGObject

castToTextMetrics :: IsGObject obj => obj -> TextMetrics
castToTextMetrics = castTo gTypeTextMetrics "TextMetrics"

foreign import javascript unsafe "window[\"TextMetrics\"]" gTypeTextMetrics' :: JSRef GType
gTypeTextMetrics = GType gTypeTextMetrics'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack Mozilla TextTrack documentation>
newtype TextTrack = TextTrack (JSRef TextTrack) deriving (Eq)

unTextTrack (TextTrack o) = o

instance ToJSRef TextTrack where
  toJSRef = return . unTextTrack
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrack where
  fromJSRef = return . fmap TextTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TextTrack where
  toGObject = GObject . castRef . unTextTrack
  unsafeCastGObject = TextTrack . castRef . unGObject

castToTextTrack :: IsGObject obj => obj -> TextTrack
castToTextTrack = castTo gTypeTextTrack "TextTrack"

foreign import javascript unsafe "window[\"TextTrack\"]" gTypeTextTrack' :: JSRef GType
gTypeTextTrack = GType gTypeTextTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation>
newtype TextTrackCue = TextTrackCue (JSRef TextTrackCue) deriving (Eq)

unTextTrackCue (TextTrackCue o) = o

instance ToJSRef TextTrackCue where
  toJSRef = return . unTextTrackCue
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrackCue where
  fromJSRef = return . fmap TextTrackCue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsTextTrackCue o
toTextTrackCue :: IsTextTrackCue o => o -> TextTrackCue
toTextTrackCue = unsafeCastGObject . toGObject

instance IsTextTrackCue TextTrackCue
instance IsEventTarget TextTrackCue
instance IsGObject TextTrackCue where
  toGObject = GObject . castRef . unTextTrackCue
  unsafeCastGObject = TextTrackCue . castRef . unGObject

castToTextTrackCue :: IsGObject obj => obj -> TextTrackCue
castToTextTrackCue = castTo gTypeTextTrackCue "TextTrackCue"

foreign import javascript unsafe "window[\"TextTrackCue\"]" gTypeTextTrackCue' :: JSRef GType
gTypeTextTrackCue = GType gTypeTextTrackCue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackCueList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList Mozilla TextTrackCueList documentation>
newtype TextTrackCueList = TextTrackCueList (JSRef TextTrackCueList) deriving (Eq)

unTextTrackCueList (TextTrackCueList o) = o

instance ToJSRef TextTrackCueList where
  toJSRef = return . unTextTrackCueList
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrackCueList where
  fromJSRef = return . fmap TextTrackCueList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TextTrackCueList where
  toGObject = GObject . castRef . unTextTrackCueList
  unsafeCastGObject = TextTrackCueList . castRef . unGObject

castToTextTrackCueList :: IsGObject obj => obj -> TextTrackCueList
castToTextTrackCueList = castTo gTypeTextTrackCueList "TextTrackCueList"

foreign import javascript unsafe "window[\"TextTrackCueList\"]" gTypeTextTrackCueList' :: JSRef GType
gTypeTextTrackCueList = GType gTypeTextTrackCueList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList Mozilla TextTrackList documentation>
newtype TextTrackList = TextTrackList (JSRef TextTrackList) deriving (Eq)

unTextTrackList (TextTrackList o) = o

instance ToJSRef TextTrackList where
  toJSRef = return . unTextTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrackList where
  fromJSRef = return . fmap TextTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget TextTrackList
instance IsGObject TextTrackList where
  toGObject = GObject . castRef . unTextTrackList
  unsafeCastGObject = TextTrackList . castRef . unGObject

castToTextTrackList :: IsGObject obj => obj -> TextTrackList
castToTextTrackList = castTo gTypeTextTrackList "TextTrackList"

foreign import javascript unsafe "window[\"TextTrackList\"]" gTypeTextTrackList' :: JSRef GType
gTypeTextTrackList = GType gTypeTextTrackList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TimeRanges".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges Mozilla TimeRanges documentation>
newtype TimeRanges = TimeRanges (JSRef TimeRanges) deriving (Eq)

unTimeRanges (TimeRanges o) = o

instance ToJSRef TimeRanges where
  toJSRef = return . unTimeRanges
  {-# INLINE toJSRef #-}

instance FromJSRef TimeRanges where
  fromJSRef = return . fmap TimeRanges . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TimeRanges where
  toGObject = GObject . castRef . unTimeRanges
  unsafeCastGObject = TimeRanges . castRef . unGObject

castToTimeRanges :: IsGObject obj => obj -> TimeRanges
castToTimeRanges = castTo gTypeTimeRanges "TimeRanges"

foreign import javascript unsafe "window[\"TimeRanges\"]" gTypeTimeRanges' :: JSRef GType
gTypeTimeRanges = GType gTypeTimeRanges'
#else
type IsTimeRanges o = TimeRangesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Touch".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Touch Mozilla Touch documentation>
newtype Touch = Touch (JSRef Touch) deriving (Eq)

unTouch (Touch o) = o

instance ToJSRef Touch where
  toJSRef = return . unTouch
  {-# INLINE toJSRef #-}

instance FromJSRef Touch where
  fromJSRef = return . fmap Touch . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject Touch where
  toGObject = GObject . castRef . unTouch
  unsafeCastGObject = Touch . castRef . unGObject

castToTouch :: IsGObject obj => obj -> Touch
castToTouch = castTo gTypeTouch "Touch"

foreign import javascript unsafe "window[\"Touch\"]" gTypeTouch' :: JSRef GType
gTypeTouch = GType gTypeTouch'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TouchEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent Mozilla TouchEvent documentation>
newtype TouchEvent = TouchEvent (JSRef TouchEvent) deriving (Eq)

unTouchEvent (TouchEvent o) = o

instance ToJSRef TouchEvent where
  toJSRef = return . unTouchEvent
  {-# INLINE toJSRef #-}

instance FromJSRef TouchEvent where
  fromJSRef = return . fmap TouchEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent TouchEvent
instance IsEvent TouchEvent
instance IsGObject TouchEvent where
  toGObject = GObject . castRef . unTouchEvent
  unsafeCastGObject = TouchEvent . castRef . unGObject

castToTouchEvent :: IsGObject obj => obj -> TouchEvent
castToTouchEvent = castTo gTypeTouchEvent "TouchEvent"

foreign import javascript unsafe "window[\"TouchEvent\"]" gTypeTouchEvent' :: JSRef GType
gTypeTouchEvent = GType gTypeTouchEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TouchList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchList Mozilla TouchList documentation>
newtype TouchList = TouchList (JSRef TouchList) deriving (Eq)

unTouchList (TouchList o) = o

instance ToJSRef TouchList where
  toJSRef = return . unTouchList
  {-# INLINE toJSRef #-}

instance FromJSRef TouchList where
  fromJSRef = return . fmap TouchList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TouchList where
  toGObject = GObject . castRef . unTouchList
  unsafeCastGObject = TouchList . castRef . unGObject

castToTouchList :: IsGObject obj => obj -> TouchList
castToTouchList = castTo gTypeTouchList "TouchList"

foreign import javascript unsafe "window[\"TouchList\"]" gTypeTouchList' :: JSRef GType
gTypeTouchList = GType gTypeTouchList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TrackEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent Mozilla TrackEvent documentation>
newtype TrackEvent = TrackEvent (JSRef TrackEvent) deriving (Eq)

unTrackEvent (TrackEvent o) = o

instance ToJSRef TrackEvent where
  toJSRef = return . unTrackEvent
  {-# INLINE toJSRef #-}

instance FromJSRef TrackEvent where
  fromJSRef = return . fmap TrackEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent TrackEvent
instance IsGObject TrackEvent where
  toGObject = GObject . castRef . unTrackEvent
  unsafeCastGObject = TrackEvent . castRef . unGObject

castToTrackEvent :: IsGObject obj => obj -> TrackEvent
castToTrackEvent = castTo gTypeTrackEvent "TrackEvent"

foreign import javascript unsafe "window[\"TrackEvent\"]" gTypeTrackEvent' :: JSRef GType
gTypeTrackEvent = GType gTypeTrackEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TransitionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent Mozilla TransitionEvent documentation>
newtype TransitionEvent = TransitionEvent (JSRef TransitionEvent) deriving (Eq)

unTransitionEvent (TransitionEvent o) = o

instance ToJSRef TransitionEvent where
  toJSRef = return . unTransitionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef TransitionEvent where
  fromJSRef = return . fmap TransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent TransitionEvent
instance IsGObject TransitionEvent where
  toGObject = GObject . castRef . unTransitionEvent
  unsafeCastGObject = TransitionEvent . castRef . unGObject

castToTransitionEvent :: IsGObject obj => obj -> TransitionEvent
castToTransitionEvent = castTo gTypeTransitionEvent "TransitionEvent"

foreign import javascript unsafe "window[\"TransitionEvent\"]" gTypeTransitionEvent' :: JSRef GType
gTypeTransitionEvent = GType gTypeTransitionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TreeWalker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker Mozilla TreeWalker documentation>
newtype TreeWalker = TreeWalker (JSRef TreeWalker) deriving (Eq)

unTreeWalker (TreeWalker o) = o

instance ToJSRef TreeWalker where
  toJSRef = return . unTreeWalker
  {-# INLINE toJSRef #-}

instance FromJSRef TreeWalker where
  fromJSRef = return . fmap TreeWalker . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TreeWalker where
  toGObject = GObject . castRef . unTreeWalker
  unsafeCastGObject = TreeWalker . castRef . unGObject

castToTreeWalker :: IsGObject obj => obj -> TreeWalker
castToTreeWalker = castTo gTypeTreeWalker "TreeWalker"

foreign import javascript unsafe "window[\"TreeWalker\"]" gTypeTreeWalker' :: JSRef GType
gTypeTreeWalker = GType gTypeTreeWalker'
#else
type IsTreeWalker o = TreeWalkerClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TypeConversions".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions Mozilla TypeConversions documentation>
newtype TypeConversions = TypeConversions (JSRef TypeConversions) deriving (Eq)

unTypeConversions (TypeConversions o) = o

instance ToJSRef TypeConversions where
  toJSRef = return . unTypeConversions
  {-# INLINE toJSRef #-}

instance FromJSRef TypeConversions where
  fromJSRef = return . fmap TypeConversions . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject TypeConversions where
  toGObject = GObject . castRef . unTypeConversions
  unsafeCastGObject = TypeConversions . castRef . unGObject

castToTypeConversions :: IsGObject obj => obj -> TypeConversions
castToTypeConversions = castTo gTypeTypeConversions "TypeConversions"

foreign import javascript unsafe "window[\"TypeConversions\"]" gTypeTypeConversions' :: JSRef GType
gTypeTypeConversions = GType gTypeTypeConversions'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UIEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent Mozilla UIEvent documentation>
newtype UIEvent = UIEvent (JSRef UIEvent) deriving (Eq)

unUIEvent (UIEvent o) = o

instance ToJSRef UIEvent where
  toJSRef = return . unUIEvent
  {-# INLINE toJSRef #-}

instance FromJSRef UIEvent where
  fromJSRef = return . fmap UIEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEvent o => IsUIEvent o
toUIEvent :: IsUIEvent o => o -> UIEvent
toUIEvent = unsafeCastGObject . toGObject

instance IsUIEvent UIEvent
instance IsEvent UIEvent
instance IsGObject UIEvent where
  toGObject = GObject . castRef . unUIEvent
  unsafeCastGObject = UIEvent . castRef . unGObject

castToUIEvent :: IsGObject obj => obj -> UIEvent
castToUIEvent = castTo gTypeUIEvent "UIEvent"

foreign import javascript unsafe "window[\"UIEvent\"]" gTypeUIEvent' :: JSRef GType
gTypeUIEvent = GType gTypeUIEvent'
#else
type IsUIEvent o = UIEventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UIRequestEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UIRequestEvent Mozilla UIRequestEvent documentation>
newtype UIRequestEvent = UIRequestEvent (JSRef UIRequestEvent) deriving (Eq)

unUIRequestEvent (UIRequestEvent o) = o

instance ToJSRef UIRequestEvent where
  toJSRef = return . unUIRequestEvent
  {-# INLINE toJSRef #-}

instance FromJSRef UIRequestEvent where
  fromJSRef = return . fmap UIRequestEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsUIEvent UIRequestEvent
instance IsEvent UIRequestEvent
instance IsGObject UIRequestEvent where
  toGObject = GObject . castRef . unUIRequestEvent
  unsafeCastGObject = UIRequestEvent . castRef . unGObject

castToUIRequestEvent :: IsGObject obj => obj -> UIRequestEvent
castToUIRequestEvent = castTo gTypeUIRequestEvent "UIRequestEvent"

foreign import javascript unsafe "window[\"UIRequestEvent\"]" gTypeUIRequestEvent' :: JSRef GType
gTypeUIRequestEvent = GType gTypeUIRequestEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.URLUtils".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils Mozilla URLUtils documentation>
newtype URLUtils = URLUtils (JSRef URLUtils) deriving (Eq)

unURLUtils (URLUtils o) = o

instance ToJSRef URLUtils where
  toJSRef = return . unURLUtils
  {-# INLINE toJSRef #-}

instance FromJSRef URLUtils where
  fromJSRef = return . fmap URLUtils . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject URLUtils where
  toGObject = GObject . castRef . unURLUtils
  unsafeCastGObject = URLUtils . castRef . unGObject

castToURLUtils :: IsGObject obj => obj -> URLUtils
castToURLUtils = castTo gTypeURLUtils "URLUtils"

foreign import javascript unsafe "window[\"URLUtils\"]" gTypeURLUtils' :: JSRef GType
gTypeURLUtils = GType gTypeURLUtils'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UserMessageHandler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler Mozilla UserMessageHandler documentation>
newtype UserMessageHandler = UserMessageHandler (JSRef UserMessageHandler) deriving (Eq)

unUserMessageHandler (UserMessageHandler o) = o

instance ToJSRef UserMessageHandler where
  toJSRef = return . unUserMessageHandler
  {-# INLINE toJSRef #-}

instance FromJSRef UserMessageHandler where
  fromJSRef = return . fmap UserMessageHandler . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject UserMessageHandler where
  toGObject = GObject . castRef . unUserMessageHandler
  unsafeCastGObject = UserMessageHandler . castRef . unGObject

castToUserMessageHandler :: IsGObject obj => obj -> UserMessageHandler
castToUserMessageHandler = castTo gTypeUserMessageHandler "UserMessageHandler"

foreign import javascript unsafe "window[\"UserMessageHandler\"]" gTypeUserMessageHandler' :: JSRef GType
gTypeUserMessageHandler = GType gTypeUserMessageHandler'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UserMessageHandlersNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandlersNamespace Mozilla UserMessageHandlersNamespace documentation>
newtype UserMessageHandlersNamespace = UserMessageHandlersNamespace (JSRef UserMessageHandlersNamespace) deriving (Eq)

unUserMessageHandlersNamespace (UserMessageHandlersNamespace o) = o

instance ToJSRef UserMessageHandlersNamespace where
  toJSRef = return . unUserMessageHandlersNamespace
  {-# INLINE toJSRef #-}

instance FromJSRef UserMessageHandlersNamespace where
  fromJSRef = return . fmap UserMessageHandlersNamespace . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject UserMessageHandlersNamespace where
  toGObject = GObject . castRef . unUserMessageHandlersNamespace
  unsafeCastGObject = UserMessageHandlersNamespace . castRef . unGObject

castToUserMessageHandlersNamespace :: IsGObject obj => obj -> UserMessageHandlersNamespace
castToUserMessageHandlersNamespace = castTo gTypeUserMessageHandlersNamespace "UserMessageHandlersNamespace"

foreign import javascript unsafe "window[\"UserMessageHandlersNamespace\"]" gTypeUserMessageHandlersNamespace' :: JSRef GType
gTypeUserMessageHandlersNamespace = GType gTypeUserMessageHandlersNamespace'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.TextTrackCue"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation>
newtype VTTCue = VTTCue (JSRef VTTCue) deriving (Eq)

unVTTCue (VTTCue o) = o

instance ToJSRef VTTCue where
  toJSRef = return . unVTTCue
  {-# INLINE toJSRef #-}

instance FromJSRef VTTCue where
  fromJSRef = return . fmap VTTCue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsTextTrackCue VTTCue
instance IsEventTarget VTTCue
instance IsGObject VTTCue where
  toGObject = GObject . castRef . unVTTCue
  unsafeCastGObject = VTTCue . castRef . unGObject

castToVTTCue :: IsGObject obj => obj -> VTTCue
castToVTTCue = castTo gTypeVTTCue "VTTCue"

foreign import javascript unsafe "window[\"VTTCue\"]" gTypeVTTCue' :: JSRef GType
gTypeVTTCue = GType gTypeVTTCue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTRegion".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation>
newtype VTTRegion = VTTRegion (JSRef VTTRegion) deriving (Eq)

unVTTRegion (VTTRegion o) = o

instance ToJSRef VTTRegion where
  toJSRef = return . unVTTRegion
  {-# INLINE toJSRef #-}

instance FromJSRef VTTRegion where
  fromJSRef = return . fmap VTTRegion . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject VTTRegion where
  toGObject = GObject . castRef . unVTTRegion
  unsafeCastGObject = VTTRegion . castRef . unGObject

castToVTTRegion :: IsGObject obj => obj -> VTTRegion
castToVTTRegion = castTo gTypeVTTRegion "VTTRegion"

foreign import javascript unsafe "window[\"VTTRegion\"]" gTypeVTTRegion' :: JSRef GType
gTypeVTTRegion = GType gTypeVTTRegion'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTRegionList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList Mozilla VTTRegionList documentation>
newtype VTTRegionList = VTTRegionList (JSRef VTTRegionList) deriving (Eq)

unVTTRegionList (VTTRegionList o) = o

instance ToJSRef VTTRegionList where
  toJSRef = return . unVTTRegionList
  {-# INLINE toJSRef #-}

instance FromJSRef VTTRegionList where
  fromJSRef = return . fmap VTTRegionList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject VTTRegionList where
  toGObject = GObject . castRef . unVTTRegionList
  unsafeCastGObject = VTTRegionList . castRef . unGObject

castToVTTRegionList :: IsGObject obj => obj -> VTTRegionList
castToVTTRegionList = castTo gTypeVTTRegionList "VTTRegionList"

foreign import javascript unsafe "window[\"VTTRegionList\"]" gTypeVTTRegionList' :: JSRef GType
gTypeVTTRegionList = GType gTypeVTTRegionList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ValidityState".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState Mozilla ValidityState documentation>
newtype ValidityState = ValidityState (JSRef ValidityState) deriving (Eq)

unValidityState (ValidityState o) = o

instance ToJSRef ValidityState where
  toJSRef = return . unValidityState
  {-# INLINE toJSRef #-}

instance FromJSRef ValidityState where
  fromJSRef = return . fmap ValidityState . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject ValidityState where
  toGObject = GObject . castRef . unValidityState
  unsafeCastGObject = ValidityState . castRef . unGObject

castToValidityState :: IsGObject obj => obj -> ValidityState
castToValidityState = castTo gTypeValidityState "ValidityState"

foreign import javascript unsafe "window[\"ValidityState\"]" gTypeValidityState' :: JSRef GType
gTypeValidityState = GType gTypeValidityState'
#else
type IsValidityState o = ValidityStateClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoPlaybackQuality".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality Mozilla VideoPlaybackQuality documentation>
newtype VideoPlaybackQuality = VideoPlaybackQuality (JSRef VideoPlaybackQuality) deriving (Eq)

unVideoPlaybackQuality (VideoPlaybackQuality o) = o

instance ToJSRef VideoPlaybackQuality where
  toJSRef = return . unVideoPlaybackQuality
  {-# INLINE toJSRef #-}

instance FromJSRef VideoPlaybackQuality where
  fromJSRef = return . fmap VideoPlaybackQuality . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject VideoPlaybackQuality where
  toGObject = GObject . castRef . unVideoPlaybackQuality
  unsafeCastGObject = VideoPlaybackQuality . castRef . unGObject

castToVideoPlaybackQuality :: IsGObject obj => obj -> VideoPlaybackQuality
castToVideoPlaybackQuality = castTo gTypeVideoPlaybackQuality "VideoPlaybackQuality"

foreign import javascript unsafe "window[\"VideoPlaybackQuality\"]" gTypeVideoPlaybackQuality' :: JSRef GType
gTypeVideoPlaybackQuality = GType gTypeVideoPlaybackQuality'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamTrack"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation>
newtype VideoStreamTrack = VideoStreamTrack (JSRef VideoStreamTrack) deriving (Eq)

unVideoStreamTrack (VideoStreamTrack o) = o

instance ToJSRef VideoStreamTrack where
  toJSRef = return . unVideoStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef VideoStreamTrack where
  fromJSRef = return . fmap VideoStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsMediaStreamTrack VideoStreamTrack
instance IsEventTarget VideoStreamTrack
instance IsGObject VideoStreamTrack where
  toGObject = GObject . castRef . unVideoStreamTrack
  unsafeCastGObject = VideoStreamTrack . castRef . unGObject

castToVideoStreamTrack :: IsGObject obj => obj -> VideoStreamTrack
castToVideoStreamTrack = castTo gTypeVideoStreamTrack "VideoStreamTrack"

foreign import javascript unsafe "window[\"VideoStreamTrack\"]" gTypeVideoStreamTrack' :: JSRef GType
gTypeVideoStreamTrack = GType gTypeVideoStreamTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack Mozilla VideoTrack documentation>
newtype VideoTrack = VideoTrack (JSRef VideoTrack) deriving (Eq)

unVideoTrack (VideoTrack o) = o

instance ToJSRef VideoTrack where
  toJSRef = return . unVideoTrack
  {-# INLINE toJSRef #-}

instance FromJSRef VideoTrack where
  fromJSRef = return . fmap VideoTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject VideoTrack where
  toGObject = GObject . castRef . unVideoTrack
  unsafeCastGObject = VideoTrack . castRef . unGObject

castToVideoTrack :: IsGObject obj => obj -> VideoTrack
castToVideoTrack = castTo gTypeVideoTrack "VideoTrack"

foreign import javascript unsafe "window[\"VideoTrack\"]" gTypeVideoTrack' :: JSRef GType
gTypeVideoTrack = GType gTypeVideoTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList Mozilla VideoTrackList documentation>
newtype VideoTrackList = VideoTrackList (JSRef VideoTrackList) deriving (Eq)

unVideoTrackList (VideoTrackList o) = o

instance ToJSRef VideoTrackList where
  toJSRef = return . unVideoTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef VideoTrackList where
  fromJSRef = return . fmap VideoTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget VideoTrackList
instance IsGObject VideoTrackList where
  toGObject = GObject . castRef . unVideoTrackList
  unsafeCastGObject = VideoTrackList . castRef . unGObject

castToVideoTrackList :: IsGObject obj => obj -> VideoTrackList
castToVideoTrackList = castTo gTypeVideoTrackList "VideoTrackList"

foreign import javascript unsafe "window[\"VideoTrackList\"]" gTypeVideoTrackList' :: JSRef GType
gTypeVideoTrackList = GType gTypeVideoTrackList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VoidCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation>
newtype VoidCallback = VoidCallback (JSRef VoidCallback) deriving (Eq)

unVoidCallback (VoidCallback o) = o

instance ToJSRef VoidCallback where
  toJSRef = return . unVoidCallback
  {-# INLINE toJSRef #-}

instance FromJSRef VoidCallback where
  fromJSRef = return . fmap VoidCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject VoidCallback where
  toGObject = GObject . castRef . unVoidCallback
  unsafeCastGObject = VoidCallback . castRef . unGObject

castToVoidCallback :: IsGObject obj => obj -> VoidCallback
castToVoidCallback = castTo gTypeVoidCallback "VoidCallback"

foreign import javascript unsafe "window[\"VoidCallback\"]" gTypeVoidCallback' :: JSRef GType
gTypeVoidCallback = GType gTypeVoidCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WaveShaperNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode Mozilla WaveShaperNode documentation>
newtype WaveShaperNode = WaveShaperNode (JSRef WaveShaperNode) deriving (Eq)

unWaveShaperNode (WaveShaperNode o) = o

instance ToJSRef WaveShaperNode where
  toJSRef = return . unWaveShaperNode
  {-# INLINE toJSRef #-}

instance FromJSRef WaveShaperNode where
  fromJSRef = return . fmap WaveShaperNode . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsAudioNode WaveShaperNode
instance IsEventTarget WaveShaperNode
instance IsGObject WaveShaperNode where
  toGObject = GObject . castRef . unWaveShaperNode
  unsafeCastGObject = WaveShaperNode . castRef . unGObject

castToWaveShaperNode :: IsGObject obj => obj -> WaveShaperNode
castToWaveShaperNode = castTo gTypeWaveShaperNode "WaveShaperNode"

foreign import javascript unsafe "window[\"WaveShaperNode\"]" gTypeWaveShaperNode' :: JSRef GType
gTypeWaveShaperNode = GType gTypeWaveShaperNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGL2RenderingContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WebGLRenderingContextBase"
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext Mozilla WebGL2RenderingContext documentation>
newtype WebGL2RenderingContext = WebGL2RenderingContext (JSRef WebGL2RenderingContext) deriving (Eq)

unWebGL2RenderingContext (WebGL2RenderingContext o) = o

instance ToJSRef WebGL2RenderingContext where
  toJSRef = return . unWebGL2RenderingContext
  {-# INLINE toJSRef #-}

instance FromJSRef WebGL2RenderingContext where
  fromJSRef = return . fmap WebGL2RenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsWebGLRenderingContextBase WebGL2RenderingContext
instance IsCanvasRenderingContext WebGL2RenderingContext
instance IsGObject WebGL2RenderingContext where
  toGObject = GObject . castRef . unWebGL2RenderingContext
  unsafeCastGObject = WebGL2RenderingContext . castRef . unGObject

castToWebGL2RenderingContext :: IsGObject obj => obj -> WebGL2RenderingContext
castToWebGL2RenderingContext = castTo gTypeWebGL2RenderingContext "WebGL2RenderingContext"

foreign import javascript unsafe "window[\"WebGL2RenderingContext\"]" gTypeWebGL2RenderingContext' :: JSRef GType
gTypeWebGL2RenderingContext = GType gTypeWebGL2RenderingContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLActiveInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo Mozilla WebGLActiveInfo documentation>
newtype WebGLActiveInfo = WebGLActiveInfo (JSRef WebGLActiveInfo) deriving (Eq)

unWebGLActiveInfo (WebGLActiveInfo o) = o

instance ToJSRef WebGLActiveInfo where
  toJSRef = return . unWebGLActiveInfo
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLActiveInfo where
  fromJSRef = return . fmap WebGLActiveInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLActiveInfo where
  toGObject = GObject . castRef . unWebGLActiveInfo
  unsafeCastGObject = WebGLActiveInfo . castRef . unGObject

castToWebGLActiveInfo :: IsGObject obj => obj -> WebGLActiveInfo
castToWebGLActiveInfo = castTo gTypeWebGLActiveInfo "WebGLActiveInfo"

foreign import javascript unsafe "window[\"WebGLActiveInfo\"]" gTypeWebGLActiveInfo' :: JSRef GType
gTypeWebGLActiveInfo = GType gTypeWebGLActiveInfo'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLBuffer Mozilla WebGLBuffer documentation>
newtype WebGLBuffer = WebGLBuffer (JSRef WebGLBuffer) deriving (Eq)

unWebGLBuffer (WebGLBuffer o) = o

instance ToJSRef WebGLBuffer where
  toJSRef = return . unWebGLBuffer
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLBuffer where
  fromJSRef = return . fmap WebGLBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLBuffer where
  toGObject = GObject . castRef . unWebGLBuffer
  unsafeCastGObject = WebGLBuffer . castRef . unGObject

castToWebGLBuffer :: IsGObject obj => obj -> WebGLBuffer
castToWebGLBuffer = castTo gTypeWebGLBuffer "WebGLBuffer"

foreign import javascript unsafe "window[\"WebGLBuffer\"]" gTypeWebGLBuffer' :: JSRef GType
gTypeWebGLBuffer = GType gTypeWebGLBuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTextureATC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureATC Mozilla WebGLCompressedTextureATC documentation>
newtype WebGLCompressedTextureATC = WebGLCompressedTextureATC (JSRef WebGLCompressedTextureATC) deriving (Eq)

unWebGLCompressedTextureATC (WebGLCompressedTextureATC o) = o

instance ToJSRef WebGLCompressedTextureATC where
  toJSRef = return . unWebGLCompressedTextureATC
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLCompressedTextureATC where
  fromJSRef = return . fmap WebGLCompressedTextureATC . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLCompressedTextureATC where
  toGObject = GObject . castRef . unWebGLCompressedTextureATC
  unsafeCastGObject = WebGLCompressedTextureATC . castRef . unGObject

castToWebGLCompressedTextureATC :: IsGObject obj => obj -> WebGLCompressedTextureATC
castToWebGLCompressedTextureATC = castTo gTypeWebGLCompressedTextureATC "WebGLCompressedTextureATC"

foreign import javascript unsafe "window[\"WebGLCompressedTextureATC\"]" gTypeWebGLCompressedTextureATC' :: JSRef GType
gTypeWebGLCompressedTextureATC = GType gTypeWebGLCompressedTextureATC'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTexturePVRTC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTexturePVRTC Mozilla WebGLCompressedTexturePVRTC documentation>
newtype WebGLCompressedTexturePVRTC = WebGLCompressedTexturePVRTC (JSRef WebGLCompressedTexturePVRTC) deriving (Eq)

unWebGLCompressedTexturePVRTC (WebGLCompressedTexturePVRTC o) = o

instance ToJSRef WebGLCompressedTexturePVRTC where
  toJSRef = return . unWebGLCompressedTexturePVRTC
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLCompressedTexturePVRTC where
  fromJSRef = return . fmap WebGLCompressedTexturePVRTC . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLCompressedTexturePVRTC where
  toGObject = GObject . castRef . unWebGLCompressedTexturePVRTC
  unsafeCastGObject = WebGLCompressedTexturePVRTC . castRef . unGObject

castToWebGLCompressedTexturePVRTC :: IsGObject obj => obj -> WebGLCompressedTexturePVRTC
castToWebGLCompressedTexturePVRTC = castTo gTypeWebGLCompressedTexturePVRTC "WebGLCompressedTexturePVRTC"

foreign import javascript unsafe "window[\"WebGLCompressedTexturePVRTC\"]" gTypeWebGLCompressedTexturePVRTC' :: JSRef GType
gTypeWebGLCompressedTexturePVRTC = GType gTypeWebGLCompressedTexturePVRTC'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTextureS3TC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureS3TC Mozilla WebGLCompressedTextureS3TC documentation>
newtype WebGLCompressedTextureS3TC = WebGLCompressedTextureS3TC (JSRef WebGLCompressedTextureS3TC) deriving (Eq)

unWebGLCompressedTextureS3TC (WebGLCompressedTextureS3TC o) = o

instance ToJSRef WebGLCompressedTextureS3TC where
  toJSRef = return . unWebGLCompressedTextureS3TC
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLCompressedTextureS3TC where
  fromJSRef = return . fmap WebGLCompressedTextureS3TC . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLCompressedTextureS3TC where
  toGObject = GObject . castRef . unWebGLCompressedTextureS3TC
  unsafeCastGObject = WebGLCompressedTextureS3TC . castRef . unGObject

castToWebGLCompressedTextureS3TC :: IsGObject obj => obj -> WebGLCompressedTextureS3TC
castToWebGLCompressedTextureS3TC = castTo gTypeWebGLCompressedTextureS3TC "WebGLCompressedTextureS3TC"

foreign import javascript unsafe "window[\"WebGLCompressedTextureS3TC\"]" gTypeWebGLCompressedTextureS3TC' :: JSRef GType
gTypeWebGLCompressedTextureS3TC = GType gTypeWebGLCompressedTextureS3TC'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLContextAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes Mozilla WebGLContextAttributes documentation>
newtype WebGLContextAttributes = WebGLContextAttributes (JSRef WebGLContextAttributes) deriving (Eq)

unWebGLContextAttributes (WebGLContextAttributes o) = o

instance ToJSRef WebGLContextAttributes where
  toJSRef = return . unWebGLContextAttributes
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLContextAttributes where
  fromJSRef = return . fmap WebGLContextAttributes . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLContextAttributes where
  toGObject = GObject . castRef . unWebGLContextAttributes
  unsafeCastGObject = WebGLContextAttributes . castRef . unGObject

castToWebGLContextAttributes :: IsGObject obj => obj -> WebGLContextAttributes
castToWebGLContextAttributes = castTo gTypeWebGLContextAttributes "WebGLContextAttributes"

foreign import javascript unsafe "window[\"WebGLContextAttributes\"]" gTypeWebGLContextAttributes' :: JSRef GType
gTypeWebGLContextAttributes = GType gTypeWebGLContextAttributes'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLContextEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent Mozilla WebGLContextEvent documentation>
newtype WebGLContextEvent = WebGLContextEvent (JSRef WebGLContextEvent) deriving (Eq)

unWebGLContextEvent (WebGLContextEvent o) = o

instance ToJSRef WebGLContextEvent where
  toJSRef = return . unWebGLContextEvent
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLContextEvent where
  fromJSRef = return . fmap WebGLContextEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent WebGLContextEvent
instance IsGObject WebGLContextEvent where
  toGObject = GObject . castRef . unWebGLContextEvent
  unsafeCastGObject = WebGLContextEvent . castRef . unGObject

castToWebGLContextEvent :: IsGObject obj => obj -> WebGLContextEvent
castToWebGLContextEvent = castTo gTypeWebGLContextEvent "WebGLContextEvent"

foreign import javascript unsafe "window[\"WebGLContextEvent\"]" gTypeWebGLContextEvent' :: JSRef GType
gTypeWebGLContextEvent = GType gTypeWebGLContextEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDebugRendererInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugRendererInfo Mozilla WebGLDebugRendererInfo documentation>
newtype WebGLDebugRendererInfo = WebGLDebugRendererInfo (JSRef WebGLDebugRendererInfo) deriving (Eq)

unWebGLDebugRendererInfo (WebGLDebugRendererInfo o) = o

instance ToJSRef WebGLDebugRendererInfo where
  toJSRef = return . unWebGLDebugRendererInfo
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLDebugRendererInfo where
  fromJSRef = return . fmap WebGLDebugRendererInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLDebugRendererInfo where
  toGObject = GObject . castRef . unWebGLDebugRendererInfo
  unsafeCastGObject = WebGLDebugRendererInfo . castRef . unGObject

castToWebGLDebugRendererInfo :: IsGObject obj => obj -> WebGLDebugRendererInfo
castToWebGLDebugRendererInfo = castTo gTypeWebGLDebugRendererInfo "WebGLDebugRendererInfo"

foreign import javascript unsafe "window[\"WebGLDebugRendererInfo\"]" gTypeWebGLDebugRendererInfo' :: JSRef GType
gTypeWebGLDebugRendererInfo = GType gTypeWebGLDebugRendererInfo'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDebugShaders".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders Mozilla WebGLDebugShaders documentation>
newtype WebGLDebugShaders = WebGLDebugShaders (JSRef WebGLDebugShaders) deriving (Eq)

unWebGLDebugShaders (WebGLDebugShaders o) = o

instance ToJSRef WebGLDebugShaders where
  toJSRef = return . unWebGLDebugShaders
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLDebugShaders where
  fromJSRef = return . fmap WebGLDebugShaders . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLDebugShaders where
  toGObject = GObject . castRef . unWebGLDebugShaders
  unsafeCastGObject = WebGLDebugShaders . castRef . unGObject

castToWebGLDebugShaders :: IsGObject obj => obj -> WebGLDebugShaders
castToWebGLDebugShaders = castTo gTypeWebGLDebugShaders "WebGLDebugShaders"

foreign import javascript unsafe "window[\"WebGLDebugShaders\"]" gTypeWebGLDebugShaders' :: JSRef GType
gTypeWebGLDebugShaders = GType gTypeWebGLDebugShaders'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDepthTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDepthTexture Mozilla WebGLDepthTexture documentation>
newtype WebGLDepthTexture = WebGLDepthTexture (JSRef WebGLDepthTexture) deriving (Eq)

unWebGLDepthTexture (WebGLDepthTexture o) = o

instance ToJSRef WebGLDepthTexture where
  toJSRef = return . unWebGLDepthTexture
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLDepthTexture where
  fromJSRef = return . fmap WebGLDepthTexture . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLDepthTexture where
  toGObject = GObject . castRef . unWebGLDepthTexture
  unsafeCastGObject = WebGLDepthTexture . castRef . unGObject

castToWebGLDepthTexture :: IsGObject obj => obj -> WebGLDepthTexture
castToWebGLDepthTexture = castTo gTypeWebGLDepthTexture "WebGLDepthTexture"

foreign import javascript unsafe "window[\"WebGLDepthTexture\"]" gTypeWebGLDepthTexture' :: JSRef GType
gTypeWebGLDepthTexture = GType gTypeWebGLDepthTexture'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDrawBuffers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDrawBuffers Mozilla WebGLDrawBuffers documentation>
newtype WebGLDrawBuffers = WebGLDrawBuffers (JSRef WebGLDrawBuffers) deriving (Eq)

unWebGLDrawBuffers (WebGLDrawBuffers o) = o

instance ToJSRef WebGLDrawBuffers where
  toJSRef = return . unWebGLDrawBuffers
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLDrawBuffers where
  fromJSRef = return . fmap WebGLDrawBuffers . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLDrawBuffers where
  toGObject = GObject . castRef . unWebGLDrawBuffers
  unsafeCastGObject = WebGLDrawBuffers . castRef . unGObject

castToWebGLDrawBuffers :: IsGObject obj => obj -> WebGLDrawBuffers
castToWebGLDrawBuffers = castTo gTypeWebGLDrawBuffers "WebGLDrawBuffers"

foreign import javascript unsafe "window[\"WebGLDrawBuffers\"]" gTypeWebGLDrawBuffers' :: JSRef GType
gTypeWebGLDrawBuffers = GType gTypeWebGLDrawBuffers'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLFramebuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLFramebuffer Mozilla WebGLFramebuffer documentation>
newtype WebGLFramebuffer = WebGLFramebuffer (JSRef WebGLFramebuffer) deriving (Eq)

unWebGLFramebuffer (WebGLFramebuffer o) = o

instance ToJSRef WebGLFramebuffer where
  toJSRef = return . unWebGLFramebuffer
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLFramebuffer where
  fromJSRef = return . fmap WebGLFramebuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLFramebuffer where
  toGObject = GObject . castRef . unWebGLFramebuffer
  unsafeCastGObject = WebGLFramebuffer . castRef . unGObject

castToWebGLFramebuffer :: IsGObject obj => obj -> WebGLFramebuffer
castToWebGLFramebuffer = castTo gTypeWebGLFramebuffer "WebGLFramebuffer"

foreign import javascript unsafe "window[\"WebGLFramebuffer\"]" gTypeWebGLFramebuffer' :: JSRef GType
gTypeWebGLFramebuffer = GType gTypeWebGLFramebuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLLoseContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext Mozilla WebGLLoseContext documentation>
newtype WebGLLoseContext = WebGLLoseContext (JSRef WebGLLoseContext) deriving (Eq)

unWebGLLoseContext (WebGLLoseContext o) = o

instance ToJSRef WebGLLoseContext where
  toJSRef = return . unWebGLLoseContext
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLLoseContext where
  fromJSRef = return . fmap WebGLLoseContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLLoseContext where
  toGObject = GObject . castRef . unWebGLLoseContext
  unsafeCastGObject = WebGLLoseContext . castRef . unGObject

castToWebGLLoseContext :: IsGObject obj => obj -> WebGLLoseContext
castToWebGLLoseContext = castTo gTypeWebGLLoseContext "WebGLLoseContext"

foreign import javascript unsafe "window[\"WebGLLoseContext\"]" gTypeWebGLLoseContext' :: JSRef GType
gTypeWebGLLoseContext = GType gTypeWebGLLoseContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLProgram".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLProgram Mozilla WebGLProgram documentation>
newtype WebGLProgram = WebGLProgram (JSRef WebGLProgram) deriving (Eq)

unWebGLProgram (WebGLProgram o) = o

instance ToJSRef WebGLProgram where
  toJSRef = return . unWebGLProgram
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLProgram where
  fromJSRef = return . fmap WebGLProgram . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLProgram where
  toGObject = GObject . castRef . unWebGLProgram
  unsafeCastGObject = WebGLProgram . castRef . unGObject

castToWebGLProgram :: IsGObject obj => obj -> WebGLProgram
castToWebGLProgram = castTo gTypeWebGLProgram "WebGLProgram"

foreign import javascript unsafe "window[\"WebGLProgram\"]" gTypeWebGLProgram' :: JSRef GType
gTypeWebGLProgram = GType gTypeWebGLProgram'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLQuery".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLQuery Mozilla WebGLQuery documentation>
newtype WebGLQuery = WebGLQuery (JSRef WebGLQuery) deriving (Eq)

unWebGLQuery (WebGLQuery o) = o

instance ToJSRef WebGLQuery where
  toJSRef = return . unWebGLQuery
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLQuery where
  fromJSRef = return . fmap WebGLQuery . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLQuery where
  toGObject = GObject . castRef . unWebGLQuery
  unsafeCastGObject = WebGLQuery . castRef . unGObject

castToWebGLQuery :: IsGObject obj => obj -> WebGLQuery
castToWebGLQuery = castTo gTypeWebGLQuery "WebGLQuery"

foreign import javascript unsafe "window[\"WebGLQuery\"]" gTypeWebGLQuery' :: JSRef GType
gTypeWebGLQuery = GType gTypeWebGLQuery'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderbuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderbuffer Mozilla WebGLRenderbuffer documentation>
newtype WebGLRenderbuffer = WebGLRenderbuffer (JSRef WebGLRenderbuffer) deriving (Eq)

unWebGLRenderbuffer (WebGLRenderbuffer o) = o

instance ToJSRef WebGLRenderbuffer where
  toJSRef = return . unWebGLRenderbuffer
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLRenderbuffer where
  fromJSRef = return . fmap WebGLRenderbuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLRenderbuffer where
  toGObject = GObject . castRef . unWebGLRenderbuffer
  unsafeCastGObject = WebGLRenderbuffer . castRef . unGObject

castToWebGLRenderbuffer :: IsGObject obj => obj -> WebGLRenderbuffer
castToWebGLRenderbuffer = castTo gTypeWebGLRenderbuffer "WebGLRenderbuffer"

foreign import javascript unsafe "window[\"WebGLRenderbuffer\"]" gTypeWebGLRenderbuffer' :: JSRef GType
gTypeWebGLRenderbuffer = GType gTypeWebGLRenderbuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderingContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WebGLRenderingContextBase"
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext Mozilla WebGLRenderingContext documentation>
newtype WebGLRenderingContext = WebGLRenderingContext (JSRef WebGLRenderingContext) deriving (Eq)

unWebGLRenderingContext (WebGLRenderingContext o) = o

instance ToJSRef WebGLRenderingContext where
  toJSRef = return . unWebGLRenderingContext
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLRenderingContext where
  fromJSRef = return . fmap WebGLRenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsWebGLRenderingContextBase WebGLRenderingContext
instance IsCanvasRenderingContext WebGLRenderingContext
instance IsGObject WebGLRenderingContext where
  toGObject = GObject . castRef . unWebGLRenderingContext
  unsafeCastGObject = WebGLRenderingContext . castRef . unGObject

castToWebGLRenderingContext :: IsGObject obj => obj -> WebGLRenderingContext
castToWebGLRenderingContext = castTo gTypeWebGLRenderingContext "WebGLRenderingContext"

foreign import javascript unsafe "window[\"WebGLRenderingContext\"]" gTypeWebGLRenderingContext' :: JSRef GType
gTypeWebGLRenderingContext = GType gTypeWebGLRenderingContext'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderingContextBase".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase Mozilla WebGLRenderingContextBase documentation>
newtype WebGLRenderingContextBase = WebGLRenderingContextBase (JSRef WebGLRenderingContextBase) deriving (Eq)

unWebGLRenderingContextBase (WebGLRenderingContextBase o) = o

instance ToJSRef WebGLRenderingContextBase where
  toJSRef = return . unWebGLRenderingContextBase
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLRenderingContextBase where
  fromJSRef = return . fmap WebGLRenderingContextBase . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsCanvasRenderingContext o => IsWebGLRenderingContextBase o
toWebGLRenderingContextBase :: IsWebGLRenderingContextBase o => o -> WebGLRenderingContextBase
toWebGLRenderingContextBase = unsafeCastGObject . toGObject

instance IsWebGLRenderingContextBase WebGLRenderingContextBase
instance IsCanvasRenderingContext WebGLRenderingContextBase
instance IsGObject WebGLRenderingContextBase where
  toGObject = GObject . castRef . unWebGLRenderingContextBase
  unsafeCastGObject = WebGLRenderingContextBase . castRef . unGObject

castToWebGLRenderingContextBase :: IsGObject obj => obj -> WebGLRenderingContextBase
castToWebGLRenderingContextBase = castTo gTypeWebGLRenderingContextBase "WebGLRenderingContextBase"

foreign import javascript unsafe "window[\"WebGLRenderingContextBase\"]" gTypeWebGLRenderingContextBase' :: JSRef GType
gTypeWebGLRenderingContextBase = GType gTypeWebGLRenderingContextBase'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLSampler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSampler Mozilla WebGLSampler documentation>
newtype WebGLSampler = WebGLSampler (JSRef WebGLSampler) deriving (Eq)

unWebGLSampler (WebGLSampler o) = o

instance ToJSRef WebGLSampler where
  toJSRef = return . unWebGLSampler
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLSampler where
  fromJSRef = return . fmap WebGLSampler . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLSampler where
  toGObject = GObject . castRef . unWebGLSampler
  unsafeCastGObject = WebGLSampler . castRef . unGObject

castToWebGLSampler :: IsGObject obj => obj -> WebGLSampler
castToWebGLSampler = castTo gTypeWebGLSampler "WebGLSampler"

foreign import javascript unsafe "window[\"WebGLSampler\"]" gTypeWebGLSampler' :: JSRef GType
gTypeWebGLSampler = GType gTypeWebGLSampler'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLShader".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShader Mozilla WebGLShader documentation>
newtype WebGLShader = WebGLShader (JSRef WebGLShader) deriving (Eq)

unWebGLShader (WebGLShader o) = o

instance ToJSRef WebGLShader where
  toJSRef = return . unWebGLShader
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLShader where
  fromJSRef = return . fmap WebGLShader . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLShader where
  toGObject = GObject . castRef . unWebGLShader
  unsafeCastGObject = WebGLShader . castRef . unGObject

castToWebGLShader :: IsGObject obj => obj -> WebGLShader
castToWebGLShader = castTo gTypeWebGLShader "WebGLShader"

foreign import javascript unsafe "window[\"WebGLShader\"]" gTypeWebGLShader' :: JSRef GType
gTypeWebGLShader = GType gTypeWebGLShader'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLShaderPrecisionFormat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat Mozilla WebGLShaderPrecisionFormat documentation>
newtype WebGLShaderPrecisionFormat = WebGLShaderPrecisionFormat (JSRef WebGLShaderPrecisionFormat) deriving (Eq)

unWebGLShaderPrecisionFormat (WebGLShaderPrecisionFormat o) = o

instance ToJSRef WebGLShaderPrecisionFormat where
  toJSRef = return . unWebGLShaderPrecisionFormat
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLShaderPrecisionFormat where
  fromJSRef = return . fmap WebGLShaderPrecisionFormat . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLShaderPrecisionFormat where
  toGObject = GObject . castRef . unWebGLShaderPrecisionFormat
  unsafeCastGObject = WebGLShaderPrecisionFormat . castRef . unGObject

castToWebGLShaderPrecisionFormat :: IsGObject obj => obj -> WebGLShaderPrecisionFormat
castToWebGLShaderPrecisionFormat = castTo gTypeWebGLShaderPrecisionFormat "WebGLShaderPrecisionFormat"

foreign import javascript unsafe "window[\"WebGLShaderPrecisionFormat\"]" gTypeWebGLShaderPrecisionFormat' :: JSRef GType
gTypeWebGLShaderPrecisionFormat = GType gTypeWebGLShaderPrecisionFormat'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSync Mozilla WebGLSync documentation>
newtype WebGLSync = WebGLSync (JSRef WebGLSync) deriving (Eq)

unWebGLSync (WebGLSync o) = o

instance ToJSRef WebGLSync where
  toJSRef = return . unWebGLSync
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLSync where
  fromJSRef = return . fmap WebGLSync . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLSync where
  toGObject = GObject . castRef . unWebGLSync
  unsafeCastGObject = WebGLSync . castRef . unGObject

castToWebGLSync :: IsGObject obj => obj -> WebGLSync
castToWebGLSync = castTo gTypeWebGLSync "WebGLSync"

foreign import javascript unsafe "window[\"WebGLSync\"]" gTypeWebGLSync' :: JSRef GType
gTypeWebGLSync = GType gTypeWebGLSync'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTexture Mozilla WebGLTexture documentation>
newtype WebGLTexture = WebGLTexture (JSRef WebGLTexture) deriving (Eq)

unWebGLTexture (WebGLTexture o) = o

instance ToJSRef WebGLTexture where
  toJSRef = return . unWebGLTexture
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLTexture where
  fromJSRef = return . fmap WebGLTexture . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLTexture where
  toGObject = GObject . castRef . unWebGLTexture
  unsafeCastGObject = WebGLTexture . castRef . unGObject

castToWebGLTexture :: IsGObject obj => obj -> WebGLTexture
castToWebGLTexture = castTo gTypeWebGLTexture "WebGLTexture"

foreign import javascript unsafe "window[\"WebGLTexture\"]" gTypeWebGLTexture' :: JSRef GType
gTypeWebGLTexture = GType gTypeWebGLTexture'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLTransformFeedback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTransformFeedback Mozilla WebGLTransformFeedback documentation>
newtype WebGLTransformFeedback = WebGLTransformFeedback (JSRef WebGLTransformFeedback) deriving (Eq)

unWebGLTransformFeedback (WebGLTransformFeedback o) = o

instance ToJSRef WebGLTransformFeedback where
  toJSRef = return . unWebGLTransformFeedback
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLTransformFeedback where
  fromJSRef = return . fmap WebGLTransformFeedback . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLTransformFeedback where
  toGObject = GObject . castRef . unWebGLTransformFeedback
  unsafeCastGObject = WebGLTransformFeedback . castRef . unGObject

castToWebGLTransformFeedback :: IsGObject obj => obj -> WebGLTransformFeedback
castToWebGLTransformFeedback = castTo gTypeWebGLTransformFeedback "WebGLTransformFeedback"

foreign import javascript unsafe "window[\"WebGLTransformFeedback\"]" gTypeWebGLTransformFeedback' :: JSRef GType
gTypeWebGLTransformFeedback = GType gTypeWebGLTransformFeedback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLUniformLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLUniformLocation Mozilla WebGLUniformLocation documentation>
newtype WebGLUniformLocation = WebGLUniformLocation (JSRef WebGLUniformLocation) deriving (Eq)

unWebGLUniformLocation (WebGLUniformLocation o) = o

instance ToJSRef WebGLUniformLocation where
  toJSRef = return . unWebGLUniformLocation
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLUniformLocation where
  fromJSRef = return . fmap WebGLUniformLocation . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLUniformLocation where
  toGObject = GObject . castRef . unWebGLUniformLocation
  unsafeCastGObject = WebGLUniformLocation . castRef . unGObject

castToWebGLUniformLocation :: IsGObject obj => obj -> WebGLUniformLocation
castToWebGLUniformLocation = castTo gTypeWebGLUniformLocation "WebGLUniformLocation"

foreign import javascript unsafe "window[\"WebGLUniformLocation\"]" gTypeWebGLUniformLocation' :: JSRef GType
gTypeWebGLUniformLocation = GType gTypeWebGLUniformLocation'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObject Mozilla WebGLVertexArrayObject documentation>
newtype WebGLVertexArrayObject = WebGLVertexArrayObject (JSRef WebGLVertexArrayObject) deriving (Eq)

unWebGLVertexArrayObject (WebGLVertexArrayObject o) = o

instance ToJSRef WebGLVertexArrayObject where
  toJSRef = return . unWebGLVertexArrayObject
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLVertexArrayObject where
  fromJSRef = return . fmap WebGLVertexArrayObject . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLVertexArrayObject where
  toGObject = GObject . castRef . unWebGLVertexArrayObject
  unsafeCastGObject = WebGLVertexArrayObject . castRef . unGObject

castToWebGLVertexArrayObject :: IsGObject obj => obj -> WebGLVertexArrayObject
castToWebGLVertexArrayObject = castTo gTypeWebGLVertexArrayObject "WebGLVertexArrayObject"

foreign import javascript unsafe "window[\"WebGLVertexArrayObject\"]" gTypeWebGLVertexArrayObject' :: JSRef GType
gTypeWebGLVertexArrayObject = GType gTypeWebGLVertexArrayObject'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLVertexArrayObjectOES".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObjectOES Mozilla WebGLVertexArrayObjectOES documentation>
newtype WebGLVertexArrayObjectOES = WebGLVertexArrayObjectOES (JSRef WebGLVertexArrayObjectOES) deriving (Eq)

unWebGLVertexArrayObjectOES (WebGLVertexArrayObjectOES o) = o

instance ToJSRef WebGLVertexArrayObjectOES where
  toJSRef = return . unWebGLVertexArrayObjectOES
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLVertexArrayObjectOES where
  fromJSRef = return . fmap WebGLVertexArrayObjectOES . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebGLVertexArrayObjectOES where
  toGObject = GObject . castRef . unWebGLVertexArrayObjectOES
  unsafeCastGObject = WebGLVertexArrayObjectOES . castRef . unGObject

castToWebGLVertexArrayObjectOES :: IsGObject obj => obj -> WebGLVertexArrayObjectOES
castToWebGLVertexArrayObjectOES = castTo gTypeWebGLVertexArrayObjectOES "WebGLVertexArrayObjectOES"

foreign import javascript unsafe "window[\"WebGLVertexArrayObjectOES\"]" gTypeWebGLVertexArrayObjectOES' :: JSRef GType
gTypeWebGLVertexArrayObjectOES = GType gTypeWebGLVertexArrayObjectOES'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitAnimationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent Mozilla WebKitAnimationEvent documentation>
newtype WebKitAnimationEvent = WebKitAnimationEvent (JSRef WebKitAnimationEvent) deriving (Eq)

unWebKitAnimationEvent (WebKitAnimationEvent o) = o

instance ToJSRef WebKitAnimationEvent where
  toJSRef = return . unWebKitAnimationEvent
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitAnimationEvent where
  fromJSRef = return . fmap WebKitAnimationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent WebKitAnimationEvent
instance IsGObject WebKitAnimationEvent where
  toGObject = GObject . castRef . unWebKitAnimationEvent
  unsafeCastGObject = WebKitAnimationEvent . castRef . unGObject

castToWebKitAnimationEvent :: IsGObject obj => obj -> WebKitAnimationEvent
castToWebKitAnimationEvent = castTo gTypeWebKitAnimationEvent "WebKitAnimationEvent"

foreign import javascript unsafe "window[\"WebKitAnimationEvent\"]" gTypeWebKitAnimationEvent' :: JSRef GType
gTypeWebKitAnimationEvent = GType gTypeWebKitAnimationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSFilterValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValueList"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue Mozilla WebKitCSSFilterValue documentation>
newtype WebKitCSSFilterValue = WebKitCSSFilterValue (JSRef WebKitCSSFilterValue) deriving (Eq)

unWebKitCSSFilterValue (WebKitCSSFilterValue o) = o

instance ToJSRef WebKitCSSFilterValue where
  toJSRef = return . unWebKitCSSFilterValue
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitCSSFilterValue where
  fromJSRef = return . fmap WebKitCSSFilterValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSValueList WebKitCSSFilterValue
instance IsCSSValue WebKitCSSFilterValue
instance IsGObject WebKitCSSFilterValue where
  toGObject = GObject . castRef . unWebKitCSSFilterValue
  unsafeCastGObject = WebKitCSSFilterValue . castRef . unGObject

castToWebKitCSSFilterValue :: IsGObject obj => obj -> WebKitCSSFilterValue
castToWebKitCSSFilterValue = castTo gTypeWebKitCSSFilterValue "WebKitCSSFilterValue"

foreign import javascript unsafe "window[\"WebKitCSSFilterValue\"]" gTypeWebKitCSSFilterValue' :: JSRef GType
gTypeWebKitCSSFilterValue = GType gTypeWebKitCSSFilterValue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation>
newtype WebKitCSSMatrix = WebKitCSSMatrix (JSRef WebKitCSSMatrix) deriving (Eq)

unWebKitCSSMatrix (WebKitCSSMatrix o) = o

instance ToJSRef WebKitCSSMatrix where
  toJSRef = return . unWebKitCSSMatrix
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitCSSMatrix where
  fromJSRef = return . fmap WebKitCSSMatrix . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebKitCSSMatrix where
  toGObject = GObject . castRef . unWebKitCSSMatrix
  unsafeCastGObject = WebKitCSSMatrix . castRef . unGObject

castToWebKitCSSMatrix :: IsGObject obj => obj -> WebKitCSSMatrix
castToWebKitCSSMatrix = castTo gTypeWebKitCSSMatrix "WebKitCSSMatrix"

foreign import javascript unsafe "window[\"WebKitCSSMatrix\"]" gTypeWebKitCSSMatrix' :: JSRef GType
gTypeWebKitCSSMatrix = GType gTypeWebKitCSSMatrix'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSRegionRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule Mozilla WebKitCSSRegionRule documentation>
newtype WebKitCSSRegionRule = WebKitCSSRegionRule (JSRef WebKitCSSRegionRule) deriving (Eq)

unWebKitCSSRegionRule (WebKitCSSRegionRule o) = o

instance ToJSRef WebKitCSSRegionRule where
  toJSRef = return . unWebKitCSSRegionRule
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitCSSRegionRule where
  fromJSRef = return . fmap WebKitCSSRegionRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule WebKitCSSRegionRule
instance IsGObject WebKitCSSRegionRule where
  toGObject = GObject . castRef . unWebKitCSSRegionRule
  unsafeCastGObject = WebKitCSSRegionRule . castRef . unGObject

castToWebKitCSSRegionRule :: IsGObject obj => obj -> WebKitCSSRegionRule
castToWebKitCSSRegionRule = castTo gTypeWebKitCSSRegionRule "WebKitCSSRegionRule"

foreign import javascript unsafe "window[\"WebKitCSSRegionRule\"]" gTypeWebKitCSSRegionRule' :: JSRef GType
gTypeWebKitCSSRegionRule = GType gTypeWebKitCSSRegionRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSTransformValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValueList"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue Mozilla WebKitCSSTransformValue documentation>
newtype WebKitCSSTransformValue = WebKitCSSTransformValue (JSRef WebKitCSSTransformValue) deriving (Eq)

unWebKitCSSTransformValue (WebKitCSSTransformValue o) = o

instance ToJSRef WebKitCSSTransformValue where
  toJSRef = return . unWebKitCSSTransformValue
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitCSSTransformValue where
  fromJSRef = return . fmap WebKitCSSTransformValue . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSValueList WebKitCSSTransformValue
instance IsCSSValue WebKitCSSTransformValue
instance IsGObject WebKitCSSTransformValue where
  toGObject = GObject . castRef . unWebKitCSSTransformValue
  unsafeCastGObject = WebKitCSSTransformValue . castRef . unGObject

castToWebKitCSSTransformValue :: IsGObject obj => obj -> WebKitCSSTransformValue
castToWebKitCSSTransformValue = castTo gTypeWebKitCSSTransformValue "WebKitCSSTransformValue"

foreign import javascript unsafe "window[\"WebKitCSSTransformValue\"]" gTypeWebKitCSSTransformValue' :: JSRef GType
gTypeWebKitCSSTransformValue = GType gTypeWebKitCSSTransformValue'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSViewportRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule Mozilla WebKitCSSViewportRule documentation>
newtype WebKitCSSViewportRule = WebKitCSSViewportRule (JSRef WebKitCSSViewportRule) deriving (Eq)

unWebKitCSSViewportRule (WebKitCSSViewportRule o) = o

instance ToJSRef WebKitCSSViewportRule where
  toJSRef = return . unWebKitCSSViewportRule
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitCSSViewportRule where
  fromJSRef = return . fmap WebKitCSSViewportRule . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsCSSRule WebKitCSSViewportRule
instance IsGObject WebKitCSSViewportRule where
  toGObject = GObject . castRef . unWebKitCSSViewportRule
  unsafeCastGObject = WebKitCSSViewportRule . castRef . unGObject

castToWebKitCSSViewportRule :: IsGObject obj => obj -> WebKitCSSViewportRule
castToWebKitCSSViewportRule = castTo gTypeWebKitCSSViewportRule "WebKitCSSViewportRule"

foreign import javascript unsafe "window[\"WebKitCSSViewportRule\"]" gTypeWebKitCSSViewportRule' :: JSRef GType
gTypeWebKitCSSViewportRule = GType gTypeWebKitCSSViewportRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamedFlow".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow Mozilla WebKitNamedFlow documentation>
newtype WebKitNamedFlow = WebKitNamedFlow (JSRef WebKitNamedFlow) deriving (Eq)

unWebKitNamedFlow (WebKitNamedFlow o) = o

instance ToJSRef WebKitNamedFlow where
  toJSRef = return . unWebKitNamedFlow
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitNamedFlow where
  fromJSRef = return . fmap WebKitNamedFlow . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget WebKitNamedFlow
instance IsGObject WebKitNamedFlow where
  toGObject = GObject . castRef . unWebKitNamedFlow
  unsafeCastGObject = WebKitNamedFlow . castRef . unGObject

castToWebKitNamedFlow :: IsGObject obj => obj -> WebKitNamedFlow
castToWebKitNamedFlow = castTo gTypeWebKitNamedFlow "WebKitNamedFlow"

foreign import javascript unsafe "window[\"WebKitNamedFlow\"]" gTypeWebKitNamedFlow' :: JSRef GType
gTypeWebKitNamedFlow = GType gTypeWebKitNamedFlow'
#else
type IsWebKitNamedFlow o = WebKitNamedFlowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace Mozilla WebKitNamespace documentation>
newtype WebKitNamespace = WebKitNamespace (JSRef WebKitNamespace) deriving (Eq)

unWebKitNamespace (WebKitNamespace o) = o

instance ToJSRef WebKitNamespace where
  toJSRef = return . unWebKitNamespace
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitNamespace where
  fromJSRef = return . fmap WebKitNamespace . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebKitNamespace where
  toGObject = GObject . castRef . unWebKitNamespace
  unsafeCastGObject = WebKitNamespace . castRef . unGObject

castToWebKitNamespace :: IsGObject obj => obj -> WebKitNamespace
castToWebKitNamespace = castTo gTypeWebKitNamespace "WebKitNamespace"

foreign import javascript unsafe "window[\"WebKitNamespace\"]" gTypeWebKitNamespace' :: JSRef GType
gTypeWebKitNamespace = GType gTypeWebKitNamespace'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitPlaybackTargetAvailabilityEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent Mozilla WebKitPlaybackTargetAvailabilityEvent documentation>
newtype WebKitPlaybackTargetAvailabilityEvent = WebKitPlaybackTargetAvailabilityEvent (JSRef WebKitPlaybackTargetAvailabilityEvent) deriving (Eq)

unWebKitPlaybackTargetAvailabilityEvent (WebKitPlaybackTargetAvailabilityEvent o) = o

instance ToJSRef WebKitPlaybackTargetAvailabilityEvent where
  toJSRef = return . unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitPlaybackTargetAvailabilityEvent where
  fromJSRef = return . fmap WebKitPlaybackTargetAvailabilityEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent WebKitPlaybackTargetAvailabilityEvent
instance IsGObject WebKitPlaybackTargetAvailabilityEvent where
  toGObject = GObject . castRef . unWebKitPlaybackTargetAvailabilityEvent
  unsafeCastGObject = WebKitPlaybackTargetAvailabilityEvent . castRef . unGObject

castToWebKitPlaybackTargetAvailabilityEvent :: IsGObject obj => obj -> WebKitPlaybackTargetAvailabilityEvent
castToWebKitPlaybackTargetAvailabilityEvent = castTo gTypeWebKitPlaybackTargetAvailabilityEvent "WebKitPlaybackTargetAvailabilityEvent"

foreign import javascript unsafe "window[\"WebKitPlaybackTargetAvailabilityEvent\"]" gTypeWebKitPlaybackTargetAvailabilityEvent' :: JSRef GType
gTypeWebKitPlaybackTargetAvailabilityEvent = GType gTypeWebKitPlaybackTargetAvailabilityEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation>
newtype WebKitPoint = WebKitPoint (JSRef WebKitPoint) deriving (Eq)

unWebKitPoint (WebKitPoint o) = o

instance ToJSRef WebKitPoint where
  toJSRef = return . unWebKitPoint
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitPoint where
  fromJSRef = return . fmap WebKitPoint . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WebKitPoint where
  toGObject = GObject . castRef . unWebKitPoint
  unsafeCastGObject = WebKitPoint . castRef . unGObject

castToWebKitPoint :: IsGObject obj => obj -> WebKitPoint
castToWebKitPoint = castTo gTypeWebKitPoint "WebKitPoint"

foreign import javascript unsafe "window[\"WebKitPoint\"]" gTypeWebKitPoint' :: JSRef GType
gTypeWebKitPoint = GType gTypeWebKitPoint'
#else
type IsWebKitPoint o = WebKitPointClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitTransitionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent Mozilla WebKitTransitionEvent documentation>
newtype WebKitTransitionEvent = WebKitTransitionEvent (JSRef WebKitTransitionEvent) deriving (Eq)

unWebKitTransitionEvent (WebKitTransitionEvent o) = o

instance ToJSRef WebKitTransitionEvent where
  toJSRef = return . unWebKitTransitionEvent
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitTransitionEvent where
  fromJSRef = return . fmap WebKitTransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEvent WebKitTransitionEvent
instance IsGObject WebKitTransitionEvent where
  toGObject = GObject . castRef . unWebKitTransitionEvent
  unsafeCastGObject = WebKitTransitionEvent . castRef . unGObject

castToWebKitTransitionEvent :: IsGObject obj => obj -> WebKitTransitionEvent
castToWebKitTransitionEvent = castTo gTypeWebKitTransitionEvent "WebKitTransitionEvent"

foreign import javascript unsafe "window[\"WebKitTransitionEvent\"]" gTypeWebKitTransitionEvent' :: JSRef GType
gTypeWebKitTransitionEvent = GType gTypeWebKitTransitionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebSocket".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation>
newtype WebSocket = WebSocket (JSRef WebSocket) deriving (Eq)

unWebSocket (WebSocket o) = o

instance ToJSRef WebSocket where
  toJSRef = return . unWebSocket
  {-# INLINE toJSRef #-}

instance FromJSRef WebSocket where
  fromJSRef = return . fmap WebSocket . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget WebSocket
instance IsGObject WebSocket where
  toGObject = GObject . castRef . unWebSocket
  unsafeCastGObject = WebSocket . castRef . unGObject

castToWebSocket :: IsGObject obj => obj -> WebSocket
castToWebSocket = castTo gTypeWebSocket "WebSocket"

foreign import javascript unsafe "window[\"WebSocket\"]" gTypeWebSocket' :: JSRef GType
gTypeWebSocket = GType gTypeWebSocket'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WheelEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MouseEvent"
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent Mozilla WheelEvent documentation>
newtype WheelEvent = WheelEvent (JSRef WheelEvent) deriving (Eq)

unWheelEvent (WheelEvent o) = o

instance ToJSRef WheelEvent where
  toJSRef = return . unWheelEvent
  {-# INLINE toJSRef #-}

instance FromJSRef WheelEvent where
  fromJSRef = return . fmap WheelEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsMouseEvent WheelEvent
instance IsUIEvent WheelEvent
instance IsEvent WheelEvent
instance IsGObject WheelEvent where
  toGObject = GObject . castRef . unWheelEvent
  unsafeCastGObject = WheelEvent . castRef . unGObject

castToWheelEvent :: IsGObject obj => obj -> WheelEvent
castToWheelEvent = castTo gTypeWheelEvent "WheelEvent"

foreign import javascript unsafe "window[\"WheelEvent\"]" gTypeWheelEvent' :: JSRef GType
gTypeWheelEvent = GType gTypeWheelEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WindowBase64".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64 Mozilla WindowBase64 documentation>
newtype WindowBase64 = WindowBase64 (JSRef WindowBase64) deriving (Eq)

unWindowBase64 (WindowBase64 o) = o

instance ToJSRef WindowBase64 where
  toJSRef = return . unWindowBase64
  {-# INLINE toJSRef #-}

instance FromJSRef WindowBase64 where
  fromJSRef = return . fmap WindowBase64 . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WindowBase64 where
  toGObject = GObject . castRef . unWindowBase64
  unsafeCastGObject = WindowBase64 . castRef . unGObject

castToWindowBase64 :: IsGObject obj => obj -> WindowBase64
castToWindowBase64 = castTo gTypeWindowBase64 "WindowBase64"

foreign import javascript unsafe "window[\"WindowBase64\"]" gTypeWindowBase64' :: JSRef GType
gTypeWindowBase64 = GType gTypeWindowBase64'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WindowTimers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers Mozilla WindowTimers documentation>
newtype WindowTimers = WindowTimers (JSRef WindowTimers) deriving (Eq)

unWindowTimers (WindowTimers o) = o

instance ToJSRef WindowTimers where
  toJSRef = return . unWindowTimers
  {-# INLINE toJSRef #-}

instance FromJSRef WindowTimers where
  fromJSRef = return . fmap WindowTimers . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WindowTimers where
  toGObject = GObject . castRef . unWindowTimers
  unsafeCastGObject = WindowTimers . castRef . unGObject

castToWindowTimers :: IsGObject obj => obj -> WindowTimers
castToWindowTimers = castTo gTypeWindowTimers "WindowTimers"

foreign import javascript unsafe "window[\"WindowTimers\"]" gTypeWindowTimers' :: JSRef GType
gTypeWindowTimers = GType gTypeWindowTimers'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Worker".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation>
newtype Worker = Worker (JSRef Worker) deriving (Eq)

unWorker (Worker o) = o

instance ToJSRef Worker where
  toJSRef = return . unWorker
  {-# INLINE toJSRef #-}

instance FromJSRef Worker where
  fromJSRef = return . fmap Worker . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget Worker
instance IsGObject Worker where
  toGObject = GObject . castRef . unWorker
  unsafeCastGObject = Worker . castRef . unGObject

castToWorker :: IsGObject obj => obj -> Worker
castToWorker = castTo gTypeWorker "Worker"

foreign import javascript unsafe "window[\"Worker\"]" gTypeWorker' :: JSRef GType
gTypeWorker = GType gTypeWorker'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope Mozilla WorkerGlobalScope documentation>
newtype WorkerGlobalScope = WorkerGlobalScope (JSRef WorkerGlobalScope) deriving (Eq)

unWorkerGlobalScope (WorkerGlobalScope o) = o

instance ToJSRef WorkerGlobalScope where
  toJSRef = return . unWorkerGlobalScope
  {-# INLINE toJSRef #-}

instance FromJSRef WorkerGlobalScope where
  fromJSRef = return . fmap WorkerGlobalScope . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsWorkerGlobalScope o
toWorkerGlobalScope :: IsWorkerGlobalScope o => o -> WorkerGlobalScope
toWorkerGlobalScope = unsafeCastGObject . toGObject

instance IsWorkerGlobalScope WorkerGlobalScope
instance IsEventTarget WorkerGlobalScope
instance IsGObject WorkerGlobalScope where
  toGObject = GObject . castRef . unWorkerGlobalScope
  unsafeCastGObject = WorkerGlobalScope . castRef . unGObject

castToWorkerGlobalScope :: IsGObject obj => obj -> WorkerGlobalScope
castToWorkerGlobalScope = castTo gTypeWorkerGlobalScope "WorkerGlobalScope"

foreign import javascript unsafe "window[\"WorkerGlobalScope\"]" gTypeWorkerGlobalScope' :: JSRef GType
gTypeWorkerGlobalScope = GType gTypeWorkerGlobalScope'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation Mozilla WorkerLocation documentation>
newtype WorkerLocation = WorkerLocation (JSRef WorkerLocation) deriving (Eq)

unWorkerLocation (WorkerLocation o) = o

instance ToJSRef WorkerLocation where
  toJSRef = return . unWorkerLocation
  {-# INLINE toJSRef #-}

instance FromJSRef WorkerLocation where
  fromJSRef = return . fmap WorkerLocation . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WorkerLocation where
  toGObject = GObject . castRef . unWorkerLocation
  unsafeCastGObject = WorkerLocation . castRef . unGObject

castToWorkerLocation :: IsGObject obj => obj -> WorkerLocation
castToWorkerLocation = castTo gTypeWorkerLocation "WorkerLocation"

foreign import javascript unsafe "window[\"WorkerLocation\"]" gTypeWorkerLocation' :: JSRef GType
gTypeWorkerLocation = GType gTypeWorkerLocation'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerNavigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator Mozilla WorkerNavigator documentation>
newtype WorkerNavigator = WorkerNavigator (JSRef WorkerNavigator) deriving (Eq)

unWorkerNavigator (WorkerNavigator o) = o

instance ToJSRef WorkerNavigator where
  toJSRef = return . unWorkerNavigator
  {-# INLINE toJSRef #-}

instance FromJSRef WorkerNavigator where
  fromJSRef = return . fmap WorkerNavigator . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject WorkerNavigator where
  toGObject = GObject . castRef . unWorkerNavigator
  unsafeCastGObject = WorkerNavigator . castRef . unGObject

castToWorkerNavigator :: IsGObject obj => obj -> WorkerNavigator
castToWorkerNavigator = castTo gTypeWorkerNavigator "WorkerNavigator"

foreign import javascript unsafe "window[\"WorkerNavigator\"]" gTypeWorkerNavigator' :: JSRef GType
gTypeWorkerNavigator = GType gTypeWorkerNavigator'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation>
newtype XMLHttpRequest = XMLHttpRequest (JSRef XMLHttpRequest) deriving (Eq)

unXMLHttpRequest (XMLHttpRequest o) = o

instance ToJSRef XMLHttpRequest where
  toJSRef = return . unXMLHttpRequest
  {-# INLINE toJSRef #-}

instance FromJSRef XMLHttpRequest where
  fromJSRef = return . fmap XMLHttpRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget XMLHttpRequest
instance IsGObject XMLHttpRequest where
  toGObject = GObject . castRef . unXMLHttpRequest
  unsafeCastGObject = XMLHttpRequest . castRef . unGObject

castToXMLHttpRequest :: IsGObject obj => obj -> XMLHttpRequest
castToXMLHttpRequest = castTo gTypeXMLHttpRequest "XMLHttpRequest"

foreign import javascript unsafe "window[\"XMLHttpRequest\"]" gTypeXMLHttpRequest' :: JSRef GType
gTypeXMLHttpRequest = GType gTypeXMLHttpRequest'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequestProgressEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.ProgressEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent Mozilla XMLHttpRequestProgressEvent documentation>
newtype XMLHttpRequestProgressEvent = XMLHttpRequestProgressEvent (JSRef XMLHttpRequestProgressEvent) deriving (Eq)

unXMLHttpRequestProgressEvent (XMLHttpRequestProgressEvent o) = o

instance ToJSRef XMLHttpRequestProgressEvent where
  toJSRef = return . unXMLHttpRequestProgressEvent
  {-# INLINE toJSRef #-}

instance FromJSRef XMLHttpRequestProgressEvent where
  fromJSRef = return . fmap XMLHttpRequestProgressEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsProgressEvent XMLHttpRequestProgressEvent
instance IsEvent XMLHttpRequestProgressEvent
instance IsGObject XMLHttpRequestProgressEvent where
  toGObject = GObject . castRef . unXMLHttpRequestProgressEvent
  unsafeCastGObject = XMLHttpRequestProgressEvent . castRef . unGObject

castToXMLHttpRequestProgressEvent :: IsGObject obj => obj -> XMLHttpRequestProgressEvent
castToXMLHttpRequestProgressEvent = castTo gTypeXMLHttpRequestProgressEvent "XMLHttpRequestProgressEvent"

foreign import javascript unsafe "window[\"XMLHttpRequestProgressEvent\"]" gTypeXMLHttpRequestProgressEvent' :: JSRef GType
gTypeXMLHttpRequestProgressEvent = GType gTypeXMLHttpRequestProgressEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequestUpload".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload Mozilla XMLHttpRequestUpload documentation>
newtype XMLHttpRequestUpload = XMLHttpRequestUpload (JSRef XMLHttpRequestUpload) deriving (Eq)

unXMLHttpRequestUpload (XMLHttpRequestUpload o) = o

instance ToJSRef XMLHttpRequestUpload where
  toJSRef = return . unXMLHttpRequestUpload
  {-# INLINE toJSRef #-}

instance FromJSRef XMLHttpRequestUpload where
  fromJSRef = return . fmap XMLHttpRequestUpload . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsEventTarget XMLHttpRequestUpload
instance IsGObject XMLHttpRequestUpload where
  toGObject = GObject . castRef . unXMLHttpRequestUpload
  unsafeCastGObject = XMLHttpRequestUpload . castRef . unGObject

castToXMLHttpRequestUpload :: IsGObject obj => obj -> XMLHttpRequestUpload
castToXMLHttpRequestUpload = castTo gTypeXMLHttpRequestUpload "XMLHttpRequestUpload"

foreign import javascript unsafe "window[\"XMLHttpRequestUpload\"]" gTypeXMLHttpRequestUpload' :: JSRef GType
gTypeXMLHttpRequestUpload = GType gTypeXMLHttpRequestUpload'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLSerializer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation>
newtype XMLSerializer = XMLSerializer (JSRef XMLSerializer) deriving (Eq)

unXMLSerializer (XMLSerializer o) = o

instance ToJSRef XMLSerializer where
  toJSRef = return . unXMLSerializer
  {-# INLINE toJSRef #-}

instance FromJSRef XMLSerializer where
  fromJSRef = return . fmap XMLSerializer . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XMLSerializer where
  toGObject = GObject . castRef . unXMLSerializer
  unsafeCastGObject = XMLSerializer . castRef . unGObject

castToXMLSerializer :: IsGObject obj => obj -> XMLSerializer
castToXMLSerializer = castTo gTypeXMLSerializer "XMLSerializer"

foreign import javascript unsafe "window[\"XMLSerializer\"]" gTypeXMLSerializer' :: JSRef GType
gTypeXMLSerializer = GType gTypeXMLSerializer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathEvaluator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation>
newtype XPathEvaluator = XPathEvaluator (JSRef XPathEvaluator) deriving (Eq)

unXPathEvaluator (XPathEvaluator o) = o

instance ToJSRef XPathEvaluator where
  toJSRef = return . unXPathEvaluator
  {-# INLINE toJSRef #-}

instance FromJSRef XPathEvaluator where
  fromJSRef = return . fmap XPathEvaluator . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XPathEvaluator where
  toGObject = GObject . castRef . unXPathEvaluator
  unsafeCastGObject = XPathEvaluator . castRef . unGObject

castToXPathEvaluator :: IsGObject obj => obj -> XPathEvaluator
castToXPathEvaluator = castTo gTypeXPathEvaluator "XPathEvaluator"

foreign import javascript unsafe "window[\"XPathEvaluator\"]" gTypeXPathEvaluator' :: JSRef GType
gTypeXPathEvaluator = GType gTypeXPathEvaluator'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathExpression".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression Mozilla XPathExpression documentation>
newtype XPathExpression = XPathExpression (JSRef XPathExpression) deriving (Eq)

unXPathExpression (XPathExpression o) = o

instance ToJSRef XPathExpression where
  toJSRef = return . unXPathExpression
  {-# INLINE toJSRef #-}

instance FromJSRef XPathExpression where
  fromJSRef = return . fmap XPathExpression . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XPathExpression where
  toGObject = GObject . castRef . unXPathExpression
  unsafeCastGObject = XPathExpression . castRef . unGObject

castToXPathExpression :: IsGObject obj => obj -> XPathExpression
castToXPathExpression = castTo gTypeXPathExpression "XPathExpression"

foreign import javascript unsafe "window[\"XPathExpression\"]" gTypeXPathExpression' :: JSRef GType
gTypeXPathExpression = GType gTypeXPathExpression'
#else
type IsXPathExpression o = XPathExpressionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathNSResolver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver Mozilla XPathNSResolver documentation>
newtype XPathNSResolver = XPathNSResolver (JSRef XPathNSResolver) deriving (Eq)

unXPathNSResolver (XPathNSResolver o) = o

instance ToJSRef XPathNSResolver where
  toJSRef = return . unXPathNSResolver
  {-# INLINE toJSRef #-}

instance FromJSRef XPathNSResolver where
  fromJSRef = return . fmap XPathNSResolver . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XPathNSResolver where
  toGObject = GObject . castRef . unXPathNSResolver
  unsafeCastGObject = XPathNSResolver . castRef . unGObject

castToXPathNSResolver :: IsGObject obj => obj -> XPathNSResolver
castToXPathNSResolver = castTo gTypeXPathNSResolver "XPathNSResolver"

foreign import javascript unsafe "window[\"XPathNSResolver\"]" gTypeXPathNSResolver' :: JSRef GType
gTypeXPathNSResolver = GType gTypeXPathNSResolver'
#else
type IsXPathNSResolver o = XPathNSResolverClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathResult".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult Mozilla XPathResult documentation>
newtype XPathResult = XPathResult (JSRef XPathResult) deriving (Eq)

unXPathResult (XPathResult o) = o

instance ToJSRef XPathResult where
  toJSRef = return . unXPathResult
  {-# INLINE toJSRef #-}

instance FromJSRef XPathResult where
  fromJSRef = return . fmap XPathResult . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XPathResult where
  toGObject = GObject . castRef . unXPathResult
  unsafeCastGObject = XPathResult . castRef . unGObject

castToXPathResult :: IsGObject obj => obj -> XPathResult
castToXPathResult = castTo gTypeXPathResult "XPathResult"

foreign import javascript unsafe "window[\"XPathResult\"]" gTypeXPathResult' :: JSRef GType
gTypeXPathResult = GType gTypeXPathResult'
#else
type IsXPathResult o = XPathResultClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XSLTProcessor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation>
newtype XSLTProcessor = XSLTProcessor (JSRef XSLTProcessor) deriving (Eq)

unXSLTProcessor (XSLTProcessor o) = o

instance ToJSRef XSLTProcessor where
  toJSRef = return . unXSLTProcessor
  {-# INLINE toJSRef #-}

instance FromJSRef XSLTProcessor where
  fromJSRef = return . fmap XSLTProcessor . maybeJSNullOrUndefined
  {-# INLINE fromJSRef #-}

instance IsGObject XSLTProcessor where
  toGObject = GObject . castRef . unXSLTProcessor
  unsafeCastGObject = XSLTProcessor . castRef . unGObject

castToXSLTProcessor :: IsGObject obj => obj -> XSLTProcessor
castToXSLTProcessor = castTo gTypeXSLTProcessor "XSLTProcessor"

foreign import javascript unsafe "window[\"XSLTProcessor\"]" gTypeXSLTProcessor' :: JSRef GType
gTypeXSLTProcessor = GType gTypeXSLTProcessor'
#else
#endif


