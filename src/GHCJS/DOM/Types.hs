{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface, ConstraintKinds, FlexibleInstances #-}
#else
{-# LANGUAGE ConstraintKinds #-}
#endif
module GHCJS.DOM.Types (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  -- * Object
    maybeJSNullOrUndefined, Nullable(..), nullableToMaybe, maybeToNullable, propagateGError, GType(..)
  , GObject(..), IsGObject, toGObject, castToGObject, gTypeGObject, unsafeCastGObject, isA, objectToString
  , js_eq

  -- * DOMString
  , DOMString(..), ToDOMString(..), FromDOMString(..), IsDOMString, ToJSString(..), FromJSString(..)
  , toJSString, fromJSString, toMaybeJSString, fromMaybeJSString

  -- * Callbacks
  , AudioBufferCallback(..)
  , DatabaseCallback(..)
  , MediaQueryListListener(..)
  , MediaStreamTrackSourcesCallback(..)
  , NavigatorUserMediaErrorCallback(..)
  , NavigatorUserMediaSuccessCallback(..)
  , NotificationPermissionCallback(..)
  , PositionCallback(..)
  , PositionErrorCallback(..)
  , RequestAnimationFrameCallback(..)
  , RTCPeerConnectionErrorCallback(..)
  , RTCSessionDescriptionCallback(..)
  , RTCStatsCallback(..)
  , SQLStatementCallback(..)
  , SQLStatementErrorCallback(..)
  , SQLTransactionCallback(..)
  , SQLTransactionErrorCallback(..)
  , StorageErrorCallback(..)
  , StorageQuotaCallback(..)
  , StorageUsageCallback(..)
  , StringCallback(..)
  , VoidCallback(..)

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

  , DOMException(DOMException), unDOMException, IsDOMException, toDOMException

  -- * WebGL typedefs
  , GLenum(..), GLboolean(..), GLbitfield(..), GLbyte(..), GLshort(..), GLint(..), GLsizei(..)
  , GLintptr(..), GLsizeiptr(..), GLubyte(..), GLushort(..), GLuint(..), GLfloat(..), GLclampf(..)
  , GLint64, GLuint64

  -- * Interface types from IDL files

-- AUTO GENERATION STARTS HERE
  , ANGLEInstancedArrays(ANGLEInstancedArrays), unANGLEInstancedArrays, castToANGLEInstancedArrays, gTypeANGLEInstancedArrays
  , AbstractView(AbstractView), unAbstractView, castToAbstractView, gTypeAbstractView
  , AbstractWorker(AbstractWorker), unAbstractWorker, castToAbstractWorker, gTypeAbstractWorker
  , AllAudioCapabilities(AllAudioCapabilities), unAllAudioCapabilities, castToAllAudioCapabilities, gTypeAllAudioCapabilities
  , AllVideoCapabilities(AllVideoCapabilities), unAllVideoCapabilities, castToAllVideoCapabilities, gTypeAllVideoCapabilities
  , AnalyserNode(AnalyserNode), unAnalyserNode, castToAnalyserNode, gTypeAnalyserNode
  , AnimationEvent(AnimationEvent), unAnimationEvent, castToAnimationEvent, gTypeAnimationEvent
  , ApplicationCache(ApplicationCache), unApplicationCache, castToApplicationCache, gTypeApplicationCache
  , Attr(Attr), unAttr, castToAttr, gTypeAttr
  , AudioBuffer(AudioBuffer), unAudioBuffer, castToAudioBuffer, gTypeAudioBuffer
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
  , CSS(CSS), unCSS, castToCSS, gTypeCSS
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
  , DOMError(DOMError), unDOMError, IsDOMError, toDOMError, castToDOMError, gTypeDOMError
  , DOMImplementation(DOMImplementation), unDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, castToDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMParser(DOMParser), unDOMParser, castToDOMParser, gTypeDOMParser
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMStringMap(DOMStringMap), unDOMStringMap, castToDOMStringMap, gTypeDOMStringMap
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DataCue(DataCue), unDataCue, castToDataCue, gTypeDataCue
  , DataTransfer(DataTransfer), unDataTransfer, castToDataTransfer, gTypeDataTransfer
  , DataTransferItem(DataTransferItem), unDataTransferItem, castToDataTransferItem, gTypeDataTransferItem
  , DataTransferItemList(DataTransferItemList), unDataTransferItemList, castToDataTransferItemList, gTypeDataTransferItemList
  , Database(Database), unDatabase, castToDatabase, gTypeDatabase
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
  , FormData(FormData), unFormData, castToFormData, gTypeFormData
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
  , MediaSource(MediaSource), unMediaSource, castToMediaSource, gTypeMediaSource
  , MediaSourceStates(MediaSourceStates), unMediaSourceStates, castToMediaSourceStates, gTypeMediaSourceStates
  , MediaStream(MediaStream), unMediaStream, castToMediaStream, gTypeMediaStream
  , MediaStreamAudioDestinationNode(MediaStreamAudioDestinationNode), unMediaStreamAudioDestinationNode, castToMediaStreamAudioDestinationNode, gTypeMediaStreamAudioDestinationNode
  , MediaStreamAudioSourceNode(MediaStreamAudioSourceNode), unMediaStreamAudioSourceNode, castToMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode
  , MediaStreamCapabilities(MediaStreamCapabilities), unMediaStreamCapabilities, IsMediaStreamCapabilities, toMediaStreamCapabilities, castToMediaStreamCapabilities, gTypeMediaStreamCapabilities
  , MediaStreamEvent(MediaStreamEvent), unMediaStreamEvent, castToMediaStreamEvent, gTypeMediaStreamEvent
  , MediaStreamTrack(MediaStreamTrack), unMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack, castToMediaStreamTrack, gTypeMediaStreamTrack
  , MediaStreamTrackEvent(MediaStreamTrackEvent), unMediaStreamTrackEvent, castToMediaStreamTrackEvent, gTypeMediaStreamTrackEvent
  , MediaTrackConstraint(MediaTrackConstraint), unMediaTrackConstraint, castToMediaTrackConstraint, gTypeMediaTrackConstraint
  , MediaTrackConstraintSet(MediaTrackConstraintSet), unMediaTrackConstraintSet, castToMediaTrackConstraintSet, gTypeMediaTrackConstraintSet
  , MediaTrackConstraints(MediaTrackConstraints), unMediaTrackConstraints, castToMediaTrackConstraints, gTypeMediaTrackConstraints
  , MemoryInfo(MemoryInfo), unMemoryInfo, castToMemoryInfo, gTypeMemoryInfo
  , MessageChannel(MessageChannel), unMessageChannel, castToMessageChannel, gTypeMessageChannel
  , MessageEvent(MessageEvent), unMessageEvent, castToMessageEvent, gTypeMessageEvent
  , MessagePort(MessagePort), unMessagePort, castToMessagePort, gTypeMessagePort
  , MimeType(MimeType), unMimeType, castToMimeType, gTypeMimeType
  , MimeTypeArray(MimeTypeArray), unMimeTypeArray, castToMimeTypeArray, gTypeMimeTypeArray
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, castToMutationEvent, gTypeMutationEvent
  , MutationObserver(MutationObserver), unMutationObserver, castToMutationObserver, gTypeMutationObserver
  , MutationRecord(MutationRecord), unMutationRecord, castToMutationRecord, gTypeMutationRecord
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, castToNavigator, gTypeNavigator
  , NavigatorUserMediaError(NavigatorUserMediaError), unNavigatorUserMediaError, castToNavigatorUserMediaError, gTypeNavigatorUserMediaError
  , Node(Node), unNode, IsNode, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, castToNodeList, gTypeNodeList
  , Notification(Notification), unNotification, castToNotification, gTypeNotification
  , NotificationCenter(NotificationCenter), unNotificationCenter, castToNotificationCenter, gTypeNotificationCenter
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
  , Path2D(Path2D), unPath2D, castToPath2D, gTypePath2D
  , Performance(Performance), unPerformance, castToPerformance, gTypePerformance
  , PerformanceEntry(PerformanceEntry), unPerformanceEntry, IsPerformanceEntry, toPerformanceEntry, castToPerformanceEntry, gTypePerformanceEntry
  , PerformanceEntryList(PerformanceEntryList), unPerformanceEntryList, castToPerformanceEntryList, gTypePerformanceEntryList
  , PerformanceMark(PerformanceMark), unPerformanceMark, castToPerformanceMark, gTypePerformanceMark
  , PerformanceMeasure(PerformanceMeasure), unPerformanceMeasure, castToPerformanceMeasure, gTypePerformanceMeasure
  , PerformanceNavigation(PerformanceNavigation), unPerformanceNavigation, castToPerformanceNavigation, gTypePerformanceNavigation
  , PerformanceResourceTiming(PerformanceResourceTiming), unPerformanceResourceTiming, castToPerformanceResourceTiming, gTypePerformanceResourceTiming
  , PerformanceTiming(PerformanceTiming), unPerformanceTiming, castToPerformanceTiming, gTypePerformanceTiming
  , PeriodicWave(PeriodicWave), unPeriodicWave, castToPeriodicWave, gTypePeriodicWave
  , Plugin(Plugin), unPlugin, castToPlugin, gTypePlugin
  , PluginArray(PluginArray), unPluginArray, castToPluginArray, gTypePluginArray
  , PopStateEvent(PopStateEvent), unPopStateEvent, castToPopStateEvent, gTypePopStateEvent
  , PositionError(PositionError), unPositionError, castToPositionError, gTypePositionError
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
  , RTCSessionDescription(RTCSessionDescription), unRTCSessionDescription, castToRTCSessionDescription, gTypeRTCSessionDescription
  , RTCStatsReport(RTCStatsReport), unRTCStatsReport, castToRTCStatsReport, gTypeRTCStatsReport
  , RTCStatsResponse(RTCStatsResponse), unRTCStatsResponse, castToRTCStatsResponse, gTypeRTCStatsResponse
  , RadioNodeList(RadioNodeList), unRadioNodeList, castToRadioNodeList, gTypeRadioNodeList
  , Range(Range), unRange, castToRange, gTypeRange
  , ReadableStream(ReadableStream), unReadableStream, castToReadableStream, gTypeReadableStream
  , Rect(Rect), unRect, castToRect, gTypeRect
  , SQLError(SQLError), unSQLError, castToSQLError, gTypeSQLError
  , SQLResultSet(SQLResultSet), unSQLResultSet, castToSQLResultSet, gTypeSQLResultSet
  , SQLResultSetRowList(SQLResultSetRowList), unSQLResultSetRowList, castToSQLResultSetRowList, gTypeSQLResultSetRowList
  , SQLTransaction(SQLTransaction), unSQLTransaction, castToSQLTransaction, gTypeSQLTransaction
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
  , Screen(Screen), unScreen, castToScreen, gTypeScreen
  , ScriptProcessorNode(ScriptProcessorNode), unScriptProcessorNode, castToScriptProcessorNode, gTypeScriptProcessorNode
  , ScriptProfile(ScriptProfile), unScriptProfile, castToScriptProfile, gTypeScriptProfile
  , ScriptProfileNode(ScriptProfileNode), unScriptProfileNode, castToScriptProfileNode, gTypeScriptProfileNode
  , SecurityPolicy(SecurityPolicy), unSecurityPolicy, castToSecurityPolicy, gTypeSecurityPolicy
  , SecurityPolicyViolationEvent(SecurityPolicyViolationEvent), unSecurityPolicyViolationEvent, castToSecurityPolicyViolationEvent, gTypeSecurityPolicyViolationEvent
  , Selection(Selection), unSelection, castToSelection, gTypeSelection
  , SourceBuffer(SourceBuffer), unSourceBuffer, castToSourceBuffer, gTypeSourceBuffer
  , SourceBufferList(SourceBufferList), unSourceBufferList, castToSourceBufferList, gTypeSourceBufferList
  , SourceInfo(SourceInfo), unSourceInfo, castToSourceInfo, gTypeSourceInfo
  , SpeechSynthesis(SpeechSynthesis), unSpeechSynthesis, castToSpeechSynthesis, gTypeSpeechSynthesis
  , SpeechSynthesisEvent(SpeechSynthesisEvent), unSpeechSynthesisEvent, castToSpeechSynthesisEvent, gTypeSpeechSynthesisEvent
  , SpeechSynthesisUtterance(SpeechSynthesisUtterance), unSpeechSynthesisUtterance, castToSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance
  , SpeechSynthesisVoice(SpeechSynthesisVoice), unSpeechSynthesisVoice, castToSpeechSynthesisVoice, gTypeSpeechSynthesisVoice
  , Storage(Storage), unStorage, castToStorage, gTypeStorage
  , StorageEvent(StorageEvent), unStorageEvent, castToStorageEvent, gTypeStorageEvent
  , StorageInfo(StorageInfo), unStorageInfo, castToStorageInfo, gTypeStorageInfo
  , StorageQuota(StorageQuota), unStorageQuota, castToStorageQuota, gTypeStorageQuota
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
  , URL(URL), unURL, castToURL, gTypeURL
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
  , Window(Window), unWindow, castToWindow, gTypeWindow
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
#else
    propagateGError, GType(..), DOMString(..), ToDOMString(..), FromDOMString(..)
  , FocusEvent
  , TouchEvent
  , module Graphics.UI.Gtk.WebKit.Types
  , IsGObject

  , IsApplicationCache
  , IsAttr
#ifndef USE_OLD_WEBKIT
  , IsAudioTrack
#endif
#ifndef USE_OLD_WEBKIT
  , IsAudioTrackList
#endif
#ifndef USE_OLD_WEBKIT
  , IsBarProp
#endif
#ifndef USE_OLD_WEBKIT
  , IsBatteryManager
#endif
  , IsBlob
  , IsCDATASection
#ifndef USE_OLD_WEBKIT
  , IsCSS
#endif
  , IsCSSRule
  , IsCSSRuleList
  , IsCSSStyleDeclaration
  , IsCSSStyleSheet
  , IsCSSValue
  , IsCharacterData
  , IsComment
  , IsDOMImplementation
#ifndef USE_OLD_WEBKIT
  , IsDOMNamedFlowCollection
#endif
  , IsDOMSettableTokenList
  , IsDOMStringList
  , IsDOMTokenList
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
#ifndef USE_OLD_WEBKIT
  , IsKeyboardEvent
#endif
  , IsLocation
  , IsMediaError
  , IsMediaList
  , IsMediaQueryList
  , IsMessagePort
  , IsMimeType
  , IsMimeTypeArray
  , IsMouseEvent
  , IsNamedNodeMap
  , IsNavigator
  , IsNode
  , IsNodeFilter
  , IsNodeIterator
  , IsNodeList
#ifndef USE_OLD_WEBKIT
  , IsPerformance
#endif
#ifndef USE_OLD_WEBKIT
  , IsPerformanceNavigation
#endif
#ifndef USE_OLD_WEBKIT
  , IsPerformanceTiming
#endif
  , IsPlugin
  , IsPluginArray
  , IsProcessingInstruction
  , IsRange
  , IsScreen
#ifndef USE_OLD_WEBKIT
  , IsSecurityPolicy
#endif
  , IsSelection
  , IsStorage
#ifndef USE_OLD_WEBKIT
  , IsStorageInfo
#endif
#ifndef USE_OLD_WEBKIT
  , IsStorageQuota
#endif
  , IsStyleMedia
  , IsStyleSheet
  , IsStyleSheetList
  , IsText
#ifndef USE_OLD_WEBKIT
  , IsTextTrack
#endif
#ifndef USE_OLD_WEBKIT
  , IsTextTrackCue
#endif
#ifndef USE_OLD_WEBKIT
  , IsTextTrackCueList
#endif
#ifndef USE_OLD_WEBKIT
  , IsTextTrackList
#endif
  , IsTimeRanges
#ifndef USE_OLD_WEBKIT
  , IsTouch
#endif
  , IsTreeWalker
  , IsUIEvent
  , IsValidityState
#ifndef USE_OLD_WEBKIT
  , IsVideoTrack
#endif
#ifndef USE_OLD_WEBKIT
  , IsVideoTrackList
#endif
  , IsWebKitNamedFlow
  , IsWebKitPoint
#ifndef USE_OLD_WEBKIT
  , IsWheelEvent
#endif
  , IsWindow
  , IsXPathExpression
  , IsXPathNSResolver
  , IsXPathResult
-- AUTO GENERATION ENDS HERE
#endif
  ) where

import Control.Applicative ((<$>))
import qualified Data.Text as T (Text)
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import qualified Data.Text.Lazy as LT (Text)
import Data.JSString (pack, unpack)
import Data.JSString.Text (textToJSString, textFromJSString, lazyTextToJSString, lazyTextFromJSString)
import GHCJS.Types (JSVal(..), nullRef, isNull, isUndefined, JSString(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import GHCJS.Nullable (Nullable(..), nullableToMaybe, maybeToNullable)
import GHCJS.Foreign.Callback.Internal (Callback(..))
import Control.Monad.IO.Class (MonadIO(..))
#else
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
maybeJSNullOrUndefined :: JSVal -> Maybe JSVal
maybeJSNullOrUndefined r | isNull r || isUndefined r = Nothing
maybeJSNullOrUndefined r = Just r

propagateGError = id

newtype GType = GType JSVal

foreign import javascript unsafe
  "$1===$2" js_eq :: JSVal -> JSVal -> Bool

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "h$isInstanceOf $1 $2"
    typeInstanceIsA' :: JSVal -> JSVal -> Bool
#else
typeInstanceIsA' :: JSVal -> JSVal -> Bool
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

newtype GObject = GObject { unGObject :: JSVal }

class (ToJSVal o, FromJSVal o) => IsGObject o where
  -- | Safe upcast.
  toGObject         :: o -> GObject
  -- | Unchecked downcast.
  unsafeCastGObject :: GObject -> o

instance PToJSVal GObject where
  pToJSVal = unGObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal GObject where
  pFromJSVal = GObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal GObject where
  toJSVal = return . unGObject
  {-# INLINE toJSVal #-}

instance FromJSVal GObject where
  fromJSVal = return . fmap GObject . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

--instance IsGObject o => PToJSVal o where
--  pToJSVal = unGObject . toGObject
--  {-# INLINE pToJSVal #-}
--
--instance IsGObject o => PFromJSVal o where
--  pFromJSVal = unsafeCastGObject . GObject . castRef
--  {-# INLINE pFromJSVal #-}
--
--instance IsGObject o => ToJSVal o where
--  toJSVal = return . unGObject . toGObject
--  {-# INLINE toJSVal #-}
--
--instance IsGObject o => FromJSVal o where
--  fromJSVal = return . fmap (unsafeCastGObject . GObject . castRef) . maybeJSNullOrUndefined
--  {-# INLINE fromJSVal #-}

instance IsGObject GObject where
  toGObject = id
  {-# INLINE toGObject #-}
  unsafeCastGObject = id
  {-# INLINE unsafeCastGObject #-}

castToGObject :: IsGObject obj => obj -> obj
castToGObject = id

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "object" gTypeGObject :: GType
#else
gTypeGObject = error "gTypeGObject: only available in JavaScript"
#endif

foreign import javascript unsafe "$1[\"toString\"]()" js_objectToString :: GObject -> IO JSString

objectToString :: (MonadIO m, IsGObject self, FromJSString result) => self -> m result
objectToString self = liftIO (fromJSString <$> (js_objectToString (toGObject self)))

#ifdef ghcjs_HOST_OS
-- | Fastest string type to use when you just
--   want to take a string from the DOM then
--   give it back as is.
type DOMString = JSString

class (PToJSVal a, ToJSVal a) => ToJSString a
class (PFromJSVal a, FromJSVal a) => FromJSString a

toJSString :: ToJSString a => a -> JSString
toJSString = pFromJSVal . pToJSVal
{-# INLINE toJSString #-}

fromJSString :: FromJSString a => JSString -> a
fromJSString = pFromJSVal . pToJSVal
{-# INLINE fromJSString #-}

toMaybeJSString :: ToJSString a => Maybe a -> Nullable JSString
toMaybeJSString = Nullable . pToJSVal
{-# INLINE toMaybeJSString #-}

fromMaybeJSString :: FromJSString a => Nullable JSString -> Maybe a
fromMaybeJSString (Nullable r) = pFromJSVal r
{-# INLINE fromMaybeJSString #-}

instance ToJSString   [Char]
instance FromJSString [Char]
instance ToJSString   T.Text
instance FromJSString T.Text
instance ToJSString   JSString
instance FromJSString JSString

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

type FocusEvent = UIEvent
type TouchEvent = UIEvent
#endif

type IsDOMString s = (ToDOMString s, FromDOMString s)

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- Callbacks
newtype AudioBufferCallback = AudioBufferCallback (Callback (JSVal -> IO ()))
instance PToJSVal AudioBufferCallback where pToJSVal (AudioBufferCallback (Callback r)) = r
newtype DatabaseCallback = DatabaseCallback (Callback (JSVal -> IO ()))
instance PToJSVal DatabaseCallback where pToJSVal (DatabaseCallback (Callback r)) = r
newtype MediaQueryListListener = MediaQueryListListener (Callback (JSVal -> IO ()))
instance PToJSVal MediaQueryListListener where pToJSVal (MediaQueryListListener (Callback r)) = r
newtype MediaStreamTrackSourcesCallback = MediaStreamTrackSourcesCallback (Callback (JSVal -> IO ()))
instance PToJSVal MediaStreamTrackSourcesCallback where pToJSVal (MediaStreamTrackSourcesCallback (Callback r)) = r
newtype NavigatorUserMediaErrorCallback = NavigatorUserMediaErrorCallback (Callback (JSVal -> IO ()))
instance PToJSVal NavigatorUserMediaErrorCallback where pToJSVal (NavigatorUserMediaErrorCallback (Callback r)) = r
newtype NavigatorUserMediaSuccessCallback = NavigatorUserMediaSuccessCallback (Callback (JSVal -> IO ()))
instance PToJSVal NavigatorUserMediaSuccessCallback where pToJSVal (NavigatorUserMediaSuccessCallback (Callback r)) = r
newtype NotificationPermissionCallback permissions = NotificationPermissionCallback (Callback (JSVal -> IO ()))
instance PToJSVal (NotificationPermissionCallback permissions) where pToJSVal (NotificationPermissionCallback (Callback r)) = r
newtype PositionCallback = PositionCallback (Callback (JSVal -> IO ()))
instance PToJSVal PositionCallback where pToJSVal (PositionCallback (Callback r)) = r
newtype PositionErrorCallback = PositionErrorCallback (Callback (JSVal -> IO ()))
instance PToJSVal PositionErrorCallback where pToJSVal (PositionErrorCallback (Callback r)) = r
newtype RequestAnimationFrameCallback = RequestAnimationFrameCallback (Callback (JSVal -> IO ()))
instance PToJSVal RequestAnimationFrameCallback where pToJSVal (RequestAnimationFrameCallback (Callback r)) = r
newtype RTCPeerConnectionErrorCallback = RTCPeerConnectionErrorCallback (Callback (JSVal -> IO ()))
instance PToJSVal RTCPeerConnectionErrorCallback where pToJSVal (RTCPeerConnectionErrorCallback (Callback r)) = r
newtype RTCSessionDescriptionCallback = RTCSessionDescriptionCallback (Callback (JSVal -> IO ()))
instance PToJSVal RTCSessionDescriptionCallback where pToJSVal (RTCSessionDescriptionCallback (Callback r)) = r
newtype RTCStatsCallback = RTCStatsCallback (Callback (JSVal -> IO ()))
instance PToJSVal RTCStatsCallback where pToJSVal (RTCStatsCallback (Callback r)) = r
newtype SQLStatementCallback = SQLStatementCallback (Callback (JSVal -> JSVal -> IO ()))
instance PToJSVal SQLStatementCallback where pToJSVal (SQLStatementCallback (Callback r)) = r
newtype SQLStatementErrorCallback = SQLStatementErrorCallback (Callback (JSVal -> JSVal -> IO ()))
instance PToJSVal SQLStatementErrorCallback where pToJSVal (SQLStatementErrorCallback (Callback r)) = r
newtype SQLTransactionCallback = SQLTransactionCallback (Callback (JSVal -> IO ()))
instance PToJSVal SQLTransactionCallback where pToJSVal (SQLTransactionCallback (Callback r)) = r
newtype SQLTransactionErrorCallback = SQLTransactionErrorCallback (Callback (JSVal -> IO ()))
instance PToJSVal SQLTransactionErrorCallback where pToJSVal (SQLTransactionErrorCallback (Callback r)) = r
newtype StorageErrorCallback = StorageErrorCallback (Callback (JSVal -> IO ()))
instance PToJSVal StorageErrorCallback where pToJSVal (StorageErrorCallback (Callback r)) = r
newtype StorageQuotaCallback = StorageQuotaCallback (Callback (JSVal -> IO ()))
instance PToJSVal StorageQuotaCallback where pToJSVal (StorageQuotaCallback (Callback r)) = r
newtype StorageUsageCallback = StorageUsageCallback (Callback (JSVal -> JSVal -> IO ()))
instance PToJSVal StorageUsageCallback where pToJSVal (StorageUsageCallback (Callback r)) = r
newtype StringCallback s = StringCallback (Callback (JSVal -> IO ()))
instance PToJSVal (StringCallback s) where pToJSVal (StringCallback (Callback r)) = r
newtype VoidCallback = VoidCallback (Callback (IO ()))
instance PToJSVal VoidCallback where pToJSVal (VoidCallback (Callback r)) = r
#endif

-- Custom types
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype SerializedScriptValue = SerializedScriptValue { unSerializedScriptValue :: JSVal }

instance Eq SerializedScriptValue where
  (SerializedScriptValue a) == (SerializedScriptValue b) = js_eq a b

instance PToJSVal SerializedScriptValue where
  pToJSVal = unSerializedScriptValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal SerializedScriptValue where
  pFromJSVal = SerializedScriptValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal SerializedScriptValue where
  toJSVal = return . unSerializedScriptValue
  {-# INLINE toJSVal #-}

instance FromJSVal SerializedScriptValue where
  fromJSVal = return . fmap SerializedScriptValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsSerializedScriptValue o
toSerializedScriptValue :: IsSerializedScriptValue o => o -> SerializedScriptValue
toSerializedScriptValue = unsafeCastGObject . toGObject

instance IsSerializedScriptValue SerializedScriptValue
instance IsGObject SerializedScriptValue where
  toGObject = GObject . unSerializedScriptValue
  unsafeCastGObject = SerializedScriptValue . unGObject
-- TODO add more IsSerializedScriptValue instances
#else
-- TODO work out how we can support SerializedScriptValue in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype PositionOptions = PositionOptions { unPositionOptions :: JSVal }

instance Eq PositionOptions where
  (PositionOptions a) == (PositionOptions b) = js_eq a b

instance PToJSVal PositionOptions where
  pToJSVal = unPositionOptions
  {-# INLINE pToJSVal #-}

instance PFromJSVal PositionOptions where
  pFromJSVal = PositionOptions
  {-# INLINE pFromJSVal #-}

instance ToJSVal PositionOptions where
  toJSVal = return . unPositionOptions
  {-# INLINE toJSVal #-}

instance FromJSVal PositionOptions where
  fromJSVal = return . fmap PositionOptions . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsPositionOptions o
toPositionOptions :: IsPositionOptions o => o -> PositionOptions
toPositionOptions = unsafeCastGObject . toGObject

instance IsPositionOptions PositionOptions
instance IsGObject PositionOptions where
  toGObject = GObject . unPositionOptions
  unsafeCastGObject = PositionOptions . unGObject
-- TODO add more IsPositionOptions instances
#else
-- TODO work out how we can support PositionOptions in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Dictionary = Dictionary { unDictionary :: JSVal }

instance Eq Dictionary where
  (Dictionary a) == (Dictionary b) = js_eq a b

instance PToJSVal Dictionary where
  pToJSVal = unDictionary
  {-# INLINE pToJSVal #-}

instance PFromJSVal Dictionary where
  pFromJSVal = Dictionary
  {-# INLINE pFromJSVal #-}

instance ToJSVal Dictionary where
  toJSVal = return . unDictionary
  {-# INLINE toJSVal #-}

instance FromJSVal Dictionary where
  fromJSVal = return . fmap Dictionary . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDictionary o
toDictionary :: IsDictionary o => o -> Dictionary
toDictionary = unsafeCastGObject . toGObject

instance IsDictionary Dictionary
instance IsGObject Dictionary where
  toGObject = GObject . unDictionary
  unsafeCastGObject = Dictionary . unGObject
-- TODO add more IsDictionary instances
#else
-- TODO work out how we can support Dictionary in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype BlobPropertyBag = BlobPropertyBag { unBlobPropertyBag :: JSVal }

instance Eq BlobPropertyBag where
  (BlobPropertyBag a) == (BlobPropertyBag b) = js_eq a b

instance PToJSVal BlobPropertyBag where
  pToJSVal = unBlobPropertyBag
  {-# INLINE pToJSVal #-}

instance PFromJSVal BlobPropertyBag where
  pFromJSVal = BlobPropertyBag
  {-# INLINE pFromJSVal #-}

instance ToJSVal BlobPropertyBag where
  toJSVal = return . unBlobPropertyBag
  {-# INLINE toJSVal #-}

instance FromJSVal BlobPropertyBag where
  fromJSVal = return . fmap BlobPropertyBag . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsBlobPropertyBag o
toBlobPropertyBag :: IsBlobPropertyBag o => o -> BlobPropertyBag
toBlobPropertyBag = unsafeCastGObject . toGObject

instance IsBlobPropertyBag BlobPropertyBag
instance IsGObject BlobPropertyBag where
  toGObject = GObject . unBlobPropertyBag
  unsafeCastGObject = BlobPropertyBag . unGObject
-- TODO add more IsBlobPropertyBag instances
#else
-- TODO work out how we can support BlobPropertyBag in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype MutationCallback = MutationCallback { unMutationCallback :: JSVal }

instance Eq MutationCallback where
  (MutationCallback a) == (MutationCallback b) = js_eq a b

instance PToJSVal MutationCallback where
  pToJSVal = unMutationCallback
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationCallback where
  pFromJSVal = MutationCallback
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationCallback where
  toJSVal = return . unMutationCallback
  {-# INLINE toJSVal #-}

instance FromJSVal MutationCallback where
  fromJSVal = return . fmap MutationCallback . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsMutationCallback o
toMutationCallback :: IsMutationCallback o => o -> MutationCallback
toMutationCallback = unsafeCastGObject . toGObject

instance IsMutationCallback MutationCallback
instance IsGObject MutationCallback where
  toGObject = GObject . unMutationCallback
  unsafeCastGObject = MutationCallback . unGObject
-- TODO add more IsMutationCallback instances
#else
-- TODO work out how we can support MutationCallback in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Promise = Promise { unPromise :: JSVal }

instance Eq Promise where
  (Promise a) == (Promise b) = js_eq a b

instance PToJSVal Promise where
  pToJSVal = unPromise
  {-# INLINE pToJSVal #-}

instance PFromJSVal Promise where
  pFromJSVal = Promise
  {-# INLINE pFromJSVal #-}

instance ToJSVal Promise where
  toJSVal = return . unPromise
  {-# INLINE toJSVal #-}

instance FromJSVal Promise where
  fromJSVal = return . fmap Promise . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsPromise o
toPromise :: IsPromise o => o -> Promise
toPromise = unsafeCastGObject . toGObject

instance IsPromise Promise
instance IsGObject Promise where
  toGObject = GObject . unPromise
  unsafeCastGObject = Promise . unGObject
-- TODO add more IsPromise instances

castToPromise :: IsGObject obj => obj -> Promise
castToPromise = castTo gTypePromise "Promise"

foreign import javascript unsafe "window[\"Promise\"]" gTypePromise :: GType
#else
-- TODO work out how we can support Promise in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBuffer = ArrayBuffer { unArrayBuffer :: JSVal }

instance Eq ArrayBuffer where
  (ArrayBuffer a) == (ArrayBuffer b) = js_eq a b

instance PToJSVal ArrayBuffer where
  pToJSVal = unArrayBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal ArrayBuffer where
  pFromJSVal = ArrayBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal ArrayBuffer where
  toJSVal = return . unArrayBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal ArrayBuffer where
  fromJSVal = return . fmap ArrayBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArrayBuffer o
toArrayBuffer :: IsArrayBuffer o => o -> ArrayBuffer
toArrayBuffer = unsafeCastGObject . toGObject

instance IsArrayBuffer ArrayBuffer
instance IsGObject ArrayBuffer where
  toGObject = GObject . unArrayBuffer
  unsafeCastGObject = ArrayBuffer . unGObject

castToArrayBuffer :: IsGObject obj => obj -> ArrayBuffer
castToArrayBuffer = castTo gTypeArrayBuffer "ArrayBuffer"

foreign import javascript unsafe "window[\"ArrayBuffer\"]" gTypeArrayBuffer :: GType
#else
-- TODO work out how we can support ArrayBuffer in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float32Array = Float32Array { unFloat32Array :: JSVal }

instance Eq Float32Array where
  (Float32Array a) == (Float32Array b) = js_eq a b

instance PToJSVal Float32Array where
  pToJSVal = unFloat32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Float32Array where
  pFromJSVal = Float32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Float32Array where
  toJSVal = return . unFloat32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Float32Array where
  fromJSVal = return . fmap Float32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsFloat32Array o
toFloat32Array :: IsFloat32Array o => o -> Float32Array
toFloat32Array = unsafeCastGObject . toGObject

instance IsFloat32Array Float32Array
instance IsGObject Float32Array where
  toGObject = GObject . unFloat32Array
  unsafeCastGObject = Float32Array . unGObject
-- TODO add more IsFloat32Array instances

castToFloat32Array :: IsGObject obj => obj -> Float32Array
castToFloat32Array = castTo gTypeFloat32Array "Float32Array"

foreign import javascript unsafe "window[\"Float32Array\"]" gTypeFloat32Array :: GType
#else
-- TODO work out how we can support Float32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Float64Array = Float64Array { unFloat64Array :: JSVal }

instance Eq Float64Array where
  (Float64Array a) == (Float64Array b) = js_eq a b

instance PToJSVal Float64Array where
  pToJSVal = unFloat64Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Float64Array where
  pFromJSVal = Float64Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Float64Array where
  toJSVal = return . unFloat64Array
  {-# INLINE toJSVal #-}

instance FromJSVal Float64Array where
  fromJSVal = return . fmap Float64Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsFloat64Array o
toFloat64Array :: IsFloat64Array o => o -> Float64Array
toFloat64Array = unsafeCastGObject . toGObject

instance IsFloat64Array Float64Array
instance IsGObject Float64Array where
  toGObject = GObject . unFloat64Array
  unsafeCastGObject = Float64Array . unGObject
-- TODO add more IsFloat64Array instances

castToFloat64Array :: IsGObject obj => obj -> Float64Array
castToFloat64Array = castTo gTypeFloat64Array "Float64Array"

foreign import javascript unsafe "window[\"Float64Array\"]" gTypeFloat64Array :: GType
#else
-- TODO work out how we can support Float64Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8Array = Uint8Array { unUint8Array :: JSVal }

instance Eq Uint8Array where
  (Uint8Array a) == (Uint8Array b) = js_eq a b

instance PToJSVal Uint8Array where
  pToJSVal = unUint8Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint8Array where
  pFromJSVal = Uint8Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint8Array where
  toJSVal = return . unUint8Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint8Array where
  fromJSVal = return . fmap Uint8Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint8Array o
toUint8Array :: IsUint8Array o => o -> Uint8Array
toUint8Array = unsafeCastGObject . toGObject

instance IsUint8Array Uint8Array
instance IsGObject Uint8Array where
  toGObject = GObject . unUint8Array
  unsafeCastGObject = Uint8Array . unGObject
-- TODO add more IsUint8Array instances

castToUint8Array :: IsGObject obj => obj -> Uint8Array
castToUint8Array = castTo gTypeUint8Array "Uint8Array"

foreign import javascript unsafe "window[\"Uint8Array\"]" gTypeUint8Array :: GType
#else
-- TODO work out how we can support Uint8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8ClampedArray = Uint8ClampedArray { unUint8ClampedArray :: JSVal }

instance Eq Uint8ClampedArray where
  (Uint8ClampedArray a) == (Uint8ClampedArray b) = js_eq a b

instance PToJSVal Uint8ClampedArray where
  pToJSVal = unUint8ClampedArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint8ClampedArray where
  pFromJSVal = Uint8ClampedArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint8ClampedArray where
  toJSVal = return . unUint8ClampedArray
  {-# INLINE toJSVal #-}

instance FromJSVal Uint8ClampedArray where
  fromJSVal = return . fmap Uint8ClampedArray . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint8ClampedArray o
toUint8ClampedArray :: IsUint8ClampedArray o => o -> Uint8ClampedArray
toUint8ClampedArray = unsafeCastGObject . toGObject

instance IsUint8ClampedArray Uint8ClampedArray
instance IsGObject Uint8ClampedArray where
  toGObject = GObject . unUint8ClampedArray
  unsafeCastGObject = Uint8ClampedArray . unGObject
-- TODO add more IsUint8ClampedArray instances

castToUint8ClampedArray :: IsGObject obj => obj -> Uint8ClampedArray
castToUint8ClampedArray = castTo gTypeUint8ClampedArray "Uint8ClampedArray"

foreign import javascript unsafe "window[\"Uint8ClampedArray\"]" gTypeUint8ClampedArray :: GType
#else
-- TODO work out how we can support Uint8ClampedArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint16Array = Uint16Array { unUint16Array :: JSVal }

instance Eq Uint16Array where
  (Uint16Array a) == (Uint16Array b) = js_eq a b

instance PToJSVal Uint16Array where
  pToJSVal = unUint16Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint16Array where
  pFromJSVal = Uint16Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint16Array where
  toJSVal = return . unUint16Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint16Array where
  fromJSVal = return . fmap Uint16Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint16Array o
toUint16Array :: IsUint16Array o => o -> Uint16Array
toUint16Array = unsafeCastGObject . toGObject

instance IsUint16Array Uint16Array
instance IsGObject Uint16Array where
  toGObject = GObject . unUint16Array
  unsafeCastGObject = Uint16Array . unGObject
-- TODO add more IsUint16Array instances

castToUint16Array :: IsGObject obj => obj -> Uint16Array
castToUint16Array = castTo gTypeUint16Array "Uint16Array"

foreign import javascript unsafe "window[\"Uint16Array\"]" gTypeUint16Array :: GType
#else
-- TODO work out how we can support Uint16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint32Array = Uint32Array { unUint32Array :: JSVal }

instance Eq Uint32Array where
  (Uint32Array a) == (Uint32Array b) = js_eq a b

instance PToJSVal Uint32Array where
  pToJSVal = unUint32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Uint32Array where
  pFromJSVal = Uint32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Uint32Array where
  toJSVal = return . unUint32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Uint32Array where
  fromJSVal = return . fmap Uint32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsUint32Array o
toUint32Array :: IsUint32Array o => o -> Uint32Array
toUint32Array = unsafeCastGObject . toGObject

instance IsUint32Array Uint32Array
instance IsGObject Uint32Array where
  toGObject = GObject . unUint32Array
  unsafeCastGObject = Uint32Array . unGObject
-- TODO add more IsUint32Array instances

castToUint32Array :: IsGObject obj => obj -> Uint32Array
castToUint32Array = castTo gTypeUint32Array "Uint32Array"

foreign import javascript unsafe "window[\"Uint32Array\"]" gTypeUint32Array :: GType
#else
-- TODO work out how we can support Uint32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int8Array = Int8Array { unInt8Array :: JSVal }

instance Eq Int8Array where
  (Int8Array a) == (Int8Array b) = js_eq a b

instance PToJSVal Int8Array where
  pToJSVal = unInt8Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int8Array where
  pFromJSVal = Int8Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int8Array where
  toJSVal = return . unInt8Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int8Array where
  fromJSVal = return . fmap Int8Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt8Array o
toInt8Array :: IsInt8Array o => o -> Int8Array
toInt8Array = unsafeCastGObject . toGObject

instance IsInt8Array Int8Array
instance IsGObject Int8Array where
  toGObject = GObject . unInt8Array
  unsafeCastGObject = Int8Array . unGObject
-- TODO add more IsInt8Array instances

castToInt8Array :: IsGObject obj => obj -> Int8Array
castToInt8Array = castTo gTypeInt8Array "Int8Array"

foreign import javascript unsafe "window[\"Int8Array\"]" gTypeInt8Array :: GType
#else
-- TODO work out how we can support Int8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int16Array = Int16Array { unInt16Array :: JSVal }

instance Eq Int16Array where
  (Int16Array a) == (Int16Array b) = js_eq a b

instance PToJSVal Int16Array where
  pToJSVal = unInt16Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int16Array where
  pFromJSVal = Int16Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int16Array where
  toJSVal = return . unInt16Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int16Array where
  fromJSVal = return . fmap Int16Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt16Array o
toInt16Array :: IsInt16Array o => o -> Int16Array
toInt16Array = unsafeCastGObject . toGObject

instance IsInt16Array Int16Array
instance IsGObject Int16Array where
  toGObject = GObject . unInt16Array
  unsafeCastGObject = Int16Array . unGObject
-- TODO add more IsInt16Array instances

castToInt16Array :: IsGObject obj => obj -> Int16Array
castToInt16Array = castTo gTypeInt16Array "Int16Array"

foreign import javascript unsafe "window[\"Int16Array\"]" gTypeInt16Array :: GType
#else
-- TODO work out how we can support Int16Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int32Array = Int32Array { unInt32Array :: JSVal }

instance Eq Int32Array where
  (Int32Array a) == (Int32Array b) = js_eq a b

instance PToJSVal Int32Array where
  pToJSVal = unInt32Array
  {-# INLINE pToJSVal #-}

instance PFromJSVal Int32Array where
  pFromJSVal = Int32Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Int32Array where
  toJSVal = return . unInt32Array
  {-# INLINE toJSVal #-}

instance FromJSVal Int32Array where
  fromJSVal = return . fmap Int32Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsInt32Array o
toInt32Array :: IsInt32Array o => o -> Int32Array
toInt32Array = unsafeCastGObject . toGObject

instance IsInt32Array Int32Array
instance IsGObject Int32Array where
  toGObject = GObject . unInt32Array
  unsafeCastGObject = Int32Array . unGObject
-- TODO add more IsInt32Array instances

castToInt32Array :: IsGObject obj => obj -> Int32Array
castToInt32Array = castTo gTypeInt32Array "Int32Array"

foreign import javascript unsafe "window[\"Int32Array\"]" gTypeInt32Array :: GType
#else
-- TODO work out how we can support Int32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ObjectArray = ObjectArray { unObjectArray :: JSVal }

instance Eq ObjectArray where
  (ObjectArray a) == (ObjectArray b) = js_eq a b

instance PToJSVal ObjectArray where
  pToJSVal = unObjectArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal ObjectArray where
  pFromJSVal = ObjectArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal ObjectArray where
  toJSVal = return . unObjectArray
  {-# INLINE toJSVal #-}

instance FromJSVal ObjectArray where
  fromJSVal = return . fmap ObjectArray . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsObjectArray o
toObjectArray :: IsObjectArray o => o -> ObjectArray
toObjectArray = unsafeCastGObject . toGObject

instance IsObjectArray ObjectArray
instance IsGObject ObjectArray where
  toGObject = GObject . unObjectArray
  unsafeCastGObject = ObjectArray . unGObject
-- TODO add more IsObjectArray instances
#else
-- TODO work out how we can support ObjectArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ArrayBufferView = ArrayBufferView { unArrayBufferView :: JSVal }

instance Eq ArrayBufferView where
  (ArrayBufferView a) == (ArrayBufferView b) = js_eq a b

instance PToJSVal ArrayBufferView where
  pToJSVal = unArrayBufferView
  {-# INLINE pToJSVal #-}

instance PFromJSVal ArrayBufferView where
  pFromJSVal = ArrayBufferView
  {-# INLINE pFromJSVal #-}

instance ToJSVal ArrayBufferView where
  toJSVal = return . unArrayBufferView
  {-# INLINE toJSVal #-}

instance FromJSVal ArrayBufferView where
  fromJSVal = return . fmap ArrayBufferView . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArrayBufferView o
toArrayBufferView :: IsArrayBufferView o => o -> ArrayBufferView
toArrayBufferView = unsafeCastGObject . toGObject

instance IsArrayBufferView ArrayBufferView
instance IsGObject ArrayBufferView where
  toGObject = GObject . unArrayBufferView
  unsafeCastGObject = ArrayBufferView . unGObject
-- TODO add more IsArrayBufferView instances
#else
-- TODO work out how we can support ArrayBufferView in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Array = Array { unArray :: JSVal }

instance Eq Array where
  (Array a) == (Array b) = js_eq a b

instance PToJSVal Array where
  pToJSVal = unArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal Array where
  pFromJSVal = Array
  {-# INLINE pFromJSVal #-}

instance ToJSVal Array where
  toJSVal = return . unArray
  {-# INLINE toJSVal #-}

instance FromJSVal Array where
  fromJSVal = return . fmap Array . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsArray o
toArray :: IsArray o => o -> Array
toArray = unsafeCastGObject . toGObject

instance IsArray Array
instance IsGObject Array where
  toGObject = GObject . unArray
  unsafeCastGObject = Array . unGObject
-- TODO add more IsArray instances

castToArray :: IsGObject obj => obj -> Array
castToArray = castTo gTypeArray "Array"

foreign import javascript unsafe "window[\"Array\"]" gTypeArray :: GType
#else
-- TODO work out how we can support Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Date = Date { unDate :: JSVal }

instance Eq Date where
  (Date a) == (Date b) = js_eq a b

instance PToJSVal Date where
  pToJSVal = unDate
  {-# INLINE pToJSVal #-}

instance PFromJSVal Date where
  pFromJSVal = Date
  {-# INLINE pFromJSVal #-}

instance ToJSVal Date where
  toJSVal = return . unDate
  {-# INLINE toJSVal #-}

instance FromJSVal Date where
  fromJSVal = return . fmap Date . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDate o
toDate :: IsDate o => o -> Date
toDate = unsafeCastGObject . toGObject

instance IsDate Date
instance IsGObject Date where
  toGObject = GObject . unDate
  unsafeCastGObject = Date . unGObject
-- TODO add more IsDate instances

castToDate :: IsGObject obj => obj -> Date
castToDate = castTo gTypeDate "Date"

foreign import javascript unsafe "window[\"Date\"]" gTypeDate :: GType
#else
-- TODO work out how we can support Date in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Acceleration = Acceleration { unAcceleration :: JSVal }

instance Eq Acceleration where
  (Acceleration a) == (Acceleration b) = js_eq a b

instance PToJSVal Acceleration where
  pToJSVal = unAcceleration
  {-# INLINE pToJSVal #-}

instance PFromJSVal Acceleration where
  pFromJSVal = Acceleration
  {-# INLINE pFromJSVal #-}

instance ToJSVal Acceleration where
  toJSVal = return . unAcceleration
  {-# INLINE toJSVal #-}

instance FromJSVal Acceleration where
  fromJSVal = return . fmap Acceleration . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsAcceleration o
toAcceleration :: IsAcceleration o => o -> Acceleration
toAcceleration = unsafeCastGObject . toGObject

instance IsAcceleration Acceleration
instance IsGObject Acceleration where
  toGObject = GObject . unAcceleration
  unsafeCastGObject = Acceleration . unGObject
-- TODO add more IsAcceleration instances
#else
-- TODO work out how we can support Acceleration in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype RotationRate = RotationRate { unRotationRate :: JSVal }

instance Eq RotationRate where
  (RotationRate a) == (RotationRate b) = js_eq a b

instance PToJSVal RotationRate where
  pToJSVal = unRotationRate
  {-# INLINE pToJSVal #-}

instance PFromJSVal RotationRate where
  pFromJSVal = RotationRate
  {-# INLINE pFromJSVal #-}

instance ToJSVal RotationRate where
  toJSVal = return . unRotationRate
  {-# INLINE toJSVal #-}

instance FromJSVal RotationRate where
  fromJSVal = return . fmap RotationRate . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsRotationRate o
toRotationRate :: IsRotationRate o => o -> RotationRate
toRotationRate = unsafeCastGObject . toGObject

instance IsRotationRate RotationRate
instance IsGObject RotationRate where
  toGObject = GObject . unRotationRate
  unsafeCastGObject = RotationRate . unGObject
-- TODO add more IsRotationRate instances
#else
-- TODO work out how we can support RotationRate in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Algorithm = Algorithm { unAlgorithm :: JSVal }

instance Eq Algorithm where
  (Algorithm a) == (Algorithm b) = js_eq a b

instance PToJSVal Algorithm where
  pToJSVal = unAlgorithm
  {-# INLINE pToJSVal #-}

instance PFromJSVal Algorithm where
  pFromJSVal = Algorithm
  {-# INLINE pFromJSVal #-}

instance ToJSVal Algorithm where
  toJSVal = return . unAlgorithm
  {-# INLINE toJSVal #-}

instance FromJSVal Algorithm where
  fromJSVal = return . fmap Algorithm . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsAlgorithm o
toAlgorithm :: IsAlgorithm o => o -> Algorithm
toAlgorithm = unsafeCastGObject . toGObject

instance IsAlgorithm Algorithm
instance IsGObject Algorithm where
  toGObject = GObject . unAlgorithm
  unsafeCastGObject = Algorithm . unGObject
-- TODO add more IsAlgorithm instances
#else
-- TODO work out how we can support Algorithm in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CryptoOperationData = CryptoOperationData { unCryptoOperationData :: JSVal }

instance Eq CryptoOperationData where
  (CryptoOperationData a) == (CryptoOperationData b) = js_eq a b

instance PToJSVal CryptoOperationData where
  pToJSVal = unCryptoOperationData
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoOperationData where
  pFromJSVal = CryptoOperationData
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoOperationData where
  toJSVal = return . unCryptoOperationData
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoOperationData where
  fromJSVal = return . fmap CryptoOperationData . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCryptoOperationData o
toCryptoOperationData :: IsCryptoOperationData o => o -> CryptoOperationData
toCryptoOperationData = unsafeCastGObject . toGObject

instance IsCryptoOperationData CryptoOperationData
instance IsGObject CryptoOperationData where
  toGObject = GObject . unCryptoOperationData
  unsafeCastGObject = CryptoOperationData . unGObject
instance IsCryptoOperationData ArrayBuffer
instance IsCryptoOperationData ArrayBufferView
#else
-- TODO work out how we can support CryptoOperationData in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype CanvasStyle = CanvasStyle { unCanvasStyle :: JSVal }

instance Eq CanvasStyle where
  (CanvasStyle a) == (CanvasStyle b) = js_eq a b

instance PToJSVal CanvasStyle where
  pToJSVal = unCanvasStyle
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasStyle where
  pFromJSVal = CanvasStyle
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasStyle where
  toJSVal = return . unCanvasStyle
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasStyle where
  fromJSVal = return . fmap CanvasStyle . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCanvasStyle o
toCanvasStyle :: IsCanvasStyle o => o -> CanvasStyle
toCanvasStyle = unsafeCastGObject . toGObject

instance IsCanvasStyle CanvasStyle
instance IsGObject CanvasStyle where
  toGObject = GObject . unCanvasStyle
  unsafeCastGObject = CanvasStyle . unGObject
instance IsCanvasStyle CanvasGradient
instance IsCanvasStyle CanvasPattern
#else
-- TODO work out how we can support CanvasStyle in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype DOMException = DOMException { unDOMException :: JSVal }

instance Eq DOMException where
  (DOMException a) == (DOMException b) = js_eq a b

instance PToJSVal DOMException where
  pToJSVal = unDOMException
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMException where
  pFromJSVal = DOMException
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMException where
  toJSVal = return . unDOMException
  {-# INLINE toJSVal #-}

instance FromJSVal DOMException where
  fromJSVal = return . fmap DOMException . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDOMException o
toDOMException :: IsDOMException o => o -> DOMException
toDOMException = unsafeCastGObject . toGObject

instance IsDOMException DOMException
instance IsGObject DOMException where
  toGObject = GObject . unDOMException
  unsafeCastGObject = DOMException . unGObject
#else
-- TODO work out how we can support DOMException in native code
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
newtype ANGLEInstancedArrays = ANGLEInstancedArrays { unANGLEInstancedArrays :: JSVal }

instance Eq (ANGLEInstancedArrays) where
  (ANGLEInstancedArrays a) == (ANGLEInstancedArrays b) = js_eq a b

instance PToJSVal ANGLEInstancedArrays where
  pToJSVal = unANGLEInstancedArrays
  {-# INLINE pToJSVal #-}

instance PFromJSVal ANGLEInstancedArrays where
  pFromJSVal = ANGLEInstancedArrays
  {-# INLINE pFromJSVal #-}

instance ToJSVal ANGLEInstancedArrays where
  toJSVal = return . unANGLEInstancedArrays
  {-# INLINE toJSVal #-}

instance FromJSVal ANGLEInstancedArrays where
  fromJSVal = return . fmap ANGLEInstancedArrays . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ANGLEInstancedArrays where
  toGObject = GObject . unANGLEInstancedArrays
  {-# INLINE toGObject #-}
  unsafeCastGObject = ANGLEInstancedArrays . unGObject
  {-# INLINE unsafeCastGObject #-}

castToANGLEInstancedArrays :: IsGObject obj => obj -> ANGLEInstancedArrays
castToANGLEInstancedArrays = castTo gTypeANGLEInstancedArrays "ANGLEInstancedArrays"

foreign import javascript unsafe "window[\"ANGLEInstancedArrays\"]" gTypeANGLEInstancedArrays :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AbstractView".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView Mozilla AbstractView documentation>
newtype AbstractView = AbstractView { unAbstractView :: JSVal }

instance Eq (AbstractView) where
  (AbstractView a) == (AbstractView b) = js_eq a b

instance PToJSVal AbstractView where
  pToJSVal = unAbstractView
  {-# INLINE pToJSVal #-}

instance PFromJSVal AbstractView where
  pFromJSVal = AbstractView
  {-# INLINE pFromJSVal #-}

instance ToJSVal AbstractView where
  toJSVal = return . unAbstractView
  {-# INLINE toJSVal #-}

instance FromJSVal AbstractView where
  fromJSVal = return . fmap AbstractView . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AbstractView where
  toGObject = GObject . unAbstractView
  {-# INLINE toGObject #-}
  unsafeCastGObject = AbstractView . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAbstractView :: IsGObject obj => obj -> AbstractView
castToAbstractView = castTo gTypeAbstractView "AbstractView"

foreign import javascript unsafe "window[\"AbstractView\"]" gTypeAbstractView :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AbstractWorker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AbstractWorker Mozilla AbstractWorker documentation>
newtype AbstractWorker = AbstractWorker { unAbstractWorker :: JSVal }

instance Eq (AbstractWorker) where
  (AbstractWorker a) == (AbstractWorker b) = js_eq a b

instance PToJSVal AbstractWorker where
  pToJSVal = unAbstractWorker
  {-# INLINE pToJSVal #-}

instance PFromJSVal AbstractWorker where
  pFromJSVal = AbstractWorker
  {-# INLINE pFromJSVal #-}

instance ToJSVal AbstractWorker where
  toJSVal = return . unAbstractWorker
  {-# INLINE toJSVal #-}

instance FromJSVal AbstractWorker where
  fromJSVal = return . fmap AbstractWorker . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AbstractWorker where
  toGObject = GObject . unAbstractWorker
  {-# INLINE toGObject #-}
  unsafeCastGObject = AbstractWorker . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAbstractWorker :: IsGObject obj => obj -> AbstractWorker
castToAbstractWorker = castTo gTypeAbstractWorker "AbstractWorker"

foreign import javascript unsafe "window[\"AbstractWorker\"]" gTypeAbstractWorker :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AllAudioCapabilities".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllAudioCapabilities Mozilla AllAudioCapabilities documentation>
newtype AllAudioCapabilities = AllAudioCapabilities { unAllAudioCapabilities :: JSVal }

instance Eq (AllAudioCapabilities) where
  (AllAudioCapabilities a) == (AllAudioCapabilities b) = js_eq a b

instance PToJSVal AllAudioCapabilities where
  pToJSVal = unAllAudioCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal AllAudioCapabilities where
  pFromJSVal = AllAudioCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal AllAudioCapabilities where
  toJSVal = return . unAllAudioCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal AllAudioCapabilities where
  fromJSVal = return . fmap AllAudioCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsMediaStreamCapabilities AllAudioCapabilities
instance IsGObject AllAudioCapabilities where
  toGObject = GObject . unAllAudioCapabilities
  {-# INLINE toGObject #-}
  unsafeCastGObject = AllAudioCapabilities . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAllAudioCapabilities :: IsGObject obj => obj -> AllAudioCapabilities
castToAllAudioCapabilities = castTo gTypeAllAudioCapabilities "AllAudioCapabilities"

foreign import javascript unsafe "window[\"AllAudioCapabilities\"]" gTypeAllAudioCapabilities :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AllVideoCapabilities".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamCapabilities"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AllVideoCapabilities Mozilla AllVideoCapabilities documentation>
newtype AllVideoCapabilities = AllVideoCapabilities { unAllVideoCapabilities :: JSVal }

instance Eq (AllVideoCapabilities) where
  (AllVideoCapabilities a) == (AllVideoCapabilities b) = js_eq a b

instance PToJSVal AllVideoCapabilities where
  pToJSVal = unAllVideoCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal AllVideoCapabilities where
  pFromJSVal = AllVideoCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal AllVideoCapabilities where
  toJSVal = return . unAllVideoCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal AllVideoCapabilities where
  fromJSVal = return . fmap AllVideoCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsMediaStreamCapabilities AllVideoCapabilities
instance IsGObject AllVideoCapabilities where
  toGObject = GObject . unAllVideoCapabilities
  {-# INLINE toGObject #-}
  unsafeCastGObject = AllVideoCapabilities . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAllVideoCapabilities :: IsGObject obj => obj -> AllVideoCapabilities
castToAllVideoCapabilities = castTo gTypeAllVideoCapabilities "AllVideoCapabilities"

foreign import javascript unsafe "window[\"AllVideoCapabilities\"]" gTypeAllVideoCapabilities :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AnalyserNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode Mozilla AnalyserNode documentation>
newtype AnalyserNode = AnalyserNode { unAnalyserNode :: JSVal }

instance Eq (AnalyserNode) where
  (AnalyserNode a) == (AnalyserNode b) = js_eq a b

instance PToJSVal AnalyserNode where
  pToJSVal = unAnalyserNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AnalyserNode where
  pFromJSVal = AnalyserNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AnalyserNode where
  toJSVal = return . unAnalyserNode
  {-# INLINE toJSVal #-}

instance FromJSVal AnalyserNode where
  fromJSVal = return . fmap AnalyserNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode AnalyserNode
instance IsEventTarget AnalyserNode
instance IsGObject AnalyserNode where
  toGObject = GObject . unAnalyserNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = AnalyserNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAnalyserNode :: IsGObject obj => obj -> AnalyserNode
castToAnalyserNode = castTo gTypeAnalyserNode "AnalyserNode"

foreign import javascript unsafe "window[\"AnalyserNode\"]" gTypeAnalyserNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AnimationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent Mozilla AnimationEvent documentation>
newtype AnimationEvent = AnimationEvent { unAnimationEvent :: JSVal }

instance Eq (AnimationEvent) where
  (AnimationEvent a) == (AnimationEvent b) = js_eq a b

instance PToJSVal AnimationEvent where
  pToJSVal = unAnimationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AnimationEvent where
  pFromJSVal = AnimationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AnimationEvent where
  toJSVal = return . unAnimationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AnimationEvent where
  fromJSVal = return . fmap AnimationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent AnimationEvent
instance IsGObject AnimationEvent where
  toGObject = GObject . unAnimationEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = AnimationEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAnimationEvent :: IsGObject obj => obj -> AnimationEvent
castToAnimationEvent = castTo gTypeAnimationEvent "AnimationEvent"

foreign import javascript unsafe "window[\"AnimationEvent\"]" gTypeAnimationEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ApplicationCache".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ApplicationCache Mozilla ApplicationCache documentation>
newtype ApplicationCache = ApplicationCache { unApplicationCache :: JSVal }

instance Eq (ApplicationCache) where
  (ApplicationCache a) == (ApplicationCache b) = js_eq a b

instance PToJSVal ApplicationCache where
  pToJSVal = unApplicationCache
  {-# INLINE pToJSVal #-}

instance PFromJSVal ApplicationCache where
  pFromJSVal = ApplicationCache
  {-# INLINE pFromJSVal #-}

instance ToJSVal ApplicationCache where
  toJSVal = return . unApplicationCache
  {-# INLINE toJSVal #-}

instance FromJSVal ApplicationCache where
  fromJSVal = return . fmap ApplicationCache . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget ApplicationCache
instance IsGObject ApplicationCache where
  toGObject = GObject . unApplicationCache
  {-# INLINE toGObject #-}
  unsafeCastGObject = ApplicationCache . unGObject
  {-# INLINE unsafeCastGObject #-}

castToApplicationCache :: IsGObject obj => obj -> ApplicationCache
castToApplicationCache = castTo gTypeApplicationCache "ApplicationCache"

foreign import javascript unsafe "window[\"ApplicationCache\"]" gTypeApplicationCache :: GType
#else
type IsApplicationCache o = ApplicationCacheClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Attr".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Attr Mozilla Attr documentation>
newtype Attr = Attr { unAttr :: JSVal }

instance Eq (Attr) where
  (Attr a) == (Attr b) = js_eq a b

instance PToJSVal Attr where
  pToJSVal = unAttr
  {-# INLINE pToJSVal #-}

instance PFromJSVal Attr where
  pFromJSVal = Attr
  {-# INLINE pFromJSVal #-}

instance ToJSVal Attr where
  toJSVal = return . unAttr
  {-# INLINE toJSVal #-}

instance FromJSVal Attr where
  fromJSVal = return . fmap Attr . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNode Attr
instance IsEventTarget Attr
instance IsGObject Attr where
  toGObject = GObject . unAttr
  {-# INLINE toGObject #-}
  unsafeCastGObject = Attr . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAttr :: IsGObject obj => obj -> Attr
castToAttr = castTo gTypeAttr "Attr"

foreign import javascript unsafe "window[\"Attr\"]" gTypeAttr :: GType
#else
type IsAttr o = AttrClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer Mozilla AudioBuffer documentation>
newtype AudioBuffer = AudioBuffer { unAudioBuffer :: JSVal }

instance Eq (AudioBuffer) where
  (AudioBuffer a) == (AudioBuffer b) = js_eq a b

instance PToJSVal AudioBuffer where
  pToJSVal = unAudioBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioBuffer where
  pFromJSVal = AudioBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioBuffer where
  toJSVal = return . unAudioBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal AudioBuffer where
  fromJSVal = return . fmap AudioBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AudioBuffer where
  toGObject = GObject . unAudioBuffer
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioBuffer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioBuffer :: IsGObject obj => obj -> AudioBuffer
castToAudioBuffer = castTo gTypeAudioBuffer "AudioBuffer"

foreign import javascript unsafe "window[\"AudioBuffer\"]" gTypeAudioBuffer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioBufferSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode Mozilla AudioBufferSourceNode documentation>
newtype AudioBufferSourceNode = AudioBufferSourceNode { unAudioBufferSourceNode :: JSVal }

instance Eq (AudioBufferSourceNode) where
  (AudioBufferSourceNode a) == (AudioBufferSourceNode b) = js_eq a b

instance PToJSVal AudioBufferSourceNode where
  pToJSVal = unAudioBufferSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioBufferSourceNode where
  pFromJSVal = AudioBufferSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioBufferSourceNode where
  toJSVal = return . unAudioBufferSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioBufferSourceNode where
  fromJSVal = return . fmap AudioBufferSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode AudioBufferSourceNode
instance IsEventTarget AudioBufferSourceNode
instance IsGObject AudioBufferSourceNode where
  toGObject = GObject . unAudioBufferSourceNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioBufferSourceNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioBufferSourceNode :: IsGObject obj => obj -> AudioBufferSourceNode
castToAudioBufferSourceNode = castTo gTypeAudioBufferSourceNode "AudioBufferSourceNode"

foreign import javascript unsafe "window[\"AudioBufferSourceNode\"]" gTypeAudioBufferSourceNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation>
newtype AudioContext = AudioContext { unAudioContext :: JSVal }

instance Eq (AudioContext) where
  (AudioContext a) == (AudioContext b) = js_eq a b

instance PToJSVal AudioContext where
  pToJSVal = unAudioContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioContext where
  pFromJSVal = AudioContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioContext where
  toJSVal = return . unAudioContext
  {-# INLINE toJSVal #-}

instance FromJSVal AudioContext where
  fromJSVal = return . fmap AudioContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsAudioContext o
toAudioContext :: IsAudioContext o => o -> AudioContext
toAudioContext = unsafeCastGObject . toGObject

instance IsAudioContext AudioContext
instance IsEventTarget AudioContext
instance IsGObject AudioContext where
  toGObject = GObject . unAudioContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioContext :: IsGObject obj => obj -> AudioContext
castToAudioContext = castTo gTypeAudioContext "AudioContext"

foreign import javascript unsafe "window[\"AudioContext\"]" gTypeAudioContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioDestinationNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioDestinationNode Mozilla AudioDestinationNode documentation>
newtype AudioDestinationNode = AudioDestinationNode { unAudioDestinationNode :: JSVal }

instance Eq (AudioDestinationNode) where
  (AudioDestinationNode a) == (AudioDestinationNode b) = js_eq a b

instance PToJSVal AudioDestinationNode where
  pToJSVal = unAudioDestinationNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioDestinationNode where
  pFromJSVal = AudioDestinationNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioDestinationNode where
  toJSVal = return . unAudioDestinationNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioDestinationNode where
  fromJSVal = return . fmap AudioDestinationNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode AudioDestinationNode
instance IsEventTarget AudioDestinationNode
instance IsGObject AudioDestinationNode where
  toGObject = GObject . unAudioDestinationNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioDestinationNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioDestinationNode :: IsGObject obj => obj -> AudioDestinationNode
castToAudioDestinationNode = castTo gTypeAudioDestinationNode "AudioDestinationNode"

foreign import javascript unsafe "window[\"AudioDestinationNode\"]" gTypeAudioDestinationNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener Mozilla AudioListener documentation>
newtype AudioListener = AudioListener { unAudioListener :: JSVal }

instance Eq (AudioListener) where
  (AudioListener a) == (AudioListener b) = js_eq a b

instance PToJSVal AudioListener where
  pToJSVal = unAudioListener
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioListener where
  pFromJSVal = AudioListener
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioListener where
  toJSVal = return . unAudioListener
  {-# INLINE toJSVal #-}

instance FromJSVal AudioListener where
  fromJSVal = return . fmap AudioListener . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AudioListener where
  toGObject = GObject . unAudioListener
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioListener . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioListener :: IsGObject obj => obj -> AudioListener
castToAudioListener = castTo gTypeAudioListener "AudioListener"

foreign import javascript unsafe "window[\"AudioListener\"]" gTypeAudioListener :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioNode Mozilla AudioNode documentation>
newtype AudioNode = AudioNode { unAudioNode :: JSVal }

instance Eq (AudioNode) where
  (AudioNode a) == (AudioNode b) = js_eq a b

instance PToJSVal AudioNode where
  pToJSVal = unAudioNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioNode where
  pFromJSVal = AudioNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioNode where
  toJSVal = return . unAudioNode
  {-# INLINE toJSVal #-}

instance FromJSVal AudioNode where
  fromJSVal = return . fmap AudioNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsAudioNode o
toAudioNode :: IsAudioNode o => o -> AudioNode
toAudioNode = unsafeCastGObject . toGObject

instance IsAudioNode AudioNode
instance IsEventTarget AudioNode
instance IsGObject AudioNode where
  toGObject = GObject . unAudioNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioNode :: IsGObject obj => obj -> AudioNode
castToAudioNode = castTo gTypeAudioNode "AudioNode"

foreign import javascript unsafe "window[\"AudioNode\"]" gTypeAudioNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioParam".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam Mozilla AudioParam documentation>
newtype AudioParam = AudioParam { unAudioParam :: JSVal }

instance Eq (AudioParam) where
  (AudioParam a) == (AudioParam b) = js_eq a b

instance PToJSVal AudioParam where
  pToJSVal = unAudioParam
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioParam where
  pFromJSVal = AudioParam
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioParam where
  toJSVal = return . unAudioParam
  {-# INLINE toJSVal #-}

instance FromJSVal AudioParam where
  fromJSVal = return . fmap AudioParam . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AudioParam where
  toGObject = GObject . unAudioParam
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioParam . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioParam :: IsGObject obj => obj -> AudioParam
castToAudioParam = castTo gTypeAudioParam "AudioParam"

foreign import javascript unsafe "window[\"AudioParam\"]" gTypeAudioParam :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioProcessingEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent Mozilla AudioProcessingEvent documentation>
newtype AudioProcessingEvent = AudioProcessingEvent { unAudioProcessingEvent :: JSVal }

instance Eq (AudioProcessingEvent) where
  (AudioProcessingEvent a) == (AudioProcessingEvent b) = js_eq a b

instance PToJSVal AudioProcessingEvent where
  pToJSVal = unAudioProcessingEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioProcessingEvent where
  pFromJSVal = AudioProcessingEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioProcessingEvent where
  toJSVal = return . unAudioProcessingEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AudioProcessingEvent where
  fromJSVal = return . fmap AudioProcessingEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent AudioProcessingEvent
instance IsGObject AudioProcessingEvent where
  toGObject = GObject . unAudioProcessingEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioProcessingEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioProcessingEvent :: IsGObject obj => obj -> AudioProcessingEvent
castToAudioProcessingEvent = castTo gTypeAudioProcessingEvent "AudioProcessingEvent"

foreign import javascript unsafe "window[\"AudioProcessingEvent\"]" gTypeAudioProcessingEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamTrack"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation>
newtype AudioStreamTrack = AudioStreamTrack { unAudioStreamTrack :: JSVal }

instance Eq (AudioStreamTrack) where
  (AudioStreamTrack a) == (AudioStreamTrack b) = js_eq a b

instance PToJSVal AudioStreamTrack where
  pToJSVal = unAudioStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioStreamTrack where
  pFromJSVal = AudioStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioStreamTrack where
  toJSVal = return . unAudioStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal AudioStreamTrack where
  fromJSVal = return . fmap AudioStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsMediaStreamTrack AudioStreamTrack
instance IsEventTarget AudioStreamTrack
instance IsGObject AudioStreamTrack where
  toGObject = GObject . unAudioStreamTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioStreamTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioStreamTrack :: IsGObject obj => obj -> AudioStreamTrack
castToAudioStreamTrack = castTo gTypeAudioStreamTrack "AudioStreamTrack"

foreign import javascript unsafe "window[\"AudioStreamTrack\"]" gTypeAudioStreamTrack :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack Mozilla AudioTrack documentation>
newtype AudioTrack = AudioTrack { unAudioTrack :: JSVal }

instance Eq (AudioTrack) where
  (AudioTrack a) == (AudioTrack b) = js_eq a b

instance PToJSVal AudioTrack where
  pToJSVal = unAudioTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioTrack where
  pFromJSVal = AudioTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioTrack where
  toJSVal = return . unAudioTrack
  {-# INLINE toJSVal #-}

instance FromJSVal AudioTrack where
  fromJSVal = return . fmap AudioTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject AudioTrack where
  toGObject = GObject . unAudioTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioTrack :: IsGObject obj => obj -> AudioTrack
castToAudioTrack = castTo gTypeAudioTrack "AudioTrack"

foreign import javascript unsafe "window[\"AudioTrack\"]" gTypeAudioTrack :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsAudioTrack o = AudioTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList Mozilla AudioTrackList documentation>
newtype AudioTrackList = AudioTrackList { unAudioTrackList :: JSVal }

instance Eq (AudioTrackList) where
  (AudioTrackList a) == (AudioTrackList b) = js_eq a b

instance PToJSVal AudioTrackList where
  pToJSVal = unAudioTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal AudioTrackList where
  pFromJSVal = AudioTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal AudioTrackList where
  toJSVal = return . unAudioTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal AudioTrackList where
  fromJSVal = return . fmap AudioTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget AudioTrackList
instance IsGObject AudioTrackList where
  toGObject = GObject . unAudioTrackList
  {-# INLINE toGObject #-}
  unsafeCastGObject = AudioTrackList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAudioTrackList :: IsGObject obj => obj -> AudioTrackList
castToAudioTrackList = castTo gTypeAudioTrackList "AudioTrackList"

foreign import javascript unsafe "window[\"AudioTrackList\"]" gTypeAudioTrackList :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsAudioTrackList o = AudioTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AutocompleteErrorEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent Mozilla AutocompleteErrorEvent documentation>
newtype AutocompleteErrorEvent = AutocompleteErrorEvent { unAutocompleteErrorEvent :: JSVal }

instance Eq (AutocompleteErrorEvent) where
  (AutocompleteErrorEvent a) == (AutocompleteErrorEvent b) = js_eq a b

instance PToJSVal AutocompleteErrorEvent where
  pToJSVal = unAutocompleteErrorEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal AutocompleteErrorEvent where
  pFromJSVal = AutocompleteErrorEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal AutocompleteErrorEvent where
  toJSVal = return . unAutocompleteErrorEvent
  {-# INLINE toJSVal #-}

instance FromJSVal AutocompleteErrorEvent where
  fromJSVal = return . fmap AutocompleteErrorEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent AutocompleteErrorEvent
instance IsGObject AutocompleteErrorEvent where
  toGObject = GObject . unAutocompleteErrorEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = AutocompleteErrorEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToAutocompleteErrorEvent :: IsGObject obj => obj -> AutocompleteErrorEvent
castToAutocompleteErrorEvent = castTo gTypeAutocompleteErrorEvent "AutocompleteErrorEvent"

foreign import javascript unsafe "window[\"AutocompleteErrorEvent\"]" gTypeAutocompleteErrorEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BarProp".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BarProp Mozilla BarProp documentation>
newtype BarProp = BarProp { unBarProp :: JSVal }

instance Eq (BarProp) where
  (BarProp a) == (BarProp b) = js_eq a b

instance PToJSVal BarProp where
  pToJSVal = unBarProp
  {-# INLINE pToJSVal #-}

instance PFromJSVal BarProp where
  pFromJSVal = BarProp
  {-# INLINE pFromJSVal #-}

instance ToJSVal BarProp where
  toJSVal = return . unBarProp
  {-# INLINE toJSVal #-}

instance FromJSVal BarProp where
  fromJSVal = return . fmap BarProp . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject BarProp where
  toGObject = GObject . unBarProp
  {-# INLINE toGObject #-}
  unsafeCastGObject = BarProp . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBarProp :: IsGObject obj => obj -> BarProp
castToBarProp = castTo gTypeBarProp "BarProp"

foreign import javascript unsafe "window[\"BarProp\"]" gTypeBarProp :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsBarProp o = BarPropClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BatteryManager".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager Mozilla BatteryManager documentation>
newtype BatteryManager = BatteryManager { unBatteryManager :: JSVal }

instance Eq (BatteryManager) where
  (BatteryManager a) == (BatteryManager b) = js_eq a b

instance PToJSVal BatteryManager where
  pToJSVal = unBatteryManager
  {-# INLINE pToJSVal #-}

instance PFromJSVal BatteryManager where
  pFromJSVal = BatteryManager
  {-# INLINE pFromJSVal #-}

instance ToJSVal BatteryManager where
  toJSVal = return . unBatteryManager
  {-# INLINE toJSVal #-}

instance FromJSVal BatteryManager where
  fromJSVal = return . fmap BatteryManager . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget BatteryManager
instance IsGObject BatteryManager where
  toGObject = GObject . unBatteryManager
  {-# INLINE toGObject #-}
  unsafeCastGObject = BatteryManager . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBatteryManager :: IsGObject obj => obj -> BatteryManager
castToBatteryManager = castTo gTypeBatteryManager "BatteryManager"

foreign import javascript unsafe "window[\"BatteryManager\"]" gTypeBatteryManager :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsBatteryManager o = BatteryManagerClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BeforeLoadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeLoadEvent Mozilla BeforeLoadEvent documentation>
newtype BeforeLoadEvent = BeforeLoadEvent { unBeforeLoadEvent :: JSVal }

instance Eq (BeforeLoadEvent) where
  (BeforeLoadEvent a) == (BeforeLoadEvent b) = js_eq a b

instance PToJSVal BeforeLoadEvent where
  pToJSVal = unBeforeLoadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal BeforeLoadEvent where
  pFromJSVal = BeforeLoadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal BeforeLoadEvent where
  toJSVal = return . unBeforeLoadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal BeforeLoadEvent where
  fromJSVal = return . fmap BeforeLoadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent BeforeLoadEvent
instance IsGObject BeforeLoadEvent where
  toGObject = GObject . unBeforeLoadEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = BeforeLoadEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBeforeLoadEvent :: IsGObject obj => obj -> BeforeLoadEvent
castToBeforeLoadEvent = castTo gTypeBeforeLoadEvent "BeforeLoadEvent"

foreign import javascript unsafe "window[\"BeforeLoadEvent\"]" gTypeBeforeLoadEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BeforeUnloadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent Mozilla BeforeUnloadEvent documentation>
newtype BeforeUnloadEvent = BeforeUnloadEvent { unBeforeUnloadEvent :: JSVal }

instance Eq (BeforeUnloadEvent) where
  (BeforeUnloadEvent a) == (BeforeUnloadEvent b) = js_eq a b

instance PToJSVal BeforeUnloadEvent where
  pToJSVal = unBeforeUnloadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal BeforeUnloadEvent where
  pFromJSVal = BeforeUnloadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal BeforeUnloadEvent where
  toJSVal = return . unBeforeUnloadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal BeforeUnloadEvent where
  fromJSVal = return . fmap BeforeUnloadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent BeforeUnloadEvent
instance IsGObject BeforeUnloadEvent where
  toGObject = GObject . unBeforeUnloadEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = BeforeUnloadEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBeforeUnloadEvent :: IsGObject obj => obj -> BeforeUnloadEvent
castToBeforeUnloadEvent = castTo gTypeBeforeUnloadEvent "BeforeUnloadEvent"

foreign import javascript unsafe "window[\"BeforeUnloadEvent\"]" gTypeBeforeUnloadEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BiquadFilterNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode Mozilla BiquadFilterNode documentation>
newtype BiquadFilterNode = BiquadFilterNode { unBiquadFilterNode :: JSVal }

instance Eq (BiquadFilterNode) where
  (BiquadFilterNode a) == (BiquadFilterNode b) = js_eq a b

instance PToJSVal BiquadFilterNode where
  pToJSVal = unBiquadFilterNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal BiquadFilterNode where
  pFromJSVal = BiquadFilterNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal BiquadFilterNode where
  toJSVal = return . unBiquadFilterNode
  {-# INLINE toJSVal #-}

instance FromJSVal BiquadFilterNode where
  fromJSVal = return . fmap BiquadFilterNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode BiquadFilterNode
instance IsEventTarget BiquadFilterNode
instance IsGObject BiquadFilterNode where
  toGObject = GObject . unBiquadFilterNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = BiquadFilterNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBiquadFilterNode :: IsGObject obj => obj -> BiquadFilterNode
castToBiquadFilterNode = castTo gTypeBiquadFilterNode "BiquadFilterNode"

foreign import javascript unsafe "window[\"BiquadFilterNode\"]" gTypeBiquadFilterNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Blob".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation>
newtype Blob = Blob { unBlob :: JSVal }

instance Eq (Blob) where
  (Blob a) == (Blob b) = js_eq a b

instance PToJSVal Blob where
  pToJSVal = unBlob
  {-# INLINE pToJSVal #-}

instance PFromJSVal Blob where
  pFromJSVal = Blob
  {-# INLINE pFromJSVal #-}

instance ToJSVal Blob where
  toJSVal = return . unBlob
  {-# INLINE toJSVal #-}

instance FromJSVal Blob where
  fromJSVal = return . fmap Blob . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsBlob o
toBlob :: IsBlob o => o -> Blob
toBlob = unsafeCastGObject . toGObject

instance IsBlob Blob
instance IsGObject Blob where
  toGObject = GObject . unBlob
  {-# INLINE toGObject #-}
  unsafeCastGObject = Blob . unGObject
  {-# INLINE unsafeCastGObject #-}

castToBlob :: IsGObject obj => obj -> Blob
castToBlob = castTo gTypeBlob "Blob"

foreign import javascript unsafe "window[\"Blob\"]" gTypeBlob :: GType
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
newtype CDATASection = CDATASection { unCDATASection :: JSVal }

instance Eq (CDATASection) where
  (CDATASection a) == (CDATASection b) = js_eq a b

instance PToJSVal CDATASection where
  pToJSVal = unCDATASection
  {-# INLINE pToJSVal #-}

instance PFromJSVal CDATASection where
  pFromJSVal = CDATASection
  {-# INLINE pFromJSVal #-}

instance ToJSVal CDATASection where
  toJSVal = return . unCDATASection
  {-# INLINE toJSVal #-}

instance FromJSVal CDATASection where
  fromJSVal = return . fmap CDATASection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsText CDATASection
instance IsCharacterData CDATASection
instance IsNode CDATASection
instance IsEventTarget CDATASection
instance IsGObject CDATASection where
  toGObject = GObject . unCDATASection
  {-# INLINE toGObject #-}
  unsafeCastGObject = CDATASection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCDATASection :: IsGObject obj => obj -> CDATASection
castToCDATASection = castTo gTypeCDATASection "CDATASection"

foreign import javascript unsafe "window[\"CDATASection\"]" gTypeCDATASection :: GType
#else
type IsCDATASection o = CDATASectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSS".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSS Mozilla CSS documentation>
newtype CSS = CSS { unCSS :: JSVal }

instance Eq (CSS) where
  (CSS a) == (CSS b) = js_eq a b

instance PToJSVal CSS where
  pToJSVal = unCSS
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSS where
  pFromJSVal = CSS
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSS where
  toJSVal = return . unCSS
  {-# INLINE toJSVal #-}

instance FromJSVal CSS where
  fromJSVal = return . fmap CSS . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CSS where
  toGObject = GObject . unCSS
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSS . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSS :: IsGObject obj => obj -> CSS
castToCSS = castTo gTypeCSS "CSS"

foreign import javascript unsafe "window[\"CSS\"]" gTypeCSS :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsCSS o = CSSClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSCharsetRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule Mozilla CSSCharsetRule documentation>
newtype CSSCharsetRule = CSSCharsetRule { unCSSCharsetRule :: JSVal }

instance Eq (CSSCharsetRule) where
  (CSSCharsetRule a) == (CSSCharsetRule b) = js_eq a b

instance PToJSVal CSSCharsetRule where
  pToJSVal = unCSSCharsetRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSCharsetRule where
  pFromJSVal = CSSCharsetRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSCharsetRule where
  toJSVal = return . unCSSCharsetRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSCharsetRule where
  fromJSVal = return . fmap CSSCharsetRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSCharsetRule
instance IsGObject CSSCharsetRule where
  toGObject = GObject . unCSSCharsetRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSCharsetRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSCharsetRule :: IsGObject obj => obj -> CSSCharsetRule
castToCSSCharsetRule = castTo gTypeCSSCharsetRule "CSSCharsetRule"

foreign import javascript unsafe "window[\"CSSCharsetRule\"]" gTypeCSSCharsetRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSFontFaceLoadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent Mozilla CSSFontFaceLoadEvent documentation>
newtype CSSFontFaceLoadEvent = CSSFontFaceLoadEvent { unCSSFontFaceLoadEvent :: JSVal }

instance Eq (CSSFontFaceLoadEvent) where
  (CSSFontFaceLoadEvent a) == (CSSFontFaceLoadEvent b) = js_eq a b

instance PToJSVal CSSFontFaceLoadEvent where
  pToJSVal = unCSSFontFaceLoadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSFontFaceLoadEvent where
  pFromJSVal = CSSFontFaceLoadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSFontFaceLoadEvent where
  toJSVal = return . unCSSFontFaceLoadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CSSFontFaceLoadEvent where
  fromJSVal = return . fmap CSSFontFaceLoadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent CSSFontFaceLoadEvent
instance IsGObject CSSFontFaceLoadEvent where
  toGObject = GObject . unCSSFontFaceLoadEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSFontFaceLoadEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSFontFaceLoadEvent :: IsGObject obj => obj -> CSSFontFaceLoadEvent
castToCSSFontFaceLoadEvent = castTo gTypeCSSFontFaceLoadEvent "CSSFontFaceLoadEvent"

foreign import javascript unsafe "window[\"CSSFontFaceLoadEvent\"]" gTypeCSSFontFaceLoadEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSFontFaceRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule Mozilla CSSFontFaceRule documentation>
newtype CSSFontFaceRule = CSSFontFaceRule { unCSSFontFaceRule :: JSVal }

instance Eq (CSSFontFaceRule) where
  (CSSFontFaceRule a) == (CSSFontFaceRule b) = js_eq a b

instance PToJSVal CSSFontFaceRule where
  pToJSVal = unCSSFontFaceRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSFontFaceRule where
  pFromJSVal = CSSFontFaceRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSFontFaceRule where
  toJSVal = return . unCSSFontFaceRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSFontFaceRule where
  fromJSVal = return . fmap CSSFontFaceRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSFontFaceRule
instance IsGObject CSSFontFaceRule where
  toGObject = GObject . unCSSFontFaceRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSFontFaceRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSFontFaceRule :: IsGObject obj => obj -> CSSFontFaceRule
castToCSSFontFaceRule = castTo gTypeCSSFontFaceRule "CSSFontFaceRule"

foreign import javascript unsafe "window[\"CSSFontFaceRule\"]" gTypeCSSFontFaceRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSImportRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule Mozilla CSSImportRule documentation>
newtype CSSImportRule = CSSImportRule { unCSSImportRule :: JSVal }

instance Eq (CSSImportRule) where
  (CSSImportRule a) == (CSSImportRule b) = js_eq a b

instance PToJSVal CSSImportRule where
  pToJSVal = unCSSImportRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSImportRule where
  pFromJSVal = CSSImportRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSImportRule where
  toJSVal = return . unCSSImportRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSImportRule where
  fromJSVal = return . fmap CSSImportRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSImportRule
instance IsGObject CSSImportRule where
  toGObject = GObject . unCSSImportRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSImportRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSImportRule :: IsGObject obj => obj -> CSSImportRule
castToCSSImportRule = castTo gTypeCSSImportRule "CSSImportRule"

foreign import javascript unsafe "window[\"CSSImportRule\"]" gTypeCSSImportRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSKeyframeRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule Mozilla CSSKeyframeRule documentation>
newtype CSSKeyframeRule = CSSKeyframeRule { unCSSKeyframeRule :: JSVal }

instance Eq (CSSKeyframeRule) where
  (CSSKeyframeRule a) == (CSSKeyframeRule b) = js_eq a b

instance PToJSVal CSSKeyframeRule where
  pToJSVal = unCSSKeyframeRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSKeyframeRule where
  pFromJSVal = CSSKeyframeRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSKeyframeRule where
  toJSVal = return . unCSSKeyframeRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSKeyframeRule where
  fromJSVal = return . fmap CSSKeyframeRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSKeyframeRule
instance IsGObject CSSKeyframeRule where
  toGObject = GObject . unCSSKeyframeRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSKeyframeRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSKeyframeRule :: IsGObject obj => obj -> CSSKeyframeRule
castToCSSKeyframeRule = castTo gTypeCSSKeyframeRule "CSSKeyframeRule"

foreign import javascript unsafe "window[\"CSSKeyframeRule\"]" gTypeCSSKeyframeRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSKeyframesRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule Mozilla CSSKeyframesRule documentation>
newtype CSSKeyframesRule = CSSKeyframesRule { unCSSKeyframesRule :: JSVal }

instance Eq (CSSKeyframesRule) where
  (CSSKeyframesRule a) == (CSSKeyframesRule b) = js_eq a b

instance PToJSVal CSSKeyframesRule where
  pToJSVal = unCSSKeyframesRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSKeyframesRule where
  pFromJSVal = CSSKeyframesRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSKeyframesRule where
  toJSVal = return . unCSSKeyframesRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSKeyframesRule where
  fromJSVal = return . fmap CSSKeyframesRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSKeyframesRule
instance IsGObject CSSKeyframesRule where
  toGObject = GObject . unCSSKeyframesRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSKeyframesRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSKeyframesRule :: IsGObject obj => obj -> CSSKeyframesRule
castToCSSKeyframesRule = castTo gTypeCSSKeyframesRule "CSSKeyframesRule"

foreign import javascript unsafe "window[\"CSSKeyframesRule\"]" gTypeCSSKeyframesRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSMediaRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule Mozilla CSSMediaRule documentation>
newtype CSSMediaRule = CSSMediaRule { unCSSMediaRule :: JSVal }

instance Eq (CSSMediaRule) where
  (CSSMediaRule a) == (CSSMediaRule b) = js_eq a b

instance PToJSVal CSSMediaRule where
  pToJSVal = unCSSMediaRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSMediaRule where
  pFromJSVal = CSSMediaRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSMediaRule where
  toJSVal = return . unCSSMediaRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSMediaRule where
  fromJSVal = return . fmap CSSMediaRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSMediaRule
instance IsGObject CSSMediaRule where
  toGObject = GObject . unCSSMediaRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSMediaRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSMediaRule :: IsGObject obj => obj -> CSSMediaRule
castToCSSMediaRule = castTo gTypeCSSMediaRule "CSSMediaRule"

foreign import javascript unsafe "window[\"CSSMediaRule\"]" gTypeCSSMediaRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSPageRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule Mozilla CSSPageRule documentation>
newtype CSSPageRule = CSSPageRule { unCSSPageRule :: JSVal }

instance Eq (CSSPageRule) where
  (CSSPageRule a) == (CSSPageRule b) = js_eq a b

instance PToJSVal CSSPageRule where
  pToJSVal = unCSSPageRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSPageRule where
  pFromJSVal = CSSPageRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSPageRule where
  toJSVal = return . unCSSPageRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSPageRule where
  fromJSVal = return . fmap CSSPageRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSPageRule
instance IsGObject CSSPageRule where
  toGObject = GObject . unCSSPageRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSPageRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSPageRule :: IsGObject obj => obj -> CSSPageRule
castToCSSPageRule = castTo gTypeCSSPageRule "CSSPageRule"

foreign import javascript unsafe "window[\"CSSPageRule\"]" gTypeCSSPageRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSPrimitiveValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue Mozilla CSSPrimitiveValue documentation>
newtype CSSPrimitiveValue = CSSPrimitiveValue { unCSSPrimitiveValue :: JSVal }

instance Eq (CSSPrimitiveValue) where
  (CSSPrimitiveValue a) == (CSSPrimitiveValue b) = js_eq a b

instance PToJSVal CSSPrimitiveValue where
  pToJSVal = unCSSPrimitiveValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSPrimitiveValue where
  pFromJSVal = CSSPrimitiveValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSPrimitiveValue where
  toJSVal = return . unCSSPrimitiveValue
  {-# INLINE toJSVal #-}

instance FromJSVal CSSPrimitiveValue where
  fromJSVal = return . fmap CSSPrimitiveValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSValue CSSPrimitiveValue
instance IsGObject CSSPrimitiveValue where
  toGObject = GObject . unCSSPrimitiveValue
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSPrimitiveValue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSPrimitiveValue :: IsGObject obj => obj -> CSSPrimitiveValue
castToCSSPrimitiveValue = castTo gTypeCSSPrimitiveValue "CSSPrimitiveValue"

foreign import javascript unsafe "window[\"CSSPrimitiveValue\"]" gTypeCSSPrimitiveValue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSRule".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule Mozilla CSSRule documentation>
newtype CSSRule = CSSRule { unCSSRule :: JSVal }

instance Eq (CSSRule) where
  (CSSRule a) == (CSSRule b) = js_eq a b

instance PToJSVal CSSRule where
  pToJSVal = unCSSRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSRule where
  pFromJSVal = CSSRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSRule where
  toJSVal = return . unCSSRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSRule where
  fromJSVal = return . fmap CSSRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCSSRule o
toCSSRule :: IsCSSRule o => o -> CSSRule
toCSSRule = unsafeCastGObject . toGObject

instance IsCSSRule CSSRule
instance IsGObject CSSRule where
  toGObject = GObject . unCSSRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSRule :: IsGObject obj => obj -> CSSRule
castToCSSRule = castTo gTypeCSSRule "CSSRule"

foreign import javascript unsafe "window[\"CSSRule\"]" gTypeCSSRule :: GType
#else
type IsCSSRule o = CSSRuleClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSRuleList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList Mozilla CSSRuleList documentation>
newtype CSSRuleList = CSSRuleList { unCSSRuleList :: JSVal }

instance Eq (CSSRuleList) where
  (CSSRuleList a) == (CSSRuleList b) = js_eq a b

instance PToJSVal CSSRuleList where
  pToJSVal = unCSSRuleList
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSRuleList where
  pFromJSVal = CSSRuleList
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSRuleList where
  toJSVal = return . unCSSRuleList
  {-# INLINE toJSVal #-}

instance FromJSVal CSSRuleList where
  fromJSVal = return . fmap CSSRuleList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CSSRuleList where
  toGObject = GObject . unCSSRuleList
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSRuleList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSRuleList :: IsGObject obj => obj -> CSSRuleList
castToCSSRuleList = castTo gTypeCSSRuleList "CSSRuleList"

foreign import javascript unsafe "window[\"CSSRuleList\"]" gTypeCSSRuleList :: GType
#else
type IsCSSRuleList o = CSSRuleListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleDeclaration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration Mozilla CSSStyleDeclaration documentation>
newtype CSSStyleDeclaration = CSSStyleDeclaration { unCSSStyleDeclaration :: JSVal }

instance Eq (CSSStyleDeclaration) where
  (CSSStyleDeclaration a) == (CSSStyleDeclaration b) = js_eq a b

instance PToJSVal CSSStyleDeclaration where
  pToJSVal = unCSSStyleDeclaration
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleDeclaration where
  pFromJSVal = CSSStyleDeclaration
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleDeclaration where
  toJSVal = return . unCSSStyleDeclaration
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleDeclaration where
  fromJSVal = return . fmap CSSStyleDeclaration . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CSSStyleDeclaration where
  toGObject = GObject . unCSSStyleDeclaration
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSStyleDeclaration . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSStyleDeclaration :: IsGObject obj => obj -> CSSStyleDeclaration
castToCSSStyleDeclaration = castTo gTypeCSSStyleDeclaration "CSSStyleDeclaration"

foreign import javascript unsafe "window[\"CSSStyleDeclaration\"]" gTypeCSSStyleDeclaration :: GType
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
newtype CSSStyleRule = CSSStyleRule { unCSSStyleRule :: JSVal }

instance Eq (CSSStyleRule) where
  (CSSStyleRule a) == (CSSStyleRule b) = js_eq a b

instance PToJSVal CSSStyleRule where
  pToJSVal = unCSSStyleRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleRule where
  pFromJSVal = CSSStyleRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleRule where
  toJSVal = return . unCSSStyleRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleRule where
  fromJSVal = return . fmap CSSStyleRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSStyleRule
instance IsGObject CSSStyleRule where
  toGObject = GObject . unCSSStyleRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSStyleRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSStyleRule :: IsGObject obj => obj -> CSSStyleRule
castToCSSStyleRule = castTo gTypeCSSStyleRule "CSSStyleRule"

foreign import javascript unsafe "window[\"CSSStyleRule\"]" gTypeCSSStyleRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleSheet".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.StyleSheet"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet Mozilla CSSStyleSheet documentation>
newtype CSSStyleSheet = CSSStyleSheet { unCSSStyleSheet :: JSVal }

instance Eq (CSSStyleSheet) where
  (CSSStyleSheet a) == (CSSStyleSheet b) = js_eq a b

instance PToJSVal CSSStyleSheet where
  pToJSVal = unCSSStyleSheet
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSStyleSheet where
  pFromJSVal = CSSStyleSheet
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSStyleSheet where
  toJSVal = return . unCSSStyleSheet
  {-# INLINE toJSVal #-}

instance FromJSVal CSSStyleSheet where
  fromJSVal = return . fmap CSSStyleSheet . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsStyleSheet CSSStyleSheet
instance IsGObject CSSStyleSheet where
  toGObject = GObject . unCSSStyleSheet
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSStyleSheet . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSStyleSheet :: IsGObject obj => obj -> CSSStyleSheet
castToCSSStyleSheet = castTo gTypeCSSStyleSheet "CSSStyleSheet"

foreign import javascript unsafe "window[\"CSSStyleSheet\"]" gTypeCSSStyleSheet :: GType
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
newtype CSSSupportsRule = CSSSupportsRule { unCSSSupportsRule :: JSVal }

instance Eq (CSSSupportsRule) where
  (CSSSupportsRule a) == (CSSSupportsRule b) = js_eq a b

instance PToJSVal CSSSupportsRule where
  pToJSVal = unCSSSupportsRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSSupportsRule where
  pFromJSVal = CSSSupportsRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSSupportsRule where
  toJSVal = return . unCSSSupportsRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSSupportsRule where
  fromJSVal = return . fmap CSSSupportsRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSSupportsRule
instance IsGObject CSSSupportsRule where
  toGObject = GObject . unCSSSupportsRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSSupportsRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSSupportsRule :: IsGObject obj => obj -> CSSSupportsRule
castToCSSSupportsRule = castTo gTypeCSSSupportsRule "CSSSupportsRule"

foreign import javascript unsafe "window[\"CSSSupportsRule\"]" gTypeCSSSupportsRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSUnknownRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSUnknownRule Mozilla CSSUnknownRule documentation>
newtype CSSUnknownRule = CSSUnknownRule { unCSSUnknownRule :: JSVal }

instance Eq (CSSUnknownRule) where
  (CSSUnknownRule a) == (CSSUnknownRule b) = js_eq a b

instance PToJSVal CSSUnknownRule where
  pToJSVal = unCSSUnknownRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSUnknownRule where
  pFromJSVal = CSSUnknownRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSUnknownRule where
  toJSVal = return . unCSSUnknownRule
  {-# INLINE toJSVal #-}

instance FromJSVal CSSUnknownRule where
  fromJSVal = return . fmap CSSUnknownRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule CSSUnknownRule
instance IsGObject CSSUnknownRule where
  toGObject = GObject . unCSSUnknownRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSUnknownRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSUnknownRule :: IsGObject obj => obj -> CSSUnknownRule
castToCSSUnknownRule = castTo gTypeCSSUnknownRule "CSSUnknownRule"

foreign import javascript unsafe "window[\"CSSUnknownRule\"]" gTypeCSSUnknownRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CSSValue".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue Mozilla CSSValue documentation>
newtype CSSValue = CSSValue { unCSSValue :: JSVal }

instance Eq (CSSValue) where
  (CSSValue a) == (CSSValue b) = js_eq a b

instance PToJSVal CSSValue where
  pToJSVal = unCSSValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSValue where
  pFromJSVal = CSSValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSValue where
  toJSVal = return . unCSSValue
  {-# INLINE toJSVal #-}

instance FromJSVal CSSValue where
  fromJSVal = return . fmap CSSValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCSSValue o
toCSSValue :: IsCSSValue o => o -> CSSValue
toCSSValue = unsafeCastGObject . toGObject

instance IsCSSValue CSSValue
instance IsGObject CSSValue where
  toGObject = GObject . unCSSValue
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSValue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSValue :: IsGObject obj => obj -> CSSValue
castToCSSValue = castTo gTypeCSSValue "CSSValue"

foreign import javascript unsafe "window[\"CSSValue\"]" gTypeCSSValue :: GType
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
newtype CSSValueList = CSSValueList { unCSSValueList :: JSVal }

instance Eq (CSSValueList) where
  (CSSValueList a) == (CSSValueList b) = js_eq a b

instance PToJSVal CSSValueList where
  pToJSVal = unCSSValueList
  {-# INLINE pToJSVal #-}

instance PFromJSVal CSSValueList where
  pFromJSVal = CSSValueList
  {-# INLINE pFromJSVal #-}

instance ToJSVal CSSValueList where
  toJSVal = return . unCSSValueList
  {-# INLINE toJSVal #-}

instance FromJSVal CSSValueList where
  fromJSVal = return . fmap CSSValueList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsCSSValue o => IsCSSValueList o
toCSSValueList :: IsCSSValueList o => o -> CSSValueList
toCSSValueList = unsafeCastGObject . toGObject

instance IsCSSValueList CSSValueList
instance IsCSSValue CSSValueList
instance IsGObject CSSValueList where
  toGObject = GObject . unCSSValueList
  {-# INLINE toGObject #-}
  unsafeCastGObject = CSSValueList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCSSValueList :: IsGObject obj => obj -> CSSValueList
castToCSSValueList = castTo gTypeCSSValueList "CSSValueList"

foreign import javascript unsafe "window[\"CSSValueList\"]" gTypeCSSValueList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasGradient".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient Mozilla CanvasGradient documentation>
newtype CanvasGradient = CanvasGradient { unCanvasGradient :: JSVal }

instance Eq (CanvasGradient) where
  (CanvasGradient a) == (CanvasGradient b) = js_eq a b

instance PToJSVal CanvasGradient where
  pToJSVal = unCanvasGradient
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasGradient where
  pFromJSVal = CanvasGradient
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasGradient where
  toJSVal = return . unCanvasGradient
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasGradient where
  fromJSVal = return . fmap CanvasGradient . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CanvasGradient where
  toGObject = GObject . unCanvasGradient
  {-# INLINE toGObject #-}
  unsafeCastGObject = CanvasGradient . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCanvasGradient :: IsGObject obj => obj -> CanvasGradient
castToCanvasGradient = castTo gTypeCanvasGradient "CanvasGradient"

foreign import javascript unsafe "window[\"CanvasGradient\"]" gTypeCanvasGradient :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasPattern".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPattern Mozilla CanvasPattern documentation>
newtype CanvasPattern = CanvasPattern { unCanvasPattern :: JSVal }

instance Eq (CanvasPattern) where
  (CanvasPattern a) == (CanvasPattern b) = js_eq a b

instance PToJSVal CanvasPattern where
  pToJSVal = unCanvasPattern
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasPattern where
  pFromJSVal = CanvasPattern
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasPattern where
  toJSVal = return . unCanvasPattern
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasPattern where
  fromJSVal = return . fmap CanvasPattern . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CanvasPattern where
  toGObject = GObject . unCanvasPattern
  {-# INLINE toGObject #-}
  unsafeCastGObject = CanvasPattern . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCanvasPattern :: IsGObject obj => obj -> CanvasPattern
castToCanvasPattern = castTo gTypeCanvasPattern "CanvasPattern"

foreign import javascript unsafe "window[\"CanvasPattern\"]" gTypeCanvasPattern :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasProxy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasProxy Mozilla CanvasProxy documentation>
newtype CanvasProxy = CanvasProxy { unCanvasProxy :: JSVal }

instance Eq (CanvasProxy) where
  (CanvasProxy a) == (CanvasProxy b) = js_eq a b

instance PToJSVal CanvasProxy where
  pToJSVal = unCanvasProxy
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasProxy where
  pFromJSVal = CanvasProxy
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasProxy where
  toJSVal = return . unCanvasProxy
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasProxy where
  fromJSVal = return . fmap CanvasProxy . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CanvasProxy where
  toGObject = GObject . unCanvasProxy
  {-# INLINE toGObject #-}
  unsafeCastGObject = CanvasProxy . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCanvasProxy :: IsGObject obj => obj -> CanvasProxy
castToCanvasProxy = castTo gTypeCanvasProxy "CanvasProxy"

foreign import javascript unsafe "window[\"CanvasProxy\"]" gTypeCanvasProxy :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasRenderingContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext Mozilla CanvasRenderingContext documentation>
newtype CanvasRenderingContext = CanvasRenderingContext { unCanvasRenderingContext :: JSVal }

instance Eq (CanvasRenderingContext) where
  (CanvasRenderingContext a) == (CanvasRenderingContext b) = js_eq a b

instance PToJSVal CanvasRenderingContext where
  pToJSVal = unCanvasRenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasRenderingContext where
  pFromJSVal = CanvasRenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasRenderingContext where
  toJSVal = return . unCanvasRenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasRenderingContext where
  fromJSVal = return . fmap CanvasRenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsCanvasRenderingContext o
toCanvasRenderingContext :: IsCanvasRenderingContext o => o -> CanvasRenderingContext
toCanvasRenderingContext = unsafeCastGObject . toGObject

instance IsCanvasRenderingContext CanvasRenderingContext
instance IsGObject CanvasRenderingContext where
  toGObject = GObject . unCanvasRenderingContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = CanvasRenderingContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCanvasRenderingContext :: IsGObject obj => obj -> CanvasRenderingContext
castToCanvasRenderingContext = castTo gTypeCanvasRenderingContext "CanvasRenderingContext"

foreign import javascript unsafe "window[\"CanvasRenderingContext\"]" gTypeCanvasRenderingContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CanvasRenderingContext2D".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D Mozilla CanvasRenderingContext2D documentation>
newtype CanvasRenderingContext2D = CanvasRenderingContext2D { unCanvasRenderingContext2D :: JSVal }

instance Eq (CanvasRenderingContext2D) where
  (CanvasRenderingContext2D a) == (CanvasRenderingContext2D b) = js_eq a b

instance PToJSVal CanvasRenderingContext2D where
  pToJSVal = unCanvasRenderingContext2D
  {-# INLINE pToJSVal #-}

instance PFromJSVal CanvasRenderingContext2D where
  pFromJSVal = CanvasRenderingContext2D
  {-# INLINE pFromJSVal #-}

instance ToJSVal CanvasRenderingContext2D where
  toJSVal = return . unCanvasRenderingContext2D
  {-# INLINE toJSVal #-}

instance FromJSVal CanvasRenderingContext2D where
  fromJSVal = return . fmap CanvasRenderingContext2D . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCanvasRenderingContext CanvasRenderingContext2D
instance IsGObject CanvasRenderingContext2D where
  toGObject = GObject . unCanvasRenderingContext2D
  {-# INLINE toGObject #-}
  unsafeCastGObject = CanvasRenderingContext2D . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCanvasRenderingContext2D :: IsGObject obj => obj -> CanvasRenderingContext2D
castToCanvasRenderingContext2D = castTo gTypeCanvasRenderingContext2D "CanvasRenderingContext2D"

foreign import javascript unsafe "window[\"CanvasRenderingContext2D\"]" gTypeCanvasRenderingContext2D :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CapabilityRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange Mozilla CapabilityRange documentation>
newtype CapabilityRange = CapabilityRange { unCapabilityRange :: JSVal }

instance Eq (CapabilityRange) where
  (CapabilityRange a) == (CapabilityRange b) = js_eq a b

instance PToJSVal CapabilityRange where
  pToJSVal = unCapabilityRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal CapabilityRange where
  pFromJSVal = CapabilityRange
  {-# INLINE pFromJSVal #-}

instance ToJSVal CapabilityRange where
  toJSVal = return . unCapabilityRange
  {-# INLINE toJSVal #-}

instance FromJSVal CapabilityRange where
  fromJSVal = return . fmap CapabilityRange . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CapabilityRange where
  toGObject = GObject . unCapabilityRange
  {-# INLINE toGObject #-}
  unsafeCastGObject = CapabilityRange . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCapabilityRange :: IsGObject obj => obj -> CapabilityRange
castToCapabilityRange = castTo gTypeCapabilityRange "CapabilityRange"

foreign import javascript unsafe "window[\"CapabilityRange\"]" gTypeCapabilityRange :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChannelMergerNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelMergerNode Mozilla ChannelMergerNode documentation>
newtype ChannelMergerNode = ChannelMergerNode { unChannelMergerNode :: JSVal }

instance Eq (ChannelMergerNode) where
  (ChannelMergerNode a) == (ChannelMergerNode b) = js_eq a b

instance PToJSVal ChannelMergerNode where
  pToJSVal = unChannelMergerNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChannelMergerNode where
  pFromJSVal = ChannelMergerNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChannelMergerNode where
  toJSVal = return . unChannelMergerNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChannelMergerNode where
  fromJSVal = return . fmap ChannelMergerNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode ChannelMergerNode
instance IsEventTarget ChannelMergerNode
instance IsGObject ChannelMergerNode where
  toGObject = GObject . unChannelMergerNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ChannelMergerNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToChannelMergerNode :: IsGObject obj => obj -> ChannelMergerNode
castToChannelMergerNode = castTo gTypeChannelMergerNode "ChannelMergerNode"

foreign import javascript unsafe "window[\"ChannelMergerNode\"]" gTypeChannelMergerNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChannelSplitterNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChannelSplitterNode Mozilla ChannelSplitterNode documentation>
newtype ChannelSplitterNode = ChannelSplitterNode { unChannelSplitterNode :: JSVal }

instance Eq (ChannelSplitterNode) where
  (ChannelSplitterNode a) == (ChannelSplitterNode b) = js_eq a b

instance PToJSVal ChannelSplitterNode where
  pToJSVal = unChannelSplitterNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChannelSplitterNode where
  pFromJSVal = ChannelSplitterNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChannelSplitterNode where
  toJSVal = return . unChannelSplitterNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChannelSplitterNode where
  fromJSVal = return . fmap ChannelSplitterNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode ChannelSplitterNode
instance IsEventTarget ChannelSplitterNode
instance IsGObject ChannelSplitterNode where
  toGObject = GObject . unChannelSplitterNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ChannelSplitterNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToChannelSplitterNode :: IsGObject obj => obj -> ChannelSplitterNode
castToChannelSplitterNode = castTo gTypeChannelSplitterNode "ChannelSplitterNode"

foreign import javascript unsafe "window[\"ChannelSplitterNode\"]" gTypeChannelSplitterNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CharacterData".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData Mozilla CharacterData documentation>
newtype CharacterData = CharacterData { unCharacterData :: JSVal }

instance Eq (CharacterData) where
  (CharacterData a) == (CharacterData b) = js_eq a b

instance PToJSVal CharacterData where
  pToJSVal = unCharacterData
  {-# INLINE pToJSVal #-}

instance PFromJSVal CharacterData where
  pFromJSVal = CharacterData
  {-# INLINE pFromJSVal #-}

instance ToJSVal CharacterData where
  toJSVal = return . unCharacterData
  {-# INLINE toJSVal #-}

instance FromJSVal CharacterData where
  fromJSVal = return . fmap CharacterData . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsNode o => IsCharacterData o
toCharacterData :: IsCharacterData o => o -> CharacterData
toCharacterData = unsafeCastGObject . toGObject

instance IsCharacterData CharacterData
instance IsNode CharacterData
instance IsEventTarget CharacterData
instance IsGObject CharacterData where
  toGObject = GObject . unCharacterData
  {-# INLINE toGObject #-}
  unsafeCastGObject = CharacterData . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCharacterData :: IsGObject obj => obj -> CharacterData
castToCharacterData = castTo gTypeCharacterData "CharacterData"

foreign import javascript unsafe "window[\"CharacterData\"]" gTypeCharacterData :: GType
#else
type IsCharacterData o = CharacterDataClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ChildNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode Mozilla ChildNode documentation>
newtype ChildNode = ChildNode { unChildNode :: JSVal }

instance Eq (ChildNode) where
  (ChildNode a) == (ChildNode b) = js_eq a b

instance PToJSVal ChildNode where
  pToJSVal = unChildNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ChildNode where
  pFromJSVal = ChildNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ChildNode where
  toJSVal = return . unChildNode
  {-# INLINE toJSVal #-}

instance FromJSVal ChildNode where
  fromJSVal = return . fmap ChildNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ChildNode where
  toGObject = GObject . unChildNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ChildNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToChildNode :: IsGObject obj => obj -> ChildNode
castToChildNode = castTo gTypeChildNode "ChildNode"

foreign import javascript unsafe "window[\"ChildNode\"]" gTypeChildNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ClientRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect Mozilla ClientRect documentation>
newtype ClientRect = ClientRect { unClientRect :: JSVal }

instance Eq (ClientRect) where
  (ClientRect a) == (ClientRect b) = js_eq a b

instance PToJSVal ClientRect where
  pToJSVal = unClientRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal ClientRect where
  pFromJSVal = ClientRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal ClientRect where
  toJSVal = return . unClientRect
  {-# INLINE toJSVal #-}

instance FromJSVal ClientRect where
  fromJSVal = return . fmap ClientRect . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ClientRect where
  toGObject = GObject . unClientRect
  {-# INLINE toGObject #-}
  unsafeCastGObject = ClientRect . unGObject
  {-# INLINE unsafeCastGObject #-}

castToClientRect :: IsGObject obj => obj -> ClientRect
castToClientRect = castTo gTypeClientRect "ClientRect"

foreign import javascript unsafe "window[\"ClientRect\"]" gTypeClientRect :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ClientRectList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList Mozilla ClientRectList documentation>
newtype ClientRectList = ClientRectList { unClientRectList :: JSVal }

instance Eq (ClientRectList) where
  (ClientRectList a) == (ClientRectList b) = js_eq a b

instance PToJSVal ClientRectList where
  pToJSVal = unClientRectList
  {-# INLINE pToJSVal #-}

instance PFromJSVal ClientRectList where
  pFromJSVal = ClientRectList
  {-# INLINE pFromJSVal #-}

instance ToJSVal ClientRectList where
  toJSVal = return . unClientRectList
  {-# INLINE toJSVal #-}

instance FromJSVal ClientRectList where
  fromJSVal = return . fmap ClientRectList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ClientRectList where
  toGObject = GObject . unClientRectList
  {-# INLINE toGObject #-}
  unsafeCastGObject = ClientRectList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToClientRectList :: IsGObject obj => obj -> ClientRectList
castToClientRectList = castTo gTypeClientRectList "ClientRectList"

foreign import javascript unsafe "window[\"ClientRectList\"]" gTypeClientRectList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CloseEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent Mozilla CloseEvent documentation>
newtype CloseEvent = CloseEvent { unCloseEvent :: JSVal }

instance Eq (CloseEvent) where
  (CloseEvent a) == (CloseEvent b) = js_eq a b

instance PToJSVal CloseEvent where
  pToJSVal = unCloseEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CloseEvent where
  pFromJSVal = CloseEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CloseEvent where
  toJSVal = return . unCloseEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CloseEvent where
  fromJSVal = return . fmap CloseEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent CloseEvent
instance IsGObject CloseEvent where
  toGObject = GObject . unCloseEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = CloseEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCloseEvent :: IsGObject obj => obj -> CloseEvent
castToCloseEvent = castTo gTypeCloseEvent "CloseEvent"

foreign import javascript unsafe "window[\"CloseEvent\"]" gTypeCloseEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CommandLineAPIHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost Mozilla CommandLineAPIHost documentation>
newtype CommandLineAPIHost = CommandLineAPIHost { unCommandLineAPIHost :: JSVal }

instance Eq (CommandLineAPIHost) where
  (CommandLineAPIHost a) == (CommandLineAPIHost b) = js_eq a b

instance PToJSVal CommandLineAPIHost where
  pToJSVal = unCommandLineAPIHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal CommandLineAPIHost where
  pFromJSVal = CommandLineAPIHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal CommandLineAPIHost where
  toJSVal = return . unCommandLineAPIHost
  {-# INLINE toJSVal #-}

instance FromJSVal CommandLineAPIHost where
  fromJSVal = return . fmap CommandLineAPIHost . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CommandLineAPIHost where
  toGObject = GObject . unCommandLineAPIHost
  {-# INLINE toGObject #-}
  unsafeCastGObject = CommandLineAPIHost . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCommandLineAPIHost :: IsGObject obj => obj -> CommandLineAPIHost
castToCommandLineAPIHost = castTo gTypeCommandLineAPIHost "CommandLineAPIHost"

foreign import javascript unsafe "window[\"CommandLineAPIHost\"]" gTypeCommandLineAPIHost :: GType
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
newtype Comment = Comment { unComment :: JSVal }

instance Eq (Comment) where
  (Comment a) == (Comment b) = js_eq a b

instance PToJSVal Comment where
  pToJSVal = unComment
  {-# INLINE pToJSVal #-}

instance PFromJSVal Comment where
  pFromJSVal = Comment
  {-# INLINE pFromJSVal #-}

instance ToJSVal Comment where
  toJSVal = return . unComment
  {-# INLINE toJSVal #-}

instance FromJSVal Comment where
  fromJSVal = return . fmap Comment . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCharacterData Comment
instance IsNode Comment
instance IsEventTarget Comment
instance IsGObject Comment where
  toGObject = GObject . unComment
  {-# INLINE toGObject #-}
  unsafeCastGObject = Comment . unGObject
  {-# INLINE unsafeCastGObject #-}

castToComment :: IsGObject obj => obj -> Comment
castToComment = castTo gTypeComment "Comment"

foreign import javascript unsafe "window[\"Comment\"]" gTypeComment :: GType
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
newtype CompositionEvent = CompositionEvent { unCompositionEvent :: JSVal }

instance Eq (CompositionEvent) where
  (CompositionEvent a) == (CompositionEvent b) = js_eq a b

instance PToJSVal CompositionEvent where
  pToJSVal = unCompositionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CompositionEvent where
  pFromJSVal = CompositionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CompositionEvent where
  toJSVal = return . unCompositionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CompositionEvent where
  fromJSVal = return . fmap CompositionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent CompositionEvent
instance IsEvent CompositionEvent
instance IsGObject CompositionEvent where
  toGObject = GObject . unCompositionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = CompositionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCompositionEvent :: IsGObject obj => obj -> CompositionEvent
castToCompositionEvent = castTo gTypeCompositionEvent "CompositionEvent"

foreign import javascript unsafe "window[\"CompositionEvent\"]" gTypeCompositionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ConvolverNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode Mozilla ConvolverNode documentation>
newtype ConvolverNode = ConvolverNode { unConvolverNode :: JSVal }

instance Eq (ConvolverNode) where
  (ConvolverNode a) == (ConvolverNode b) = js_eq a b

instance PToJSVal ConvolverNode where
  pToJSVal = unConvolverNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ConvolverNode where
  pFromJSVal = ConvolverNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ConvolverNode where
  toJSVal = return . unConvolverNode
  {-# INLINE toJSVal #-}

instance FromJSVal ConvolverNode where
  fromJSVal = return . fmap ConvolverNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode ConvolverNode
instance IsEventTarget ConvolverNode
instance IsGObject ConvolverNode where
  toGObject = GObject . unConvolverNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ConvolverNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToConvolverNode :: IsGObject obj => obj -> ConvolverNode
castToConvolverNode = castTo gTypeConvolverNode "ConvolverNode"

foreign import javascript unsafe "window[\"ConvolverNode\"]" gTypeConvolverNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Coordinates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates Mozilla Coordinates documentation>
newtype Coordinates = Coordinates { unCoordinates :: JSVal }

instance Eq (Coordinates) where
  (Coordinates a) == (Coordinates b) = js_eq a b

instance PToJSVal Coordinates where
  pToJSVal = unCoordinates
  {-# INLINE pToJSVal #-}

instance PFromJSVal Coordinates where
  pFromJSVal = Coordinates
  {-# INLINE pFromJSVal #-}

instance ToJSVal Coordinates where
  toJSVal = return . unCoordinates
  {-# INLINE toJSVal #-}

instance FromJSVal Coordinates where
  fromJSVal = return . fmap Coordinates . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Coordinates where
  toGObject = GObject . unCoordinates
  {-# INLINE toGObject #-}
  unsafeCastGObject = Coordinates . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCoordinates :: IsGObject obj => obj -> Coordinates
castToCoordinates = castTo gTypeCoordinates "Coordinates"

foreign import javascript unsafe "window[\"Coordinates\"]" gTypeCoordinates :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Counter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Counter Mozilla Counter documentation>
newtype Counter = Counter { unCounter :: JSVal }

instance Eq (Counter) where
  (Counter a) == (Counter b) = js_eq a b

instance PToJSVal Counter where
  pToJSVal = unCounter
  {-# INLINE pToJSVal #-}

instance PFromJSVal Counter where
  pFromJSVal = Counter
  {-# INLINE pFromJSVal #-}

instance ToJSVal Counter where
  toJSVal = return . unCounter
  {-# INLINE toJSVal #-}

instance FromJSVal Counter where
  fromJSVal = return . fmap Counter . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Counter where
  toGObject = GObject . unCounter
  {-# INLINE toGObject #-}
  unsafeCastGObject = Counter . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCounter :: IsGObject obj => obj -> Counter
castToCounter = castTo gTypeCounter "Counter"

foreign import javascript unsafe "window[\"Counter\"]" gTypeCounter :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Crypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Crypto Mozilla Crypto documentation>
newtype Crypto = Crypto { unCrypto :: JSVal }

instance Eq (Crypto) where
  (Crypto a) == (Crypto b) = js_eq a b

instance PToJSVal Crypto where
  pToJSVal = unCrypto
  {-# INLINE pToJSVal #-}

instance PFromJSVal Crypto where
  pFromJSVal = Crypto
  {-# INLINE pFromJSVal #-}

instance ToJSVal Crypto where
  toJSVal = return . unCrypto
  {-# INLINE toJSVal #-}

instance FromJSVal Crypto where
  fromJSVal = return . fmap Crypto . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Crypto where
  toGObject = GObject . unCrypto
  {-# INLINE toGObject #-}
  unsafeCastGObject = Crypto . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCrypto :: IsGObject obj => obj -> Crypto
castToCrypto = castTo gTypeCrypto "Crypto"

foreign import javascript unsafe "window[\"Crypto\"]" gTypeCrypto :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CryptoKey".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey Mozilla CryptoKey documentation>
newtype CryptoKey = CryptoKey { unCryptoKey :: JSVal }

instance Eq (CryptoKey) where
  (CryptoKey a) == (CryptoKey b) = js_eq a b

instance PToJSVal CryptoKey where
  pToJSVal = unCryptoKey
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoKey where
  pFromJSVal = CryptoKey
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoKey where
  toJSVal = return . unCryptoKey
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoKey where
  fromJSVal = return . fmap CryptoKey . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CryptoKey where
  toGObject = GObject . unCryptoKey
  {-# INLINE toGObject #-}
  unsafeCastGObject = CryptoKey . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCryptoKey :: IsGObject obj => obj -> CryptoKey
castToCryptoKey = castTo gTypeCryptoKey "CryptoKey"

foreign import javascript unsafe "window[\"CryptoKey\"]" gTypeCryptoKey :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CryptoKeyPair".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair Mozilla CryptoKeyPair documentation>
newtype CryptoKeyPair = CryptoKeyPair { unCryptoKeyPair :: JSVal }

instance Eq (CryptoKeyPair) where
  (CryptoKeyPair a) == (CryptoKeyPair b) = js_eq a b

instance PToJSVal CryptoKeyPair where
  pToJSVal = unCryptoKeyPair
  {-# INLINE pToJSVal #-}

instance PFromJSVal CryptoKeyPair where
  pFromJSVal = CryptoKeyPair
  {-# INLINE pFromJSVal #-}

instance ToJSVal CryptoKeyPair where
  toJSVal = return . unCryptoKeyPair
  {-# INLINE toJSVal #-}

instance FromJSVal CryptoKeyPair where
  fromJSVal = return . fmap CryptoKeyPair . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject CryptoKeyPair where
  toGObject = GObject . unCryptoKeyPair
  {-# INLINE toGObject #-}
  unsafeCastGObject = CryptoKeyPair . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCryptoKeyPair :: IsGObject obj => obj -> CryptoKeyPair
castToCryptoKeyPair = castTo gTypeCryptoKeyPair "CryptoKeyPair"

foreign import javascript unsafe "window[\"CryptoKeyPair\"]" gTypeCryptoKeyPair :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.CustomEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent Mozilla CustomEvent documentation>
newtype CustomEvent = CustomEvent { unCustomEvent :: JSVal }

instance Eq (CustomEvent) where
  (CustomEvent a) == (CustomEvent b) = js_eq a b

instance PToJSVal CustomEvent where
  pToJSVal = unCustomEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal CustomEvent where
  pFromJSVal = CustomEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal CustomEvent where
  toJSVal = return . unCustomEvent
  {-# INLINE toJSVal #-}

instance FromJSVal CustomEvent where
  fromJSVal = return . fmap CustomEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent CustomEvent
instance IsGObject CustomEvent where
  toGObject = GObject . unCustomEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = CustomEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToCustomEvent :: IsGObject obj => obj -> CustomEvent
castToCustomEvent = castTo gTypeCustomEvent "CustomEvent"

foreign import javascript unsafe "window[\"CustomEvent\"]" gTypeCustomEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMError Mozilla DOMError documentation>
newtype DOMError = DOMError { unDOMError :: JSVal }

instance Eq (DOMError) where
  (DOMError a) == (DOMError b) = js_eq a b

instance PToJSVal DOMError where
  pToJSVal = unDOMError
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMError where
  pFromJSVal = DOMError
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMError where
  toJSVal = return . unDOMError
  {-# INLINE toJSVal #-}

instance FromJSVal DOMError where
  fromJSVal = return . fmap DOMError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDOMError o
toDOMError :: IsDOMError o => o -> DOMError
toDOMError = unsafeCastGObject . toGObject

instance IsDOMError DOMError
instance IsGObject DOMError where
  toGObject = GObject . unDOMError
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMError :: IsGObject obj => obj -> DOMError
castToDOMError = castTo gTypeDOMError "DOMError"

foreign import javascript unsafe "window[\"DOMError\"]" gTypeDOMError :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMImplementation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation Mozilla DOMImplementation documentation>
newtype DOMImplementation = DOMImplementation { unDOMImplementation :: JSVal }

instance Eq (DOMImplementation) where
  (DOMImplementation a) == (DOMImplementation b) = js_eq a b

instance PToJSVal DOMImplementation where
  pToJSVal = unDOMImplementation
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMImplementation where
  pFromJSVal = DOMImplementation
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMImplementation where
  toJSVal = return . unDOMImplementation
  {-# INLINE toJSVal #-}

instance FromJSVal DOMImplementation where
  fromJSVal = return . fmap DOMImplementation . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DOMImplementation where
  toGObject = GObject . unDOMImplementation
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMImplementation . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMImplementation :: IsGObject obj => obj -> DOMImplementation
castToDOMImplementation = castTo gTypeDOMImplementation "DOMImplementation"

foreign import javascript unsafe "window[\"DOMImplementation\"]" gTypeDOMImplementation :: GType
#else
type IsDOMImplementation o = DOMImplementationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMNamedFlowCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection Mozilla WebKitNamedFlowCollection documentation>
newtype DOMNamedFlowCollection = DOMNamedFlowCollection { unDOMNamedFlowCollection :: JSVal }

instance Eq (DOMNamedFlowCollection) where
  (DOMNamedFlowCollection a) == (DOMNamedFlowCollection b) = js_eq a b

instance PToJSVal DOMNamedFlowCollection where
  pToJSVal = unDOMNamedFlowCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMNamedFlowCollection where
  pFromJSVal = DOMNamedFlowCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMNamedFlowCollection where
  toJSVal = return . unDOMNamedFlowCollection
  {-# INLINE toJSVal #-}

instance FromJSVal DOMNamedFlowCollection where
  fromJSVal = return . fmap DOMNamedFlowCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DOMNamedFlowCollection where
  toGObject = GObject . unDOMNamedFlowCollection
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMNamedFlowCollection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMNamedFlowCollection :: IsGObject obj => obj -> DOMNamedFlowCollection
castToDOMNamedFlowCollection = castTo gTypeDOMNamedFlowCollection "DOMNamedFlowCollection"

foreign import javascript unsafe "window[\"WebKitNamedFlowCollection\"]" gTypeDOMNamedFlowCollection :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsDOMNamedFlowCollection o = DOMNamedFlowCollectionClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMParser".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation>
newtype DOMParser = DOMParser { unDOMParser :: JSVal }

instance Eq (DOMParser) where
  (DOMParser a) == (DOMParser b) = js_eq a b

instance PToJSVal DOMParser where
  pToJSVal = unDOMParser
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMParser where
  pFromJSVal = DOMParser
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMParser where
  toJSVal = return . unDOMParser
  {-# INLINE toJSVal #-}

instance FromJSVal DOMParser where
  fromJSVal = return . fmap DOMParser . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DOMParser where
  toGObject = GObject . unDOMParser
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMParser . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMParser :: IsGObject obj => obj -> DOMParser
castToDOMParser = castTo gTypeDOMParser "DOMParser"

foreign import javascript unsafe "window[\"DOMParser\"]" gTypeDOMParser :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMSettableTokenList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.DOMTokenList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList Mozilla DOMSettableTokenList documentation>
newtype DOMSettableTokenList = DOMSettableTokenList { unDOMSettableTokenList :: JSVal }

instance Eq (DOMSettableTokenList) where
  (DOMSettableTokenList a) == (DOMSettableTokenList b) = js_eq a b

instance PToJSVal DOMSettableTokenList where
  pToJSVal = unDOMSettableTokenList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMSettableTokenList where
  pFromJSVal = DOMSettableTokenList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMSettableTokenList where
  toJSVal = return . unDOMSettableTokenList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMSettableTokenList where
  fromJSVal = return . fmap DOMSettableTokenList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsDOMTokenList DOMSettableTokenList
instance IsGObject DOMSettableTokenList where
  toGObject = GObject . unDOMSettableTokenList
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMSettableTokenList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMSettableTokenList :: IsGObject obj => obj -> DOMSettableTokenList
castToDOMSettableTokenList = castTo gTypeDOMSettableTokenList "DOMSettableTokenList"

foreign import javascript unsafe "window[\"DOMSettableTokenList\"]" gTypeDOMSettableTokenList :: GType
#else
type IsDOMSettableTokenList o = DOMSettableTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList Mozilla DOMStringList documentation>
newtype DOMStringList = DOMStringList { unDOMStringList :: JSVal }

instance Eq (DOMStringList) where
  (DOMStringList a) == (DOMStringList b) = js_eq a b

instance PToJSVal DOMStringList where
  pToJSVal = unDOMStringList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMStringList where
  pFromJSVal = DOMStringList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMStringList where
  toJSVal = return . unDOMStringList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMStringList where
  fromJSVal = return . fmap DOMStringList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DOMStringList where
  toGObject = GObject . unDOMStringList
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMStringList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMStringList :: IsGObject obj => obj -> DOMStringList
castToDOMStringList = castTo gTypeDOMStringList "DOMStringList"

foreign import javascript unsafe "window[\"DOMStringList\"]" gTypeDOMStringList :: GType
#else
type IsDOMStringList o = DOMStringListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap Mozilla DOMStringMap documentation>
newtype DOMStringMap = DOMStringMap { unDOMStringMap :: JSVal }

instance Eq (DOMStringMap) where
  (DOMStringMap a) == (DOMStringMap b) = js_eq a b

instance PToJSVal DOMStringMap where
  pToJSVal = unDOMStringMap
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMStringMap where
  pFromJSVal = DOMStringMap
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMStringMap where
  toJSVal = return . unDOMStringMap
  {-# INLINE toJSVal #-}

instance FromJSVal DOMStringMap where
  fromJSVal = return . fmap DOMStringMap . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DOMStringMap where
  toGObject = GObject . unDOMStringMap
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMStringMap . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMStringMap :: IsGObject obj => obj -> DOMStringMap
castToDOMStringMap = castTo gTypeDOMStringMap "DOMStringMap"

foreign import javascript unsafe "window[\"DOMStringMap\"]" gTypeDOMStringMap :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMTokenList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList Mozilla DOMTokenList documentation>
newtype DOMTokenList = DOMTokenList { unDOMTokenList :: JSVal }

instance Eq (DOMTokenList) where
  (DOMTokenList a) == (DOMTokenList b) = js_eq a b

instance PToJSVal DOMTokenList where
  pToJSVal = unDOMTokenList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DOMTokenList where
  pFromJSVal = DOMTokenList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DOMTokenList where
  toJSVal = return . unDOMTokenList
  {-# INLINE toJSVal #-}

instance FromJSVal DOMTokenList where
  fromJSVal = return . fmap DOMTokenList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsDOMTokenList o
toDOMTokenList :: IsDOMTokenList o => o -> DOMTokenList
toDOMTokenList = unsafeCastGObject . toGObject

instance IsDOMTokenList DOMTokenList
instance IsGObject DOMTokenList where
  toGObject = GObject . unDOMTokenList
  {-# INLINE toGObject #-}
  unsafeCastGObject = DOMTokenList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDOMTokenList :: IsGObject obj => obj -> DOMTokenList
castToDOMTokenList = castTo gTypeDOMTokenList "DOMTokenList"

foreign import javascript unsafe "window[\"DOMTokenList\"]" gTypeDOMTokenList :: GType
#else
type IsDOMTokenList o = DOMTokenListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.TextTrackCue"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation>
newtype DataCue = DataCue { unDataCue :: JSVal }

instance Eq (DataCue) where
  (DataCue a) == (DataCue b) = js_eq a b

instance PToJSVal DataCue where
  pToJSVal = unDataCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataCue where
  pFromJSVal = DataCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataCue where
  toJSVal = return . unDataCue
  {-# INLINE toJSVal #-}

instance FromJSVal DataCue where
  fromJSVal = return . fmap DataCue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsTextTrackCue DataCue
instance IsEventTarget DataCue
instance IsGObject DataCue where
  toGObject = GObject . unDataCue
  {-# INLINE toGObject #-}
  unsafeCastGObject = DataCue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDataCue :: IsGObject obj => obj -> DataCue
castToDataCue = castTo gTypeDataCue "DataCue"

foreign import javascript unsafe "window[\"WebKitDataCue\"]" gTypeDataCue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransfer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer Mozilla DataTransfer documentation>
newtype DataTransfer = DataTransfer { unDataTransfer :: JSVal }

instance Eq (DataTransfer) where
  (DataTransfer a) == (DataTransfer b) = js_eq a b

instance PToJSVal DataTransfer where
  pToJSVal = unDataTransfer
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransfer where
  pFromJSVal = DataTransfer
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransfer where
  toJSVal = return . unDataTransfer
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransfer where
  fromJSVal = return . fmap DataTransfer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DataTransfer where
  toGObject = GObject . unDataTransfer
  {-# INLINE toGObject #-}
  unsafeCastGObject = DataTransfer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDataTransfer :: IsGObject obj => obj -> DataTransfer
castToDataTransfer = castTo gTypeDataTransfer "DataTransfer"

foreign import javascript unsafe "window[\"DataTransfer\"]" gTypeDataTransfer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransferItem".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem Mozilla DataTransferItem documentation>
newtype DataTransferItem = DataTransferItem { unDataTransferItem :: JSVal }

instance Eq (DataTransferItem) where
  (DataTransferItem a) == (DataTransferItem b) = js_eq a b

instance PToJSVal DataTransferItem where
  pToJSVal = unDataTransferItem
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransferItem where
  pFromJSVal = DataTransferItem
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransferItem where
  toJSVal = return . unDataTransferItem
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransferItem where
  fromJSVal = return . fmap DataTransferItem . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DataTransferItem where
  toGObject = GObject . unDataTransferItem
  {-# INLINE toGObject #-}
  unsafeCastGObject = DataTransferItem . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDataTransferItem :: IsGObject obj => obj -> DataTransferItem
castToDataTransferItem = castTo gTypeDataTransferItem "DataTransferItem"

foreign import javascript unsafe "window[\"DataTransferItem\"]" gTypeDataTransferItem :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DataTransferItemList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItemList Mozilla DataTransferItemList documentation>
newtype DataTransferItemList = DataTransferItemList { unDataTransferItemList :: JSVal }

instance Eq (DataTransferItemList) where
  (DataTransferItemList a) == (DataTransferItemList b) = js_eq a b

instance PToJSVal DataTransferItemList where
  pToJSVal = unDataTransferItemList
  {-# INLINE pToJSVal #-}

instance PFromJSVal DataTransferItemList where
  pFromJSVal = DataTransferItemList
  {-# INLINE pFromJSVal #-}

instance ToJSVal DataTransferItemList where
  toJSVal = return . unDataTransferItemList
  {-# INLINE toJSVal #-}

instance FromJSVal DataTransferItemList where
  fromJSVal = return . fmap DataTransferItemList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject DataTransferItemList where
  toGObject = GObject . unDataTransferItemList
  {-# INLINE toGObject #-}
  unsafeCastGObject = DataTransferItemList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDataTransferItemList :: IsGObject obj => obj -> DataTransferItemList
castToDataTransferItemList = castTo gTypeDataTransferItemList "DataTransferItemList"

foreign import javascript unsafe "window[\"DataTransferItemList\"]" gTypeDataTransferItemList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Database".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Database Mozilla Database documentation>
newtype Database = Database { unDatabase :: JSVal }

instance Eq (Database) where
  (Database a) == (Database b) = js_eq a b

instance PToJSVal Database where
  pToJSVal = unDatabase
  {-# INLINE pToJSVal #-}

instance PFromJSVal Database where
  pFromJSVal = Database
  {-# INLINE pFromJSVal #-}

instance ToJSVal Database where
  toJSVal = return . unDatabase
  {-# INLINE toJSVal #-}

instance FromJSVal Database where
  fromJSVal = return . fmap Database . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Database where
  toGObject = GObject . unDatabase
  {-# INLINE toGObject #-}
  unsafeCastGObject = Database . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDatabase :: IsGObject obj => obj -> Database
castToDatabase = castTo gTypeDatabase "Database"

foreign import javascript unsafe "window[\"Database\"]" gTypeDatabase :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DedicatedWorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WorkerGlobalScope"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope Mozilla DedicatedWorkerGlobalScope documentation>
newtype DedicatedWorkerGlobalScope = DedicatedWorkerGlobalScope { unDedicatedWorkerGlobalScope :: JSVal }

instance Eq (DedicatedWorkerGlobalScope) where
  (DedicatedWorkerGlobalScope a) == (DedicatedWorkerGlobalScope b) = js_eq a b

instance PToJSVal DedicatedWorkerGlobalScope where
  pToJSVal = unDedicatedWorkerGlobalScope
  {-# INLINE pToJSVal #-}

instance PFromJSVal DedicatedWorkerGlobalScope where
  pFromJSVal = DedicatedWorkerGlobalScope
  {-# INLINE pFromJSVal #-}

instance ToJSVal DedicatedWorkerGlobalScope where
  toJSVal = return . unDedicatedWorkerGlobalScope
  {-# INLINE toJSVal #-}

instance FromJSVal DedicatedWorkerGlobalScope where
  fromJSVal = return . fmap DedicatedWorkerGlobalScope . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsWorkerGlobalScope DedicatedWorkerGlobalScope
instance IsEventTarget DedicatedWorkerGlobalScope
instance IsGObject DedicatedWorkerGlobalScope where
  toGObject = GObject . unDedicatedWorkerGlobalScope
  {-# INLINE toGObject #-}
  unsafeCastGObject = DedicatedWorkerGlobalScope . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDedicatedWorkerGlobalScope :: IsGObject obj => obj -> DedicatedWorkerGlobalScope
castToDedicatedWorkerGlobalScope = castTo gTypeDedicatedWorkerGlobalScope "DedicatedWorkerGlobalScope"

foreign import javascript unsafe "window[\"DedicatedWorkerGlobalScope\"]" gTypeDedicatedWorkerGlobalScope :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DelayNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode Mozilla DelayNode documentation>
newtype DelayNode = DelayNode { unDelayNode :: JSVal }

instance Eq (DelayNode) where
  (DelayNode a) == (DelayNode b) = js_eq a b

instance PToJSVal DelayNode where
  pToJSVal = unDelayNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal DelayNode where
  pFromJSVal = DelayNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal DelayNode where
  toJSVal = return . unDelayNode
  {-# INLINE toJSVal #-}

instance FromJSVal DelayNode where
  fromJSVal = return . fmap DelayNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode DelayNode
instance IsEventTarget DelayNode
instance IsGObject DelayNode where
  toGObject = GObject . unDelayNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = DelayNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDelayNode :: IsGObject obj => obj -> DelayNode
castToDelayNode = castTo gTypeDelayNode "DelayNode"

foreign import javascript unsafe "window[\"DelayNode\"]" gTypeDelayNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceMotionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent Mozilla DeviceMotionEvent documentation>
newtype DeviceMotionEvent = DeviceMotionEvent { unDeviceMotionEvent :: JSVal }

instance Eq (DeviceMotionEvent) where
  (DeviceMotionEvent a) == (DeviceMotionEvent b) = js_eq a b

instance PToJSVal DeviceMotionEvent where
  pToJSVal = unDeviceMotionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceMotionEvent where
  pFromJSVal = DeviceMotionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceMotionEvent where
  toJSVal = return . unDeviceMotionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceMotionEvent where
  fromJSVal = return . fmap DeviceMotionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent DeviceMotionEvent
instance IsGObject DeviceMotionEvent where
  toGObject = GObject . unDeviceMotionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = DeviceMotionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDeviceMotionEvent :: IsGObject obj => obj -> DeviceMotionEvent
castToDeviceMotionEvent = castTo gTypeDeviceMotionEvent "DeviceMotionEvent"

foreign import javascript unsafe "window[\"DeviceMotionEvent\"]" gTypeDeviceMotionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceOrientationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent Mozilla DeviceOrientationEvent documentation>
newtype DeviceOrientationEvent = DeviceOrientationEvent { unDeviceOrientationEvent :: JSVal }

instance Eq (DeviceOrientationEvent) where
  (DeviceOrientationEvent a) == (DeviceOrientationEvent b) = js_eq a b

instance PToJSVal DeviceOrientationEvent where
  pToJSVal = unDeviceOrientationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceOrientationEvent where
  pFromJSVal = DeviceOrientationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceOrientationEvent where
  toJSVal = return . unDeviceOrientationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceOrientationEvent where
  fromJSVal = return . fmap DeviceOrientationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent DeviceOrientationEvent
instance IsGObject DeviceOrientationEvent where
  toGObject = GObject . unDeviceOrientationEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = DeviceOrientationEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDeviceOrientationEvent :: IsGObject obj => obj -> DeviceOrientationEvent
castToDeviceOrientationEvent = castTo gTypeDeviceOrientationEvent "DeviceOrientationEvent"

foreign import javascript unsafe "window[\"DeviceOrientationEvent\"]" gTypeDeviceOrientationEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DeviceProximityEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent Mozilla DeviceProximityEvent documentation>
newtype DeviceProximityEvent = DeviceProximityEvent { unDeviceProximityEvent :: JSVal }

instance Eq (DeviceProximityEvent) where
  (DeviceProximityEvent a) == (DeviceProximityEvent b) = js_eq a b

instance PToJSVal DeviceProximityEvent where
  pToJSVal = unDeviceProximityEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal DeviceProximityEvent where
  pFromJSVal = DeviceProximityEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal DeviceProximityEvent where
  toJSVal = return . unDeviceProximityEvent
  {-# INLINE toJSVal #-}

instance FromJSVal DeviceProximityEvent where
  fromJSVal = return . fmap DeviceProximityEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent DeviceProximityEvent
instance IsGObject DeviceProximityEvent where
  toGObject = GObject . unDeviceProximityEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = DeviceProximityEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDeviceProximityEvent :: IsGObject obj => obj -> DeviceProximityEvent
castToDeviceProximityEvent = castTo gTypeDeviceProximityEvent "DeviceProximityEvent"

foreign import javascript unsafe "window[\"DeviceProximityEvent\"]" gTypeDeviceProximityEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Document".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation>
newtype Document = Document { unDocument :: JSVal }

instance Eq (Document) where
  (Document a) == (Document b) = js_eq a b

instance PToJSVal Document where
  pToJSVal = unDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal Document where
  pFromJSVal = Document
  {-# INLINE pFromJSVal #-}

instance ToJSVal Document where
  toJSVal = return . unDocument
  {-# INLINE toJSVal #-}

instance FromJSVal Document where
  fromJSVal = return . fmap Document . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsNode o => IsDocument o
toDocument :: IsDocument o => o -> Document
toDocument = unsafeCastGObject . toGObject

instance IsDocument Document
instance IsNode Document
instance IsEventTarget Document
instance IsGObject Document where
  toGObject = GObject . unDocument
  {-# INLINE toGObject #-}
  unsafeCastGObject = Document . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDocument :: IsGObject obj => obj -> Document
castToDocument = castTo gTypeDocument "Document"

foreign import javascript unsafe "window[\"Document\"]" gTypeDocument :: GType
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
newtype DocumentFragment = DocumentFragment { unDocumentFragment :: JSVal }

instance Eq (DocumentFragment) where
  (DocumentFragment a) == (DocumentFragment b) = js_eq a b

instance PToJSVal DocumentFragment where
  pToJSVal = unDocumentFragment
  {-# INLINE pToJSVal #-}

instance PFromJSVal DocumentFragment where
  pFromJSVal = DocumentFragment
  {-# INLINE pFromJSVal #-}

instance ToJSVal DocumentFragment where
  toJSVal = return . unDocumentFragment
  {-# INLINE toJSVal #-}

instance FromJSVal DocumentFragment where
  fromJSVal = return . fmap DocumentFragment . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNode DocumentFragment
instance IsEventTarget DocumentFragment
instance IsGObject DocumentFragment where
  toGObject = GObject . unDocumentFragment
  {-# INLINE toGObject #-}
  unsafeCastGObject = DocumentFragment . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDocumentFragment :: IsGObject obj => obj -> DocumentFragment
castToDocumentFragment = castTo gTypeDocumentFragment "DocumentFragment"

foreign import javascript unsafe "window[\"DocumentFragment\"]" gTypeDocumentFragment :: GType
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
newtype DocumentType = DocumentType { unDocumentType :: JSVal }

instance Eq (DocumentType) where
  (DocumentType a) == (DocumentType b) = js_eq a b

instance PToJSVal DocumentType where
  pToJSVal = unDocumentType
  {-# INLINE pToJSVal #-}

instance PFromJSVal DocumentType where
  pFromJSVal = DocumentType
  {-# INLINE pFromJSVal #-}

instance ToJSVal DocumentType where
  toJSVal = return . unDocumentType
  {-# INLINE toJSVal #-}

instance FromJSVal DocumentType where
  fromJSVal = return . fmap DocumentType . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNode DocumentType
instance IsEventTarget DocumentType
instance IsGObject DocumentType where
  toGObject = GObject . unDocumentType
  {-# INLINE toGObject #-}
  unsafeCastGObject = DocumentType . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDocumentType :: IsGObject obj => obj -> DocumentType
castToDocumentType = castTo gTypeDocumentType "DocumentType"

foreign import javascript unsafe "window[\"DocumentType\"]" gTypeDocumentType :: GType
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
newtype DynamicsCompressorNode = DynamicsCompressorNode { unDynamicsCompressorNode :: JSVal }

instance Eq (DynamicsCompressorNode) where
  (DynamicsCompressorNode a) == (DynamicsCompressorNode b) = js_eq a b

instance PToJSVal DynamicsCompressorNode where
  pToJSVal = unDynamicsCompressorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal DynamicsCompressorNode where
  pFromJSVal = DynamicsCompressorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal DynamicsCompressorNode where
  toJSVal = return . unDynamicsCompressorNode
  {-# INLINE toJSVal #-}

instance FromJSVal DynamicsCompressorNode where
  fromJSVal = return . fmap DynamicsCompressorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode DynamicsCompressorNode
instance IsEventTarget DynamicsCompressorNode
instance IsGObject DynamicsCompressorNode where
  toGObject = GObject . unDynamicsCompressorNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = DynamicsCompressorNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToDynamicsCompressorNode :: IsGObject obj => obj -> DynamicsCompressorNode
castToDynamicsCompressorNode = castTo gTypeDynamicsCompressorNode "DynamicsCompressorNode"

foreign import javascript unsafe "window[\"DynamicsCompressorNode\"]" gTypeDynamicsCompressorNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTBlendMinMax".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTBlendMinMax Mozilla EXTBlendMinMax documentation>
newtype EXTBlendMinMax = EXTBlendMinMax { unEXTBlendMinMax :: JSVal }

instance Eq (EXTBlendMinMax) where
  (EXTBlendMinMax a) == (EXTBlendMinMax b) = js_eq a b

instance PToJSVal EXTBlendMinMax where
  pToJSVal = unEXTBlendMinMax
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTBlendMinMax where
  pFromJSVal = EXTBlendMinMax
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTBlendMinMax where
  toJSVal = return . unEXTBlendMinMax
  {-# INLINE toJSVal #-}

instance FromJSVal EXTBlendMinMax where
  fromJSVal = return . fmap EXTBlendMinMax . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EXTBlendMinMax where
  toGObject = GObject . unEXTBlendMinMax
  {-# INLINE toGObject #-}
  unsafeCastGObject = EXTBlendMinMax . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEXTBlendMinMax :: IsGObject obj => obj -> EXTBlendMinMax
castToEXTBlendMinMax = castTo gTypeEXTBlendMinMax "EXTBlendMinMax"

foreign import javascript unsafe "window[\"EXTBlendMinMax\"]" gTypeEXTBlendMinMax :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTFragDepth".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTFragDepth Mozilla EXTFragDepth documentation>
newtype EXTFragDepth = EXTFragDepth { unEXTFragDepth :: JSVal }

instance Eq (EXTFragDepth) where
  (EXTFragDepth a) == (EXTFragDepth b) = js_eq a b

instance PToJSVal EXTFragDepth where
  pToJSVal = unEXTFragDepth
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTFragDepth where
  pFromJSVal = EXTFragDepth
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTFragDepth where
  toJSVal = return . unEXTFragDepth
  {-# INLINE toJSVal #-}

instance FromJSVal EXTFragDepth where
  fromJSVal = return . fmap EXTFragDepth . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EXTFragDepth where
  toGObject = GObject . unEXTFragDepth
  {-# INLINE toGObject #-}
  unsafeCastGObject = EXTFragDepth . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEXTFragDepth :: IsGObject obj => obj -> EXTFragDepth
castToEXTFragDepth = castTo gTypeEXTFragDepth "EXTFragDepth"

foreign import javascript unsafe "window[\"EXTFragDepth\"]" gTypeEXTFragDepth :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTShaderTextureLOD".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTShaderTextureLOD Mozilla EXTShaderTextureLOD documentation>
newtype EXTShaderTextureLOD = EXTShaderTextureLOD { unEXTShaderTextureLOD :: JSVal }

instance Eq (EXTShaderTextureLOD) where
  (EXTShaderTextureLOD a) == (EXTShaderTextureLOD b) = js_eq a b

instance PToJSVal EXTShaderTextureLOD where
  pToJSVal = unEXTShaderTextureLOD
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTShaderTextureLOD where
  pFromJSVal = EXTShaderTextureLOD
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTShaderTextureLOD where
  toJSVal = return . unEXTShaderTextureLOD
  {-# INLINE toJSVal #-}

instance FromJSVal EXTShaderTextureLOD where
  fromJSVal = return . fmap EXTShaderTextureLOD . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EXTShaderTextureLOD where
  toGObject = GObject . unEXTShaderTextureLOD
  {-# INLINE toGObject #-}
  unsafeCastGObject = EXTShaderTextureLOD . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEXTShaderTextureLOD :: IsGObject obj => obj -> EXTShaderTextureLOD
castToEXTShaderTextureLOD = castTo gTypeEXTShaderTextureLOD "EXTShaderTextureLOD"

foreign import javascript unsafe "window[\"EXTShaderTextureLOD\"]" gTypeEXTShaderTextureLOD :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTTextureFilterAnisotropic".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTTextureFilterAnisotropic Mozilla EXTTextureFilterAnisotropic documentation>
newtype EXTTextureFilterAnisotropic = EXTTextureFilterAnisotropic { unEXTTextureFilterAnisotropic :: JSVal }

instance Eq (EXTTextureFilterAnisotropic) where
  (EXTTextureFilterAnisotropic a) == (EXTTextureFilterAnisotropic b) = js_eq a b

instance PToJSVal EXTTextureFilterAnisotropic where
  pToJSVal = unEXTTextureFilterAnisotropic
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTTextureFilterAnisotropic where
  pFromJSVal = EXTTextureFilterAnisotropic
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTTextureFilterAnisotropic where
  toJSVal = return . unEXTTextureFilterAnisotropic
  {-# INLINE toJSVal #-}

instance FromJSVal EXTTextureFilterAnisotropic where
  fromJSVal = return . fmap EXTTextureFilterAnisotropic . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EXTTextureFilterAnisotropic where
  toGObject = GObject . unEXTTextureFilterAnisotropic
  {-# INLINE toGObject #-}
  unsafeCastGObject = EXTTextureFilterAnisotropic . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEXTTextureFilterAnisotropic :: IsGObject obj => obj -> EXTTextureFilterAnisotropic
castToEXTTextureFilterAnisotropic = castTo gTypeEXTTextureFilterAnisotropic "EXTTextureFilterAnisotropic"

foreign import javascript unsafe "window[\"EXTTextureFilterAnisotropic\"]" gTypeEXTTextureFilterAnisotropic :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EXTsRGB".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EXTsRGB Mozilla EXTsRGB documentation>
newtype EXTsRGB = EXTsRGB { unEXTsRGB :: JSVal }

instance Eq (EXTsRGB) where
  (EXTsRGB a) == (EXTsRGB b) = js_eq a b

instance PToJSVal EXTsRGB where
  pToJSVal = unEXTsRGB
  {-# INLINE pToJSVal #-}

instance PFromJSVal EXTsRGB where
  pFromJSVal = EXTsRGB
  {-# INLINE pFromJSVal #-}

instance ToJSVal EXTsRGB where
  toJSVal = return . unEXTsRGB
  {-# INLINE toJSVal #-}

instance FromJSVal EXTsRGB where
  fromJSVal = return . fmap EXTsRGB . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EXTsRGB where
  toGObject = GObject . unEXTsRGB
  {-# INLINE toGObject #-}
  unsafeCastGObject = EXTsRGB . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEXTsRGB :: IsGObject obj => obj -> EXTsRGB
castToEXTsRGB = castTo gTypeEXTsRGB "EXTsRGB"

foreign import javascript unsafe "window[\"EXTsRGB\"]" gTypeEXTsRGB :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Element".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Element Mozilla Element documentation>
newtype Element = Element { unElement :: JSVal }

instance Eq (Element) where
  (Element a) == (Element b) = js_eq a b

instance PToJSVal Element where
  pToJSVal = unElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal Element where
  pFromJSVal = Element
  {-# INLINE pFromJSVal #-}

instance ToJSVal Element where
  toJSVal = return . unElement
  {-# INLINE toJSVal #-}

instance FromJSVal Element where
  fromJSVal = return . fmap Element . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsNode o => IsElement o
toElement :: IsElement o => o -> Element
toElement = unsafeCastGObject . toGObject

instance IsElement Element
instance IsNode Element
instance IsEventTarget Element
instance IsGObject Element where
  toGObject = GObject . unElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = Element . unGObject
  {-# INLINE unsafeCastGObject #-}

castToElement :: IsGObject obj => obj -> Element
castToElement = castTo gTypeElement "Element"

foreign import javascript unsafe "window[\"Element\"]" gTypeElement :: GType
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
newtype Entity = Entity { unEntity :: JSVal }

instance Eq (Entity) where
  (Entity a) == (Entity b) = js_eq a b

instance PToJSVal Entity where
  pToJSVal = unEntity
  {-# INLINE pToJSVal #-}

instance PFromJSVal Entity where
  pFromJSVal = Entity
  {-# INLINE pFromJSVal #-}

instance ToJSVal Entity where
  toJSVal = return . unEntity
  {-# INLINE toJSVal #-}

instance FromJSVal Entity where
  fromJSVal = return . fmap Entity . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNode Entity
instance IsEventTarget Entity
instance IsGObject Entity where
  toGObject = GObject . unEntity
  {-# INLINE toGObject #-}
  unsafeCastGObject = Entity . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEntity :: IsGObject obj => obj -> Entity
castToEntity = castTo gTypeEntity "Entity"

foreign import javascript unsafe "window[\"Entity\"]" gTypeEntity :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EntityReference".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EntityReference Mozilla EntityReference documentation>
newtype EntityReference = EntityReference { unEntityReference :: JSVal }

instance Eq (EntityReference) where
  (EntityReference a) == (EntityReference b) = js_eq a b

instance PToJSVal EntityReference where
  pToJSVal = unEntityReference
  {-# INLINE pToJSVal #-}

instance PFromJSVal EntityReference where
  pFromJSVal = EntityReference
  {-# INLINE pFromJSVal #-}

instance ToJSVal EntityReference where
  toJSVal = return . unEntityReference
  {-# INLINE toJSVal #-}

instance FromJSVal EntityReference where
  fromJSVal = return . fmap EntityReference . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNode EntityReference
instance IsEventTarget EntityReference
instance IsGObject EntityReference where
  toGObject = GObject . unEntityReference
  {-# INLINE toGObject #-}
  unsafeCastGObject = EntityReference . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEntityReference :: IsGObject obj => obj -> EntityReference
castToEntityReference = castTo gTypeEntityReference "EntityReference"

foreign import javascript unsafe "window[\"EntityReference\"]" gTypeEntityReference :: GType
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
newtype ErrorEvent = ErrorEvent { unErrorEvent :: JSVal }

instance Eq (ErrorEvent) where
  (ErrorEvent a) == (ErrorEvent b) = js_eq a b

instance PToJSVal ErrorEvent where
  pToJSVal = unErrorEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal ErrorEvent where
  pFromJSVal = ErrorEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal ErrorEvent where
  toJSVal = return . unErrorEvent
  {-# INLINE toJSVal #-}

instance FromJSVal ErrorEvent where
  fromJSVal = return . fmap ErrorEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent ErrorEvent
instance IsGObject ErrorEvent where
  toGObject = GObject . unErrorEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = ErrorEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToErrorEvent :: IsGObject obj => obj -> ErrorEvent
castToErrorEvent = castTo gTypeErrorEvent "ErrorEvent"

foreign import javascript unsafe "window[\"ErrorEvent\"]" gTypeErrorEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Event".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Event Mozilla Event documentation>
newtype Event = Event { unEvent :: JSVal }

instance Eq (Event) where
  (Event a) == (Event b) = js_eq a b

instance PToJSVal Event where
  pToJSVal = unEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal Event where
  pFromJSVal = Event
  {-# INLINE pFromJSVal #-}

instance ToJSVal Event where
  toJSVal = return . unEvent
  {-# INLINE toJSVal #-}

instance FromJSVal Event where
  fromJSVal = return . fmap Event . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsEvent o
toEvent :: IsEvent o => o -> Event
toEvent = unsafeCastGObject . toGObject

instance IsEvent Event
instance IsGObject Event where
  toGObject = GObject . unEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = Event . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEvent :: IsGObject obj => obj -> Event
castToEvent = castTo gTypeEvent "Event"

foreign import javascript unsafe "window[\"Event\"]" gTypeEvent :: GType
#else
type IsEvent o = EventClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventListener Mozilla EventListener documentation>
newtype EventListener = EventListener { unEventListener :: JSVal }

instance Eq (EventListener) where
  (EventListener a) == (EventListener b) = js_eq a b

instance PToJSVal EventListener where
  pToJSVal = unEventListener
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventListener where
  pFromJSVal = EventListener
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventListener where
  toJSVal = return . unEventListener
  {-# INLINE toJSVal #-}

instance FromJSVal EventListener where
  fromJSVal = return . fmap EventListener . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject EventListener where
  toGObject = GObject . unEventListener
  {-# INLINE toGObject #-}
  unsafeCastGObject = EventListener . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEventListener :: IsGObject obj => obj -> EventListener
castToEventListener = castTo gTypeEventListener "EventListener"

foreign import javascript unsafe "window[\"EventListener\"]" gTypeEventListener :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventSource".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation>
newtype EventSource = EventSource { unEventSource :: JSVal }

instance Eq (EventSource) where
  (EventSource a) == (EventSource b) = js_eq a b

instance PToJSVal EventSource where
  pToJSVal = unEventSource
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventSource where
  pFromJSVal = EventSource
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventSource where
  toJSVal = return . unEventSource
  {-# INLINE toJSVal #-}

instance FromJSVal EventSource where
  fromJSVal = return . fmap EventSource . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget EventSource
instance IsGObject EventSource where
  toGObject = GObject . unEventSource
  {-# INLINE toGObject #-}
  unsafeCastGObject = EventSource . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEventSource :: IsGObject obj => obj -> EventSource
castToEventSource = castTo gTypeEventSource "EventSource"

foreign import javascript unsafe "window[\"EventSource\"]" gTypeEventSource :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventTarget".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget Mozilla EventTarget documentation>
newtype EventTarget = EventTarget { unEventTarget :: JSVal }

instance Eq (EventTarget) where
  (EventTarget a) == (EventTarget b) = js_eq a b

instance PToJSVal EventTarget where
  pToJSVal = unEventTarget
  {-# INLINE pToJSVal #-}

instance PFromJSVal EventTarget where
  pFromJSVal = EventTarget
  {-# INLINE pFromJSVal #-}

instance ToJSVal EventTarget where
  toJSVal = return . unEventTarget
  {-# INLINE toJSVal #-}

instance FromJSVal EventTarget where
  fromJSVal = return . fmap EventTarget . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsEventTarget o
toEventTarget :: IsEventTarget o => o -> EventTarget
toEventTarget = unsafeCastGObject . toGObject

instance IsEventTarget EventTarget
instance IsGObject EventTarget where
  toGObject = GObject . unEventTarget
  {-# INLINE toGObject #-}
  unsafeCastGObject = EventTarget . unGObject
  {-# INLINE unsafeCastGObject #-}

castToEventTarget :: IsGObject obj => obj -> EventTarget
castToEventTarget = castTo gTypeEventTarget "EventTarget"

foreign import javascript unsafe "window[\"EventTarget\"]" gTypeEventTarget :: GType
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
newtype File = File { unFile :: JSVal }

instance Eq (File) where
  (File a) == (File b) = js_eq a b

instance PToJSVal File where
  pToJSVal = unFile
  {-# INLINE pToJSVal #-}

instance PFromJSVal File where
  pFromJSVal = File
  {-# INLINE pFromJSVal #-}

instance ToJSVal File where
  toJSVal = return . unFile
  {-# INLINE toJSVal #-}

instance FromJSVal File where
  fromJSVal = return . fmap File . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsBlob File
instance IsGObject File where
  toGObject = GObject . unFile
  {-# INLINE toGObject #-}
  unsafeCastGObject = File . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFile :: IsGObject obj => obj -> File
castToFile = castTo gTypeFile "File"

foreign import javascript unsafe "window[\"File\"]" gTypeFile :: GType
#else
type IsFile o = FileClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileError Mozilla FileError documentation>
newtype FileError = FileError { unFileError :: JSVal }

instance Eq (FileError) where
  (FileError a) == (FileError b) = js_eq a b

instance PToJSVal FileError where
  pToJSVal = unFileError
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileError where
  pFromJSVal = FileError
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileError where
  toJSVal = return . unFileError
  {-# INLINE toJSVal #-}

instance FromJSVal FileError where
  fromJSVal = return . fmap FileError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject FileError where
  toGObject = GObject . unFileError
  {-# INLINE toGObject #-}
  unsafeCastGObject = FileError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFileError :: IsGObject obj => obj -> FileError
castToFileError = castTo gTypeFileError "FileError"

foreign import javascript unsafe "window[\"FileError\"]" gTypeFileError :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileList Mozilla FileList documentation>
newtype FileList = FileList { unFileList :: JSVal }

instance Eq (FileList) where
  (FileList a) == (FileList b) = js_eq a b

instance PToJSVal FileList where
  pToJSVal = unFileList
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileList where
  pFromJSVal = FileList
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileList where
  toJSVal = return . unFileList
  {-# INLINE toJSVal #-}

instance FromJSVal FileList where
  fromJSVal = return . fmap FileList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject FileList where
  toGObject = GObject . unFileList
  {-# INLINE toGObject #-}
  unsafeCastGObject = FileList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFileList :: IsGObject obj => obj -> FileList
castToFileList = castTo gTypeFileList "FileList"

foreign import javascript unsafe "window[\"FileList\"]" gTypeFileList :: GType
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
newtype FileReader = FileReader { unFileReader :: JSVal }

instance Eq (FileReader) where
  (FileReader a) == (FileReader b) = js_eq a b

instance PToJSVal FileReader where
  pToJSVal = unFileReader
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileReader where
  pFromJSVal = FileReader
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileReader where
  toJSVal = return . unFileReader
  {-# INLINE toJSVal #-}

instance FromJSVal FileReader where
  fromJSVal = return . fmap FileReader . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget FileReader
instance IsGObject FileReader where
  toGObject = GObject . unFileReader
  {-# INLINE toGObject #-}
  unsafeCastGObject = FileReader . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFileReader :: IsGObject obj => obj -> FileReader
castToFileReader = castTo gTypeFileReader "FileReader"

foreign import javascript unsafe "window[\"FileReader\"]" gTypeFileReader :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FileReaderSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation>
newtype FileReaderSync = FileReaderSync { unFileReaderSync :: JSVal }

instance Eq (FileReaderSync) where
  (FileReaderSync a) == (FileReaderSync b) = js_eq a b

instance PToJSVal FileReaderSync where
  pToJSVal = unFileReaderSync
  {-# INLINE pToJSVal #-}

instance PFromJSVal FileReaderSync where
  pFromJSVal = FileReaderSync
  {-# INLINE pFromJSVal #-}

instance ToJSVal FileReaderSync where
  toJSVal = return . unFileReaderSync
  {-# INLINE toJSVal #-}

instance FromJSVal FileReaderSync where
  fromJSVal = return . fmap FileReaderSync . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject FileReaderSync where
  toGObject = GObject . unFileReaderSync
  {-# INLINE toGObject #-}
  unsafeCastGObject = FileReaderSync . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFileReaderSync :: IsGObject obj => obj -> FileReaderSync
castToFileReaderSync = castTo gTypeFileReaderSync "FileReaderSync"

foreign import javascript unsafe "window[\"FileReaderSync\"]" gTypeFileReaderSync :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FocusEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent Mozilla FocusEvent documentation>
newtype FocusEvent = FocusEvent { unFocusEvent :: JSVal }

instance Eq (FocusEvent) where
  (FocusEvent a) == (FocusEvent b) = js_eq a b

instance PToJSVal FocusEvent where
  pToJSVal = unFocusEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal FocusEvent where
  pFromJSVal = FocusEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal FocusEvent where
  toJSVal = return . unFocusEvent
  {-# INLINE toJSVal #-}

instance FromJSVal FocusEvent where
  fromJSVal = return . fmap FocusEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent FocusEvent
instance IsEvent FocusEvent
instance IsGObject FocusEvent where
  toGObject = GObject . unFocusEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = FocusEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFocusEvent :: IsGObject obj => obj -> FocusEvent
castToFocusEvent = castTo gTypeFocusEvent "FocusEvent"

foreign import javascript unsafe "window[\"FocusEvent\"]" gTypeFocusEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FontLoader".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader Mozilla FontLoader documentation>
newtype FontLoader = FontLoader { unFontLoader :: JSVal }

instance Eq (FontLoader) where
  (FontLoader a) == (FontLoader b) = js_eq a b

instance PToJSVal FontLoader where
  pToJSVal = unFontLoader
  {-# INLINE pToJSVal #-}

instance PFromJSVal FontLoader where
  pFromJSVal = FontLoader
  {-# INLINE pFromJSVal #-}

instance ToJSVal FontLoader where
  toJSVal = return . unFontLoader
  {-# INLINE toJSVal #-}

instance FromJSVal FontLoader where
  fromJSVal = return . fmap FontLoader . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget FontLoader
instance IsGObject FontLoader where
  toGObject = GObject . unFontLoader
  {-# INLINE toGObject #-}
  unsafeCastGObject = FontLoader . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFontLoader :: IsGObject obj => obj -> FontLoader
castToFontLoader = castTo gTypeFontLoader "FontLoader"

foreign import javascript unsafe "window[\"FontLoader\"]" gTypeFontLoader :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FormData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation>
newtype FormData = FormData { unFormData :: JSVal }

instance Eq (FormData) where
  (FormData a) == (FormData b) = js_eq a b

instance PToJSVal FormData where
  pToJSVal = unFormData
  {-# INLINE pToJSVal #-}

instance PFromJSVal FormData where
  pFromJSVal = FormData
  {-# INLINE pFromJSVal #-}

instance ToJSVal FormData where
  toJSVal = return . unFormData
  {-# INLINE toJSVal #-}

instance FromJSVal FormData where
  fromJSVal = return . fmap FormData . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject FormData where
  toGObject = GObject . unFormData
  {-# INLINE toGObject #-}
  unsafeCastGObject = FormData . unGObject
  {-# INLINE unsafeCastGObject #-}

castToFormData :: IsGObject obj => obj -> FormData
castToFormData = castTo gTypeFormData "FormData"

foreign import javascript unsafe "window[\"FormData\"]" gTypeFormData :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GainNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GainNode Mozilla GainNode documentation>
newtype GainNode = GainNode { unGainNode :: JSVal }

instance Eq (GainNode) where
  (GainNode a) == (GainNode b) = js_eq a b

instance PToJSVal GainNode where
  pToJSVal = unGainNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal GainNode where
  pFromJSVal = GainNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal GainNode where
  toJSVal = return . unGainNode
  {-# INLINE toJSVal #-}

instance FromJSVal GainNode where
  fromJSVal = return . fmap GainNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode GainNode
instance IsEventTarget GainNode
instance IsGObject GainNode where
  toGObject = GObject . unGainNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = GainNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGainNode :: IsGObject obj => obj -> GainNode
castToGainNode = castTo gTypeGainNode "GainNode"

foreign import javascript unsafe "window[\"GainNode\"]" gTypeGainNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Gamepad".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad Mozilla Gamepad documentation>
newtype Gamepad = Gamepad { unGamepad :: JSVal }

instance Eq (Gamepad) where
  (Gamepad a) == (Gamepad b) = js_eq a b

instance PToJSVal Gamepad where
  pToJSVal = unGamepad
  {-# INLINE pToJSVal #-}

instance PFromJSVal Gamepad where
  pFromJSVal = Gamepad
  {-# INLINE pFromJSVal #-}

instance ToJSVal Gamepad where
  toJSVal = return . unGamepad
  {-# INLINE toJSVal #-}

instance FromJSVal Gamepad where
  fromJSVal = return . fmap Gamepad . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Gamepad where
  toGObject = GObject . unGamepad
  {-# INLINE toGObject #-}
  unsafeCastGObject = Gamepad . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGamepad :: IsGObject obj => obj -> Gamepad
castToGamepad = castTo gTypeGamepad "Gamepad"

foreign import javascript unsafe "window[\"Gamepad\"]" gTypeGamepad :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GamepadButton".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton Mozilla GamepadButton documentation>
newtype GamepadButton = GamepadButton { unGamepadButton :: JSVal }

instance Eq (GamepadButton) where
  (GamepadButton a) == (GamepadButton b) = js_eq a b

instance PToJSVal GamepadButton where
  pToJSVal = unGamepadButton
  {-# INLINE pToJSVal #-}

instance PFromJSVal GamepadButton where
  pFromJSVal = GamepadButton
  {-# INLINE pFromJSVal #-}

instance ToJSVal GamepadButton where
  toJSVal = return . unGamepadButton
  {-# INLINE toJSVal #-}

instance FromJSVal GamepadButton where
  fromJSVal = return . fmap GamepadButton . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject GamepadButton where
  toGObject = GObject . unGamepadButton
  {-# INLINE toGObject #-}
  unsafeCastGObject = GamepadButton . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGamepadButton :: IsGObject obj => obj -> GamepadButton
castToGamepadButton = castTo gTypeGamepadButton "GamepadButton"

foreign import javascript unsafe "window[\"GamepadButton\"]" gTypeGamepadButton :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.GamepadEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent Mozilla GamepadEvent documentation>
newtype GamepadEvent = GamepadEvent { unGamepadEvent :: JSVal }

instance Eq (GamepadEvent) where
  (GamepadEvent a) == (GamepadEvent b) = js_eq a b

instance PToJSVal GamepadEvent where
  pToJSVal = unGamepadEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal GamepadEvent where
  pFromJSVal = GamepadEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal GamepadEvent where
  toJSVal = return . unGamepadEvent
  {-# INLINE toJSVal #-}

instance FromJSVal GamepadEvent where
  fromJSVal = return . fmap GamepadEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent GamepadEvent
instance IsGObject GamepadEvent where
  toGObject = GObject . unGamepadEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = GamepadEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGamepadEvent :: IsGObject obj => obj -> GamepadEvent
castToGamepadEvent = castTo gTypeGamepadEvent "GamepadEvent"

foreign import javascript unsafe "window[\"GamepadEvent\"]" gTypeGamepadEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Geolocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation Mozilla Geolocation documentation>
newtype Geolocation = Geolocation { unGeolocation :: JSVal }

instance Eq (Geolocation) where
  (Geolocation a) == (Geolocation b) = js_eq a b

instance PToJSVal Geolocation where
  pToJSVal = unGeolocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal Geolocation where
  pFromJSVal = Geolocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal Geolocation where
  toJSVal = return . unGeolocation
  {-# INLINE toJSVal #-}

instance FromJSVal Geolocation where
  fromJSVal = return . fmap Geolocation . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Geolocation where
  toGObject = GObject . unGeolocation
  {-# INLINE toGObject #-}
  unsafeCastGObject = Geolocation . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGeolocation :: IsGObject obj => obj -> Geolocation
castToGeolocation = castTo gTypeGeolocation "Geolocation"

foreign import javascript unsafe "window[\"Geolocation\"]" gTypeGeolocation :: GType
#else
type IsGeolocation o = GeolocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Geoposition".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition Mozilla Geoposition documentation>
newtype Geoposition = Geoposition { unGeoposition :: JSVal }

instance Eq (Geoposition) where
  (Geoposition a) == (Geoposition b) = js_eq a b

instance PToJSVal Geoposition where
  pToJSVal = unGeoposition
  {-# INLINE pToJSVal #-}

instance PFromJSVal Geoposition where
  pFromJSVal = Geoposition
  {-# INLINE pFromJSVal #-}

instance ToJSVal Geoposition where
  toJSVal = return . unGeoposition
  {-# INLINE toJSVal #-}

instance FromJSVal Geoposition where
  fromJSVal = return . fmap Geoposition . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Geoposition where
  toGObject = GObject . unGeoposition
  {-# INLINE toGObject #-}
  unsafeCastGObject = Geoposition . unGObject
  {-# INLINE unsafeCastGObject #-}

castToGeoposition :: IsGObject obj => obj -> Geoposition
castToGeoposition = castTo gTypeGeoposition "Geoposition"

foreign import javascript unsafe "window[\"Geoposition\"]" gTypeGeoposition :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAllCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection Mozilla HTMLAllCollection documentation>
newtype HTMLAllCollection = HTMLAllCollection { unHTMLAllCollection :: JSVal }

instance Eq (HTMLAllCollection) where
  (HTMLAllCollection a) == (HTMLAllCollection b) = js_eq a b

instance PToJSVal HTMLAllCollection where
  pToJSVal = unHTMLAllCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAllCollection where
  pFromJSVal = HTMLAllCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAllCollection where
  toJSVal = return . unHTMLAllCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAllCollection where
  fromJSVal = return . fmap HTMLAllCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject HTMLAllCollection where
  toGObject = GObject . unHTMLAllCollection
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLAllCollection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLAllCollection :: IsGObject obj => obj -> HTMLAllCollection
castToHTMLAllCollection = castTo gTypeHTMLAllCollection "HTMLAllCollection"

foreign import javascript unsafe "window[\"HTMLAllCollection\"]" gTypeHTMLAllCollection :: GType
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
newtype HTMLAnchorElement = HTMLAnchorElement { unHTMLAnchorElement :: JSVal }

instance Eq (HTMLAnchorElement) where
  (HTMLAnchorElement a) == (HTMLAnchorElement b) = js_eq a b

instance PToJSVal HTMLAnchorElement where
  pToJSVal = unHTMLAnchorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAnchorElement where
  pFromJSVal = HTMLAnchorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAnchorElement where
  toJSVal = return . unHTMLAnchorElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAnchorElement where
  fromJSVal = return . fmap HTMLAnchorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLAnchorElement
instance IsElement HTMLAnchorElement
instance IsNode HTMLAnchorElement
instance IsEventTarget HTMLAnchorElement
instance IsGObject HTMLAnchorElement where
  toGObject = GObject . unHTMLAnchorElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLAnchorElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLAnchorElement :: IsGObject obj => obj -> HTMLAnchorElement
castToHTMLAnchorElement = castTo gTypeHTMLAnchorElement "HTMLAnchorElement"

foreign import javascript unsafe "window[\"HTMLAnchorElement\"]" gTypeHTMLAnchorElement :: GType
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
newtype HTMLAppletElement = HTMLAppletElement { unHTMLAppletElement :: JSVal }

instance Eq (HTMLAppletElement) where
  (HTMLAppletElement a) == (HTMLAppletElement b) = js_eq a b

instance PToJSVal HTMLAppletElement where
  pToJSVal = unHTMLAppletElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAppletElement where
  pFromJSVal = HTMLAppletElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAppletElement where
  toJSVal = return . unHTMLAppletElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAppletElement where
  fromJSVal = return . fmap HTMLAppletElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLAppletElement
instance IsElement HTMLAppletElement
instance IsNode HTMLAppletElement
instance IsEventTarget HTMLAppletElement
instance IsGObject HTMLAppletElement where
  toGObject = GObject . unHTMLAppletElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLAppletElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLAppletElement :: IsGObject obj => obj -> HTMLAppletElement
castToHTMLAppletElement = castTo gTypeHTMLAppletElement "HTMLAppletElement"

foreign import javascript unsafe "window[\"HTMLAppletElement\"]" gTypeHTMLAppletElement :: GType
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
newtype HTMLAreaElement = HTMLAreaElement { unHTMLAreaElement :: JSVal }

instance Eq (HTMLAreaElement) where
  (HTMLAreaElement a) == (HTMLAreaElement b) = js_eq a b

instance PToJSVal HTMLAreaElement where
  pToJSVal = unHTMLAreaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAreaElement where
  pFromJSVal = HTMLAreaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAreaElement where
  toJSVal = return . unHTMLAreaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAreaElement where
  fromJSVal = return . fmap HTMLAreaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLAreaElement
instance IsElement HTMLAreaElement
instance IsNode HTMLAreaElement
instance IsEventTarget HTMLAreaElement
instance IsGObject HTMLAreaElement where
  toGObject = GObject . unHTMLAreaElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLAreaElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLAreaElement :: IsGObject obj => obj -> HTMLAreaElement
castToHTMLAreaElement = castTo gTypeHTMLAreaElement "HTMLAreaElement"

foreign import javascript unsafe "window[\"HTMLAreaElement\"]" gTypeHTMLAreaElement :: GType
#else
type IsHTMLAreaElement o = HTMLAreaElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAudioElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLMediaElement"
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement Mozilla HTMLAudioElement documentation>
newtype HTMLAudioElement = HTMLAudioElement { unHTMLAudioElement :: JSVal }

instance Eq (HTMLAudioElement) where
  (HTMLAudioElement a) == (HTMLAudioElement b) = js_eq a b

instance PToJSVal HTMLAudioElement where
  pToJSVal = unHTMLAudioElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLAudioElement where
  pFromJSVal = HTMLAudioElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLAudioElement where
  toJSVal = return . unHTMLAudioElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLAudioElement where
  fromJSVal = return . fmap HTMLAudioElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLMediaElement HTMLAudioElement
instance IsHTMLElement HTMLAudioElement
instance IsElement HTMLAudioElement
instance IsNode HTMLAudioElement
instance IsEventTarget HTMLAudioElement
instance IsGObject HTMLAudioElement where
  toGObject = GObject . unHTMLAudioElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLAudioElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLAudioElement :: IsGObject obj => obj -> HTMLAudioElement
castToHTMLAudioElement = castTo gTypeHTMLAudioElement "HTMLAudioElement"

foreign import javascript unsafe "window[\"HTMLAudioElement\"]" gTypeHTMLAudioElement :: GType
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
newtype HTMLBRElement = HTMLBRElement { unHTMLBRElement :: JSVal }

instance Eq (HTMLBRElement) where
  (HTMLBRElement a) == (HTMLBRElement b) = js_eq a b

instance PToJSVal HTMLBRElement where
  pToJSVal = unHTMLBRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBRElement where
  pFromJSVal = HTMLBRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBRElement where
  toJSVal = return . unHTMLBRElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBRElement where
  fromJSVal = return . fmap HTMLBRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLBRElement
instance IsElement HTMLBRElement
instance IsNode HTMLBRElement
instance IsEventTarget HTMLBRElement
instance IsGObject HTMLBRElement where
  toGObject = GObject . unHTMLBRElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLBRElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLBRElement :: IsGObject obj => obj -> HTMLBRElement
castToHTMLBRElement = castTo gTypeHTMLBRElement "HTMLBRElement"

foreign import javascript unsafe "window[\"HTMLBRElement\"]" gTypeHTMLBRElement :: GType
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
newtype HTMLBaseElement = HTMLBaseElement { unHTMLBaseElement :: JSVal }

instance Eq (HTMLBaseElement) where
  (HTMLBaseElement a) == (HTMLBaseElement b) = js_eq a b

instance PToJSVal HTMLBaseElement where
  pToJSVal = unHTMLBaseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBaseElement where
  pFromJSVal = HTMLBaseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBaseElement where
  toJSVal = return . unHTMLBaseElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBaseElement where
  fromJSVal = return . fmap HTMLBaseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLBaseElement
instance IsElement HTMLBaseElement
instance IsNode HTMLBaseElement
instance IsEventTarget HTMLBaseElement
instance IsGObject HTMLBaseElement where
  toGObject = GObject . unHTMLBaseElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLBaseElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLBaseElement :: IsGObject obj => obj -> HTMLBaseElement
castToHTMLBaseElement = castTo gTypeHTMLBaseElement "HTMLBaseElement"

foreign import javascript unsafe "window[\"HTMLBaseElement\"]" gTypeHTMLBaseElement :: GType
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
newtype HTMLBaseFontElement = HTMLBaseFontElement { unHTMLBaseFontElement :: JSVal }

instance Eq (HTMLBaseFontElement) where
  (HTMLBaseFontElement a) == (HTMLBaseFontElement b) = js_eq a b

instance PToJSVal HTMLBaseFontElement where
  pToJSVal = unHTMLBaseFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBaseFontElement where
  pFromJSVal = HTMLBaseFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBaseFontElement where
  toJSVal = return . unHTMLBaseFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBaseFontElement where
  fromJSVal = return . fmap HTMLBaseFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLBaseFontElement
instance IsElement HTMLBaseFontElement
instance IsNode HTMLBaseFontElement
instance IsEventTarget HTMLBaseFontElement
instance IsGObject HTMLBaseFontElement where
  toGObject = GObject . unHTMLBaseFontElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLBaseFontElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLBaseFontElement :: IsGObject obj => obj -> HTMLBaseFontElement
castToHTMLBaseFontElement = castTo gTypeHTMLBaseFontElement "HTMLBaseFontElement"

foreign import javascript unsafe "window[\"HTMLBaseFontElement\"]" gTypeHTMLBaseFontElement :: GType
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
newtype HTMLBodyElement = HTMLBodyElement { unHTMLBodyElement :: JSVal }

instance Eq (HTMLBodyElement) where
  (HTMLBodyElement a) == (HTMLBodyElement b) = js_eq a b

instance PToJSVal HTMLBodyElement where
  pToJSVal = unHTMLBodyElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLBodyElement where
  pFromJSVal = HTMLBodyElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLBodyElement where
  toJSVal = return . unHTMLBodyElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLBodyElement where
  fromJSVal = return . fmap HTMLBodyElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLBodyElement
instance IsElement HTMLBodyElement
instance IsNode HTMLBodyElement
instance IsEventTarget HTMLBodyElement
instance IsGObject HTMLBodyElement where
  toGObject = GObject . unHTMLBodyElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLBodyElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLBodyElement :: IsGObject obj => obj -> HTMLBodyElement
castToHTMLBodyElement = castTo gTypeHTMLBodyElement "HTMLBodyElement"

foreign import javascript unsafe "window[\"HTMLBodyElement\"]" gTypeHTMLBodyElement :: GType
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
newtype HTMLButtonElement = HTMLButtonElement { unHTMLButtonElement :: JSVal }

instance Eq (HTMLButtonElement) where
  (HTMLButtonElement a) == (HTMLButtonElement b) = js_eq a b

instance PToJSVal HTMLButtonElement where
  pToJSVal = unHTMLButtonElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLButtonElement where
  pFromJSVal = HTMLButtonElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLButtonElement where
  toJSVal = return . unHTMLButtonElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLButtonElement where
  fromJSVal = return . fmap HTMLButtonElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLButtonElement
instance IsElement HTMLButtonElement
instance IsNode HTMLButtonElement
instance IsEventTarget HTMLButtonElement
instance IsGObject HTMLButtonElement where
  toGObject = GObject . unHTMLButtonElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLButtonElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLButtonElement :: IsGObject obj => obj -> HTMLButtonElement
castToHTMLButtonElement = castTo gTypeHTMLButtonElement "HTMLButtonElement"

foreign import javascript unsafe "window[\"HTMLButtonElement\"]" gTypeHTMLButtonElement :: GType
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
newtype HTMLCanvasElement = HTMLCanvasElement { unHTMLCanvasElement :: JSVal }

instance Eq (HTMLCanvasElement) where
  (HTMLCanvasElement a) == (HTMLCanvasElement b) = js_eq a b

instance PToJSVal HTMLCanvasElement where
  pToJSVal = unHTMLCanvasElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLCanvasElement where
  pFromJSVal = HTMLCanvasElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLCanvasElement where
  toJSVal = return . unHTMLCanvasElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLCanvasElement where
  fromJSVal = return . fmap HTMLCanvasElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLCanvasElement
instance IsElement HTMLCanvasElement
instance IsNode HTMLCanvasElement
instance IsEventTarget HTMLCanvasElement
instance IsGObject HTMLCanvasElement where
  toGObject = GObject . unHTMLCanvasElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLCanvasElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLCanvasElement :: IsGObject obj => obj -> HTMLCanvasElement
castToHTMLCanvasElement = castTo gTypeHTMLCanvasElement "HTMLCanvasElement"

foreign import javascript unsafe "window[\"HTMLCanvasElement\"]" gTypeHTMLCanvasElement :: GType
#else
type IsHTMLCanvasElement o = HTMLCanvasElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection Mozilla HTMLCollection documentation>
newtype HTMLCollection = HTMLCollection { unHTMLCollection :: JSVal }

instance Eq (HTMLCollection) where
  (HTMLCollection a) == (HTMLCollection b) = js_eq a b

instance PToJSVal HTMLCollection where
  pToJSVal = unHTMLCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLCollection where
  pFromJSVal = HTMLCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLCollection where
  toJSVal = return . unHTMLCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLCollection where
  fromJSVal = return . fmap HTMLCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsHTMLCollection o
toHTMLCollection :: IsHTMLCollection o => o -> HTMLCollection
toHTMLCollection = unsafeCastGObject . toGObject

instance IsHTMLCollection HTMLCollection
instance IsGObject HTMLCollection where
  toGObject = GObject . unHTMLCollection
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLCollection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLCollection :: IsGObject obj => obj -> HTMLCollection
castToHTMLCollection = castTo gTypeHTMLCollection "HTMLCollection"

foreign import javascript unsafe "window[\"HTMLCollection\"]" gTypeHTMLCollection :: GType
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
newtype HTMLDListElement = HTMLDListElement { unHTMLDListElement :: JSVal }

instance Eq (HTMLDListElement) where
  (HTMLDListElement a) == (HTMLDListElement b) = js_eq a b

instance PToJSVal HTMLDListElement where
  pToJSVal = unHTMLDListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDListElement where
  pFromJSVal = HTMLDListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDListElement where
  toJSVal = return . unHTMLDListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDListElement where
  fromJSVal = return . fmap HTMLDListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLDListElement
instance IsElement HTMLDListElement
instance IsNode HTMLDListElement
instance IsEventTarget HTMLDListElement
instance IsGObject HTMLDListElement where
  toGObject = GObject . unHTMLDListElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDListElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDListElement :: IsGObject obj => obj -> HTMLDListElement
castToHTMLDListElement = castTo gTypeHTMLDListElement "HTMLDListElement"

foreign import javascript unsafe "window[\"HTMLDListElement\"]" gTypeHTMLDListElement :: GType
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
newtype HTMLDataListElement = HTMLDataListElement { unHTMLDataListElement :: JSVal }

instance Eq (HTMLDataListElement) where
  (HTMLDataListElement a) == (HTMLDataListElement b) = js_eq a b

instance PToJSVal HTMLDataListElement where
  pToJSVal = unHTMLDataListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDataListElement where
  pFromJSVal = HTMLDataListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDataListElement where
  toJSVal = return . unHTMLDataListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDataListElement where
  fromJSVal = return . fmap HTMLDataListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLDataListElement
instance IsElement HTMLDataListElement
instance IsNode HTMLDataListElement
instance IsEventTarget HTMLDataListElement
instance IsGObject HTMLDataListElement where
  toGObject = GObject . unHTMLDataListElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDataListElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDataListElement :: IsGObject obj => obj -> HTMLDataListElement
castToHTMLDataListElement = castTo gTypeHTMLDataListElement "HTMLDataListElement"

foreign import javascript unsafe "window[\"HTMLDataListElement\"]" gTypeHTMLDataListElement :: GType
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
newtype HTMLDetailsElement = HTMLDetailsElement { unHTMLDetailsElement :: JSVal }

instance Eq (HTMLDetailsElement) where
  (HTMLDetailsElement a) == (HTMLDetailsElement b) = js_eq a b

instance PToJSVal HTMLDetailsElement where
  pToJSVal = unHTMLDetailsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDetailsElement where
  pFromJSVal = HTMLDetailsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDetailsElement where
  toJSVal = return . unHTMLDetailsElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDetailsElement where
  fromJSVal = return . fmap HTMLDetailsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLDetailsElement
instance IsElement HTMLDetailsElement
instance IsNode HTMLDetailsElement
instance IsEventTarget HTMLDetailsElement
instance IsGObject HTMLDetailsElement where
  toGObject = GObject . unHTMLDetailsElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDetailsElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDetailsElement :: IsGObject obj => obj -> HTMLDetailsElement
castToHTMLDetailsElement = castTo gTypeHTMLDetailsElement "HTMLDetailsElement"

foreign import javascript unsafe "window[\"HTMLDetailsElement\"]" gTypeHTMLDetailsElement :: GType
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
newtype HTMLDirectoryElement = HTMLDirectoryElement { unHTMLDirectoryElement :: JSVal }

instance Eq (HTMLDirectoryElement) where
  (HTMLDirectoryElement a) == (HTMLDirectoryElement b) = js_eq a b

instance PToJSVal HTMLDirectoryElement where
  pToJSVal = unHTMLDirectoryElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDirectoryElement where
  pFromJSVal = HTMLDirectoryElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDirectoryElement where
  toJSVal = return . unHTMLDirectoryElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDirectoryElement where
  fromJSVal = return . fmap HTMLDirectoryElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLDirectoryElement
instance IsElement HTMLDirectoryElement
instance IsNode HTMLDirectoryElement
instance IsEventTarget HTMLDirectoryElement
instance IsGObject HTMLDirectoryElement where
  toGObject = GObject . unHTMLDirectoryElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDirectoryElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDirectoryElement :: IsGObject obj => obj -> HTMLDirectoryElement
castToHTMLDirectoryElement = castTo gTypeHTMLDirectoryElement "HTMLDirectoryElement"

foreign import javascript unsafe "window[\"HTMLDirectoryElement\"]" gTypeHTMLDirectoryElement :: GType
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
newtype HTMLDivElement = HTMLDivElement { unHTMLDivElement :: JSVal }

instance Eq (HTMLDivElement) where
  (HTMLDivElement a) == (HTMLDivElement b) = js_eq a b

instance PToJSVal HTMLDivElement where
  pToJSVal = unHTMLDivElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDivElement where
  pFromJSVal = HTMLDivElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDivElement where
  toJSVal = return . unHTMLDivElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDivElement where
  fromJSVal = return . fmap HTMLDivElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLDivElement
instance IsElement HTMLDivElement
instance IsNode HTMLDivElement
instance IsEventTarget HTMLDivElement
instance IsGObject HTMLDivElement where
  toGObject = GObject . unHTMLDivElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDivElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDivElement :: IsGObject obj => obj -> HTMLDivElement
castToHTMLDivElement = castTo gTypeHTMLDivElement "HTMLDivElement"

foreign import javascript unsafe "window[\"HTMLDivElement\"]" gTypeHTMLDivElement :: GType
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
newtype HTMLDocument = HTMLDocument { unHTMLDocument :: JSVal }

instance Eq (HTMLDocument) where
  (HTMLDocument a) == (HTMLDocument b) = js_eq a b

instance PToJSVal HTMLDocument where
  pToJSVal = unHTMLDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLDocument where
  pFromJSVal = HTMLDocument
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLDocument where
  toJSVal = return . unHTMLDocument
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLDocument where
  fromJSVal = return . fmap HTMLDocument . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsDocument HTMLDocument
instance IsNode HTMLDocument
instance IsEventTarget HTMLDocument
instance IsGObject HTMLDocument where
  toGObject = GObject . unHTMLDocument
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLDocument . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLDocument :: IsGObject obj => obj -> HTMLDocument
castToHTMLDocument = castTo gTypeHTMLDocument "HTMLDocument"

foreign import javascript unsafe "window[\"HTMLDocument\"]" gTypeHTMLDocument :: GType
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
newtype HTMLElement = HTMLElement { unHTMLElement :: JSVal }

instance Eq (HTMLElement) where
  (HTMLElement a) == (HTMLElement b) = js_eq a b

instance PToJSVal HTMLElement where
  pToJSVal = unHTMLElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLElement where
  pFromJSVal = HTMLElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLElement where
  toJSVal = return . unHTMLElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLElement where
  fromJSVal = return . fmap HTMLElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsElement o => IsHTMLElement o
toHTMLElement :: IsHTMLElement o => o -> HTMLElement
toHTMLElement = unsafeCastGObject . toGObject

instance IsHTMLElement HTMLElement
instance IsElement HTMLElement
instance IsNode HTMLElement
instance IsEventTarget HTMLElement
instance IsGObject HTMLElement where
  toGObject = GObject . unHTMLElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLElement :: IsGObject obj => obj -> HTMLElement
castToHTMLElement = castTo gTypeHTMLElement "HTMLElement"

foreign import javascript unsafe "window[\"HTMLElement\"]" gTypeHTMLElement :: GType
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
newtype HTMLEmbedElement = HTMLEmbedElement { unHTMLEmbedElement :: JSVal }

instance Eq (HTMLEmbedElement) where
  (HTMLEmbedElement a) == (HTMLEmbedElement b) = js_eq a b

instance PToJSVal HTMLEmbedElement where
  pToJSVal = unHTMLEmbedElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLEmbedElement where
  pFromJSVal = HTMLEmbedElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLEmbedElement where
  toJSVal = return . unHTMLEmbedElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLEmbedElement where
  fromJSVal = return . fmap HTMLEmbedElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLEmbedElement
instance IsElement HTMLEmbedElement
instance IsNode HTMLEmbedElement
instance IsEventTarget HTMLEmbedElement
instance IsGObject HTMLEmbedElement where
  toGObject = GObject . unHTMLEmbedElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLEmbedElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLEmbedElement :: IsGObject obj => obj -> HTMLEmbedElement
castToHTMLEmbedElement = castTo gTypeHTMLEmbedElement "HTMLEmbedElement"

foreign import javascript unsafe "window[\"HTMLEmbedElement\"]" gTypeHTMLEmbedElement :: GType
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
newtype HTMLFieldSetElement = HTMLFieldSetElement { unHTMLFieldSetElement :: JSVal }

instance Eq (HTMLFieldSetElement) where
  (HTMLFieldSetElement a) == (HTMLFieldSetElement b) = js_eq a b

instance PToJSVal HTMLFieldSetElement where
  pToJSVal = unHTMLFieldSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFieldSetElement where
  pFromJSVal = HTMLFieldSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFieldSetElement where
  toJSVal = return . unHTMLFieldSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFieldSetElement where
  fromJSVal = return . fmap HTMLFieldSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLFieldSetElement
instance IsElement HTMLFieldSetElement
instance IsNode HTMLFieldSetElement
instance IsEventTarget HTMLFieldSetElement
instance IsGObject HTMLFieldSetElement where
  toGObject = GObject . unHTMLFieldSetElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFieldSetElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFieldSetElement :: IsGObject obj => obj -> HTMLFieldSetElement
castToHTMLFieldSetElement = castTo gTypeHTMLFieldSetElement "HTMLFieldSetElement"

foreign import javascript unsafe "window[\"HTMLFieldSetElement\"]" gTypeHTMLFieldSetElement :: GType
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
newtype HTMLFontElement = HTMLFontElement { unHTMLFontElement :: JSVal }

instance Eq (HTMLFontElement) where
  (HTMLFontElement a) == (HTMLFontElement b) = js_eq a b

instance PToJSVal HTMLFontElement where
  pToJSVal = unHTMLFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFontElement where
  pFromJSVal = HTMLFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFontElement where
  toJSVal = return . unHTMLFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFontElement where
  fromJSVal = return . fmap HTMLFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLFontElement
instance IsElement HTMLFontElement
instance IsNode HTMLFontElement
instance IsEventTarget HTMLFontElement
instance IsGObject HTMLFontElement where
  toGObject = GObject . unHTMLFontElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFontElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFontElement :: IsGObject obj => obj -> HTMLFontElement
castToHTMLFontElement = castTo gTypeHTMLFontElement "HTMLFontElement"

foreign import javascript unsafe "window[\"HTMLFontElement\"]" gTypeHTMLFontElement :: GType
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
newtype HTMLFormControlsCollection = HTMLFormControlsCollection { unHTMLFormControlsCollection :: JSVal }

instance Eq (HTMLFormControlsCollection) where
  (HTMLFormControlsCollection a) == (HTMLFormControlsCollection b) = js_eq a b

instance PToJSVal HTMLFormControlsCollection where
  pToJSVal = unHTMLFormControlsCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFormControlsCollection where
  pFromJSVal = HTMLFormControlsCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFormControlsCollection where
  toJSVal = return . unHTMLFormControlsCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFormControlsCollection where
  fromJSVal = return . fmap HTMLFormControlsCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLCollection HTMLFormControlsCollection
instance IsGObject HTMLFormControlsCollection where
  toGObject = GObject . unHTMLFormControlsCollection
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFormControlsCollection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFormControlsCollection :: IsGObject obj => obj -> HTMLFormControlsCollection
castToHTMLFormControlsCollection = castTo gTypeHTMLFormControlsCollection "HTMLFormControlsCollection"

foreign import javascript unsafe "window[\"HTMLFormControlsCollection\"]" gTypeHTMLFormControlsCollection :: GType
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
newtype HTMLFormElement = HTMLFormElement { unHTMLFormElement :: JSVal }

instance Eq (HTMLFormElement) where
  (HTMLFormElement a) == (HTMLFormElement b) = js_eq a b

instance PToJSVal HTMLFormElement where
  pToJSVal = unHTMLFormElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFormElement where
  pFromJSVal = HTMLFormElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFormElement where
  toJSVal = return . unHTMLFormElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFormElement where
  fromJSVal = return . fmap HTMLFormElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLFormElement
instance IsElement HTMLFormElement
instance IsNode HTMLFormElement
instance IsEventTarget HTMLFormElement
instance IsGObject HTMLFormElement where
  toGObject = GObject . unHTMLFormElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFormElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFormElement :: IsGObject obj => obj -> HTMLFormElement
castToHTMLFormElement = castTo gTypeHTMLFormElement "HTMLFormElement"

foreign import javascript unsafe "window[\"HTMLFormElement\"]" gTypeHTMLFormElement :: GType
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
newtype HTMLFrameElement = HTMLFrameElement { unHTMLFrameElement :: JSVal }

instance Eq (HTMLFrameElement) where
  (HTMLFrameElement a) == (HTMLFrameElement b) = js_eq a b

instance PToJSVal HTMLFrameElement where
  pToJSVal = unHTMLFrameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFrameElement where
  pFromJSVal = HTMLFrameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFrameElement where
  toJSVal = return . unHTMLFrameElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFrameElement where
  fromJSVal = return . fmap HTMLFrameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLFrameElement
instance IsElement HTMLFrameElement
instance IsNode HTMLFrameElement
instance IsEventTarget HTMLFrameElement
instance IsGObject HTMLFrameElement where
  toGObject = GObject . unHTMLFrameElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFrameElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFrameElement :: IsGObject obj => obj -> HTMLFrameElement
castToHTMLFrameElement = castTo gTypeHTMLFrameElement "HTMLFrameElement"

foreign import javascript unsafe "window[\"HTMLFrameElement\"]" gTypeHTMLFrameElement :: GType
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
newtype HTMLFrameSetElement = HTMLFrameSetElement { unHTMLFrameSetElement :: JSVal }

instance Eq (HTMLFrameSetElement) where
  (HTMLFrameSetElement a) == (HTMLFrameSetElement b) = js_eq a b

instance PToJSVal HTMLFrameSetElement where
  pToJSVal = unHTMLFrameSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLFrameSetElement where
  pFromJSVal = HTMLFrameSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLFrameSetElement where
  toJSVal = return . unHTMLFrameSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLFrameSetElement where
  fromJSVal = return . fmap HTMLFrameSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLFrameSetElement
instance IsElement HTMLFrameSetElement
instance IsNode HTMLFrameSetElement
instance IsEventTarget HTMLFrameSetElement
instance IsGObject HTMLFrameSetElement where
  toGObject = GObject . unHTMLFrameSetElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLFrameSetElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLFrameSetElement :: IsGObject obj => obj -> HTMLFrameSetElement
castToHTMLFrameSetElement = castTo gTypeHTMLFrameSetElement "HTMLFrameSetElement"

foreign import javascript unsafe "window[\"HTMLFrameSetElement\"]" gTypeHTMLFrameSetElement :: GType
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
newtype HTMLHRElement = HTMLHRElement { unHTMLHRElement :: JSVal }

instance Eq (HTMLHRElement) where
  (HTMLHRElement a) == (HTMLHRElement b) = js_eq a b

instance PToJSVal HTMLHRElement where
  pToJSVal = unHTMLHRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHRElement where
  pFromJSVal = HTMLHRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHRElement where
  toJSVal = return . unHTMLHRElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHRElement where
  fromJSVal = return . fmap HTMLHRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLHRElement
instance IsElement HTMLHRElement
instance IsNode HTMLHRElement
instance IsEventTarget HTMLHRElement
instance IsGObject HTMLHRElement where
  toGObject = GObject . unHTMLHRElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLHRElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLHRElement :: IsGObject obj => obj -> HTMLHRElement
castToHTMLHRElement = castTo gTypeHTMLHRElement "HTMLHRElement"

foreign import javascript unsafe "window[\"HTMLHRElement\"]" gTypeHTMLHRElement :: GType
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
newtype HTMLHeadElement = HTMLHeadElement { unHTMLHeadElement :: JSVal }

instance Eq (HTMLHeadElement) where
  (HTMLHeadElement a) == (HTMLHeadElement b) = js_eq a b

instance PToJSVal HTMLHeadElement where
  pToJSVal = unHTMLHeadElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHeadElement where
  pFromJSVal = HTMLHeadElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHeadElement where
  toJSVal = return . unHTMLHeadElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHeadElement where
  fromJSVal = return . fmap HTMLHeadElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLHeadElement
instance IsElement HTMLHeadElement
instance IsNode HTMLHeadElement
instance IsEventTarget HTMLHeadElement
instance IsGObject HTMLHeadElement where
  toGObject = GObject . unHTMLHeadElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLHeadElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLHeadElement :: IsGObject obj => obj -> HTMLHeadElement
castToHTMLHeadElement = castTo gTypeHTMLHeadElement "HTMLHeadElement"

foreign import javascript unsafe "window[\"HTMLHeadElement\"]" gTypeHTMLHeadElement :: GType
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
newtype HTMLHeadingElement = HTMLHeadingElement { unHTMLHeadingElement :: JSVal }

instance Eq (HTMLHeadingElement) where
  (HTMLHeadingElement a) == (HTMLHeadingElement b) = js_eq a b

instance PToJSVal HTMLHeadingElement where
  pToJSVal = unHTMLHeadingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHeadingElement where
  pFromJSVal = HTMLHeadingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHeadingElement where
  toJSVal = return . unHTMLHeadingElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHeadingElement where
  fromJSVal = return . fmap HTMLHeadingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLHeadingElement
instance IsElement HTMLHeadingElement
instance IsNode HTMLHeadingElement
instance IsEventTarget HTMLHeadingElement
instance IsGObject HTMLHeadingElement where
  toGObject = GObject . unHTMLHeadingElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLHeadingElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLHeadingElement :: IsGObject obj => obj -> HTMLHeadingElement
castToHTMLHeadingElement = castTo gTypeHTMLHeadingElement "HTMLHeadingElement"

foreign import javascript unsafe "window[\"HTMLHeadingElement\"]" gTypeHTMLHeadingElement :: GType
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
newtype HTMLHtmlElement = HTMLHtmlElement { unHTMLHtmlElement :: JSVal }

instance Eq (HTMLHtmlElement) where
  (HTMLHtmlElement a) == (HTMLHtmlElement b) = js_eq a b

instance PToJSVal HTMLHtmlElement where
  pToJSVal = unHTMLHtmlElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLHtmlElement where
  pFromJSVal = HTMLHtmlElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLHtmlElement where
  toJSVal = return . unHTMLHtmlElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLHtmlElement where
  fromJSVal = return . fmap HTMLHtmlElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLHtmlElement
instance IsElement HTMLHtmlElement
instance IsNode HTMLHtmlElement
instance IsEventTarget HTMLHtmlElement
instance IsGObject HTMLHtmlElement where
  toGObject = GObject . unHTMLHtmlElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLHtmlElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLHtmlElement :: IsGObject obj => obj -> HTMLHtmlElement
castToHTMLHtmlElement = castTo gTypeHTMLHtmlElement "HTMLHtmlElement"

foreign import javascript unsafe "window[\"HTMLHtmlElement\"]" gTypeHTMLHtmlElement :: GType
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
newtype HTMLIFrameElement = HTMLIFrameElement { unHTMLIFrameElement :: JSVal }

instance Eq (HTMLIFrameElement) where
  (HTMLIFrameElement a) == (HTMLIFrameElement b) = js_eq a b

instance PToJSVal HTMLIFrameElement where
  pToJSVal = unHTMLIFrameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLIFrameElement where
  pFromJSVal = HTMLIFrameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLIFrameElement where
  toJSVal = return . unHTMLIFrameElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLIFrameElement where
  fromJSVal = return . fmap HTMLIFrameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLIFrameElement
instance IsElement HTMLIFrameElement
instance IsNode HTMLIFrameElement
instance IsEventTarget HTMLIFrameElement
instance IsGObject HTMLIFrameElement where
  toGObject = GObject . unHTMLIFrameElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLIFrameElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLIFrameElement :: IsGObject obj => obj -> HTMLIFrameElement
castToHTMLIFrameElement = castTo gTypeHTMLIFrameElement "HTMLIFrameElement"

foreign import javascript unsafe "window[\"HTMLIFrameElement\"]" gTypeHTMLIFrameElement :: GType
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
newtype HTMLImageElement = HTMLImageElement { unHTMLImageElement :: JSVal }

instance Eq (HTMLImageElement) where
  (HTMLImageElement a) == (HTMLImageElement b) = js_eq a b

instance PToJSVal HTMLImageElement where
  pToJSVal = unHTMLImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLImageElement where
  pFromJSVal = HTMLImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLImageElement where
  toJSVal = return . unHTMLImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLImageElement where
  fromJSVal = return . fmap HTMLImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLImageElement
instance IsElement HTMLImageElement
instance IsNode HTMLImageElement
instance IsEventTarget HTMLImageElement
instance IsGObject HTMLImageElement where
  toGObject = GObject . unHTMLImageElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLImageElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLImageElement :: IsGObject obj => obj -> HTMLImageElement
castToHTMLImageElement = castTo gTypeHTMLImageElement "HTMLImageElement"

foreign import javascript unsafe "window[\"HTMLImageElement\"]" gTypeHTMLImageElement :: GType
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
newtype HTMLInputElement = HTMLInputElement { unHTMLInputElement :: JSVal }

instance Eq (HTMLInputElement) where
  (HTMLInputElement a) == (HTMLInputElement b) = js_eq a b

instance PToJSVal HTMLInputElement where
  pToJSVal = unHTMLInputElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLInputElement where
  pFromJSVal = HTMLInputElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLInputElement where
  toJSVal = return . unHTMLInputElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLInputElement where
  fromJSVal = return . fmap HTMLInputElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLInputElement
instance IsElement HTMLInputElement
instance IsNode HTMLInputElement
instance IsEventTarget HTMLInputElement
instance IsGObject HTMLInputElement where
  toGObject = GObject . unHTMLInputElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLInputElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLInputElement :: IsGObject obj => obj -> HTMLInputElement
castToHTMLInputElement = castTo gTypeHTMLInputElement "HTMLInputElement"

foreign import javascript unsafe "window[\"HTMLInputElement\"]" gTypeHTMLInputElement :: GType
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
newtype HTMLKeygenElement = HTMLKeygenElement { unHTMLKeygenElement :: JSVal }

instance Eq (HTMLKeygenElement) where
  (HTMLKeygenElement a) == (HTMLKeygenElement b) = js_eq a b

instance PToJSVal HTMLKeygenElement where
  pToJSVal = unHTMLKeygenElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLKeygenElement where
  pFromJSVal = HTMLKeygenElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLKeygenElement where
  toJSVal = return . unHTMLKeygenElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLKeygenElement where
  fromJSVal = return . fmap HTMLKeygenElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLKeygenElement
instance IsElement HTMLKeygenElement
instance IsNode HTMLKeygenElement
instance IsEventTarget HTMLKeygenElement
instance IsGObject HTMLKeygenElement where
  toGObject = GObject . unHTMLKeygenElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLKeygenElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLKeygenElement :: IsGObject obj => obj -> HTMLKeygenElement
castToHTMLKeygenElement = castTo gTypeHTMLKeygenElement "HTMLKeygenElement"

foreign import javascript unsafe "window[\"HTMLKeygenElement\"]" gTypeHTMLKeygenElement :: GType
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
newtype HTMLLIElement = HTMLLIElement { unHTMLLIElement :: JSVal }

instance Eq (HTMLLIElement) where
  (HTMLLIElement a) == (HTMLLIElement b) = js_eq a b

instance PToJSVal HTMLLIElement where
  pToJSVal = unHTMLLIElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLIElement where
  pFromJSVal = HTMLLIElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLIElement where
  toJSVal = return . unHTMLLIElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLIElement where
  fromJSVal = return . fmap HTMLLIElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLLIElement
instance IsElement HTMLLIElement
instance IsNode HTMLLIElement
instance IsEventTarget HTMLLIElement
instance IsGObject HTMLLIElement where
  toGObject = GObject . unHTMLLIElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLLIElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLLIElement :: IsGObject obj => obj -> HTMLLIElement
castToHTMLLIElement = castTo gTypeHTMLLIElement "HTMLLIElement"

foreign import javascript unsafe "window[\"HTMLLIElement\"]" gTypeHTMLLIElement :: GType
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
newtype HTMLLabelElement = HTMLLabelElement { unHTMLLabelElement :: JSVal }

instance Eq (HTMLLabelElement) where
  (HTMLLabelElement a) == (HTMLLabelElement b) = js_eq a b

instance PToJSVal HTMLLabelElement where
  pToJSVal = unHTMLLabelElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLabelElement where
  pFromJSVal = HTMLLabelElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLabelElement where
  toJSVal = return . unHTMLLabelElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLabelElement where
  fromJSVal = return . fmap HTMLLabelElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLLabelElement
instance IsElement HTMLLabelElement
instance IsNode HTMLLabelElement
instance IsEventTarget HTMLLabelElement
instance IsGObject HTMLLabelElement where
  toGObject = GObject . unHTMLLabelElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLLabelElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLLabelElement :: IsGObject obj => obj -> HTMLLabelElement
castToHTMLLabelElement = castTo gTypeHTMLLabelElement "HTMLLabelElement"

foreign import javascript unsafe "window[\"HTMLLabelElement\"]" gTypeHTMLLabelElement :: GType
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
newtype HTMLLegendElement = HTMLLegendElement { unHTMLLegendElement :: JSVal }

instance Eq (HTMLLegendElement) where
  (HTMLLegendElement a) == (HTMLLegendElement b) = js_eq a b

instance PToJSVal HTMLLegendElement where
  pToJSVal = unHTMLLegendElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLegendElement where
  pFromJSVal = HTMLLegendElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLegendElement where
  toJSVal = return . unHTMLLegendElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLegendElement where
  fromJSVal = return . fmap HTMLLegendElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLLegendElement
instance IsElement HTMLLegendElement
instance IsNode HTMLLegendElement
instance IsEventTarget HTMLLegendElement
instance IsGObject HTMLLegendElement where
  toGObject = GObject . unHTMLLegendElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLLegendElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLLegendElement :: IsGObject obj => obj -> HTMLLegendElement
castToHTMLLegendElement = castTo gTypeHTMLLegendElement "HTMLLegendElement"

foreign import javascript unsafe "window[\"HTMLLegendElement\"]" gTypeHTMLLegendElement :: GType
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
newtype HTMLLinkElement = HTMLLinkElement { unHTMLLinkElement :: JSVal }

instance Eq (HTMLLinkElement) where
  (HTMLLinkElement a) == (HTMLLinkElement b) = js_eq a b

instance PToJSVal HTMLLinkElement where
  pToJSVal = unHTMLLinkElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLLinkElement where
  pFromJSVal = HTMLLinkElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLLinkElement where
  toJSVal = return . unHTMLLinkElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLLinkElement where
  fromJSVal = return . fmap HTMLLinkElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLLinkElement
instance IsElement HTMLLinkElement
instance IsNode HTMLLinkElement
instance IsEventTarget HTMLLinkElement
instance IsGObject HTMLLinkElement where
  toGObject = GObject . unHTMLLinkElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLLinkElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLLinkElement :: IsGObject obj => obj -> HTMLLinkElement
castToHTMLLinkElement = castTo gTypeHTMLLinkElement "HTMLLinkElement"

foreign import javascript unsafe "window[\"HTMLLinkElement\"]" gTypeHTMLLinkElement :: GType
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
newtype HTMLMapElement = HTMLMapElement { unHTMLMapElement :: JSVal }

instance Eq (HTMLMapElement) where
  (HTMLMapElement a) == (HTMLMapElement b) = js_eq a b

instance PToJSVal HTMLMapElement where
  pToJSVal = unHTMLMapElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMapElement where
  pFromJSVal = HTMLMapElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMapElement where
  toJSVal = return . unHTMLMapElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMapElement where
  fromJSVal = return . fmap HTMLMapElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLMapElement
instance IsElement HTMLMapElement
instance IsNode HTMLMapElement
instance IsEventTarget HTMLMapElement
instance IsGObject HTMLMapElement where
  toGObject = GObject . unHTMLMapElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMapElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMapElement :: IsGObject obj => obj -> HTMLMapElement
castToHTMLMapElement = castTo gTypeHTMLMapElement "HTMLMapElement"

foreign import javascript unsafe "window[\"HTMLMapElement\"]" gTypeHTMLMapElement :: GType
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
newtype HTMLMarqueeElement = HTMLMarqueeElement { unHTMLMarqueeElement :: JSVal }

instance Eq (HTMLMarqueeElement) where
  (HTMLMarqueeElement a) == (HTMLMarqueeElement b) = js_eq a b

instance PToJSVal HTMLMarqueeElement where
  pToJSVal = unHTMLMarqueeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMarqueeElement where
  pFromJSVal = HTMLMarqueeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMarqueeElement where
  toJSVal = return . unHTMLMarqueeElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMarqueeElement where
  fromJSVal = return . fmap HTMLMarqueeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLMarqueeElement
instance IsElement HTMLMarqueeElement
instance IsNode HTMLMarqueeElement
instance IsEventTarget HTMLMarqueeElement
instance IsGObject HTMLMarqueeElement where
  toGObject = GObject . unHTMLMarqueeElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMarqueeElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMarqueeElement :: IsGObject obj => obj -> HTMLMarqueeElement
castToHTMLMarqueeElement = castTo gTypeHTMLMarqueeElement "HTMLMarqueeElement"

foreign import javascript unsafe "window[\"HTMLMarqueeElement\"]" gTypeHTMLMarqueeElement :: GType
#else
type IsHTMLMarqueeElement o = HTMLMarqueeElementClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMediaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement Mozilla HTMLMediaElement documentation>
newtype HTMLMediaElement = HTMLMediaElement { unHTMLMediaElement :: JSVal }

instance Eq (HTMLMediaElement) where
  (HTMLMediaElement a) == (HTMLMediaElement b) = js_eq a b

instance PToJSVal HTMLMediaElement where
  pToJSVal = unHTMLMediaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMediaElement where
  pFromJSVal = HTMLMediaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMediaElement where
  toJSVal = return . unHTMLMediaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMediaElement where
  fromJSVal = return . fmap HTMLMediaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsHTMLElement o => IsHTMLMediaElement o
toHTMLMediaElement :: IsHTMLMediaElement o => o -> HTMLMediaElement
toHTMLMediaElement = unsafeCastGObject . toGObject

instance IsHTMLMediaElement HTMLMediaElement
instance IsHTMLElement HTMLMediaElement
instance IsElement HTMLMediaElement
instance IsNode HTMLMediaElement
instance IsEventTarget HTMLMediaElement
instance IsGObject HTMLMediaElement where
  toGObject = GObject . unHTMLMediaElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMediaElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMediaElement :: IsGObject obj => obj -> HTMLMediaElement
castToHTMLMediaElement = castTo gTypeHTMLMediaElement "HTMLMediaElement"

foreign import javascript unsafe "window[\"HTMLMediaElement\"]" gTypeHTMLMediaElement :: GType
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
newtype HTMLMenuElement = HTMLMenuElement { unHTMLMenuElement :: JSVal }

instance Eq (HTMLMenuElement) where
  (HTMLMenuElement a) == (HTMLMenuElement b) = js_eq a b

instance PToJSVal HTMLMenuElement where
  pToJSVal = unHTMLMenuElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMenuElement where
  pFromJSVal = HTMLMenuElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMenuElement where
  toJSVal = return . unHTMLMenuElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMenuElement where
  fromJSVal = return . fmap HTMLMenuElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLMenuElement
instance IsElement HTMLMenuElement
instance IsNode HTMLMenuElement
instance IsEventTarget HTMLMenuElement
instance IsGObject HTMLMenuElement where
  toGObject = GObject . unHTMLMenuElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMenuElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMenuElement :: IsGObject obj => obj -> HTMLMenuElement
castToHTMLMenuElement = castTo gTypeHTMLMenuElement "HTMLMenuElement"

foreign import javascript unsafe "window[\"HTMLMenuElement\"]" gTypeHTMLMenuElement :: GType
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
newtype HTMLMetaElement = HTMLMetaElement { unHTMLMetaElement :: JSVal }

instance Eq (HTMLMetaElement) where
  (HTMLMetaElement a) == (HTMLMetaElement b) = js_eq a b

instance PToJSVal HTMLMetaElement where
  pToJSVal = unHTMLMetaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMetaElement where
  pFromJSVal = HTMLMetaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMetaElement where
  toJSVal = return . unHTMLMetaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMetaElement where
  fromJSVal = return . fmap HTMLMetaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLMetaElement
instance IsElement HTMLMetaElement
instance IsNode HTMLMetaElement
instance IsEventTarget HTMLMetaElement
instance IsGObject HTMLMetaElement where
  toGObject = GObject . unHTMLMetaElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMetaElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMetaElement :: IsGObject obj => obj -> HTMLMetaElement
castToHTMLMetaElement = castTo gTypeHTMLMetaElement "HTMLMetaElement"

foreign import javascript unsafe "window[\"HTMLMetaElement\"]" gTypeHTMLMetaElement :: GType
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
newtype HTMLMeterElement = HTMLMeterElement { unHTMLMeterElement :: JSVal }

instance Eq (HTMLMeterElement) where
  (HTMLMeterElement a) == (HTMLMeterElement b) = js_eq a b

instance PToJSVal HTMLMeterElement where
  pToJSVal = unHTMLMeterElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLMeterElement where
  pFromJSVal = HTMLMeterElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLMeterElement where
  toJSVal = return . unHTMLMeterElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLMeterElement where
  fromJSVal = return . fmap HTMLMeterElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLMeterElement
instance IsElement HTMLMeterElement
instance IsNode HTMLMeterElement
instance IsEventTarget HTMLMeterElement
instance IsGObject HTMLMeterElement where
  toGObject = GObject . unHTMLMeterElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLMeterElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLMeterElement :: IsGObject obj => obj -> HTMLMeterElement
castToHTMLMeterElement = castTo gTypeHTMLMeterElement "HTMLMeterElement"

foreign import javascript unsafe "window[\"HTMLMeterElement\"]" gTypeHTMLMeterElement :: GType
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
newtype HTMLModElement = HTMLModElement { unHTMLModElement :: JSVal }

instance Eq (HTMLModElement) where
  (HTMLModElement a) == (HTMLModElement b) = js_eq a b

instance PToJSVal HTMLModElement where
  pToJSVal = unHTMLModElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLModElement where
  pFromJSVal = HTMLModElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLModElement where
  toJSVal = return . unHTMLModElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLModElement where
  fromJSVal = return . fmap HTMLModElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLModElement
instance IsElement HTMLModElement
instance IsNode HTMLModElement
instance IsEventTarget HTMLModElement
instance IsGObject HTMLModElement where
  toGObject = GObject . unHTMLModElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLModElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLModElement :: IsGObject obj => obj -> HTMLModElement
castToHTMLModElement = castTo gTypeHTMLModElement "HTMLModElement"

foreign import javascript unsafe "window[\"HTMLModElement\"]" gTypeHTMLModElement :: GType
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
newtype HTMLOListElement = HTMLOListElement { unHTMLOListElement :: JSVal }

instance Eq (HTMLOListElement) where
  (HTMLOListElement a) == (HTMLOListElement b) = js_eq a b

instance PToJSVal HTMLOListElement where
  pToJSVal = unHTMLOListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOListElement where
  pFromJSVal = HTMLOListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOListElement where
  toJSVal = return . unHTMLOListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOListElement where
  fromJSVal = return . fmap HTMLOListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLOListElement
instance IsElement HTMLOListElement
instance IsNode HTMLOListElement
instance IsEventTarget HTMLOListElement
instance IsGObject HTMLOListElement where
  toGObject = GObject . unHTMLOListElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLOListElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLOListElement :: IsGObject obj => obj -> HTMLOListElement
castToHTMLOListElement = castTo gTypeHTMLOListElement "HTMLOListElement"

foreign import javascript unsafe "window[\"HTMLOListElement\"]" gTypeHTMLOListElement :: GType
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
newtype HTMLObjectElement = HTMLObjectElement { unHTMLObjectElement :: JSVal }

instance Eq (HTMLObjectElement) where
  (HTMLObjectElement a) == (HTMLObjectElement b) = js_eq a b

instance PToJSVal HTMLObjectElement where
  pToJSVal = unHTMLObjectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLObjectElement where
  pFromJSVal = HTMLObjectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLObjectElement where
  toJSVal = return . unHTMLObjectElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLObjectElement where
  fromJSVal = return . fmap HTMLObjectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLObjectElement
instance IsElement HTMLObjectElement
instance IsNode HTMLObjectElement
instance IsEventTarget HTMLObjectElement
instance IsGObject HTMLObjectElement where
  toGObject = GObject . unHTMLObjectElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLObjectElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLObjectElement :: IsGObject obj => obj -> HTMLObjectElement
castToHTMLObjectElement = castTo gTypeHTMLObjectElement "HTMLObjectElement"

foreign import javascript unsafe "window[\"HTMLObjectElement\"]" gTypeHTMLObjectElement :: GType
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
newtype HTMLOptGroupElement = HTMLOptGroupElement { unHTMLOptGroupElement :: JSVal }

instance Eq (HTMLOptGroupElement) where
  (HTMLOptGroupElement a) == (HTMLOptGroupElement b) = js_eq a b

instance PToJSVal HTMLOptGroupElement where
  pToJSVal = unHTMLOptGroupElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptGroupElement where
  pFromJSVal = HTMLOptGroupElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptGroupElement where
  toJSVal = return . unHTMLOptGroupElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptGroupElement where
  fromJSVal = return . fmap HTMLOptGroupElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLOptGroupElement
instance IsElement HTMLOptGroupElement
instance IsNode HTMLOptGroupElement
instance IsEventTarget HTMLOptGroupElement
instance IsGObject HTMLOptGroupElement where
  toGObject = GObject . unHTMLOptGroupElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLOptGroupElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLOptGroupElement :: IsGObject obj => obj -> HTMLOptGroupElement
castToHTMLOptGroupElement = castTo gTypeHTMLOptGroupElement "HTMLOptGroupElement"

foreign import javascript unsafe "window[\"HTMLOptGroupElement\"]" gTypeHTMLOptGroupElement :: GType
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
newtype HTMLOptionElement = HTMLOptionElement { unHTMLOptionElement :: JSVal }

instance Eq (HTMLOptionElement) where
  (HTMLOptionElement a) == (HTMLOptionElement b) = js_eq a b

instance PToJSVal HTMLOptionElement where
  pToJSVal = unHTMLOptionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptionElement where
  pFromJSVal = HTMLOptionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptionElement where
  toJSVal = return . unHTMLOptionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptionElement where
  fromJSVal = return . fmap HTMLOptionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLOptionElement
instance IsElement HTMLOptionElement
instance IsNode HTMLOptionElement
instance IsEventTarget HTMLOptionElement
instance IsGObject HTMLOptionElement where
  toGObject = GObject . unHTMLOptionElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLOptionElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLOptionElement :: IsGObject obj => obj -> HTMLOptionElement
castToHTMLOptionElement = castTo gTypeHTMLOptionElement "HTMLOptionElement"

foreign import javascript unsafe "window[\"HTMLOptionElement\"]" gTypeHTMLOptionElement :: GType
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
newtype HTMLOptionsCollection = HTMLOptionsCollection { unHTMLOptionsCollection :: JSVal }

instance Eq (HTMLOptionsCollection) where
  (HTMLOptionsCollection a) == (HTMLOptionsCollection b) = js_eq a b

instance PToJSVal HTMLOptionsCollection where
  pToJSVal = unHTMLOptionsCollection
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOptionsCollection where
  pFromJSVal = HTMLOptionsCollection
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOptionsCollection where
  toJSVal = return . unHTMLOptionsCollection
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOptionsCollection where
  fromJSVal = return . fmap HTMLOptionsCollection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLCollection HTMLOptionsCollection
instance IsGObject HTMLOptionsCollection where
  toGObject = GObject . unHTMLOptionsCollection
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLOptionsCollection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLOptionsCollection :: IsGObject obj => obj -> HTMLOptionsCollection
castToHTMLOptionsCollection = castTo gTypeHTMLOptionsCollection "HTMLOptionsCollection"

foreign import javascript unsafe "window[\"HTMLOptionsCollection\"]" gTypeHTMLOptionsCollection :: GType
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
newtype HTMLOutputElement = HTMLOutputElement { unHTMLOutputElement :: JSVal }

instance Eq (HTMLOutputElement) where
  (HTMLOutputElement a) == (HTMLOutputElement b) = js_eq a b

instance PToJSVal HTMLOutputElement where
  pToJSVal = unHTMLOutputElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLOutputElement where
  pFromJSVal = HTMLOutputElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLOutputElement where
  toJSVal = return . unHTMLOutputElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLOutputElement where
  fromJSVal = return . fmap HTMLOutputElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLOutputElement
instance IsElement HTMLOutputElement
instance IsNode HTMLOutputElement
instance IsEventTarget HTMLOutputElement
instance IsGObject HTMLOutputElement where
  toGObject = GObject . unHTMLOutputElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLOutputElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLOutputElement :: IsGObject obj => obj -> HTMLOutputElement
castToHTMLOutputElement = castTo gTypeHTMLOutputElement "HTMLOutputElement"

foreign import javascript unsafe "window[\"HTMLOutputElement\"]" gTypeHTMLOutputElement :: GType
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
newtype HTMLParagraphElement = HTMLParagraphElement { unHTMLParagraphElement :: JSVal }

instance Eq (HTMLParagraphElement) where
  (HTMLParagraphElement a) == (HTMLParagraphElement b) = js_eq a b

instance PToJSVal HTMLParagraphElement where
  pToJSVal = unHTMLParagraphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLParagraphElement where
  pFromJSVal = HTMLParagraphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLParagraphElement where
  toJSVal = return . unHTMLParagraphElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLParagraphElement where
  fromJSVal = return . fmap HTMLParagraphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLParagraphElement
instance IsElement HTMLParagraphElement
instance IsNode HTMLParagraphElement
instance IsEventTarget HTMLParagraphElement
instance IsGObject HTMLParagraphElement where
  toGObject = GObject . unHTMLParagraphElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLParagraphElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLParagraphElement :: IsGObject obj => obj -> HTMLParagraphElement
castToHTMLParagraphElement = castTo gTypeHTMLParagraphElement "HTMLParagraphElement"

foreign import javascript unsafe "window[\"HTMLParagraphElement\"]" gTypeHTMLParagraphElement :: GType
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
newtype HTMLParamElement = HTMLParamElement { unHTMLParamElement :: JSVal }

instance Eq (HTMLParamElement) where
  (HTMLParamElement a) == (HTMLParamElement b) = js_eq a b

instance PToJSVal HTMLParamElement where
  pToJSVal = unHTMLParamElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLParamElement where
  pFromJSVal = HTMLParamElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLParamElement where
  toJSVal = return . unHTMLParamElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLParamElement where
  fromJSVal = return . fmap HTMLParamElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLParamElement
instance IsElement HTMLParamElement
instance IsNode HTMLParamElement
instance IsEventTarget HTMLParamElement
instance IsGObject HTMLParamElement where
  toGObject = GObject . unHTMLParamElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLParamElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLParamElement :: IsGObject obj => obj -> HTMLParamElement
castToHTMLParamElement = castTo gTypeHTMLParamElement "HTMLParamElement"

foreign import javascript unsafe "window[\"HTMLParamElement\"]" gTypeHTMLParamElement :: GType
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
newtype HTMLPreElement = HTMLPreElement { unHTMLPreElement :: JSVal }

instance Eq (HTMLPreElement) where
  (HTMLPreElement a) == (HTMLPreElement b) = js_eq a b

instance PToJSVal HTMLPreElement where
  pToJSVal = unHTMLPreElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLPreElement where
  pFromJSVal = HTMLPreElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLPreElement where
  toJSVal = return . unHTMLPreElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLPreElement where
  fromJSVal = return . fmap HTMLPreElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLPreElement
instance IsElement HTMLPreElement
instance IsNode HTMLPreElement
instance IsEventTarget HTMLPreElement
instance IsGObject HTMLPreElement where
  toGObject = GObject . unHTMLPreElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLPreElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLPreElement :: IsGObject obj => obj -> HTMLPreElement
castToHTMLPreElement = castTo gTypeHTMLPreElement "HTMLPreElement"

foreign import javascript unsafe "window[\"HTMLPreElement\"]" gTypeHTMLPreElement :: GType
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
newtype HTMLProgressElement = HTMLProgressElement { unHTMLProgressElement :: JSVal }

instance Eq (HTMLProgressElement) where
  (HTMLProgressElement a) == (HTMLProgressElement b) = js_eq a b

instance PToJSVal HTMLProgressElement where
  pToJSVal = unHTMLProgressElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLProgressElement where
  pFromJSVal = HTMLProgressElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLProgressElement where
  toJSVal = return . unHTMLProgressElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLProgressElement where
  fromJSVal = return . fmap HTMLProgressElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLProgressElement
instance IsElement HTMLProgressElement
instance IsNode HTMLProgressElement
instance IsEventTarget HTMLProgressElement
instance IsGObject HTMLProgressElement where
  toGObject = GObject . unHTMLProgressElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLProgressElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLProgressElement :: IsGObject obj => obj -> HTMLProgressElement
castToHTMLProgressElement = castTo gTypeHTMLProgressElement "HTMLProgressElement"

foreign import javascript unsafe "window[\"HTMLProgressElement\"]" gTypeHTMLProgressElement :: GType
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
newtype HTMLQuoteElement = HTMLQuoteElement { unHTMLQuoteElement :: JSVal }

instance Eq (HTMLQuoteElement) where
  (HTMLQuoteElement a) == (HTMLQuoteElement b) = js_eq a b

instance PToJSVal HTMLQuoteElement where
  pToJSVal = unHTMLQuoteElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLQuoteElement where
  pFromJSVal = HTMLQuoteElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLQuoteElement where
  toJSVal = return . unHTMLQuoteElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLQuoteElement where
  fromJSVal = return . fmap HTMLQuoteElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLQuoteElement
instance IsElement HTMLQuoteElement
instance IsNode HTMLQuoteElement
instance IsEventTarget HTMLQuoteElement
instance IsGObject HTMLQuoteElement where
  toGObject = GObject . unHTMLQuoteElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLQuoteElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLQuoteElement :: IsGObject obj => obj -> HTMLQuoteElement
castToHTMLQuoteElement = castTo gTypeHTMLQuoteElement "HTMLQuoteElement"

foreign import javascript unsafe "window[\"HTMLQuoteElement\"]" gTypeHTMLQuoteElement :: GType
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
newtype HTMLScriptElement = HTMLScriptElement { unHTMLScriptElement :: JSVal }

instance Eq (HTMLScriptElement) where
  (HTMLScriptElement a) == (HTMLScriptElement b) = js_eq a b

instance PToJSVal HTMLScriptElement where
  pToJSVal = unHTMLScriptElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLScriptElement where
  pFromJSVal = HTMLScriptElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLScriptElement where
  toJSVal = return . unHTMLScriptElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLScriptElement where
  fromJSVal = return . fmap HTMLScriptElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLScriptElement
instance IsElement HTMLScriptElement
instance IsNode HTMLScriptElement
instance IsEventTarget HTMLScriptElement
instance IsGObject HTMLScriptElement where
  toGObject = GObject . unHTMLScriptElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLScriptElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLScriptElement :: IsGObject obj => obj -> HTMLScriptElement
castToHTMLScriptElement = castTo gTypeHTMLScriptElement "HTMLScriptElement"

foreign import javascript unsafe "window[\"HTMLScriptElement\"]" gTypeHTMLScriptElement :: GType
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
newtype HTMLSelectElement = HTMLSelectElement { unHTMLSelectElement :: JSVal }

instance Eq (HTMLSelectElement) where
  (HTMLSelectElement a) == (HTMLSelectElement b) = js_eq a b

instance PToJSVal HTMLSelectElement where
  pToJSVal = unHTMLSelectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSelectElement where
  pFromJSVal = HTMLSelectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSelectElement where
  toJSVal = return . unHTMLSelectElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSelectElement where
  fromJSVal = return . fmap HTMLSelectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLSelectElement
instance IsElement HTMLSelectElement
instance IsNode HTMLSelectElement
instance IsEventTarget HTMLSelectElement
instance IsGObject HTMLSelectElement where
  toGObject = GObject . unHTMLSelectElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLSelectElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLSelectElement :: IsGObject obj => obj -> HTMLSelectElement
castToHTMLSelectElement = castTo gTypeHTMLSelectElement "HTMLSelectElement"

foreign import javascript unsafe "window[\"HTMLSelectElement\"]" gTypeHTMLSelectElement :: GType
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
newtype HTMLSourceElement = HTMLSourceElement { unHTMLSourceElement :: JSVal }

instance Eq (HTMLSourceElement) where
  (HTMLSourceElement a) == (HTMLSourceElement b) = js_eq a b

instance PToJSVal HTMLSourceElement where
  pToJSVal = unHTMLSourceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSourceElement where
  pFromJSVal = HTMLSourceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSourceElement where
  toJSVal = return . unHTMLSourceElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSourceElement where
  fromJSVal = return . fmap HTMLSourceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLSourceElement
instance IsElement HTMLSourceElement
instance IsNode HTMLSourceElement
instance IsEventTarget HTMLSourceElement
instance IsGObject HTMLSourceElement where
  toGObject = GObject . unHTMLSourceElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLSourceElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLSourceElement :: IsGObject obj => obj -> HTMLSourceElement
castToHTMLSourceElement = castTo gTypeHTMLSourceElement "HTMLSourceElement"

foreign import javascript unsafe "window[\"HTMLSourceElement\"]" gTypeHTMLSourceElement :: GType
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
newtype HTMLSpanElement = HTMLSpanElement { unHTMLSpanElement :: JSVal }

instance Eq (HTMLSpanElement) where
  (HTMLSpanElement a) == (HTMLSpanElement b) = js_eq a b

instance PToJSVal HTMLSpanElement where
  pToJSVal = unHTMLSpanElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLSpanElement where
  pFromJSVal = HTMLSpanElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLSpanElement where
  toJSVal = return . unHTMLSpanElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLSpanElement where
  fromJSVal = return . fmap HTMLSpanElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLSpanElement
instance IsElement HTMLSpanElement
instance IsNode HTMLSpanElement
instance IsEventTarget HTMLSpanElement
instance IsGObject HTMLSpanElement where
  toGObject = GObject . unHTMLSpanElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLSpanElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLSpanElement :: IsGObject obj => obj -> HTMLSpanElement
castToHTMLSpanElement = castTo gTypeHTMLSpanElement "HTMLSpanElement"

foreign import javascript unsafe "window[\"HTMLSpanElement\"]" gTypeHTMLSpanElement :: GType
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
newtype HTMLStyleElement = HTMLStyleElement { unHTMLStyleElement :: JSVal }

instance Eq (HTMLStyleElement) where
  (HTMLStyleElement a) == (HTMLStyleElement b) = js_eq a b

instance PToJSVal HTMLStyleElement where
  pToJSVal = unHTMLStyleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLStyleElement where
  pFromJSVal = HTMLStyleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLStyleElement where
  toJSVal = return . unHTMLStyleElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLStyleElement where
  fromJSVal = return . fmap HTMLStyleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLStyleElement
instance IsElement HTMLStyleElement
instance IsNode HTMLStyleElement
instance IsEventTarget HTMLStyleElement
instance IsGObject HTMLStyleElement where
  toGObject = GObject . unHTMLStyleElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLStyleElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLStyleElement :: IsGObject obj => obj -> HTMLStyleElement
castToHTMLStyleElement = castTo gTypeHTMLStyleElement "HTMLStyleElement"

foreign import javascript unsafe "window[\"HTMLStyleElement\"]" gTypeHTMLStyleElement :: GType
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
newtype HTMLTableCaptionElement = HTMLTableCaptionElement { unHTMLTableCaptionElement :: JSVal }

instance Eq (HTMLTableCaptionElement) where
  (HTMLTableCaptionElement a) == (HTMLTableCaptionElement b) = js_eq a b

instance PToJSVal HTMLTableCaptionElement where
  pToJSVal = unHTMLTableCaptionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableCaptionElement where
  pFromJSVal = HTMLTableCaptionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableCaptionElement where
  toJSVal = return . unHTMLTableCaptionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableCaptionElement where
  fromJSVal = return . fmap HTMLTableCaptionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableCaptionElement
instance IsElement HTMLTableCaptionElement
instance IsNode HTMLTableCaptionElement
instance IsEventTarget HTMLTableCaptionElement
instance IsGObject HTMLTableCaptionElement where
  toGObject = GObject . unHTMLTableCaptionElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableCaptionElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableCaptionElement :: IsGObject obj => obj -> HTMLTableCaptionElement
castToHTMLTableCaptionElement = castTo gTypeHTMLTableCaptionElement "HTMLTableCaptionElement"

foreign import javascript unsafe "window[\"HTMLTableCaptionElement\"]" gTypeHTMLTableCaptionElement :: GType
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
newtype HTMLTableCellElement = HTMLTableCellElement { unHTMLTableCellElement :: JSVal }

instance Eq (HTMLTableCellElement) where
  (HTMLTableCellElement a) == (HTMLTableCellElement b) = js_eq a b

instance PToJSVal HTMLTableCellElement where
  pToJSVal = unHTMLTableCellElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableCellElement where
  pFromJSVal = HTMLTableCellElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableCellElement where
  toJSVal = return . unHTMLTableCellElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableCellElement where
  fromJSVal = return . fmap HTMLTableCellElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableCellElement
instance IsElement HTMLTableCellElement
instance IsNode HTMLTableCellElement
instance IsEventTarget HTMLTableCellElement
instance IsGObject HTMLTableCellElement where
  toGObject = GObject . unHTMLTableCellElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableCellElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableCellElement :: IsGObject obj => obj -> HTMLTableCellElement
castToHTMLTableCellElement = castTo gTypeHTMLTableCellElement "HTMLTableCellElement"

foreign import javascript unsafe "window[\"HTMLTableCellElement\"]" gTypeHTMLTableCellElement :: GType
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
newtype HTMLTableColElement = HTMLTableColElement { unHTMLTableColElement :: JSVal }

instance Eq (HTMLTableColElement) where
  (HTMLTableColElement a) == (HTMLTableColElement b) = js_eq a b

instance PToJSVal HTMLTableColElement where
  pToJSVal = unHTMLTableColElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableColElement where
  pFromJSVal = HTMLTableColElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableColElement where
  toJSVal = return . unHTMLTableColElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableColElement where
  fromJSVal = return . fmap HTMLTableColElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableColElement
instance IsElement HTMLTableColElement
instance IsNode HTMLTableColElement
instance IsEventTarget HTMLTableColElement
instance IsGObject HTMLTableColElement where
  toGObject = GObject . unHTMLTableColElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableColElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableColElement :: IsGObject obj => obj -> HTMLTableColElement
castToHTMLTableColElement = castTo gTypeHTMLTableColElement "HTMLTableColElement"

foreign import javascript unsafe "window[\"HTMLTableColElement\"]" gTypeHTMLTableColElement :: GType
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
newtype HTMLTableElement = HTMLTableElement { unHTMLTableElement :: JSVal }

instance Eq (HTMLTableElement) where
  (HTMLTableElement a) == (HTMLTableElement b) = js_eq a b

instance PToJSVal HTMLTableElement where
  pToJSVal = unHTMLTableElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableElement where
  pFromJSVal = HTMLTableElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableElement where
  toJSVal = return . unHTMLTableElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableElement where
  fromJSVal = return . fmap HTMLTableElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableElement
instance IsElement HTMLTableElement
instance IsNode HTMLTableElement
instance IsEventTarget HTMLTableElement
instance IsGObject HTMLTableElement where
  toGObject = GObject . unHTMLTableElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableElement :: IsGObject obj => obj -> HTMLTableElement
castToHTMLTableElement = castTo gTypeHTMLTableElement "HTMLTableElement"

foreign import javascript unsafe "window[\"HTMLTableElement\"]" gTypeHTMLTableElement :: GType
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
newtype HTMLTableRowElement = HTMLTableRowElement { unHTMLTableRowElement :: JSVal }

instance Eq (HTMLTableRowElement) where
  (HTMLTableRowElement a) == (HTMLTableRowElement b) = js_eq a b

instance PToJSVal HTMLTableRowElement where
  pToJSVal = unHTMLTableRowElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableRowElement where
  pFromJSVal = HTMLTableRowElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableRowElement where
  toJSVal = return . unHTMLTableRowElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableRowElement where
  fromJSVal = return . fmap HTMLTableRowElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableRowElement
instance IsElement HTMLTableRowElement
instance IsNode HTMLTableRowElement
instance IsEventTarget HTMLTableRowElement
instance IsGObject HTMLTableRowElement where
  toGObject = GObject . unHTMLTableRowElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableRowElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableRowElement :: IsGObject obj => obj -> HTMLTableRowElement
castToHTMLTableRowElement = castTo gTypeHTMLTableRowElement "HTMLTableRowElement"

foreign import javascript unsafe "window[\"HTMLTableRowElement\"]" gTypeHTMLTableRowElement :: GType
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
newtype HTMLTableSectionElement = HTMLTableSectionElement { unHTMLTableSectionElement :: JSVal }

instance Eq (HTMLTableSectionElement) where
  (HTMLTableSectionElement a) == (HTMLTableSectionElement b) = js_eq a b

instance PToJSVal HTMLTableSectionElement where
  pToJSVal = unHTMLTableSectionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTableSectionElement where
  pFromJSVal = HTMLTableSectionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTableSectionElement where
  toJSVal = return . unHTMLTableSectionElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTableSectionElement where
  fromJSVal = return . fmap HTMLTableSectionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTableSectionElement
instance IsElement HTMLTableSectionElement
instance IsNode HTMLTableSectionElement
instance IsEventTarget HTMLTableSectionElement
instance IsGObject HTMLTableSectionElement where
  toGObject = GObject . unHTMLTableSectionElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTableSectionElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTableSectionElement :: IsGObject obj => obj -> HTMLTableSectionElement
castToHTMLTableSectionElement = castTo gTypeHTMLTableSectionElement "HTMLTableSectionElement"

foreign import javascript unsafe "window[\"HTMLTableSectionElement\"]" gTypeHTMLTableSectionElement :: GType
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
newtype HTMLTemplateElement = HTMLTemplateElement { unHTMLTemplateElement :: JSVal }

instance Eq (HTMLTemplateElement) where
  (HTMLTemplateElement a) == (HTMLTemplateElement b) = js_eq a b

instance PToJSVal HTMLTemplateElement where
  pToJSVal = unHTMLTemplateElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTemplateElement where
  pFromJSVal = HTMLTemplateElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTemplateElement where
  toJSVal = return . unHTMLTemplateElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTemplateElement where
  fromJSVal = return . fmap HTMLTemplateElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTemplateElement
instance IsElement HTMLTemplateElement
instance IsNode HTMLTemplateElement
instance IsEventTarget HTMLTemplateElement
instance IsGObject HTMLTemplateElement where
  toGObject = GObject . unHTMLTemplateElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTemplateElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTemplateElement :: IsGObject obj => obj -> HTMLTemplateElement
castToHTMLTemplateElement = castTo gTypeHTMLTemplateElement "HTMLTemplateElement"

foreign import javascript unsafe "window[\"HTMLTemplateElement\"]" gTypeHTMLTemplateElement :: GType
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
newtype HTMLTextAreaElement = HTMLTextAreaElement { unHTMLTextAreaElement :: JSVal }

instance Eq (HTMLTextAreaElement) where
  (HTMLTextAreaElement a) == (HTMLTextAreaElement b) = js_eq a b

instance PToJSVal HTMLTextAreaElement where
  pToJSVal = unHTMLTextAreaElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTextAreaElement where
  pFromJSVal = HTMLTextAreaElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTextAreaElement where
  toJSVal = return . unHTMLTextAreaElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTextAreaElement where
  fromJSVal = return . fmap HTMLTextAreaElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTextAreaElement
instance IsElement HTMLTextAreaElement
instance IsNode HTMLTextAreaElement
instance IsEventTarget HTMLTextAreaElement
instance IsGObject HTMLTextAreaElement where
  toGObject = GObject . unHTMLTextAreaElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTextAreaElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTextAreaElement :: IsGObject obj => obj -> HTMLTextAreaElement
castToHTMLTextAreaElement = castTo gTypeHTMLTextAreaElement "HTMLTextAreaElement"

foreign import javascript unsafe "window[\"HTMLTextAreaElement\"]" gTypeHTMLTextAreaElement :: GType
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
newtype HTMLTitleElement = HTMLTitleElement { unHTMLTitleElement :: JSVal }

instance Eq (HTMLTitleElement) where
  (HTMLTitleElement a) == (HTMLTitleElement b) = js_eq a b

instance PToJSVal HTMLTitleElement where
  pToJSVal = unHTMLTitleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTitleElement where
  pFromJSVal = HTMLTitleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTitleElement where
  toJSVal = return . unHTMLTitleElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTitleElement where
  fromJSVal = return . fmap HTMLTitleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTitleElement
instance IsElement HTMLTitleElement
instance IsNode HTMLTitleElement
instance IsEventTarget HTMLTitleElement
instance IsGObject HTMLTitleElement where
  toGObject = GObject . unHTMLTitleElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTitleElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTitleElement :: IsGObject obj => obj -> HTMLTitleElement
castToHTMLTitleElement = castTo gTypeHTMLTitleElement "HTMLTitleElement"

foreign import javascript unsafe "window[\"HTMLTitleElement\"]" gTypeHTMLTitleElement :: GType
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
newtype HTMLTrackElement = HTMLTrackElement { unHTMLTrackElement :: JSVal }

instance Eq (HTMLTrackElement) where
  (HTMLTrackElement a) == (HTMLTrackElement b) = js_eq a b

instance PToJSVal HTMLTrackElement where
  pToJSVal = unHTMLTrackElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLTrackElement where
  pFromJSVal = HTMLTrackElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLTrackElement where
  toJSVal = return . unHTMLTrackElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLTrackElement where
  fromJSVal = return . fmap HTMLTrackElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLTrackElement
instance IsElement HTMLTrackElement
instance IsNode HTMLTrackElement
instance IsEventTarget HTMLTrackElement
instance IsGObject HTMLTrackElement where
  toGObject = GObject . unHTMLTrackElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLTrackElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLTrackElement :: IsGObject obj => obj -> HTMLTrackElement
castToHTMLTrackElement = castTo gTypeHTMLTrackElement "HTMLTrackElement"

foreign import javascript unsafe "window[\"HTMLTrackElement\"]" gTypeHTMLTrackElement :: GType
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
newtype HTMLUListElement = HTMLUListElement { unHTMLUListElement :: JSVal }

instance Eq (HTMLUListElement) where
  (HTMLUListElement a) == (HTMLUListElement b) = js_eq a b

instance PToJSVal HTMLUListElement where
  pToJSVal = unHTMLUListElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLUListElement where
  pFromJSVal = HTMLUListElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLUListElement where
  toJSVal = return . unHTMLUListElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLUListElement where
  fromJSVal = return . fmap HTMLUListElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLUListElement
instance IsElement HTMLUListElement
instance IsNode HTMLUListElement
instance IsEventTarget HTMLUListElement
instance IsGObject HTMLUListElement where
  toGObject = GObject . unHTMLUListElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLUListElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLUListElement :: IsGObject obj => obj -> HTMLUListElement
castToHTMLUListElement = castTo gTypeHTMLUListElement "HTMLUListElement"

foreign import javascript unsafe "window[\"HTMLUListElement\"]" gTypeHTMLUListElement :: GType
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
newtype HTMLUnknownElement = HTMLUnknownElement { unHTMLUnknownElement :: JSVal }

instance Eq (HTMLUnknownElement) where
  (HTMLUnknownElement a) == (HTMLUnknownElement b) = js_eq a b

instance PToJSVal HTMLUnknownElement where
  pToJSVal = unHTMLUnknownElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLUnknownElement where
  pFromJSVal = HTMLUnknownElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLUnknownElement where
  toJSVal = return . unHTMLUnknownElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLUnknownElement where
  fromJSVal = return . fmap HTMLUnknownElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLElement HTMLUnknownElement
instance IsElement HTMLUnknownElement
instance IsNode HTMLUnknownElement
instance IsEventTarget HTMLUnknownElement
instance IsGObject HTMLUnknownElement where
  toGObject = GObject . unHTMLUnknownElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLUnknownElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLUnknownElement :: IsGObject obj => obj -> HTMLUnknownElement
castToHTMLUnknownElement = castTo gTypeHTMLUnknownElement "HTMLUnknownElement"

foreign import javascript unsafe "window[\"HTMLUnknownElement\"]" gTypeHTMLUnknownElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.HTMLVideoElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLMediaElement"
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement Mozilla HTMLVideoElement documentation>
newtype HTMLVideoElement = HTMLVideoElement { unHTMLVideoElement :: JSVal }

instance Eq (HTMLVideoElement) where
  (HTMLVideoElement a) == (HTMLVideoElement b) = js_eq a b

instance PToJSVal HTMLVideoElement where
  pToJSVal = unHTMLVideoElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal HTMLVideoElement where
  pFromJSVal = HTMLVideoElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal HTMLVideoElement where
  toJSVal = return . unHTMLVideoElement
  {-# INLINE toJSVal #-}

instance FromJSVal HTMLVideoElement where
  fromJSVal = return . fmap HTMLVideoElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsHTMLMediaElement HTMLVideoElement
instance IsHTMLElement HTMLVideoElement
instance IsElement HTMLVideoElement
instance IsNode HTMLVideoElement
instance IsEventTarget HTMLVideoElement
instance IsGObject HTMLVideoElement where
  toGObject = GObject . unHTMLVideoElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = HTMLVideoElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHTMLVideoElement :: IsGObject obj => obj -> HTMLVideoElement
castToHTMLVideoElement = castTo gTypeHTMLVideoElement "HTMLVideoElement"

foreign import javascript unsafe "window[\"HTMLVideoElement\"]" gTypeHTMLVideoElement :: GType
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
newtype HashChangeEvent = HashChangeEvent { unHashChangeEvent :: JSVal }

instance Eq (HashChangeEvent) where
  (HashChangeEvent a) == (HashChangeEvent b) = js_eq a b

instance PToJSVal HashChangeEvent where
  pToJSVal = unHashChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal HashChangeEvent where
  pFromJSVal = HashChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal HashChangeEvent where
  toJSVal = return . unHashChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal HashChangeEvent where
  fromJSVal = return . fmap HashChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent HashChangeEvent
instance IsGObject HashChangeEvent where
  toGObject = GObject . unHashChangeEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = HashChangeEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHashChangeEvent :: IsGObject obj => obj -> HashChangeEvent
castToHashChangeEvent = castTo gTypeHashChangeEvent "HashChangeEvent"

foreign import javascript unsafe "window[\"HashChangeEvent\"]" gTypeHashChangeEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.History".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/History Mozilla History documentation>
newtype History = History { unHistory :: JSVal }

instance Eq (History) where
  (History a) == (History b) = js_eq a b

instance PToJSVal History where
  pToJSVal = unHistory
  {-# INLINE pToJSVal #-}

instance PFromJSVal History where
  pFromJSVal = History
  {-# INLINE pFromJSVal #-}

instance ToJSVal History where
  toJSVal = return . unHistory
  {-# INLINE toJSVal #-}

instance FromJSVal History where
  fromJSVal = return . fmap History . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject History where
  toGObject = GObject . unHistory
  {-# INLINE toGObject #-}
  unsafeCastGObject = History . unGObject
  {-# INLINE unsafeCastGObject #-}

castToHistory :: IsGObject obj => obj -> History
castToHistory = castTo gTypeHistory "History"

foreign import javascript unsafe "window[\"History\"]" gTypeHistory :: GType
#else
type IsHistory o = HistoryClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBAny".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBAny Mozilla IDBAny documentation>
newtype IDBAny = IDBAny { unIDBAny :: JSVal }

instance Eq (IDBAny) where
  (IDBAny a) == (IDBAny b) = js_eq a b

instance PToJSVal IDBAny where
  pToJSVal = unIDBAny
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBAny where
  pFromJSVal = IDBAny
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBAny where
  toJSVal = return . unIDBAny
  {-# INLINE toJSVal #-}

instance FromJSVal IDBAny where
  fromJSVal = return . fmap IDBAny . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject IDBAny where
  toGObject = GObject . unIDBAny
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBAny . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBAny :: IsGObject obj => obj -> IDBAny
castToIDBAny = castTo gTypeIDBAny "IDBAny"

foreign import javascript unsafe "window[\"IDBAny\"]" gTypeIDBAny :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBCursor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor Mozilla IDBCursor documentation>
newtype IDBCursor = IDBCursor { unIDBCursor :: JSVal }

instance Eq (IDBCursor) where
  (IDBCursor a) == (IDBCursor b) = js_eq a b

instance PToJSVal IDBCursor where
  pToJSVal = unIDBCursor
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBCursor where
  pFromJSVal = IDBCursor
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBCursor where
  toJSVal = return . unIDBCursor
  {-# INLINE toJSVal #-}

instance FromJSVal IDBCursor where
  fromJSVal = return . fmap IDBCursor . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsIDBCursor o
toIDBCursor :: IsIDBCursor o => o -> IDBCursor
toIDBCursor = unsafeCastGObject . toGObject

instance IsIDBCursor IDBCursor
instance IsGObject IDBCursor where
  toGObject = GObject . unIDBCursor
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBCursor . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBCursor :: IsGObject obj => obj -> IDBCursor
castToIDBCursor = castTo gTypeIDBCursor "IDBCursor"

foreign import javascript unsafe "window[\"IDBCursor\"]" gTypeIDBCursor :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBCursorWithValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.IDBCursor"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue Mozilla IDBCursorWithValue documentation>
newtype IDBCursorWithValue = IDBCursorWithValue { unIDBCursorWithValue :: JSVal }

instance Eq (IDBCursorWithValue) where
  (IDBCursorWithValue a) == (IDBCursorWithValue b) = js_eq a b

instance PToJSVal IDBCursorWithValue where
  pToJSVal = unIDBCursorWithValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBCursorWithValue where
  pFromJSVal = IDBCursorWithValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBCursorWithValue where
  toJSVal = return . unIDBCursorWithValue
  {-# INLINE toJSVal #-}

instance FromJSVal IDBCursorWithValue where
  fromJSVal = return . fmap IDBCursorWithValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsIDBCursor IDBCursorWithValue
instance IsGObject IDBCursorWithValue where
  toGObject = GObject . unIDBCursorWithValue
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBCursorWithValue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBCursorWithValue :: IsGObject obj => obj -> IDBCursorWithValue
castToIDBCursorWithValue = castTo gTypeIDBCursorWithValue "IDBCursorWithValue"

foreign import javascript unsafe "window[\"IDBCursorWithValue\"]" gTypeIDBCursorWithValue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBDatabase".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase Mozilla IDBDatabase documentation>
newtype IDBDatabase = IDBDatabase { unIDBDatabase :: JSVal }

instance Eq (IDBDatabase) where
  (IDBDatabase a) == (IDBDatabase b) = js_eq a b

instance PToJSVal IDBDatabase where
  pToJSVal = unIDBDatabase
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBDatabase where
  pFromJSVal = IDBDatabase
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBDatabase where
  toJSVal = return . unIDBDatabase
  {-# INLINE toJSVal #-}

instance FromJSVal IDBDatabase where
  fromJSVal = return . fmap IDBDatabase . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget IDBDatabase
instance IsGObject IDBDatabase where
  toGObject = GObject . unIDBDatabase
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBDatabase . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBDatabase :: IsGObject obj => obj -> IDBDatabase
castToIDBDatabase = castTo gTypeIDBDatabase "IDBDatabase"

foreign import javascript unsafe "window[\"IDBDatabase\"]" gTypeIDBDatabase :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBFactory".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory Mozilla IDBFactory documentation>
newtype IDBFactory = IDBFactory { unIDBFactory :: JSVal }

instance Eq (IDBFactory) where
  (IDBFactory a) == (IDBFactory b) = js_eq a b

instance PToJSVal IDBFactory where
  pToJSVal = unIDBFactory
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBFactory where
  pFromJSVal = IDBFactory
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBFactory where
  toJSVal = return . unIDBFactory
  {-# INLINE toJSVal #-}

instance FromJSVal IDBFactory where
  fromJSVal = return . fmap IDBFactory . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject IDBFactory where
  toGObject = GObject . unIDBFactory
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBFactory . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBFactory :: IsGObject obj => obj -> IDBFactory
castToIDBFactory = castTo gTypeIDBFactory "IDBFactory"

foreign import javascript unsafe "window[\"IDBFactory\"]" gTypeIDBFactory :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBIndex".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex Mozilla IDBIndex documentation>
newtype IDBIndex = IDBIndex { unIDBIndex :: JSVal }

instance Eq (IDBIndex) where
  (IDBIndex a) == (IDBIndex b) = js_eq a b

instance PToJSVal IDBIndex where
  pToJSVal = unIDBIndex
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBIndex where
  pFromJSVal = IDBIndex
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBIndex where
  toJSVal = return . unIDBIndex
  {-# INLINE toJSVal #-}

instance FromJSVal IDBIndex where
  fromJSVal = return . fmap IDBIndex . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject IDBIndex where
  toGObject = GObject . unIDBIndex
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBIndex . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBIndex :: IsGObject obj => obj -> IDBIndex
castToIDBIndex = castTo gTypeIDBIndex "IDBIndex"

foreign import javascript unsafe "window[\"IDBIndex\"]" gTypeIDBIndex :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBKeyRange".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange Mozilla IDBKeyRange documentation>
newtype IDBKeyRange = IDBKeyRange { unIDBKeyRange :: JSVal }

instance Eq (IDBKeyRange) where
  (IDBKeyRange a) == (IDBKeyRange b) = js_eq a b

instance PToJSVal IDBKeyRange where
  pToJSVal = unIDBKeyRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBKeyRange where
  pFromJSVal = IDBKeyRange
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBKeyRange where
  toJSVal = return . unIDBKeyRange
  {-# INLINE toJSVal #-}

instance FromJSVal IDBKeyRange where
  fromJSVal = return . fmap IDBKeyRange . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject IDBKeyRange where
  toGObject = GObject . unIDBKeyRange
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBKeyRange . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBKeyRange :: IsGObject obj => obj -> IDBKeyRange
castToIDBKeyRange = castTo gTypeIDBKeyRange "IDBKeyRange"

foreign import javascript unsafe "window[\"IDBKeyRange\"]" gTypeIDBKeyRange :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBObjectStore".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore Mozilla IDBObjectStore documentation>
newtype IDBObjectStore = IDBObjectStore { unIDBObjectStore :: JSVal }

instance Eq (IDBObjectStore) where
  (IDBObjectStore a) == (IDBObjectStore b) = js_eq a b

instance PToJSVal IDBObjectStore where
  pToJSVal = unIDBObjectStore
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBObjectStore where
  pFromJSVal = IDBObjectStore
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBObjectStore where
  toJSVal = return . unIDBObjectStore
  {-# INLINE toJSVal #-}

instance FromJSVal IDBObjectStore where
  fromJSVal = return . fmap IDBObjectStore . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject IDBObjectStore where
  toGObject = GObject . unIDBObjectStore
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBObjectStore . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBObjectStore :: IsGObject obj => obj -> IDBObjectStore
castToIDBObjectStore = castTo gTypeIDBObjectStore "IDBObjectStore"

foreign import javascript unsafe "window[\"IDBObjectStore\"]" gTypeIDBObjectStore :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBOpenDBRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.IDBRequest"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest Mozilla IDBOpenDBRequest documentation>
newtype IDBOpenDBRequest = IDBOpenDBRequest { unIDBOpenDBRequest :: JSVal }

instance Eq (IDBOpenDBRequest) where
  (IDBOpenDBRequest a) == (IDBOpenDBRequest b) = js_eq a b

instance PToJSVal IDBOpenDBRequest where
  pToJSVal = unIDBOpenDBRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBOpenDBRequest where
  pFromJSVal = IDBOpenDBRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBOpenDBRequest where
  toJSVal = return . unIDBOpenDBRequest
  {-# INLINE toJSVal #-}

instance FromJSVal IDBOpenDBRequest where
  fromJSVal = return . fmap IDBOpenDBRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsIDBRequest IDBOpenDBRequest
instance IsEventTarget IDBOpenDBRequest
instance IsGObject IDBOpenDBRequest where
  toGObject = GObject . unIDBOpenDBRequest
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBOpenDBRequest . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBOpenDBRequest :: IsGObject obj => obj -> IDBOpenDBRequest
castToIDBOpenDBRequest = castTo gTypeIDBOpenDBRequest "IDBOpenDBRequest"

foreign import javascript unsafe "window[\"IDBOpenDBRequest\"]" gTypeIDBOpenDBRequest :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest Mozilla IDBRequest documentation>
newtype IDBRequest = IDBRequest { unIDBRequest :: JSVal }

instance Eq (IDBRequest) where
  (IDBRequest a) == (IDBRequest b) = js_eq a b

instance PToJSVal IDBRequest where
  pToJSVal = unIDBRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBRequest where
  pFromJSVal = IDBRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBRequest where
  toJSVal = return . unIDBRequest
  {-# INLINE toJSVal #-}

instance FromJSVal IDBRequest where
  fromJSVal = return . fmap IDBRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsIDBRequest o
toIDBRequest :: IsIDBRequest o => o -> IDBRequest
toIDBRequest = unsafeCastGObject . toGObject

instance IsIDBRequest IDBRequest
instance IsEventTarget IDBRequest
instance IsGObject IDBRequest where
  toGObject = GObject . unIDBRequest
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBRequest . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBRequest :: IsGObject obj => obj -> IDBRequest
castToIDBRequest = castTo gTypeIDBRequest "IDBRequest"

foreign import javascript unsafe "window[\"IDBRequest\"]" gTypeIDBRequest :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBTransaction".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction Mozilla IDBTransaction documentation>
newtype IDBTransaction = IDBTransaction { unIDBTransaction :: JSVal }

instance Eq (IDBTransaction) where
  (IDBTransaction a) == (IDBTransaction b) = js_eq a b

instance PToJSVal IDBTransaction where
  pToJSVal = unIDBTransaction
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBTransaction where
  pFromJSVal = IDBTransaction
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBTransaction where
  toJSVal = return . unIDBTransaction
  {-# INLINE toJSVal #-}

instance FromJSVal IDBTransaction where
  fromJSVal = return . fmap IDBTransaction . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget IDBTransaction
instance IsGObject IDBTransaction where
  toGObject = GObject . unIDBTransaction
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBTransaction . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBTransaction :: IsGObject obj => obj -> IDBTransaction
castToIDBTransaction = castTo gTypeIDBTransaction "IDBTransaction"

foreign import javascript unsafe "window[\"IDBTransaction\"]" gTypeIDBTransaction :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.IDBVersionChangeEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent Mozilla IDBVersionChangeEvent documentation>
newtype IDBVersionChangeEvent = IDBVersionChangeEvent { unIDBVersionChangeEvent :: JSVal }

instance Eq (IDBVersionChangeEvent) where
  (IDBVersionChangeEvent a) == (IDBVersionChangeEvent b) = js_eq a b

instance PToJSVal IDBVersionChangeEvent where
  pToJSVal = unIDBVersionChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal IDBVersionChangeEvent where
  pFromJSVal = IDBVersionChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal IDBVersionChangeEvent where
  toJSVal = return . unIDBVersionChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal IDBVersionChangeEvent where
  fromJSVal = return . fmap IDBVersionChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent IDBVersionChangeEvent
instance IsGObject IDBVersionChangeEvent where
  toGObject = GObject . unIDBVersionChangeEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = IDBVersionChangeEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToIDBVersionChangeEvent :: IsGObject obj => obj -> IDBVersionChangeEvent
castToIDBVersionChangeEvent = castTo gTypeIDBVersionChangeEvent "IDBVersionChangeEvent"

foreign import javascript unsafe "window[\"IDBVersionChangeEvent\"]" gTypeIDBVersionChangeEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ImageData".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation>
newtype ImageData = ImageData { unImageData :: JSVal }

instance Eq (ImageData) where
  (ImageData a) == (ImageData b) = js_eq a b

instance PToJSVal ImageData where
  pToJSVal = unImageData
  {-# INLINE pToJSVal #-}

instance PFromJSVal ImageData where
  pFromJSVal = ImageData
  {-# INLINE pFromJSVal #-}

instance ToJSVal ImageData where
  toJSVal = return . unImageData
  {-# INLINE toJSVal #-}

instance FromJSVal ImageData where
  fromJSVal = return . fmap ImageData . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ImageData where
  toGObject = GObject . unImageData
  {-# INLINE toGObject #-}
  unsafeCastGObject = ImageData . unGObject
  {-# INLINE unsafeCastGObject #-}

castToImageData :: IsGObject obj => obj -> ImageData
castToImageData = castTo gTypeImageData "ImageData"

foreign import javascript unsafe "window[\"ImageData\"]" gTypeImageData :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.InspectorFrontendHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost Mozilla InspectorFrontendHost documentation>
newtype InspectorFrontendHost = InspectorFrontendHost { unInspectorFrontendHost :: JSVal }

instance Eq (InspectorFrontendHost) where
  (InspectorFrontendHost a) == (InspectorFrontendHost b) = js_eq a b

instance PToJSVal InspectorFrontendHost where
  pToJSVal = unInspectorFrontendHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal InspectorFrontendHost where
  pFromJSVal = InspectorFrontendHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal InspectorFrontendHost where
  toJSVal = return . unInspectorFrontendHost
  {-# INLINE toJSVal #-}

instance FromJSVal InspectorFrontendHost where
  fromJSVal = return . fmap InspectorFrontendHost . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject InspectorFrontendHost where
  toGObject = GObject . unInspectorFrontendHost
  {-# INLINE toGObject #-}
  unsafeCastGObject = InspectorFrontendHost . unGObject
  {-# INLINE unsafeCastGObject #-}

castToInspectorFrontendHost :: IsGObject obj => obj -> InspectorFrontendHost
castToInspectorFrontendHost = castTo gTypeInspectorFrontendHost "InspectorFrontendHost"

foreign import javascript unsafe "window[\"InspectorFrontendHost\"]" gTypeInspectorFrontendHost :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.InternalSettings".
-- Base interface functions are in:
--
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/InternalSettings Mozilla InternalSettings documentation>
newtype InternalSettings = InternalSettings { unInternalSettings :: JSVal }

instance Eq (InternalSettings) where
  (InternalSettings a) == (InternalSettings b) = js_eq a b

instance PToJSVal InternalSettings where
  pToJSVal = unInternalSettings
  {-# INLINE pToJSVal #-}

instance PFromJSVal InternalSettings where
  pFromJSVal = InternalSettings
  {-# INLINE pFromJSVal #-}

instance ToJSVal InternalSettings where
  toJSVal = return . unInternalSettings
  {-# INLINE toJSVal #-}

instance FromJSVal InternalSettings where
  fromJSVal = return . fmap InternalSettings . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject InternalSettings where
  toGObject = GObject . unInternalSettings
  {-# INLINE toGObject #-}
  unsafeCastGObject = InternalSettings . unGObject
  {-# INLINE unsafeCastGObject #-}

castToInternalSettings :: IsGObject obj => obj -> InternalSettings
castToInternalSettings = castTo gTypeInternalSettings "InternalSettings"

foreign import javascript unsafe "window[\"InternalSettings\"]" gTypeInternalSettings :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Internals".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Internals Mozilla Internals documentation>
newtype Internals = Internals { unInternals :: JSVal }

instance Eq (Internals) where
  (Internals a) == (Internals b) = js_eq a b

instance PToJSVal Internals where
  pToJSVal = unInternals
  {-# INLINE pToJSVal #-}

instance PFromJSVal Internals where
  pFromJSVal = Internals
  {-# INLINE pFromJSVal #-}

instance ToJSVal Internals where
  toJSVal = return . unInternals
  {-# INLINE toJSVal #-}

instance FromJSVal Internals where
  fromJSVal = return . fmap Internals . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Internals where
  toGObject = GObject . unInternals
  {-# INLINE toGObject #-}
  unsafeCastGObject = Internals . unGObject
  {-# INLINE unsafeCastGObject #-}

castToInternals :: IsGObject obj => obj -> Internals
castToInternals = castTo gTypeInternals "Internals"

foreign import javascript unsafe "window[\"Internals\"]" gTypeInternals :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.KeyboardEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent Mozilla KeyboardEvent documentation>
newtype KeyboardEvent = KeyboardEvent { unKeyboardEvent :: JSVal }

instance Eq (KeyboardEvent) where
  (KeyboardEvent a) == (KeyboardEvent b) = js_eq a b

instance PToJSVal KeyboardEvent where
  pToJSVal = unKeyboardEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal KeyboardEvent where
  pFromJSVal = KeyboardEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal KeyboardEvent where
  toJSVal = return . unKeyboardEvent
  {-# INLINE toJSVal #-}

instance FromJSVal KeyboardEvent where
  fromJSVal = return . fmap KeyboardEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent KeyboardEvent
instance IsEvent KeyboardEvent
instance IsGObject KeyboardEvent where
  toGObject = GObject . unKeyboardEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = KeyboardEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToKeyboardEvent :: IsGObject obj => obj -> KeyboardEvent
castToKeyboardEvent = castTo gTypeKeyboardEvent "KeyboardEvent"

foreign import javascript unsafe "window[\"KeyboardEvent\"]" gTypeKeyboardEvent :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsKeyboardEvent o = KeyboardEventClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Location".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Location Mozilla Location documentation>
newtype Location = Location { unLocation :: JSVal }

instance Eq (Location) where
  (Location a) == (Location b) = js_eq a b

instance PToJSVal Location where
  pToJSVal = unLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal Location where
  pFromJSVal = Location
  {-# INLINE pFromJSVal #-}

instance ToJSVal Location where
  toJSVal = return . unLocation
  {-# INLINE toJSVal #-}

instance FromJSVal Location where
  fromJSVal = return . fmap Location . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Location where
  toGObject = GObject . unLocation
  {-# INLINE toGObject #-}
  unsafeCastGObject = Location . unGObject
  {-# INLINE unsafeCastGObject #-}

castToLocation :: IsGObject obj => obj -> Location
castToLocation = castTo gTypeLocation "Location"

foreign import javascript unsafe "window[\"Location\"]" gTypeLocation :: GType
#else
type IsLocation o = LocationClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MallocStatistics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics Mozilla MallocStatistics documentation>
newtype MallocStatistics = MallocStatistics { unMallocStatistics :: JSVal }

instance Eq (MallocStatistics) where
  (MallocStatistics a) == (MallocStatistics b) = js_eq a b

instance PToJSVal MallocStatistics where
  pToJSVal = unMallocStatistics
  {-# INLINE pToJSVal #-}

instance PFromJSVal MallocStatistics where
  pFromJSVal = MallocStatistics
  {-# INLINE pFromJSVal #-}

instance ToJSVal MallocStatistics where
  toJSVal = return . unMallocStatistics
  {-# INLINE toJSVal #-}

instance FromJSVal MallocStatistics where
  fromJSVal = return . fmap MallocStatistics . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MallocStatistics where
  toGObject = GObject . unMallocStatistics
  {-# INLINE toGObject #-}
  unsafeCastGObject = MallocStatistics . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMallocStatistics :: IsGObject obj => obj -> MallocStatistics
castToMallocStatistics = castTo gTypeMallocStatistics "MallocStatistics"

foreign import javascript unsafe "window[\"MallocStatistics\"]" gTypeMallocStatistics :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaController".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation>
newtype MediaController = MediaController { unMediaController :: JSVal }

instance Eq (MediaController) where
  (MediaController a) == (MediaController b) = js_eq a b

instance PToJSVal MediaController where
  pToJSVal = unMediaController
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaController where
  pFromJSVal = MediaController
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaController where
  toJSVal = return . unMediaController
  {-# INLINE toJSVal #-}

instance FromJSVal MediaController where
  fromJSVal = return . fmap MediaController . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget MediaController
instance IsGObject MediaController where
  toGObject = GObject . unMediaController
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaController . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaController :: IsGObject obj => obj -> MediaController
castToMediaController = castTo gTypeMediaController "MediaController"

foreign import javascript unsafe "window[\"MediaController\"]" gTypeMediaController :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaControlsHost".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaControlsHost Mozilla MediaControlsHost documentation>
newtype MediaControlsHost = MediaControlsHost { unMediaControlsHost :: JSVal }

instance Eq (MediaControlsHost) where
  (MediaControlsHost a) == (MediaControlsHost b) = js_eq a b

instance PToJSVal MediaControlsHost where
  pToJSVal = unMediaControlsHost
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaControlsHost where
  pFromJSVal = MediaControlsHost
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaControlsHost where
  toJSVal = return . unMediaControlsHost
  {-# INLINE toJSVal #-}

instance FromJSVal MediaControlsHost where
  fromJSVal = return . fmap MediaControlsHost . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaControlsHost where
  toGObject = GObject . unMediaControlsHost
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaControlsHost . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaControlsHost :: IsGObject obj => obj -> MediaControlsHost
castToMediaControlsHost = castTo gTypeMediaControlsHost "MediaControlsHost"

foreign import javascript unsafe "window[\"MediaControlsHost\"]" gTypeMediaControlsHost :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaElementAudioSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode Mozilla MediaElementAudioSourceNode documentation>
newtype MediaElementAudioSourceNode = MediaElementAudioSourceNode { unMediaElementAudioSourceNode :: JSVal }

instance Eq (MediaElementAudioSourceNode) where
  (MediaElementAudioSourceNode a) == (MediaElementAudioSourceNode b) = js_eq a b

instance PToJSVal MediaElementAudioSourceNode where
  pToJSVal = unMediaElementAudioSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaElementAudioSourceNode where
  pFromJSVal = MediaElementAudioSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaElementAudioSourceNode where
  toJSVal = return . unMediaElementAudioSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaElementAudioSourceNode where
  fromJSVal = return . fmap MediaElementAudioSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode MediaElementAudioSourceNode
instance IsEventTarget MediaElementAudioSourceNode
instance IsGObject MediaElementAudioSourceNode where
  toGObject = GObject . unMediaElementAudioSourceNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaElementAudioSourceNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaElementAudioSourceNode :: IsGObject obj => obj -> MediaElementAudioSourceNode
castToMediaElementAudioSourceNode = castTo gTypeMediaElementAudioSourceNode "MediaElementAudioSourceNode"

foreign import javascript unsafe "window[\"MediaElementAudioSourceNode\"]" gTypeMediaElementAudioSourceNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaError Mozilla MediaError documentation>
newtype MediaError = MediaError { unMediaError :: JSVal }

instance Eq (MediaError) where
  (MediaError a) == (MediaError b) = js_eq a b

instance PToJSVal MediaError where
  pToJSVal = unMediaError
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaError where
  pFromJSVal = MediaError
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaError where
  toJSVal = return . unMediaError
  {-# INLINE toJSVal #-}

instance FromJSVal MediaError where
  fromJSVal = return . fmap MediaError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaError where
  toGObject = GObject . unMediaError
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaError :: IsGObject obj => obj -> MediaError
castToMediaError = castTo gTypeMediaError "MediaError"

foreign import javascript unsafe "window[\"MediaError\"]" gTypeMediaError :: GType
#else
type IsMediaError o = MediaErrorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError Mozilla WebKitMediaKeyError documentation>
newtype MediaKeyError = MediaKeyError { unMediaKeyError :: JSVal }

instance Eq (MediaKeyError) where
  (MediaKeyError a) == (MediaKeyError b) = js_eq a b

instance PToJSVal MediaKeyError where
  pToJSVal = unMediaKeyError
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyError where
  pFromJSVal = MediaKeyError
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyError where
  toJSVal = return . unMediaKeyError
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyError where
  fromJSVal = return . fmap MediaKeyError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaKeyError where
  toGObject = GObject . unMediaKeyError
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeyError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeyError :: IsGObject obj => obj -> MediaKeyError
castToMediaKeyError = castTo gTypeMediaKeyError "MediaKeyError"

foreign import javascript unsafe "window[\"WebKitMediaKeyError\"]" gTypeMediaKeyError :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent Mozilla MediaKeyEvent documentation>
newtype MediaKeyEvent = MediaKeyEvent { unMediaKeyEvent :: JSVal }

instance Eq (MediaKeyEvent) where
  (MediaKeyEvent a) == (MediaKeyEvent b) = js_eq a b

instance PToJSVal MediaKeyEvent where
  pToJSVal = unMediaKeyEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyEvent where
  pFromJSVal = MediaKeyEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyEvent where
  toJSVal = return . unMediaKeyEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyEvent where
  fromJSVal = return . fmap MediaKeyEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MediaKeyEvent
instance IsGObject MediaKeyEvent where
  toGObject = GObject . unMediaKeyEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeyEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeyEvent :: IsGObject obj => obj -> MediaKeyEvent
castToMediaKeyEvent = castTo gTypeMediaKeyEvent "MediaKeyEvent"

foreign import javascript unsafe "window[\"MediaKeyEvent\"]" gTypeMediaKeyEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyMessageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation>
newtype MediaKeyMessageEvent = MediaKeyMessageEvent { unMediaKeyMessageEvent :: JSVal }

instance Eq (MediaKeyMessageEvent) where
  (MediaKeyMessageEvent a) == (MediaKeyMessageEvent b) = js_eq a b

instance PToJSVal MediaKeyMessageEvent where
  pToJSVal = unMediaKeyMessageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyMessageEvent where
  pFromJSVal = MediaKeyMessageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyMessageEvent where
  toJSVal = return . unMediaKeyMessageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyMessageEvent where
  fromJSVal = return . fmap MediaKeyMessageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MediaKeyMessageEvent
instance IsGObject MediaKeyMessageEvent where
  toGObject = GObject . unMediaKeyMessageEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeyMessageEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeyMessageEvent :: IsGObject obj => obj -> MediaKeyMessageEvent
castToMediaKeyMessageEvent = castTo gTypeMediaKeyMessageEvent "MediaKeyMessageEvent"

foreign import javascript unsafe "window[\"WebKitMediaKeyMessageEvent\"]" gTypeMediaKeyMessageEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyNeededEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent Mozilla MediaKeyNeededEvent documentation>
newtype MediaKeyNeededEvent = MediaKeyNeededEvent { unMediaKeyNeededEvent :: JSVal }

instance Eq (MediaKeyNeededEvent) where
  (MediaKeyNeededEvent a) == (MediaKeyNeededEvent b) = js_eq a b

instance PToJSVal MediaKeyNeededEvent where
  pToJSVal = unMediaKeyNeededEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeyNeededEvent where
  pFromJSVal = MediaKeyNeededEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeyNeededEvent where
  toJSVal = return . unMediaKeyNeededEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeyNeededEvent where
  fromJSVal = return . fmap MediaKeyNeededEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MediaKeyNeededEvent
instance IsGObject MediaKeyNeededEvent where
  toGObject = GObject . unMediaKeyNeededEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeyNeededEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeyNeededEvent :: IsGObject obj => obj -> MediaKeyNeededEvent
castToMediaKeyNeededEvent = castTo gTypeMediaKeyNeededEvent "MediaKeyNeededEvent"

foreign import javascript unsafe "window[\"MediaKeyNeededEvent\"]" gTypeMediaKeyNeededEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeySession".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession Mozilla WebKitMediaKeySession documentation>
newtype MediaKeySession = MediaKeySession { unMediaKeySession :: JSVal }

instance Eq (MediaKeySession) where
  (MediaKeySession a) == (MediaKeySession b) = js_eq a b

instance PToJSVal MediaKeySession where
  pToJSVal = unMediaKeySession
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeySession where
  pFromJSVal = MediaKeySession
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeySession where
  toJSVal = return . unMediaKeySession
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeySession where
  fromJSVal = return . fmap MediaKeySession . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget MediaKeySession
instance IsGObject MediaKeySession where
  toGObject = GObject . unMediaKeySession
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeySession . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeySession :: IsGObject obj => obj -> MediaKeySession
castToMediaKeySession = castTo gTypeMediaKeySession "MediaKeySession"

foreign import javascript unsafe "window[\"WebKitMediaKeySession\"]" gTypeMediaKeySession :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeys".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation>
newtype MediaKeys = MediaKeys { unMediaKeys :: JSVal }

instance Eq (MediaKeys) where
  (MediaKeys a) == (MediaKeys b) = js_eq a b

instance PToJSVal MediaKeys where
  pToJSVal = unMediaKeys
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaKeys where
  pFromJSVal = MediaKeys
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaKeys where
  toJSVal = return . unMediaKeys
  {-# INLINE toJSVal #-}

instance FromJSVal MediaKeys where
  fromJSVal = return . fmap MediaKeys . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaKeys where
  toGObject = GObject . unMediaKeys
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaKeys . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaKeys :: IsGObject obj => obj -> MediaKeys
castToMediaKeys = castTo gTypeMediaKeys "MediaKeys"

foreign import javascript unsafe "window[\"WebKitMediaKeys\"]" gTypeMediaKeys :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaList Mozilla MediaList documentation>
newtype MediaList = MediaList { unMediaList :: JSVal }

instance Eq (MediaList) where
  (MediaList a) == (MediaList b) = js_eq a b

instance PToJSVal MediaList where
  pToJSVal = unMediaList
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaList where
  pFromJSVal = MediaList
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaList where
  toJSVal = return . unMediaList
  {-# INLINE toJSVal #-}

instance FromJSVal MediaList where
  fromJSVal = return . fmap MediaList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaList where
  toGObject = GObject . unMediaList
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaList :: IsGObject obj => obj -> MediaList
castToMediaList = castTo gTypeMediaList "MediaList"

foreign import javascript unsafe "window[\"MediaList\"]" gTypeMediaList :: GType
#else
type IsMediaList o = MediaListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaQueryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList Mozilla MediaQueryList documentation>
newtype MediaQueryList = MediaQueryList { unMediaQueryList :: JSVal }

instance Eq (MediaQueryList) where
  (MediaQueryList a) == (MediaQueryList b) = js_eq a b

instance PToJSVal MediaQueryList where
  pToJSVal = unMediaQueryList
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaQueryList where
  pFromJSVal = MediaQueryList
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaQueryList where
  toJSVal = return . unMediaQueryList
  {-# INLINE toJSVal #-}

instance FromJSVal MediaQueryList where
  fromJSVal = return . fmap MediaQueryList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaQueryList where
  toGObject = GObject . unMediaQueryList
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaQueryList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaQueryList :: IsGObject obj => obj -> MediaQueryList
castToMediaQueryList = castTo gTypeMediaQueryList "MediaQueryList"

foreign import javascript unsafe "window[\"MediaQueryList\"]" gTypeMediaQueryList :: GType
#else
type IsMediaQueryList o = MediaQueryListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaSource".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation>
newtype MediaSource = MediaSource { unMediaSource :: JSVal }

instance Eq (MediaSource) where
  (MediaSource a) == (MediaSource b) = js_eq a b

instance PToJSVal MediaSource where
  pToJSVal = unMediaSource
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaSource where
  pFromJSVal = MediaSource
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaSource where
  toJSVal = return . unMediaSource
  {-# INLINE toJSVal #-}

instance FromJSVal MediaSource where
  fromJSVal = return . fmap MediaSource . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget MediaSource
instance IsGObject MediaSource where
  toGObject = GObject . unMediaSource
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaSource . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaSource :: IsGObject obj => obj -> MediaSource
castToMediaSource = castTo gTypeMediaSource "MediaSource"

foreign import javascript unsafe "window[\"MediaSource\"]" gTypeMediaSource :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaSourceStates".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaSourceStates Mozilla MediaSourceStates documentation>
newtype MediaSourceStates = MediaSourceStates { unMediaSourceStates :: JSVal }

instance Eq (MediaSourceStates) where
  (MediaSourceStates a) == (MediaSourceStates b) = js_eq a b

instance PToJSVal MediaSourceStates where
  pToJSVal = unMediaSourceStates
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaSourceStates where
  pFromJSVal = MediaSourceStates
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaSourceStates where
  toJSVal = return . unMediaSourceStates
  {-# INLINE toJSVal #-}

instance FromJSVal MediaSourceStates where
  fromJSVal = return . fmap MediaSourceStates . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaSourceStates where
  toGObject = GObject . unMediaSourceStates
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaSourceStates . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaSourceStates :: IsGObject obj => obj -> MediaSourceStates
castToMediaSourceStates = castTo gTypeMediaSourceStates "MediaSourceStates"

foreign import javascript unsafe "window[\"MediaSourceStates\"]" gTypeMediaSourceStates :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStream".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation>
newtype MediaStream = MediaStream { unMediaStream :: JSVal }

instance Eq (MediaStream) where
  (MediaStream a) == (MediaStream b) = js_eq a b

instance PToJSVal MediaStream where
  pToJSVal = unMediaStream
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStream where
  pFromJSVal = MediaStream
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStream where
  toJSVal = return . unMediaStream
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStream where
  fromJSVal = return . fmap MediaStream . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget MediaStream
instance IsGObject MediaStream where
  toGObject = GObject . unMediaStream
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStream . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStream :: IsGObject obj => obj -> MediaStream
castToMediaStream = castTo gTypeMediaStream "MediaStream"

foreign import javascript unsafe "window[\"webkitMediaStream\"]" gTypeMediaStream :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamAudioDestinationNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioDestinationNode Mozilla MediaStreamAudioDestinationNode documentation>
newtype MediaStreamAudioDestinationNode = MediaStreamAudioDestinationNode { unMediaStreamAudioDestinationNode :: JSVal }

instance Eq (MediaStreamAudioDestinationNode) where
  (MediaStreamAudioDestinationNode a) == (MediaStreamAudioDestinationNode b) = js_eq a b

instance PToJSVal MediaStreamAudioDestinationNode where
  pToJSVal = unMediaStreamAudioDestinationNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamAudioDestinationNode where
  pFromJSVal = MediaStreamAudioDestinationNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamAudioDestinationNode where
  toJSVal = return . unMediaStreamAudioDestinationNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamAudioDestinationNode where
  fromJSVal = return . fmap MediaStreamAudioDestinationNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode MediaStreamAudioDestinationNode
instance IsEventTarget MediaStreamAudioDestinationNode
instance IsGObject MediaStreamAudioDestinationNode where
  toGObject = GObject . unMediaStreamAudioDestinationNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamAudioDestinationNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamAudioDestinationNode :: IsGObject obj => obj -> MediaStreamAudioDestinationNode
castToMediaStreamAudioDestinationNode = castTo gTypeMediaStreamAudioDestinationNode "MediaStreamAudioDestinationNode"

foreign import javascript unsafe "window[\"MediaStreamAudioDestinationNode\"]" gTypeMediaStreamAudioDestinationNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamAudioSourceNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamAudioSourceNode Mozilla MediaStreamAudioSourceNode documentation>
newtype MediaStreamAudioSourceNode = MediaStreamAudioSourceNode { unMediaStreamAudioSourceNode :: JSVal }

instance Eq (MediaStreamAudioSourceNode) where
  (MediaStreamAudioSourceNode a) == (MediaStreamAudioSourceNode b) = js_eq a b

instance PToJSVal MediaStreamAudioSourceNode where
  pToJSVal = unMediaStreamAudioSourceNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamAudioSourceNode where
  pFromJSVal = MediaStreamAudioSourceNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamAudioSourceNode where
  toJSVal = return . unMediaStreamAudioSourceNode
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamAudioSourceNode where
  fromJSVal = return . fmap MediaStreamAudioSourceNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode MediaStreamAudioSourceNode
instance IsEventTarget MediaStreamAudioSourceNode
instance IsGObject MediaStreamAudioSourceNode where
  toGObject = GObject . unMediaStreamAudioSourceNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamAudioSourceNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamAudioSourceNode :: IsGObject obj => obj -> MediaStreamAudioSourceNode
castToMediaStreamAudioSourceNode = castTo gTypeMediaStreamAudioSourceNode "MediaStreamAudioSourceNode"

foreign import javascript unsafe "window[\"MediaStreamAudioSourceNode\"]" gTypeMediaStreamAudioSourceNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamCapabilities".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamCapabilities Mozilla MediaStreamCapabilities documentation>
newtype MediaStreamCapabilities = MediaStreamCapabilities { unMediaStreamCapabilities :: JSVal }

instance Eq (MediaStreamCapabilities) where
  (MediaStreamCapabilities a) == (MediaStreamCapabilities b) = js_eq a b

instance PToJSVal MediaStreamCapabilities where
  pToJSVal = unMediaStreamCapabilities
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamCapabilities where
  pFromJSVal = MediaStreamCapabilities
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamCapabilities where
  toJSVal = return . unMediaStreamCapabilities
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamCapabilities where
  fromJSVal = return . fmap MediaStreamCapabilities . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsMediaStreamCapabilities o
toMediaStreamCapabilities :: IsMediaStreamCapabilities o => o -> MediaStreamCapabilities
toMediaStreamCapabilities = unsafeCastGObject . toGObject

instance IsMediaStreamCapabilities MediaStreamCapabilities
instance IsGObject MediaStreamCapabilities where
  toGObject = GObject . unMediaStreamCapabilities
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamCapabilities . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamCapabilities :: IsGObject obj => obj -> MediaStreamCapabilities
castToMediaStreamCapabilities = castTo gTypeMediaStreamCapabilities "MediaStreamCapabilities"

foreign import javascript unsafe "window[\"MediaStreamCapabilities\"]" gTypeMediaStreamCapabilities :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent Mozilla MediaStreamEvent documentation>
newtype MediaStreamEvent = MediaStreamEvent { unMediaStreamEvent :: JSVal }

instance Eq (MediaStreamEvent) where
  (MediaStreamEvent a) == (MediaStreamEvent b) = js_eq a b

instance PToJSVal MediaStreamEvent where
  pToJSVal = unMediaStreamEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamEvent where
  pFromJSVal = MediaStreamEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamEvent where
  toJSVal = return . unMediaStreamEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamEvent where
  fromJSVal = return . fmap MediaStreamEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MediaStreamEvent
instance IsGObject MediaStreamEvent where
  toGObject = GObject . unMediaStreamEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamEvent :: IsGObject obj => obj -> MediaStreamEvent
castToMediaStreamEvent = castTo gTypeMediaStreamEvent "MediaStreamEvent"

foreign import javascript unsafe "window[\"MediaStreamEvent\"]" gTypeMediaStreamEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack Mozilla MediaStreamTrack documentation>
newtype MediaStreamTrack = MediaStreamTrack { unMediaStreamTrack :: JSVal }

instance Eq (MediaStreamTrack) where
  (MediaStreamTrack a) == (MediaStreamTrack b) = js_eq a b

instance PToJSVal MediaStreamTrack where
  pToJSVal = unMediaStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamTrack where
  pFromJSVal = MediaStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamTrack where
  toJSVal = return . unMediaStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamTrack where
  fromJSVal = return . fmap MediaStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsMediaStreamTrack o
toMediaStreamTrack :: IsMediaStreamTrack o => o -> MediaStreamTrack
toMediaStreamTrack = unsafeCastGObject . toGObject

instance IsMediaStreamTrack MediaStreamTrack
instance IsEventTarget MediaStreamTrack
instance IsGObject MediaStreamTrack where
  toGObject = GObject . unMediaStreamTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamTrack :: IsGObject obj => obj -> MediaStreamTrack
castToMediaStreamTrack = castTo gTypeMediaStreamTrack "MediaStreamTrack"

foreign import javascript unsafe "window[\"MediaStreamTrack\"]" gTypeMediaStreamTrack :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrackEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent Mozilla MediaStreamTrackEvent documentation>
newtype MediaStreamTrackEvent = MediaStreamTrackEvent { unMediaStreamTrackEvent :: JSVal }

instance Eq (MediaStreamTrackEvent) where
  (MediaStreamTrackEvent a) == (MediaStreamTrackEvent b) = js_eq a b

instance PToJSVal MediaStreamTrackEvent where
  pToJSVal = unMediaStreamTrackEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaStreamTrackEvent where
  pFromJSVal = MediaStreamTrackEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaStreamTrackEvent where
  toJSVal = return . unMediaStreamTrackEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MediaStreamTrackEvent where
  fromJSVal = return . fmap MediaStreamTrackEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MediaStreamTrackEvent
instance IsGObject MediaStreamTrackEvent where
  toGObject = GObject . unMediaStreamTrackEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaStreamTrackEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaStreamTrackEvent :: IsGObject obj => obj -> MediaStreamTrackEvent
castToMediaStreamTrackEvent = castTo gTypeMediaStreamTrackEvent "MediaStreamTrackEvent"

foreign import javascript unsafe "window[\"MediaStreamTrackEvent\"]" gTypeMediaStreamTrackEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraint Mozilla MediaTrackConstraint documentation>
newtype MediaTrackConstraint = MediaTrackConstraint { unMediaTrackConstraint :: JSVal }

instance Eq (MediaTrackConstraint) where
  (MediaTrackConstraint a) == (MediaTrackConstraint b) = js_eq a b

instance PToJSVal MediaTrackConstraint where
  pToJSVal = unMediaTrackConstraint
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraint where
  pFromJSVal = MediaTrackConstraint
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraint where
  toJSVal = return . unMediaTrackConstraint
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraint where
  fromJSVal = return . fmap MediaTrackConstraint . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaTrackConstraint where
  toGObject = GObject . unMediaTrackConstraint
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaTrackConstraint . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaTrackConstraint :: IsGObject obj => obj -> MediaTrackConstraint
castToMediaTrackConstraint = castTo gTypeMediaTrackConstraint "MediaTrackConstraint"

foreign import javascript unsafe "window[\"MediaTrackConstraint\"]" gTypeMediaTrackConstraint :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraintSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraintSet Mozilla MediaTrackConstraintSet documentation>
newtype MediaTrackConstraintSet = MediaTrackConstraintSet { unMediaTrackConstraintSet :: JSVal }

instance Eq (MediaTrackConstraintSet) where
  (MediaTrackConstraintSet a) == (MediaTrackConstraintSet b) = js_eq a b

instance PToJSVal MediaTrackConstraintSet where
  pToJSVal = unMediaTrackConstraintSet
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraintSet where
  pFromJSVal = MediaTrackConstraintSet
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraintSet where
  toJSVal = return . unMediaTrackConstraintSet
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraintSet where
  fromJSVal = return . fmap MediaTrackConstraintSet . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaTrackConstraintSet where
  toGObject = GObject . unMediaTrackConstraintSet
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaTrackConstraintSet . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaTrackConstraintSet :: IsGObject obj => obj -> MediaTrackConstraintSet
castToMediaTrackConstraintSet = castTo gTypeMediaTrackConstraintSet "MediaTrackConstraintSet"

foreign import javascript unsafe "window[\"MediaTrackConstraintSet\"]" gTypeMediaTrackConstraintSet :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaTrackConstraints".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints Mozilla MediaTrackConstraints documentation>
newtype MediaTrackConstraints = MediaTrackConstraints { unMediaTrackConstraints :: JSVal }

instance Eq (MediaTrackConstraints) where
  (MediaTrackConstraints a) == (MediaTrackConstraints b) = js_eq a b

instance PToJSVal MediaTrackConstraints where
  pToJSVal = unMediaTrackConstraints
  {-# INLINE pToJSVal #-}

instance PFromJSVal MediaTrackConstraints where
  pFromJSVal = MediaTrackConstraints
  {-# INLINE pFromJSVal #-}

instance ToJSVal MediaTrackConstraints where
  toJSVal = return . unMediaTrackConstraints
  {-# INLINE toJSVal #-}

instance FromJSVal MediaTrackConstraints where
  fromJSVal = return . fmap MediaTrackConstraints . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MediaTrackConstraints where
  toGObject = GObject . unMediaTrackConstraints
  {-# INLINE toGObject #-}
  unsafeCastGObject = MediaTrackConstraints . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMediaTrackConstraints :: IsGObject obj => obj -> MediaTrackConstraints
castToMediaTrackConstraints = castTo gTypeMediaTrackConstraints "MediaTrackConstraints"

foreign import javascript unsafe "window[\"MediaTrackConstraints\"]" gTypeMediaTrackConstraints :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MemoryInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MemoryInfo Mozilla MemoryInfo documentation>
newtype MemoryInfo = MemoryInfo { unMemoryInfo :: JSVal }

instance Eq (MemoryInfo) where
  (MemoryInfo a) == (MemoryInfo b) = js_eq a b

instance PToJSVal MemoryInfo where
  pToJSVal = unMemoryInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal MemoryInfo where
  pFromJSVal = MemoryInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal MemoryInfo where
  toJSVal = return . unMemoryInfo
  {-# INLINE toJSVal #-}

instance FromJSVal MemoryInfo where
  fromJSVal = return . fmap MemoryInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MemoryInfo where
  toGObject = GObject . unMemoryInfo
  {-# INLINE toGObject #-}
  unsafeCastGObject = MemoryInfo . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMemoryInfo :: IsGObject obj => obj -> MemoryInfo
castToMemoryInfo = castTo gTypeMemoryInfo "MemoryInfo"

foreign import javascript unsafe "window[\"MemoryInfo\"]" gTypeMemoryInfo :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessageChannel".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageChannel Mozilla MessageChannel documentation>
newtype MessageChannel = MessageChannel { unMessageChannel :: JSVal }

instance Eq (MessageChannel) where
  (MessageChannel a) == (MessageChannel b) = js_eq a b

instance PToJSVal MessageChannel where
  pToJSVal = unMessageChannel
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessageChannel where
  pFromJSVal = MessageChannel
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessageChannel where
  toJSVal = return . unMessageChannel
  {-# INLINE toJSVal #-}

instance FromJSVal MessageChannel where
  fromJSVal = return . fmap MessageChannel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MessageChannel where
  toGObject = GObject . unMessageChannel
  {-# INLINE toGObject #-}
  unsafeCastGObject = MessageChannel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMessageChannel :: IsGObject obj => obj -> MessageChannel
castToMessageChannel = castTo gTypeMessageChannel "MessageChannel"

foreign import javascript unsafe "window[\"MessageChannel\"]" gTypeMessageChannel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessageEvent Mozilla MessageEvent documentation>
newtype MessageEvent = MessageEvent { unMessageEvent :: JSVal }

instance Eq (MessageEvent) where
  (MessageEvent a) == (MessageEvent b) = js_eq a b

instance PToJSVal MessageEvent where
  pToJSVal = unMessageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessageEvent where
  pFromJSVal = MessageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessageEvent where
  toJSVal = return . unMessageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MessageEvent where
  fromJSVal = return . fmap MessageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MessageEvent
instance IsGObject MessageEvent where
  toGObject = GObject . unMessageEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MessageEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMessageEvent :: IsGObject obj => obj -> MessageEvent
castToMessageEvent = castTo gTypeMessageEvent "MessageEvent"

foreign import javascript unsafe "window[\"MessageEvent\"]" gTypeMessageEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessagePort".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort Mozilla MessagePort documentation>
newtype MessagePort = MessagePort { unMessagePort :: JSVal }

instance Eq (MessagePort) where
  (MessagePort a) == (MessagePort b) = js_eq a b

instance PToJSVal MessagePort where
  pToJSVal = unMessagePort
  {-# INLINE pToJSVal #-}

instance PFromJSVal MessagePort where
  pFromJSVal = MessagePort
  {-# INLINE pFromJSVal #-}

instance ToJSVal MessagePort where
  toJSVal = return . unMessagePort
  {-# INLINE toJSVal #-}

instance FromJSVal MessagePort where
  fromJSVal = return . fmap MessagePort . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget MessagePort
instance IsGObject MessagePort where
  toGObject = GObject . unMessagePort
  {-# INLINE toGObject #-}
  unsafeCastGObject = MessagePort . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMessagePort :: IsGObject obj => obj -> MessagePort
castToMessagePort = castTo gTypeMessagePort "MessagePort"

foreign import javascript unsafe "window[\"MessagePort\"]" gTypeMessagePort :: GType
#else
type IsMessagePort o = MessagePortClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MimeType".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeType Mozilla MimeType documentation>
newtype MimeType = MimeType { unMimeType :: JSVal }

instance Eq (MimeType) where
  (MimeType a) == (MimeType b) = js_eq a b

instance PToJSVal MimeType where
  pToJSVal = unMimeType
  {-# INLINE pToJSVal #-}

instance PFromJSVal MimeType where
  pFromJSVal = MimeType
  {-# INLINE pFromJSVal #-}

instance ToJSVal MimeType where
  toJSVal = return . unMimeType
  {-# INLINE toJSVal #-}

instance FromJSVal MimeType where
  fromJSVal = return . fmap MimeType . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MimeType where
  toGObject = GObject . unMimeType
  {-# INLINE toGObject #-}
  unsafeCastGObject = MimeType . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMimeType :: IsGObject obj => obj -> MimeType
castToMimeType = castTo gTypeMimeType "MimeType"

foreign import javascript unsafe "window[\"MimeType\"]" gTypeMimeType :: GType
#else
type IsMimeType o = MimeTypeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MimeTypeArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray Mozilla MimeTypeArray documentation>
newtype MimeTypeArray = MimeTypeArray { unMimeTypeArray :: JSVal }

instance Eq (MimeTypeArray) where
  (MimeTypeArray a) == (MimeTypeArray b) = js_eq a b

instance PToJSVal MimeTypeArray where
  pToJSVal = unMimeTypeArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal MimeTypeArray where
  pFromJSVal = MimeTypeArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal MimeTypeArray where
  toJSVal = return . unMimeTypeArray
  {-# INLINE toJSVal #-}

instance FromJSVal MimeTypeArray where
  fromJSVal = return . fmap MimeTypeArray . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MimeTypeArray where
  toGObject = GObject . unMimeTypeArray
  {-# INLINE toGObject #-}
  unsafeCastGObject = MimeTypeArray . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMimeTypeArray :: IsGObject obj => obj -> MimeTypeArray
castToMimeTypeArray = castTo gTypeMimeTypeArray "MimeTypeArray"

foreign import javascript unsafe "window[\"MimeTypeArray\"]" gTypeMimeTypeArray :: GType
#else
type IsMimeTypeArray o = MimeTypeArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MouseEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent Mozilla MouseEvent documentation>
newtype MouseEvent = MouseEvent { unMouseEvent :: JSVal }

instance Eq (MouseEvent) where
  (MouseEvent a) == (MouseEvent b) = js_eq a b

instance PToJSVal MouseEvent where
  pToJSVal = unMouseEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MouseEvent where
  pFromJSVal = MouseEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MouseEvent where
  toJSVal = return . unMouseEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MouseEvent where
  fromJSVal = return . fmap MouseEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsUIEvent o => IsMouseEvent o
toMouseEvent :: IsMouseEvent o => o -> MouseEvent
toMouseEvent = unsafeCastGObject . toGObject

instance IsMouseEvent MouseEvent
instance IsUIEvent MouseEvent
instance IsEvent MouseEvent
instance IsGObject MouseEvent where
  toGObject = GObject . unMouseEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MouseEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMouseEvent :: IsGObject obj => obj -> MouseEvent
castToMouseEvent = castTo gTypeMouseEvent "MouseEvent"

foreign import javascript unsafe "window[\"MouseEvent\"]" gTypeMouseEvent :: GType
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
newtype MutationEvent = MutationEvent { unMutationEvent :: JSVal }

instance Eq (MutationEvent) where
  (MutationEvent a) == (MutationEvent b) = js_eq a b

instance PToJSVal MutationEvent where
  pToJSVal = unMutationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationEvent where
  pFromJSVal = MutationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationEvent where
  toJSVal = return . unMutationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal MutationEvent where
  fromJSVal = return . fmap MutationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent MutationEvent
instance IsGObject MutationEvent where
  toGObject = GObject . unMutationEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = MutationEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMutationEvent :: IsGObject obj => obj -> MutationEvent
castToMutationEvent = castTo gTypeMutationEvent "MutationEvent"

foreign import javascript unsafe "window[\"MutationEvent\"]" gTypeMutationEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MutationObserver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation>
newtype MutationObserver = MutationObserver { unMutationObserver :: JSVal }

instance Eq (MutationObserver) where
  (MutationObserver a) == (MutationObserver b) = js_eq a b

instance PToJSVal MutationObserver where
  pToJSVal = unMutationObserver
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationObserver where
  pFromJSVal = MutationObserver
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationObserver where
  toJSVal = return . unMutationObserver
  {-# INLINE toJSVal #-}

instance FromJSVal MutationObserver where
  fromJSVal = return . fmap MutationObserver . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MutationObserver where
  toGObject = GObject . unMutationObserver
  {-# INLINE toGObject #-}
  unsafeCastGObject = MutationObserver . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMutationObserver :: IsGObject obj => obj -> MutationObserver
castToMutationObserver = castTo gTypeMutationObserver "MutationObserver"

foreign import javascript unsafe "window[\"MutationObserver\"]" gTypeMutationObserver :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MutationRecord".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationRecord Mozilla MutationRecord documentation>
newtype MutationRecord = MutationRecord { unMutationRecord :: JSVal }

instance Eq (MutationRecord) where
  (MutationRecord a) == (MutationRecord b) = js_eq a b

instance PToJSVal MutationRecord where
  pToJSVal = unMutationRecord
  {-# INLINE pToJSVal #-}

instance PFromJSVal MutationRecord where
  pFromJSVal = MutationRecord
  {-# INLINE pFromJSVal #-}

instance ToJSVal MutationRecord where
  toJSVal = return . unMutationRecord
  {-# INLINE toJSVal #-}

instance FromJSVal MutationRecord where
  fromJSVal = return . fmap MutationRecord . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject MutationRecord where
  toGObject = GObject . unMutationRecord
  {-# INLINE toGObject #-}
  unsafeCastGObject = MutationRecord . unGObject
  {-# INLINE unsafeCastGObject #-}

castToMutationRecord :: IsGObject obj => obj -> MutationRecord
castToMutationRecord = castTo gTypeMutationRecord "MutationRecord"

foreign import javascript unsafe "window[\"MutationRecord\"]" gTypeMutationRecord :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NamedNodeMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap Mozilla NamedNodeMap documentation>
newtype NamedNodeMap = NamedNodeMap { unNamedNodeMap :: JSVal }

instance Eq (NamedNodeMap) where
  (NamedNodeMap a) == (NamedNodeMap b) = js_eq a b

instance PToJSVal NamedNodeMap where
  pToJSVal = unNamedNodeMap
  {-# INLINE pToJSVal #-}

instance PFromJSVal NamedNodeMap where
  pFromJSVal = NamedNodeMap
  {-# INLINE pFromJSVal #-}

instance ToJSVal NamedNodeMap where
  toJSVal = return . unNamedNodeMap
  {-# INLINE toJSVal #-}

instance FromJSVal NamedNodeMap where
  fromJSVal = return . fmap NamedNodeMap . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject NamedNodeMap where
  toGObject = GObject . unNamedNodeMap
  {-# INLINE toGObject #-}
  unsafeCastGObject = NamedNodeMap . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNamedNodeMap :: IsGObject obj => obj -> NamedNodeMap
castToNamedNodeMap = castTo gTypeNamedNodeMap "NamedNodeMap"

foreign import javascript unsafe "window[\"NamedNodeMap\"]" gTypeNamedNodeMap :: GType
#else
type IsNamedNodeMap o = NamedNodeMapClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Navigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Navigator Mozilla Navigator documentation>
newtype Navigator = Navigator { unNavigator :: JSVal }

instance Eq (Navigator) where
  (Navigator a) == (Navigator b) = js_eq a b

instance PToJSVal Navigator where
  pToJSVal = unNavigator
  {-# INLINE pToJSVal #-}

instance PFromJSVal Navigator where
  pFromJSVal = Navigator
  {-# INLINE pFromJSVal #-}

instance ToJSVal Navigator where
  toJSVal = return . unNavigator
  {-# INLINE toJSVal #-}

instance FromJSVal Navigator where
  fromJSVal = return . fmap Navigator . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Navigator where
  toGObject = GObject . unNavigator
  {-# INLINE toGObject #-}
  unsafeCastGObject = Navigator . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNavigator :: IsGObject obj => obj -> Navigator
castToNavigator = castTo gTypeNavigator "Navigator"

foreign import javascript unsafe "window[\"Navigator\"]" gTypeNavigator :: GType
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
newtype NavigatorUserMediaError = NavigatorUserMediaError { unNavigatorUserMediaError :: JSVal }

instance Eq (NavigatorUserMediaError) where
  (NavigatorUserMediaError a) == (NavigatorUserMediaError b) = js_eq a b

instance PToJSVal NavigatorUserMediaError where
  pToJSVal = unNavigatorUserMediaError
  {-# INLINE pToJSVal #-}

instance PFromJSVal NavigatorUserMediaError where
  pFromJSVal = NavigatorUserMediaError
  {-# INLINE pFromJSVal #-}

instance ToJSVal NavigatorUserMediaError where
  toJSVal = return . unNavigatorUserMediaError
  {-# INLINE toJSVal #-}

instance FromJSVal NavigatorUserMediaError where
  fromJSVal = return . fmap NavigatorUserMediaError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsDOMError NavigatorUserMediaError
instance IsGObject NavigatorUserMediaError where
  toGObject = GObject . unNavigatorUserMediaError
  {-# INLINE toGObject #-}
  unsafeCastGObject = NavigatorUserMediaError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNavigatorUserMediaError :: IsGObject obj => obj -> NavigatorUserMediaError
castToNavigatorUserMediaError = castTo gTypeNavigatorUserMediaError "NavigatorUserMediaError"

foreign import javascript unsafe "window[\"NavigatorUserMediaError\"]" gTypeNavigatorUserMediaError :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Node".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Node Mozilla Node documentation>
newtype Node = Node { unNode :: JSVal }

instance Eq (Node) where
  (Node a) == (Node b) = js_eq a b

instance PToJSVal Node where
  pToJSVal = unNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal Node where
  pFromJSVal = Node
  {-# INLINE pFromJSVal #-}

instance ToJSVal Node where
  toJSVal = return . unNode
  {-# INLINE toJSVal #-}

instance FromJSVal Node where
  fromJSVal = return . fmap Node . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsNode o
toNode :: IsNode o => o -> Node
toNode = unsafeCastGObject . toGObject

instance IsNode Node
instance IsEventTarget Node
instance IsGObject Node where
  toGObject = GObject . unNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = Node . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNode :: IsGObject obj => obj -> Node
castToNode = castTo gTypeNode "Node"

foreign import javascript unsafe "window[\"Node\"]" gTypeNode :: GType
#else
type IsNode o = NodeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeFilter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation>
newtype NodeFilter = NodeFilter { unNodeFilter :: JSVal }

instance Eq (NodeFilter) where
  (NodeFilter a) == (NodeFilter b) = js_eq a b

instance PToJSVal NodeFilter where
  pToJSVal = unNodeFilter
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeFilter where
  pFromJSVal = NodeFilter
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeFilter where
  toJSVal = return . unNodeFilter
  {-# INLINE toJSVal #-}

instance FromJSVal NodeFilter where
  fromJSVal = return . fmap NodeFilter . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject NodeFilter where
  toGObject = GObject . unNodeFilter
  {-# INLINE toGObject #-}
  unsafeCastGObject = NodeFilter . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNodeFilter :: IsGObject obj => obj -> NodeFilter
castToNodeFilter = castTo gTypeNodeFilter "NodeFilter"

foreign import javascript unsafe "window[\"NodeFilter\"]" gTypeNodeFilter :: GType
#else
type IsNodeFilter o = NodeFilterClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeIterator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator Mozilla NodeIterator documentation>
newtype NodeIterator = NodeIterator { unNodeIterator :: JSVal }

instance Eq (NodeIterator) where
  (NodeIterator a) == (NodeIterator b) = js_eq a b

instance PToJSVal NodeIterator where
  pToJSVal = unNodeIterator
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeIterator where
  pFromJSVal = NodeIterator
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeIterator where
  toJSVal = return . unNodeIterator
  {-# INLINE toJSVal #-}

instance FromJSVal NodeIterator where
  fromJSVal = return . fmap NodeIterator . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject NodeIterator where
  toGObject = GObject . unNodeIterator
  {-# INLINE toGObject #-}
  unsafeCastGObject = NodeIterator . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNodeIterator :: IsGObject obj => obj -> NodeIterator
castToNodeIterator = castTo gTypeNodeIterator "NodeIterator"

foreign import javascript unsafe "window[\"NodeIterator\"]" gTypeNodeIterator :: GType
#else
type IsNodeIterator o = NodeIteratorClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NodeList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeList Mozilla NodeList documentation>
newtype NodeList = NodeList { unNodeList :: JSVal }

instance Eq (NodeList) where
  (NodeList a) == (NodeList b) = js_eq a b

instance PToJSVal NodeList where
  pToJSVal = unNodeList
  {-# INLINE pToJSVal #-}

instance PFromJSVal NodeList where
  pFromJSVal = NodeList
  {-# INLINE pFromJSVal #-}

instance ToJSVal NodeList where
  toJSVal = return . unNodeList
  {-# INLINE toJSVal #-}

instance FromJSVal NodeList where
  fromJSVal = return . fmap NodeList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsNodeList o
toNodeList :: IsNodeList o => o -> NodeList
toNodeList = unsafeCastGObject . toGObject

instance IsNodeList NodeList
instance IsGObject NodeList where
  toGObject = GObject . unNodeList
  {-# INLINE toGObject #-}
  unsafeCastGObject = NodeList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNodeList :: IsGObject obj => obj -> NodeList
castToNodeList = castTo gTypeNodeList "NodeList"

foreign import javascript unsafe "window[\"NodeList\"]" gTypeNodeList :: GType
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
newtype Notification = Notification { unNotification :: JSVal }

instance Eq (Notification) where
  (Notification a) == (Notification b) = js_eq a b

instance PToJSVal Notification where
  pToJSVal = unNotification
  {-# INLINE pToJSVal #-}

instance PFromJSVal Notification where
  pFromJSVal = Notification
  {-# INLINE pFromJSVal #-}

instance ToJSVal Notification where
  toJSVal = return . unNotification
  {-# INLINE toJSVal #-}

instance FromJSVal Notification where
  fromJSVal = return . fmap Notification . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget Notification
instance IsGObject Notification where
  toGObject = GObject . unNotification
  {-# INLINE toGObject #-}
  unsafeCastGObject = Notification . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNotification :: IsGObject obj => obj -> Notification
castToNotification = castTo gTypeNotification "Notification"

foreign import javascript unsafe "window[\"Notification\"]" gTypeNotification :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.NotificationCenter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter Mozilla NotificationCenter documentation>
newtype NotificationCenter = NotificationCenter { unNotificationCenter :: JSVal }

instance Eq (NotificationCenter) where
  (NotificationCenter a) == (NotificationCenter b) = js_eq a b

instance PToJSVal NotificationCenter where
  pToJSVal = unNotificationCenter
  {-# INLINE pToJSVal #-}

instance PFromJSVal NotificationCenter where
  pFromJSVal = NotificationCenter
  {-# INLINE pFromJSVal #-}

instance ToJSVal NotificationCenter where
  toJSVal = return . unNotificationCenter
  {-# INLINE toJSVal #-}

instance FromJSVal NotificationCenter where
  fromJSVal = return . fmap NotificationCenter . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject NotificationCenter where
  toGObject = GObject . unNotificationCenter
  {-# INLINE toGObject #-}
  unsafeCastGObject = NotificationCenter . unGObject
  {-# INLINE unsafeCastGObject #-}

castToNotificationCenter :: IsGObject obj => obj -> NotificationCenter
castToNotificationCenter = castTo gTypeNotificationCenter "NotificationCenter"

foreign import javascript unsafe "window[\"NotificationCenter\"]" gTypeNotificationCenter :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESElementIndexUint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESElementIndexUint Mozilla OESElementIndexUint documentation>
newtype OESElementIndexUint = OESElementIndexUint { unOESElementIndexUint :: JSVal }

instance Eq (OESElementIndexUint) where
  (OESElementIndexUint a) == (OESElementIndexUint b) = js_eq a b

instance PToJSVal OESElementIndexUint where
  pToJSVal = unOESElementIndexUint
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESElementIndexUint where
  pFromJSVal = OESElementIndexUint
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESElementIndexUint where
  toJSVal = return . unOESElementIndexUint
  {-# INLINE toJSVal #-}

instance FromJSVal OESElementIndexUint where
  fromJSVal = return . fmap OESElementIndexUint . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESElementIndexUint where
  toGObject = GObject . unOESElementIndexUint
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESElementIndexUint . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESElementIndexUint :: IsGObject obj => obj -> OESElementIndexUint
castToOESElementIndexUint = castTo gTypeOESElementIndexUint "OESElementIndexUint"

foreign import javascript unsafe "window[\"OESElementIndexUint\"]" gTypeOESElementIndexUint :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESStandardDerivatives".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESStandardDerivatives Mozilla OESStandardDerivatives documentation>
newtype OESStandardDerivatives = OESStandardDerivatives { unOESStandardDerivatives :: JSVal }

instance Eq (OESStandardDerivatives) where
  (OESStandardDerivatives a) == (OESStandardDerivatives b) = js_eq a b

instance PToJSVal OESStandardDerivatives where
  pToJSVal = unOESStandardDerivatives
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESStandardDerivatives where
  pFromJSVal = OESStandardDerivatives
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESStandardDerivatives where
  toJSVal = return . unOESStandardDerivatives
  {-# INLINE toJSVal #-}

instance FromJSVal OESStandardDerivatives where
  fromJSVal = return . fmap OESStandardDerivatives . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESStandardDerivatives where
  toGObject = GObject . unOESStandardDerivatives
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESStandardDerivatives . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESStandardDerivatives :: IsGObject obj => obj -> OESStandardDerivatives
castToOESStandardDerivatives = castTo gTypeOESStandardDerivatives "OESStandardDerivatives"

foreign import javascript unsafe "window[\"OESStandardDerivatives\"]" gTypeOESStandardDerivatives :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloat Mozilla OESTextureFloat documentation>
newtype OESTextureFloat = OESTextureFloat { unOESTextureFloat :: JSVal }

instance Eq (OESTextureFloat) where
  (OESTextureFloat a) == (OESTextureFloat b) = js_eq a b

instance PToJSVal OESTextureFloat where
  pToJSVal = unOESTextureFloat
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureFloat where
  pFromJSVal = OESTextureFloat
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureFloat where
  toJSVal = return . unOESTextureFloat
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureFloat where
  fromJSVal = return . fmap OESTextureFloat . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESTextureFloat where
  toGObject = GObject . unOESTextureFloat
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESTextureFloat . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESTextureFloat :: IsGObject obj => obj -> OESTextureFloat
castToOESTextureFloat = castTo gTypeOESTextureFloat "OESTextureFloat"

foreign import javascript unsafe "window[\"OESTextureFloat\"]" gTypeOESTextureFloat :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureFloatLinear Mozilla OESTextureFloatLinear documentation>
newtype OESTextureFloatLinear = OESTextureFloatLinear { unOESTextureFloatLinear :: JSVal }

instance Eq (OESTextureFloatLinear) where
  (OESTextureFloatLinear a) == (OESTextureFloatLinear b) = js_eq a b

instance PToJSVal OESTextureFloatLinear where
  pToJSVal = unOESTextureFloatLinear
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureFloatLinear where
  pFromJSVal = OESTextureFloatLinear
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureFloatLinear where
  toJSVal = return . unOESTextureFloatLinear
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureFloatLinear where
  fromJSVal = return . fmap OESTextureFloatLinear . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESTextureFloatLinear where
  toGObject = GObject . unOESTextureFloatLinear
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESTextureFloatLinear . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESTextureFloatLinear :: IsGObject obj => obj -> OESTextureFloatLinear
castToOESTextureFloatLinear = castTo gTypeOESTextureFloatLinear "OESTextureFloatLinear"

foreign import javascript unsafe "window[\"OESTextureFloatLinear\"]" gTypeOESTextureFloatLinear :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureHalfFloat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloat Mozilla OESTextureHalfFloat documentation>
newtype OESTextureHalfFloat = OESTextureHalfFloat { unOESTextureHalfFloat :: JSVal }

instance Eq (OESTextureHalfFloat) where
  (OESTextureHalfFloat a) == (OESTextureHalfFloat b) = js_eq a b

instance PToJSVal OESTextureHalfFloat where
  pToJSVal = unOESTextureHalfFloat
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureHalfFloat where
  pFromJSVal = OESTextureHalfFloat
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureHalfFloat where
  toJSVal = return . unOESTextureHalfFloat
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureHalfFloat where
  fromJSVal = return . fmap OESTextureHalfFloat . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESTextureHalfFloat where
  toGObject = GObject . unOESTextureHalfFloat
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESTextureHalfFloat . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESTextureHalfFloat :: IsGObject obj => obj -> OESTextureHalfFloat
castToOESTextureHalfFloat = castTo gTypeOESTextureHalfFloat "OESTextureHalfFloat"

foreign import javascript unsafe "window[\"OESTextureHalfFloat\"]" gTypeOESTextureHalfFloat :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESTextureHalfFloatLinear".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESTextureHalfFloatLinear Mozilla OESTextureHalfFloatLinear documentation>
newtype OESTextureHalfFloatLinear = OESTextureHalfFloatLinear { unOESTextureHalfFloatLinear :: JSVal }

instance Eq (OESTextureHalfFloatLinear) where
  (OESTextureHalfFloatLinear a) == (OESTextureHalfFloatLinear b) = js_eq a b

instance PToJSVal OESTextureHalfFloatLinear where
  pToJSVal = unOESTextureHalfFloatLinear
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESTextureHalfFloatLinear where
  pFromJSVal = OESTextureHalfFloatLinear
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESTextureHalfFloatLinear where
  toJSVal = return . unOESTextureHalfFloatLinear
  {-# INLINE toJSVal #-}

instance FromJSVal OESTextureHalfFloatLinear where
  fromJSVal = return . fmap OESTextureHalfFloatLinear . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESTextureHalfFloatLinear where
  toGObject = GObject . unOESTextureHalfFloatLinear
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESTextureHalfFloatLinear . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESTextureHalfFloatLinear :: IsGObject obj => obj -> OESTextureHalfFloatLinear
castToOESTextureHalfFloatLinear = castTo gTypeOESTextureHalfFloatLinear "OESTextureHalfFloatLinear"

foreign import javascript unsafe "window[\"OESTextureHalfFloatLinear\"]" gTypeOESTextureHalfFloatLinear :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OESVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject Mozilla OESVertexArrayObject documentation>
newtype OESVertexArrayObject = OESVertexArrayObject { unOESVertexArrayObject :: JSVal }

instance Eq (OESVertexArrayObject) where
  (OESVertexArrayObject a) == (OESVertexArrayObject b) = js_eq a b

instance PToJSVal OESVertexArrayObject where
  pToJSVal = unOESVertexArrayObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal OESVertexArrayObject where
  pFromJSVal = OESVertexArrayObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal OESVertexArrayObject where
  toJSVal = return . unOESVertexArrayObject
  {-# INLINE toJSVal #-}

instance FromJSVal OESVertexArrayObject where
  fromJSVal = return . fmap OESVertexArrayObject . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject OESVertexArrayObject where
  toGObject = GObject . unOESVertexArrayObject
  {-# INLINE toGObject #-}
  unsafeCastGObject = OESVertexArrayObject . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOESVertexArrayObject :: IsGObject obj => obj -> OESVertexArrayObject
castToOESVertexArrayObject = castTo gTypeOESVertexArrayObject "OESVertexArrayObject"

foreign import javascript unsafe "window[\"OESVertexArrayObject\"]" gTypeOESVertexArrayObject :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OfflineAudioCompletionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent Mozilla OfflineAudioCompletionEvent documentation>
newtype OfflineAudioCompletionEvent = OfflineAudioCompletionEvent { unOfflineAudioCompletionEvent :: JSVal }

instance Eq (OfflineAudioCompletionEvent) where
  (OfflineAudioCompletionEvent a) == (OfflineAudioCompletionEvent b) = js_eq a b

instance PToJSVal OfflineAudioCompletionEvent where
  pToJSVal = unOfflineAudioCompletionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal OfflineAudioCompletionEvent where
  pFromJSVal = OfflineAudioCompletionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal OfflineAudioCompletionEvent where
  toJSVal = return . unOfflineAudioCompletionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal OfflineAudioCompletionEvent where
  fromJSVal = return . fmap OfflineAudioCompletionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent OfflineAudioCompletionEvent
instance IsGObject OfflineAudioCompletionEvent where
  toGObject = GObject . unOfflineAudioCompletionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = OfflineAudioCompletionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOfflineAudioCompletionEvent :: IsGObject obj => obj -> OfflineAudioCompletionEvent
castToOfflineAudioCompletionEvent = castTo gTypeOfflineAudioCompletionEvent "OfflineAudioCompletionEvent"

foreign import javascript unsafe "window[\"OfflineAudioCompletionEvent\"]" gTypeOfflineAudioCompletionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OfflineAudioContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioContext"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioContext Mozilla OfflineAudioContext documentation>
newtype OfflineAudioContext = OfflineAudioContext { unOfflineAudioContext :: JSVal }

instance Eq (OfflineAudioContext) where
  (OfflineAudioContext a) == (OfflineAudioContext b) = js_eq a b

instance PToJSVal OfflineAudioContext where
  pToJSVal = unOfflineAudioContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal OfflineAudioContext where
  pFromJSVal = OfflineAudioContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal OfflineAudioContext where
  toJSVal = return . unOfflineAudioContext
  {-# INLINE toJSVal #-}

instance FromJSVal OfflineAudioContext where
  fromJSVal = return . fmap OfflineAudioContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioContext OfflineAudioContext
instance IsEventTarget OfflineAudioContext
instance IsGObject OfflineAudioContext where
  toGObject = GObject . unOfflineAudioContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = OfflineAudioContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOfflineAudioContext :: IsGObject obj => obj -> OfflineAudioContext
castToOfflineAudioContext = castTo gTypeOfflineAudioContext "OfflineAudioContext"

foreign import javascript unsafe "window[\"OfflineAudioContext\"]" gTypeOfflineAudioContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OscillatorNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode Mozilla OscillatorNode documentation>
newtype OscillatorNode = OscillatorNode { unOscillatorNode :: JSVal }

instance Eq (OscillatorNode) where
  (OscillatorNode a) == (OscillatorNode b) = js_eq a b

instance PToJSVal OscillatorNode where
  pToJSVal = unOscillatorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal OscillatorNode where
  pFromJSVal = OscillatorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal OscillatorNode where
  toJSVal = return . unOscillatorNode
  {-# INLINE toJSVal #-}

instance FromJSVal OscillatorNode where
  fromJSVal = return . fmap OscillatorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode OscillatorNode
instance IsEventTarget OscillatorNode
instance IsGObject OscillatorNode where
  toGObject = GObject . unOscillatorNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = OscillatorNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOscillatorNode :: IsGObject obj => obj -> OscillatorNode
castToOscillatorNode = castTo gTypeOscillatorNode "OscillatorNode"

foreign import javascript unsafe "window[\"OscillatorNode\"]" gTypeOscillatorNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.OverflowEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent Mozilla OverflowEvent documentation>
newtype OverflowEvent = OverflowEvent { unOverflowEvent :: JSVal }

instance Eq (OverflowEvent) where
  (OverflowEvent a) == (OverflowEvent b) = js_eq a b

instance PToJSVal OverflowEvent where
  pToJSVal = unOverflowEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal OverflowEvent where
  pFromJSVal = OverflowEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal OverflowEvent where
  toJSVal = return . unOverflowEvent
  {-# INLINE toJSVal #-}

instance FromJSVal OverflowEvent where
  fromJSVal = return . fmap OverflowEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent OverflowEvent
instance IsGObject OverflowEvent where
  toGObject = GObject . unOverflowEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = OverflowEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToOverflowEvent :: IsGObject obj => obj -> OverflowEvent
castToOverflowEvent = castTo gTypeOverflowEvent "OverflowEvent"

foreign import javascript unsafe "window[\"OverflowEvent\"]" gTypeOverflowEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PageTransitionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent Mozilla PageTransitionEvent documentation>
newtype PageTransitionEvent = PageTransitionEvent { unPageTransitionEvent :: JSVal }

instance Eq (PageTransitionEvent) where
  (PageTransitionEvent a) == (PageTransitionEvent b) = js_eq a b

instance PToJSVal PageTransitionEvent where
  pToJSVal = unPageTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal PageTransitionEvent where
  pFromJSVal = PageTransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal PageTransitionEvent where
  toJSVal = return . unPageTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal PageTransitionEvent where
  fromJSVal = return . fmap PageTransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent PageTransitionEvent
instance IsGObject PageTransitionEvent where
  toGObject = GObject . unPageTransitionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = PageTransitionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPageTransitionEvent :: IsGObject obj => obj -> PageTransitionEvent
castToPageTransitionEvent = castTo gTypePageTransitionEvent "PageTransitionEvent"

foreign import javascript unsafe "window[\"PageTransitionEvent\"]" gTypePageTransitionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PannerNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioPannerNode Mozilla webkitAudioPannerNode documentation>
newtype PannerNode = PannerNode { unPannerNode :: JSVal }

instance Eq (PannerNode) where
  (PannerNode a) == (PannerNode b) = js_eq a b

instance PToJSVal PannerNode where
  pToJSVal = unPannerNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal PannerNode where
  pFromJSVal = PannerNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal PannerNode where
  toJSVal = return . unPannerNode
  {-# INLINE toJSVal #-}

instance FromJSVal PannerNode where
  fromJSVal = return . fmap PannerNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode PannerNode
instance IsEventTarget PannerNode
instance IsGObject PannerNode where
  toGObject = GObject . unPannerNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = PannerNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPannerNode :: IsGObject obj => obj -> PannerNode
castToPannerNode = castTo gTypePannerNode "PannerNode"

foreign import javascript unsafe "window[\"webkitAudioPannerNode\"]" gTypePannerNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Path2D".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation>
newtype Path2D = Path2D { unPath2D :: JSVal }

instance Eq (Path2D) where
  (Path2D a) == (Path2D b) = js_eq a b

instance PToJSVal Path2D where
  pToJSVal = unPath2D
  {-# INLINE pToJSVal #-}

instance PFromJSVal Path2D where
  pFromJSVal = Path2D
  {-# INLINE pFromJSVal #-}

instance ToJSVal Path2D where
  toJSVal = return . unPath2D
  {-# INLINE toJSVal #-}

instance FromJSVal Path2D where
  fromJSVal = return . fmap Path2D . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Path2D where
  toGObject = GObject . unPath2D
  {-# INLINE toGObject #-}
  unsafeCastGObject = Path2D . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPath2D :: IsGObject obj => obj -> Path2D
castToPath2D = castTo gTypePath2D "Path2D"

foreign import javascript unsafe "window[\"Path2D\"]" gTypePath2D :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Performance".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Performance Mozilla Performance documentation>
newtype Performance = Performance { unPerformance :: JSVal }

instance Eq (Performance) where
  (Performance a) == (Performance b) = js_eq a b

instance PToJSVal Performance where
  pToJSVal = unPerformance
  {-# INLINE pToJSVal #-}

instance PFromJSVal Performance where
  pFromJSVal = Performance
  {-# INLINE pFromJSVal #-}

instance ToJSVal Performance where
  toJSVal = return . unPerformance
  {-# INLINE toJSVal #-}

instance FromJSVal Performance where
  fromJSVal = return . fmap Performance . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget Performance
instance IsGObject Performance where
  toGObject = GObject . unPerformance
  {-# INLINE toGObject #-}
  unsafeCastGObject = Performance . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformance :: IsGObject obj => obj -> Performance
castToPerformance = castTo gTypePerformance "Performance"

foreign import javascript unsafe "window[\"Performance\"]" gTypePerformance :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsPerformance o = PerformanceClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceEntry".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry Mozilla PerformanceEntry documentation>
newtype PerformanceEntry = PerformanceEntry { unPerformanceEntry :: JSVal }

instance Eq (PerformanceEntry) where
  (PerformanceEntry a) == (PerformanceEntry b) = js_eq a b

instance PToJSVal PerformanceEntry where
  pToJSVal = unPerformanceEntry
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceEntry where
  pFromJSVal = PerformanceEntry
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceEntry where
  toJSVal = return . unPerformanceEntry
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceEntry where
  fromJSVal = return . fmap PerformanceEntry . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsPerformanceEntry o
toPerformanceEntry :: IsPerformanceEntry o => o -> PerformanceEntry
toPerformanceEntry = unsafeCastGObject . toGObject

instance IsPerformanceEntry PerformanceEntry
instance IsGObject PerformanceEntry where
  toGObject = GObject . unPerformanceEntry
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceEntry . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceEntry :: IsGObject obj => obj -> PerformanceEntry
castToPerformanceEntry = castTo gTypePerformanceEntry "PerformanceEntry"

foreign import javascript unsafe "window[\"PerformanceEntry\"]" gTypePerformanceEntry :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceEntryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList Mozilla PerformanceEntryList documentation>
newtype PerformanceEntryList = PerformanceEntryList { unPerformanceEntryList :: JSVal }

instance Eq (PerformanceEntryList) where
  (PerformanceEntryList a) == (PerformanceEntryList b) = js_eq a b

instance PToJSVal PerformanceEntryList where
  pToJSVal = unPerformanceEntryList
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceEntryList where
  pFromJSVal = PerformanceEntryList
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceEntryList where
  toJSVal = return . unPerformanceEntryList
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceEntryList where
  fromJSVal = return . fmap PerformanceEntryList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PerformanceEntryList where
  toGObject = GObject . unPerformanceEntryList
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceEntryList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceEntryList :: IsGObject obj => obj -> PerformanceEntryList
castToPerformanceEntryList = castTo gTypePerformanceEntryList "PerformanceEntryList"

foreign import javascript unsafe "window[\"PerformanceEntryList\"]" gTypePerformanceEntryList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceMark".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMark Mozilla PerformanceMark documentation>
newtype PerformanceMark = PerformanceMark { unPerformanceMark :: JSVal }

instance Eq (PerformanceMark) where
  (PerformanceMark a) == (PerformanceMark b) = js_eq a b

instance PToJSVal PerformanceMark where
  pToJSVal = unPerformanceMark
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceMark where
  pFromJSVal = PerformanceMark
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceMark where
  toJSVal = return . unPerformanceMark
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceMark where
  fromJSVal = return . fmap PerformanceMark . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsPerformanceEntry PerformanceMark
instance IsGObject PerformanceMark where
  toGObject = GObject . unPerformanceMark
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceMark . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceMark :: IsGObject obj => obj -> PerformanceMark
castToPerformanceMark = castTo gTypePerformanceMark "PerformanceMark"

foreign import javascript unsafe "window[\"PerformanceMark\"]" gTypePerformanceMark :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceMeasure".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMeasure Mozilla PerformanceMeasure documentation>
newtype PerformanceMeasure = PerformanceMeasure { unPerformanceMeasure :: JSVal }

instance Eq (PerformanceMeasure) where
  (PerformanceMeasure a) == (PerformanceMeasure b) = js_eq a b

instance PToJSVal PerformanceMeasure where
  pToJSVal = unPerformanceMeasure
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceMeasure where
  pFromJSVal = PerformanceMeasure
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceMeasure where
  toJSVal = return . unPerformanceMeasure
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceMeasure where
  fromJSVal = return . fmap PerformanceMeasure . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsPerformanceEntry PerformanceMeasure
instance IsGObject PerformanceMeasure where
  toGObject = GObject . unPerformanceMeasure
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceMeasure . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceMeasure :: IsGObject obj => obj -> PerformanceMeasure
castToPerformanceMeasure = castTo gTypePerformanceMeasure "PerformanceMeasure"

foreign import javascript unsafe "window[\"PerformanceMeasure\"]" gTypePerformanceMeasure :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceNavigation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation Mozilla PerformanceNavigation documentation>
newtype PerformanceNavigation = PerformanceNavigation { unPerformanceNavigation :: JSVal }

instance Eq (PerformanceNavigation) where
  (PerformanceNavigation a) == (PerformanceNavigation b) = js_eq a b

instance PToJSVal PerformanceNavigation where
  pToJSVal = unPerformanceNavigation
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceNavigation where
  pFromJSVal = PerformanceNavigation
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceNavigation where
  toJSVal = return . unPerformanceNavigation
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceNavigation where
  fromJSVal = return . fmap PerformanceNavigation . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PerformanceNavigation where
  toGObject = GObject . unPerformanceNavigation
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceNavigation . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceNavigation :: IsGObject obj => obj -> PerformanceNavigation
castToPerformanceNavigation = castTo gTypePerformanceNavigation "PerformanceNavigation"

foreign import javascript unsafe "window[\"PerformanceNavigation\"]" gTypePerformanceNavigation :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsPerformanceNavigation o = PerformanceNavigationClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceResourceTiming".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.PerformanceEntry"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming Mozilla PerformanceResourceTiming documentation>
newtype PerformanceResourceTiming = PerformanceResourceTiming { unPerformanceResourceTiming :: JSVal }

instance Eq (PerformanceResourceTiming) where
  (PerformanceResourceTiming a) == (PerformanceResourceTiming b) = js_eq a b

instance PToJSVal PerformanceResourceTiming where
  pToJSVal = unPerformanceResourceTiming
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceResourceTiming where
  pFromJSVal = PerformanceResourceTiming
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceResourceTiming where
  toJSVal = return . unPerformanceResourceTiming
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceResourceTiming where
  fromJSVal = return . fmap PerformanceResourceTiming . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsPerformanceEntry PerformanceResourceTiming
instance IsGObject PerformanceResourceTiming where
  toGObject = GObject . unPerformanceResourceTiming
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceResourceTiming . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceResourceTiming :: IsGObject obj => obj -> PerformanceResourceTiming
castToPerformanceResourceTiming = castTo gTypePerformanceResourceTiming "PerformanceResourceTiming"

foreign import javascript unsafe "window[\"PerformanceResourceTiming\"]" gTypePerformanceResourceTiming :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PerformanceTiming".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming Mozilla PerformanceTiming documentation>
newtype PerformanceTiming = PerformanceTiming { unPerformanceTiming :: JSVal }

instance Eq (PerformanceTiming) where
  (PerformanceTiming a) == (PerformanceTiming b) = js_eq a b

instance PToJSVal PerformanceTiming where
  pToJSVal = unPerformanceTiming
  {-# INLINE pToJSVal #-}

instance PFromJSVal PerformanceTiming where
  pFromJSVal = PerformanceTiming
  {-# INLINE pFromJSVal #-}

instance ToJSVal PerformanceTiming where
  toJSVal = return . unPerformanceTiming
  {-# INLINE toJSVal #-}

instance FromJSVal PerformanceTiming where
  fromJSVal = return . fmap PerformanceTiming . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PerformanceTiming where
  toGObject = GObject . unPerformanceTiming
  {-# INLINE toGObject #-}
  unsafeCastGObject = PerformanceTiming . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPerformanceTiming :: IsGObject obj => obj -> PerformanceTiming
castToPerformanceTiming = castTo gTypePerformanceTiming "PerformanceTiming"

foreign import javascript unsafe "window[\"PerformanceTiming\"]" gTypePerformanceTiming :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsPerformanceTiming o = PerformanceTimingClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PeriodicWave".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PeriodicWave Mozilla PeriodicWave documentation>
newtype PeriodicWave = PeriodicWave { unPeriodicWave :: JSVal }

instance Eq (PeriodicWave) where
  (PeriodicWave a) == (PeriodicWave b) = js_eq a b

instance PToJSVal PeriodicWave where
  pToJSVal = unPeriodicWave
  {-# INLINE pToJSVal #-}

instance PFromJSVal PeriodicWave where
  pFromJSVal = PeriodicWave
  {-# INLINE pFromJSVal #-}

instance ToJSVal PeriodicWave where
  toJSVal = return . unPeriodicWave
  {-# INLINE toJSVal #-}

instance FromJSVal PeriodicWave where
  fromJSVal = return . fmap PeriodicWave . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PeriodicWave where
  toGObject = GObject . unPeriodicWave
  {-# INLINE toGObject #-}
  unsafeCastGObject = PeriodicWave . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPeriodicWave :: IsGObject obj => obj -> PeriodicWave
castToPeriodicWave = castTo gTypePeriodicWave "PeriodicWave"

foreign import javascript unsafe "window[\"PeriodicWave\"]" gTypePeriodicWave :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Plugin".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Plugin Mozilla Plugin documentation>
newtype Plugin = Plugin { unPlugin :: JSVal }

instance Eq (Plugin) where
  (Plugin a) == (Plugin b) = js_eq a b

instance PToJSVal Plugin where
  pToJSVal = unPlugin
  {-# INLINE pToJSVal #-}

instance PFromJSVal Plugin where
  pFromJSVal = Plugin
  {-# INLINE pFromJSVal #-}

instance ToJSVal Plugin where
  toJSVal = return . unPlugin
  {-# INLINE toJSVal #-}

instance FromJSVal Plugin where
  fromJSVal = return . fmap Plugin . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Plugin where
  toGObject = GObject . unPlugin
  {-# INLINE toGObject #-}
  unsafeCastGObject = Plugin . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPlugin :: IsGObject obj => obj -> Plugin
castToPlugin = castTo gTypePlugin "Plugin"

foreign import javascript unsafe "window[\"Plugin\"]" gTypePlugin :: GType
#else
type IsPlugin o = PluginClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PluginArray".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray Mozilla PluginArray documentation>
newtype PluginArray = PluginArray { unPluginArray :: JSVal }

instance Eq (PluginArray) where
  (PluginArray a) == (PluginArray b) = js_eq a b

instance PToJSVal PluginArray where
  pToJSVal = unPluginArray
  {-# INLINE pToJSVal #-}

instance PFromJSVal PluginArray where
  pFromJSVal = PluginArray
  {-# INLINE pFromJSVal #-}

instance ToJSVal PluginArray where
  toJSVal = return . unPluginArray
  {-# INLINE toJSVal #-}

instance FromJSVal PluginArray where
  fromJSVal = return . fmap PluginArray . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PluginArray where
  toGObject = GObject . unPluginArray
  {-# INLINE toGObject #-}
  unsafeCastGObject = PluginArray . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPluginArray :: IsGObject obj => obj -> PluginArray
castToPluginArray = castTo gTypePluginArray "PluginArray"

foreign import javascript unsafe "window[\"PluginArray\"]" gTypePluginArray :: GType
#else
type IsPluginArray o = PluginArrayClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PopStateEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent Mozilla PopStateEvent documentation>
newtype PopStateEvent = PopStateEvent { unPopStateEvent :: JSVal }

instance Eq (PopStateEvent) where
  (PopStateEvent a) == (PopStateEvent b) = js_eq a b

instance PToJSVal PopStateEvent where
  pToJSVal = unPopStateEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal PopStateEvent where
  pFromJSVal = PopStateEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal PopStateEvent where
  toJSVal = return . unPopStateEvent
  {-# INLINE toJSVal #-}

instance FromJSVal PopStateEvent where
  fromJSVal = return . fmap PopStateEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent PopStateEvent
instance IsGObject PopStateEvent where
  toGObject = GObject . unPopStateEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = PopStateEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPopStateEvent :: IsGObject obj => obj -> PopStateEvent
castToPopStateEvent = castTo gTypePopStateEvent "PopStateEvent"

foreign import javascript unsafe "window[\"PopStateEvent\"]" gTypePopStateEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.PositionError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/PositionError Mozilla PositionError documentation>
newtype PositionError = PositionError { unPositionError :: JSVal }

instance Eq (PositionError) where
  (PositionError a) == (PositionError b) = js_eq a b

instance PToJSVal PositionError where
  pToJSVal = unPositionError
  {-# INLINE pToJSVal #-}

instance PFromJSVal PositionError where
  pFromJSVal = PositionError
  {-# INLINE pFromJSVal #-}

instance ToJSVal PositionError where
  toJSVal = return . unPositionError
  {-# INLINE toJSVal #-}

instance FromJSVal PositionError where
  fromJSVal = return . fmap PositionError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject PositionError where
  toGObject = GObject . unPositionError
  {-# INLINE toGObject #-}
  unsafeCastGObject = PositionError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToPositionError :: IsGObject obj => obj -> PositionError
castToPositionError = castTo gTypePositionError "PositionError"

foreign import javascript unsafe "window[\"PositionError\"]" gTypePositionError :: GType
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
newtype ProcessingInstruction = ProcessingInstruction { unProcessingInstruction :: JSVal }

instance Eq (ProcessingInstruction) where
  (ProcessingInstruction a) == (ProcessingInstruction b) = js_eq a b

instance PToJSVal ProcessingInstruction where
  pToJSVal = unProcessingInstruction
  {-# INLINE pToJSVal #-}

instance PFromJSVal ProcessingInstruction where
  pFromJSVal = ProcessingInstruction
  {-# INLINE pFromJSVal #-}

instance ToJSVal ProcessingInstruction where
  toJSVal = return . unProcessingInstruction
  {-# INLINE toJSVal #-}

instance FromJSVal ProcessingInstruction where
  fromJSVal = return . fmap ProcessingInstruction . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCharacterData ProcessingInstruction
instance IsNode ProcessingInstruction
instance IsEventTarget ProcessingInstruction
instance IsGObject ProcessingInstruction where
  toGObject = GObject . unProcessingInstruction
  {-# INLINE toGObject #-}
  unsafeCastGObject = ProcessingInstruction . unGObject
  {-# INLINE unsafeCastGObject #-}

castToProcessingInstruction :: IsGObject obj => obj -> ProcessingInstruction
castToProcessingInstruction = castTo gTypeProcessingInstruction "ProcessingInstruction"

foreign import javascript unsafe "window[\"ProcessingInstruction\"]" gTypeProcessingInstruction :: GType
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
newtype ProgressEvent = ProgressEvent { unProgressEvent :: JSVal }

instance Eq (ProgressEvent) where
  (ProgressEvent a) == (ProgressEvent b) = js_eq a b

instance PToJSVal ProgressEvent where
  pToJSVal = unProgressEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal ProgressEvent where
  pFromJSVal = ProgressEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal ProgressEvent where
  toJSVal = return . unProgressEvent
  {-# INLINE toJSVal #-}

instance FromJSVal ProgressEvent where
  fromJSVal = return . fmap ProgressEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEvent o => IsProgressEvent o
toProgressEvent :: IsProgressEvent o => o -> ProgressEvent
toProgressEvent = unsafeCastGObject . toGObject

instance IsProgressEvent ProgressEvent
instance IsEvent ProgressEvent
instance IsGObject ProgressEvent where
  toGObject = GObject . unProgressEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = ProgressEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToProgressEvent :: IsGObject obj => obj -> ProgressEvent
castToProgressEvent = castTo gTypeProgressEvent "ProgressEvent"

foreign import javascript unsafe "window[\"ProgressEvent\"]" gTypeProgressEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.QuickTimePluginReplacement".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement Mozilla QuickTimePluginReplacement documentation>
newtype QuickTimePluginReplacement = QuickTimePluginReplacement { unQuickTimePluginReplacement :: JSVal }

instance Eq (QuickTimePluginReplacement) where
  (QuickTimePluginReplacement a) == (QuickTimePluginReplacement b) = js_eq a b

instance PToJSVal QuickTimePluginReplacement where
  pToJSVal = unQuickTimePluginReplacement
  {-# INLINE pToJSVal #-}

instance PFromJSVal QuickTimePluginReplacement where
  pFromJSVal = QuickTimePluginReplacement
  {-# INLINE pFromJSVal #-}

instance ToJSVal QuickTimePluginReplacement where
  toJSVal = return . unQuickTimePluginReplacement
  {-# INLINE toJSVal #-}

instance FromJSVal QuickTimePluginReplacement where
  fromJSVal = return . fmap QuickTimePluginReplacement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject QuickTimePluginReplacement where
  toGObject = GObject . unQuickTimePluginReplacement
  {-# INLINE toGObject #-}
  unsafeCastGObject = QuickTimePluginReplacement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToQuickTimePluginReplacement :: IsGObject obj => obj -> QuickTimePluginReplacement
castToQuickTimePluginReplacement = castTo gTypeQuickTimePluginReplacement "QuickTimePluginReplacement"

foreign import javascript unsafe "window[\"QuickTimePluginReplacement\"]" gTypeQuickTimePluginReplacement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RGBColor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor Mozilla RGBColor documentation>
newtype RGBColor = RGBColor { unRGBColor :: JSVal }

instance Eq (RGBColor) where
  (RGBColor a) == (RGBColor b) = js_eq a b

instance PToJSVal RGBColor where
  pToJSVal = unRGBColor
  {-# INLINE pToJSVal #-}

instance PFromJSVal RGBColor where
  pFromJSVal = RGBColor
  {-# INLINE pFromJSVal #-}

instance ToJSVal RGBColor where
  toJSVal = return . unRGBColor
  {-# INLINE toJSVal #-}

instance FromJSVal RGBColor where
  fromJSVal = return . fmap RGBColor . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RGBColor where
  toGObject = GObject . unRGBColor
  {-# INLINE toGObject #-}
  unsafeCastGObject = RGBColor . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRGBColor :: IsGObject obj => obj -> RGBColor
castToRGBColor = castTo gTypeRGBColor "RGBColor"

foreign import javascript unsafe "window[\"RGBColor\"]" gTypeRGBColor :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCConfiguration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration Mozilla RTCConfiguration documentation>
newtype RTCConfiguration = RTCConfiguration { unRTCConfiguration :: JSVal }

instance Eq (RTCConfiguration) where
  (RTCConfiguration a) == (RTCConfiguration b) = js_eq a b

instance PToJSVal RTCConfiguration where
  pToJSVal = unRTCConfiguration
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCConfiguration where
  pFromJSVal = RTCConfiguration
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCConfiguration where
  toJSVal = return . unRTCConfiguration
  {-# INLINE toJSVal #-}

instance FromJSVal RTCConfiguration where
  fromJSVal = return . fmap RTCConfiguration . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCConfiguration where
  toGObject = GObject . unRTCConfiguration
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCConfiguration . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCConfiguration :: IsGObject obj => obj -> RTCConfiguration
castToRTCConfiguration = castTo gTypeRTCConfiguration "RTCConfiguration"

foreign import javascript unsafe "window[\"RTCConfiguration\"]" gTypeRTCConfiguration :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDTMFSender".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender Mozilla RTCDTMFSender documentation>
newtype RTCDTMFSender = RTCDTMFSender { unRTCDTMFSender :: JSVal }

instance Eq (RTCDTMFSender) where
  (RTCDTMFSender a) == (RTCDTMFSender b) = js_eq a b

instance PToJSVal RTCDTMFSender where
  pToJSVal = unRTCDTMFSender
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDTMFSender where
  pFromJSVal = RTCDTMFSender
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDTMFSender where
  toJSVal = return . unRTCDTMFSender
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDTMFSender where
  fromJSVal = return . fmap RTCDTMFSender . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget RTCDTMFSender
instance IsGObject RTCDTMFSender where
  toGObject = GObject . unRTCDTMFSender
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCDTMFSender . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCDTMFSender :: IsGObject obj => obj -> RTCDTMFSender
castToRTCDTMFSender = castTo gTypeRTCDTMFSender "RTCDTMFSender"

foreign import javascript unsafe "window[\"RTCDTMFSender\"]" gTypeRTCDTMFSender :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDTMFToneChangeEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent Mozilla RTCDTMFToneChangeEvent documentation>
newtype RTCDTMFToneChangeEvent = RTCDTMFToneChangeEvent { unRTCDTMFToneChangeEvent :: JSVal }

instance Eq (RTCDTMFToneChangeEvent) where
  (RTCDTMFToneChangeEvent a) == (RTCDTMFToneChangeEvent b) = js_eq a b

instance PToJSVal RTCDTMFToneChangeEvent where
  pToJSVal = unRTCDTMFToneChangeEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDTMFToneChangeEvent where
  pFromJSVal = RTCDTMFToneChangeEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDTMFToneChangeEvent where
  toJSVal = return . unRTCDTMFToneChangeEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDTMFToneChangeEvent where
  fromJSVal = return . fmap RTCDTMFToneChangeEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent RTCDTMFToneChangeEvent
instance IsGObject RTCDTMFToneChangeEvent where
  toGObject = GObject . unRTCDTMFToneChangeEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCDTMFToneChangeEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCDTMFToneChangeEvent :: IsGObject obj => obj -> RTCDTMFToneChangeEvent
castToRTCDTMFToneChangeEvent = castTo gTypeRTCDTMFToneChangeEvent "RTCDTMFToneChangeEvent"

foreign import javascript unsafe "window[\"RTCDTMFToneChangeEvent\"]" gTypeRTCDTMFToneChangeEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDataChannel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel Mozilla RTCDataChannel documentation>
newtype RTCDataChannel = RTCDataChannel { unRTCDataChannel :: JSVal }

instance Eq (RTCDataChannel) where
  (RTCDataChannel a) == (RTCDataChannel b) = js_eq a b

instance PToJSVal RTCDataChannel where
  pToJSVal = unRTCDataChannel
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDataChannel where
  pFromJSVal = RTCDataChannel
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDataChannel where
  toJSVal = return . unRTCDataChannel
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDataChannel where
  fromJSVal = return . fmap RTCDataChannel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget RTCDataChannel
instance IsGObject RTCDataChannel where
  toGObject = GObject . unRTCDataChannel
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCDataChannel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCDataChannel :: IsGObject obj => obj -> RTCDataChannel
castToRTCDataChannel = castTo gTypeRTCDataChannel "RTCDataChannel"

foreign import javascript unsafe "window[\"RTCDataChannel\"]" gTypeRTCDataChannel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDataChannelEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent Mozilla RTCDataChannelEvent documentation>
newtype RTCDataChannelEvent = RTCDataChannelEvent { unRTCDataChannelEvent :: JSVal }

instance Eq (RTCDataChannelEvent) where
  (RTCDataChannelEvent a) == (RTCDataChannelEvent b) = js_eq a b

instance PToJSVal RTCDataChannelEvent where
  pToJSVal = unRTCDataChannelEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCDataChannelEvent where
  pFromJSVal = RTCDataChannelEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCDataChannelEvent where
  toJSVal = return . unRTCDataChannelEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCDataChannelEvent where
  fromJSVal = return . fmap RTCDataChannelEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent RTCDataChannelEvent
instance IsGObject RTCDataChannelEvent where
  toGObject = GObject . unRTCDataChannelEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCDataChannelEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCDataChannelEvent :: IsGObject obj => obj -> RTCDataChannelEvent
castToRTCDataChannelEvent = castTo gTypeRTCDataChannelEvent "RTCDataChannelEvent"

foreign import javascript unsafe "window[\"RTCDataChannelEvent\"]" gTypeRTCDataChannelEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceCandidate".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation>
newtype RTCIceCandidate = RTCIceCandidate { unRTCIceCandidate :: JSVal }

instance Eq (RTCIceCandidate) where
  (RTCIceCandidate a) == (RTCIceCandidate b) = js_eq a b

instance PToJSVal RTCIceCandidate where
  pToJSVal = unRTCIceCandidate
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceCandidate where
  pFromJSVal = RTCIceCandidate
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceCandidate where
  toJSVal = return . unRTCIceCandidate
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceCandidate where
  fromJSVal = return . fmap RTCIceCandidate . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCIceCandidate where
  toGObject = GObject . unRTCIceCandidate
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCIceCandidate . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCIceCandidate :: IsGObject obj => obj -> RTCIceCandidate
castToRTCIceCandidate = castTo gTypeRTCIceCandidate "RTCIceCandidate"

foreign import javascript unsafe "window[\"RTCIceCandidate\"]" gTypeRTCIceCandidate :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceCandidateEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateEvent Mozilla RTCIceCandidateEvent documentation>
newtype RTCIceCandidateEvent = RTCIceCandidateEvent { unRTCIceCandidateEvent :: JSVal }

instance Eq (RTCIceCandidateEvent) where
  (RTCIceCandidateEvent a) == (RTCIceCandidateEvent b) = js_eq a b

instance PToJSVal RTCIceCandidateEvent where
  pToJSVal = unRTCIceCandidateEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceCandidateEvent where
  pFromJSVal = RTCIceCandidateEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceCandidateEvent where
  toJSVal = return . unRTCIceCandidateEvent
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceCandidateEvent where
  fromJSVal = return . fmap RTCIceCandidateEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent RTCIceCandidateEvent
instance IsGObject RTCIceCandidateEvent where
  toGObject = GObject . unRTCIceCandidateEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCIceCandidateEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCIceCandidateEvent :: IsGObject obj => obj -> RTCIceCandidateEvent
castToRTCIceCandidateEvent = castTo gTypeRTCIceCandidateEvent "RTCIceCandidateEvent"

foreign import javascript unsafe "window[\"RTCIceCandidateEvent\"]" gTypeRTCIceCandidateEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCIceServer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer Mozilla RTCIceServer documentation>
newtype RTCIceServer = RTCIceServer { unRTCIceServer :: JSVal }

instance Eq (RTCIceServer) where
  (RTCIceServer a) == (RTCIceServer b) = js_eq a b

instance PToJSVal RTCIceServer where
  pToJSVal = unRTCIceServer
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCIceServer where
  pFromJSVal = RTCIceServer
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCIceServer where
  toJSVal = return . unRTCIceServer
  {-# INLINE toJSVal #-}

instance FromJSVal RTCIceServer where
  fromJSVal = return . fmap RTCIceServer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCIceServer where
  toGObject = GObject . unRTCIceServer
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCIceServer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCIceServer :: IsGObject obj => obj -> RTCIceServer
castToRTCIceServer = castTo gTypeRTCIceServer "RTCIceServer"

foreign import javascript unsafe "window[\"RTCIceServer\"]" gTypeRTCIceServer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCPeerConnection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation>
newtype RTCPeerConnection = RTCPeerConnection { unRTCPeerConnection :: JSVal }

instance Eq (RTCPeerConnection) where
  (RTCPeerConnection a) == (RTCPeerConnection b) = js_eq a b

instance PToJSVal RTCPeerConnection where
  pToJSVal = unRTCPeerConnection
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCPeerConnection where
  pFromJSVal = RTCPeerConnection
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCPeerConnection where
  toJSVal = return . unRTCPeerConnection
  {-# INLINE toJSVal #-}

instance FromJSVal RTCPeerConnection where
  fromJSVal = return . fmap RTCPeerConnection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget RTCPeerConnection
instance IsGObject RTCPeerConnection where
  toGObject = GObject . unRTCPeerConnection
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCPeerConnection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCPeerConnection :: IsGObject obj => obj -> RTCPeerConnection
castToRTCPeerConnection = castTo gTypeRTCPeerConnection "RTCPeerConnection"

foreign import javascript unsafe "window[\"webkitRTCPeerConnection\"]" gTypeRTCPeerConnection :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCSessionDescription".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation>
newtype RTCSessionDescription = RTCSessionDescription { unRTCSessionDescription :: JSVal }

instance Eq (RTCSessionDescription) where
  (RTCSessionDescription a) == (RTCSessionDescription b) = js_eq a b

instance PToJSVal RTCSessionDescription where
  pToJSVal = unRTCSessionDescription
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCSessionDescription where
  pFromJSVal = RTCSessionDescription
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCSessionDescription where
  toJSVal = return . unRTCSessionDescription
  {-# INLINE toJSVal #-}

instance FromJSVal RTCSessionDescription where
  fromJSVal = return . fmap RTCSessionDescription . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCSessionDescription where
  toGObject = GObject . unRTCSessionDescription
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCSessionDescription . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCSessionDescription :: IsGObject obj => obj -> RTCSessionDescription
castToRTCSessionDescription = castTo gTypeRTCSessionDescription "RTCSessionDescription"

foreign import javascript unsafe "window[\"RTCSessionDescription\"]" gTypeRTCSessionDescription :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCStatsReport".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport Mozilla RTCStatsReport documentation>
newtype RTCStatsReport = RTCStatsReport { unRTCStatsReport :: JSVal }

instance Eq (RTCStatsReport) where
  (RTCStatsReport a) == (RTCStatsReport b) = js_eq a b

instance PToJSVal RTCStatsReport where
  pToJSVal = unRTCStatsReport
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCStatsReport where
  pFromJSVal = RTCStatsReport
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCStatsReport where
  toJSVal = return . unRTCStatsReport
  {-# INLINE toJSVal #-}

instance FromJSVal RTCStatsReport where
  fromJSVal = return . fmap RTCStatsReport . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCStatsReport where
  toGObject = GObject . unRTCStatsReport
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCStatsReport . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCStatsReport :: IsGObject obj => obj -> RTCStatsReport
castToRTCStatsReport = castTo gTypeRTCStatsReport "RTCStatsReport"

foreign import javascript unsafe "window[\"RTCStatsReport\"]" gTypeRTCStatsReport :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCStatsResponse".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse Mozilla RTCStatsResponse documentation>
newtype RTCStatsResponse = RTCStatsResponse { unRTCStatsResponse :: JSVal }

instance Eq (RTCStatsResponse) where
  (RTCStatsResponse a) == (RTCStatsResponse b) = js_eq a b

instance PToJSVal RTCStatsResponse where
  pToJSVal = unRTCStatsResponse
  {-# INLINE pToJSVal #-}

instance PFromJSVal RTCStatsResponse where
  pFromJSVal = RTCStatsResponse
  {-# INLINE pFromJSVal #-}

instance ToJSVal RTCStatsResponse where
  toJSVal = return . unRTCStatsResponse
  {-# INLINE toJSVal #-}

instance FromJSVal RTCStatsResponse where
  fromJSVal = return . fmap RTCStatsResponse . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject RTCStatsResponse where
  toGObject = GObject . unRTCStatsResponse
  {-# INLINE toGObject #-}
  unsafeCastGObject = RTCStatsResponse . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRTCStatsResponse :: IsGObject obj => obj -> RTCStatsResponse
castToRTCStatsResponse = castTo gTypeRTCStatsResponse "RTCStatsResponse"

foreign import javascript unsafe "window[\"RTCStatsResponse\"]" gTypeRTCStatsResponse :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RadioNodeList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.NodeList"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList Mozilla RadioNodeList documentation>
newtype RadioNodeList = RadioNodeList { unRadioNodeList :: JSVal }

instance Eq (RadioNodeList) where
  (RadioNodeList a) == (RadioNodeList b) = js_eq a b

instance PToJSVal RadioNodeList where
  pToJSVal = unRadioNodeList
  {-# INLINE pToJSVal #-}

instance PFromJSVal RadioNodeList where
  pFromJSVal = RadioNodeList
  {-# INLINE pFromJSVal #-}

instance ToJSVal RadioNodeList where
  toJSVal = return . unRadioNodeList
  {-# INLINE toJSVal #-}

instance FromJSVal RadioNodeList where
  fromJSVal = return . fmap RadioNodeList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsNodeList RadioNodeList
instance IsGObject RadioNodeList where
  toGObject = GObject . unRadioNodeList
  {-# INLINE toGObject #-}
  unsafeCastGObject = RadioNodeList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRadioNodeList :: IsGObject obj => obj -> RadioNodeList
castToRadioNodeList = castTo gTypeRadioNodeList "RadioNodeList"

foreign import javascript unsafe "window[\"RadioNodeList\"]" gTypeRadioNodeList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Range".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation>
newtype Range = Range { unRange :: JSVal }

instance Eq (Range) where
  (Range a) == (Range b) = js_eq a b

instance PToJSVal Range where
  pToJSVal = unRange
  {-# INLINE pToJSVal #-}

instance PFromJSVal Range where
  pFromJSVal = Range
  {-# INLINE pFromJSVal #-}

instance ToJSVal Range where
  toJSVal = return . unRange
  {-# INLINE toJSVal #-}

instance FromJSVal Range where
  fromJSVal = return . fmap Range . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Range where
  toGObject = GObject . unRange
  {-# INLINE toGObject #-}
  unsafeCastGObject = Range . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRange :: IsGObject obj => obj -> Range
castToRange = castTo gTypeRange "Range"

foreign import javascript unsafe "window[\"Range\"]" gTypeRange :: GType
#else
type IsRange o = RangeClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ReadableStream".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation>
newtype ReadableStream = ReadableStream { unReadableStream :: JSVal }

instance Eq (ReadableStream) where
  (ReadableStream a) == (ReadableStream b) = js_eq a b

instance PToJSVal ReadableStream where
  pToJSVal = unReadableStream
  {-# INLINE pToJSVal #-}

instance PFromJSVal ReadableStream where
  pFromJSVal = ReadableStream
  {-# INLINE pFromJSVal #-}

instance ToJSVal ReadableStream where
  toJSVal = return . unReadableStream
  {-# INLINE toJSVal #-}

instance FromJSVal ReadableStream where
  fromJSVal = return . fmap ReadableStream . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ReadableStream where
  toGObject = GObject . unReadableStream
  {-# INLINE toGObject #-}
  unsafeCastGObject = ReadableStream . unGObject
  {-# INLINE unsafeCastGObject #-}

castToReadableStream :: IsGObject obj => obj -> ReadableStream
castToReadableStream = castTo gTypeReadableStream "ReadableStream"

foreign import javascript unsafe "window[\"ReadableStream\"]" gTypeReadableStream :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Rect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Rect Mozilla Rect documentation>
newtype Rect = Rect { unRect :: JSVal }

instance Eq (Rect) where
  (Rect a) == (Rect b) = js_eq a b

instance PToJSVal Rect where
  pToJSVal = unRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal Rect where
  pFromJSVal = Rect
  {-# INLINE pFromJSVal #-}

instance ToJSVal Rect where
  toJSVal = return . unRect
  {-# INLINE toJSVal #-}

instance FromJSVal Rect where
  fromJSVal = return . fmap Rect . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Rect where
  toGObject = GObject . unRect
  {-# INLINE toGObject #-}
  unsafeCastGObject = Rect . unGObject
  {-# INLINE unsafeCastGObject #-}

castToRect :: IsGObject obj => obj -> Rect
castToRect = castTo gTypeRect "Rect"

foreign import javascript unsafe "window[\"Rect\"]" gTypeRect :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLError Mozilla SQLError documentation>
newtype SQLError = SQLError { unSQLError :: JSVal }

instance Eq (SQLError) where
  (SQLError a) == (SQLError b) = js_eq a b

instance PToJSVal SQLError where
  pToJSVal = unSQLError
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLError where
  pFromJSVal = SQLError
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLError where
  toJSVal = return . unSQLError
  {-# INLINE toJSVal #-}

instance FromJSVal SQLError where
  fromJSVal = return . fmap SQLError . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SQLError where
  toGObject = GObject . unSQLError
  {-# INLINE toGObject #-}
  unsafeCastGObject = SQLError . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSQLError :: IsGObject obj => obj -> SQLError
castToSQLError = castTo gTypeSQLError "SQLError"

foreign import javascript unsafe "window[\"SQLError\"]" gTypeSQLError :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLResultSet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet Mozilla SQLResultSet documentation>
newtype SQLResultSet = SQLResultSet { unSQLResultSet :: JSVal }

instance Eq (SQLResultSet) where
  (SQLResultSet a) == (SQLResultSet b) = js_eq a b

instance PToJSVal SQLResultSet where
  pToJSVal = unSQLResultSet
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLResultSet where
  pFromJSVal = SQLResultSet
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLResultSet where
  toJSVal = return . unSQLResultSet
  {-# INLINE toJSVal #-}

instance FromJSVal SQLResultSet where
  fromJSVal = return . fmap SQLResultSet . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SQLResultSet where
  toGObject = GObject . unSQLResultSet
  {-# INLINE toGObject #-}
  unsafeCastGObject = SQLResultSet . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSQLResultSet :: IsGObject obj => obj -> SQLResultSet
castToSQLResultSet = castTo gTypeSQLResultSet "SQLResultSet"

foreign import javascript unsafe "window[\"SQLResultSet\"]" gTypeSQLResultSet :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLResultSetRowList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList Mozilla SQLResultSetRowList documentation>
newtype SQLResultSetRowList = SQLResultSetRowList { unSQLResultSetRowList :: JSVal }

instance Eq (SQLResultSetRowList) where
  (SQLResultSetRowList a) == (SQLResultSetRowList b) = js_eq a b

instance PToJSVal SQLResultSetRowList where
  pToJSVal = unSQLResultSetRowList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLResultSetRowList where
  pFromJSVal = SQLResultSetRowList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLResultSetRowList where
  toJSVal = return . unSQLResultSetRowList
  {-# INLINE toJSVal #-}

instance FromJSVal SQLResultSetRowList where
  fromJSVal = return . fmap SQLResultSetRowList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SQLResultSetRowList where
  toGObject = GObject . unSQLResultSetRowList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SQLResultSetRowList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSQLResultSetRowList :: IsGObject obj => obj -> SQLResultSetRowList
castToSQLResultSetRowList = castTo gTypeSQLResultSetRowList "SQLResultSetRowList"

foreign import javascript unsafe "window[\"SQLResultSetRowList\"]" gTypeSQLResultSetRowList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransaction".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransaction Mozilla SQLTransaction documentation>
newtype SQLTransaction = SQLTransaction { unSQLTransaction :: JSVal }

instance Eq (SQLTransaction) where
  (SQLTransaction a) == (SQLTransaction b) = js_eq a b

instance PToJSVal SQLTransaction where
  pToJSVal = unSQLTransaction
  {-# INLINE pToJSVal #-}

instance PFromJSVal SQLTransaction where
  pFromJSVal = SQLTransaction
  {-# INLINE pFromJSVal #-}

instance ToJSVal SQLTransaction where
  toJSVal = return . unSQLTransaction
  {-# INLINE toJSVal #-}

instance FromJSVal SQLTransaction where
  fromJSVal = return . fmap SQLTransaction . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SQLTransaction where
  toGObject = GObject . unSQLTransaction
  {-# INLINE toGObject #-}
  unsafeCastGObject = SQLTransaction . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSQLTransaction :: IsGObject obj => obj -> SQLTransaction
castToSQLTransaction = castTo gTypeSQLTransaction "SQLTransaction"

foreign import javascript unsafe "window[\"SQLTransaction\"]" gTypeSQLTransaction :: GType
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
newtype SVGAElement = SVGAElement { unSVGAElement :: JSVal }

instance Eq (SVGAElement) where
  (SVGAElement a) == (SVGAElement b) = js_eq a b

instance PToJSVal SVGAElement where
  pToJSVal = unSVGAElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAElement where
  pFromJSVal = SVGAElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAElement where
  toJSVal = return . unSVGAElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAElement where
  fromJSVal = return . fmap SVGAElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGAElement
instance IsSVGElement SVGAElement
instance IsElement SVGAElement
instance IsNode SVGAElement
instance IsEventTarget SVGAElement
instance IsGObject SVGAElement where
  toGObject = GObject . unSVGAElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAElement :: IsGObject obj => obj -> SVGAElement
castToSVGAElement = castTo gTypeSVGAElement "SVGAElement"

foreign import javascript unsafe "window[\"SVGAElement\"]" gTypeSVGAElement :: GType
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
newtype SVGAltGlyphDefElement = SVGAltGlyphDefElement { unSVGAltGlyphDefElement :: JSVal }

instance Eq (SVGAltGlyphDefElement) where
  (SVGAltGlyphDefElement a) == (SVGAltGlyphDefElement b) = js_eq a b

instance PToJSVal SVGAltGlyphDefElement where
  pToJSVal = unSVGAltGlyphDefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphDefElement where
  pFromJSVal = SVGAltGlyphDefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphDefElement where
  toJSVal = return . unSVGAltGlyphDefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphDefElement where
  fromJSVal = return . fmap SVGAltGlyphDefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGAltGlyphDefElement
instance IsElement SVGAltGlyphDefElement
instance IsNode SVGAltGlyphDefElement
instance IsEventTarget SVGAltGlyphDefElement
instance IsGObject SVGAltGlyphDefElement where
  toGObject = GObject . unSVGAltGlyphDefElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAltGlyphDefElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAltGlyphDefElement :: IsGObject obj => obj -> SVGAltGlyphDefElement
castToSVGAltGlyphDefElement = castTo gTypeSVGAltGlyphDefElement "SVGAltGlyphDefElement"

foreign import javascript unsafe "window[\"SVGAltGlyphDefElement\"]" gTypeSVGAltGlyphDefElement :: GType
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
newtype SVGAltGlyphElement = SVGAltGlyphElement { unSVGAltGlyphElement :: JSVal }

instance Eq (SVGAltGlyphElement) where
  (SVGAltGlyphElement a) == (SVGAltGlyphElement b) = js_eq a b

instance PToJSVal SVGAltGlyphElement where
  pToJSVal = unSVGAltGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphElement where
  pFromJSVal = SVGAltGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphElement where
  toJSVal = return . unSVGAltGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphElement where
  fromJSVal = return . fmap SVGAltGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGTextPositioningElement SVGAltGlyphElement
instance IsSVGTextContentElement SVGAltGlyphElement
instance IsSVGGraphicsElement SVGAltGlyphElement
instance IsSVGElement SVGAltGlyphElement
instance IsElement SVGAltGlyphElement
instance IsNode SVGAltGlyphElement
instance IsEventTarget SVGAltGlyphElement
instance IsGObject SVGAltGlyphElement where
  toGObject = GObject . unSVGAltGlyphElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAltGlyphElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAltGlyphElement :: IsGObject obj => obj -> SVGAltGlyphElement
castToSVGAltGlyphElement = castTo gTypeSVGAltGlyphElement "SVGAltGlyphElement"

foreign import javascript unsafe "window[\"SVGAltGlyphElement\"]" gTypeSVGAltGlyphElement :: GType
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
newtype SVGAltGlyphItemElement = SVGAltGlyphItemElement { unSVGAltGlyphItemElement :: JSVal }

instance Eq (SVGAltGlyphItemElement) where
  (SVGAltGlyphItemElement a) == (SVGAltGlyphItemElement b) = js_eq a b

instance PToJSVal SVGAltGlyphItemElement where
  pToJSVal = unSVGAltGlyphItemElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAltGlyphItemElement where
  pFromJSVal = SVGAltGlyphItemElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAltGlyphItemElement where
  toJSVal = return . unSVGAltGlyphItemElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAltGlyphItemElement where
  fromJSVal = return . fmap SVGAltGlyphItemElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGAltGlyphItemElement
instance IsElement SVGAltGlyphItemElement
instance IsNode SVGAltGlyphItemElement
instance IsEventTarget SVGAltGlyphItemElement
instance IsGObject SVGAltGlyphItemElement where
  toGObject = GObject . unSVGAltGlyphItemElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAltGlyphItemElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAltGlyphItemElement :: IsGObject obj => obj -> SVGAltGlyphItemElement
castToSVGAltGlyphItemElement = castTo gTypeSVGAltGlyphItemElement "SVGAltGlyphItemElement"

foreign import javascript unsafe "window[\"SVGAltGlyphItemElement\"]" gTypeSVGAltGlyphItemElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle Mozilla SVGAngle documentation>
newtype SVGAngle = SVGAngle { unSVGAngle :: JSVal }

instance Eq (SVGAngle) where
  (SVGAngle a) == (SVGAngle b) = js_eq a b

instance PToJSVal SVGAngle where
  pToJSVal = unSVGAngle
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAngle where
  pFromJSVal = SVGAngle
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAngle where
  toJSVal = return . unSVGAngle
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAngle where
  fromJSVal = return . fmap SVGAngle . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAngle where
  toGObject = GObject . unSVGAngle
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAngle . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAngle :: IsGObject obj => obj -> SVGAngle
castToSVGAngle = castTo gTypeSVGAngle "SVGAngle"

foreign import javascript unsafe "window[\"SVGAngle\"]" gTypeSVGAngle :: GType
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
newtype SVGAnimateColorElement = SVGAnimateColorElement { unSVGAnimateColorElement :: JSVal }

instance Eq (SVGAnimateColorElement) where
  (SVGAnimateColorElement a) == (SVGAnimateColorElement b) = js_eq a b

instance PToJSVal SVGAnimateColorElement where
  pToJSVal = unSVGAnimateColorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateColorElement where
  pFromJSVal = SVGAnimateColorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateColorElement where
  toJSVal = return . unSVGAnimateColorElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateColorElement where
  fromJSVal = return . fmap SVGAnimateColorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGAnimationElement SVGAnimateColorElement
instance IsSVGElement SVGAnimateColorElement
instance IsElement SVGAnimateColorElement
instance IsNode SVGAnimateColorElement
instance IsEventTarget SVGAnimateColorElement
instance IsGObject SVGAnimateColorElement where
  toGObject = GObject . unSVGAnimateColorElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimateColorElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimateColorElement :: IsGObject obj => obj -> SVGAnimateColorElement
castToSVGAnimateColorElement = castTo gTypeSVGAnimateColorElement "SVGAnimateColorElement"

foreign import javascript unsafe "window[\"SVGAnimateColorElement\"]" gTypeSVGAnimateColorElement :: GType
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
newtype SVGAnimateElement = SVGAnimateElement { unSVGAnimateElement :: JSVal }

instance Eq (SVGAnimateElement) where
  (SVGAnimateElement a) == (SVGAnimateElement b) = js_eq a b

instance PToJSVal SVGAnimateElement where
  pToJSVal = unSVGAnimateElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateElement where
  pFromJSVal = SVGAnimateElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateElement where
  toJSVal = return . unSVGAnimateElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateElement where
  fromJSVal = return . fmap SVGAnimateElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGAnimationElement SVGAnimateElement
instance IsSVGElement SVGAnimateElement
instance IsElement SVGAnimateElement
instance IsNode SVGAnimateElement
instance IsEventTarget SVGAnimateElement
instance IsGObject SVGAnimateElement where
  toGObject = GObject . unSVGAnimateElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimateElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimateElement :: IsGObject obj => obj -> SVGAnimateElement
castToSVGAnimateElement = castTo gTypeSVGAnimateElement "SVGAnimateElement"

foreign import javascript unsafe "window[\"SVGAnimateElement\"]" gTypeSVGAnimateElement :: GType
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
newtype SVGAnimateMotionElement = SVGAnimateMotionElement { unSVGAnimateMotionElement :: JSVal }

instance Eq (SVGAnimateMotionElement) where
  (SVGAnimateMotionElement a) == (SVGAnimateMotionElement b) = js_eq a b

instance PToJSVal SVGAnimateMotionElement where
  pToJSVal = unSVGAnimateMotionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateMotionElement where
  pFromJSVal = SVGAnimateMotionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateMotionElement where
  toJSVal = return . unSVGAnimateMotionElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateMotionElement where
  fromJSVal = return . fmap SVGAnimateMotionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGAnimationElement SVGAnimateMotionElement
instance IsSVGElement SVGAnimateMotionElement
instance IsElement SVGAnimateMotionElement
instance IsNode SVGAnimateMotionElement
instance IsEventTarget SVGAnimateMotionElement
instance IsGObject SVGAnimateMotionElement where
  toGObject = GObject . unSVGAnimateMotionElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimateMotionElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimateMotionElement :: IsGObject obj => obj -> SVGAnimateMotionElement
castToSVGAnimateMotionElement = castTo gTypeSVGAnimateMotionElement "SVGAnimateMotionElement"

foreign import javascript unsafe "window[\"SVGAnimateMotionElement\"]" gTypeSVGAnimateMotionElement :: GType
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
newtype SVGAnimateTransformElement = SVGAnimateTransformElement { unSVGAnimateTransformElement :: JSVal }

instance Eq (SVGAnimateTransformElement) where
  (SVGAnimateTransformElement a) == (SVGAnimateTransformElement b) = js_eq a b

instance PToJSVal SVGAnimateTransformElement where
  pToJSVal = unSVGAnimateTransformElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimateTransformElement where
  pFromJSVal = SVGAnimateTransformElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimateTransformElement where
  toJSVal = return . unSVGAnimateTransformElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimateTransformElement where
  fromJSVal = return . fmap SVGAnimateTransformElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGAnimationElement SVGAnimateTransformElement
instance IsSVGElement SVGAnimateTransformElement
instance IsElement SVGAnimateTransformElement
instance IsNode SVGAnimateTransformElement
instance IsEventTarget SVGAnimateTransformElement
instance IsGObject SVGAnimateTransformElement where
  toGObject = GObject . unSVGAnimateTransformElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimateTransformElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimateTransformElement :: IsGObject obj => obj -> SVGAnimateTransformElement
castToSVGAnimateTransformElement = castTo gTypeSVGAnimateTransformElement "SVGAnimateTransformElement"

foreign import javascript unsafe "window[\"SVGAnimateTransformElement\"]" gTypeSVGAnimateTransformElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedAngle".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedAngle Mozilla SVGAnimatedAngle documentation>
newtype SVGAnimatedAngle = SVGAnimatedAngle { unSVGAnimatedAngle :: JSVal }

instance Eq (SVGAnimatedAngle) where
  (SVGAnimatedAngle a) == (SVGAnimatedAngle b) = js_eq a b

instance PToJSVal SVGAnimatedAngle where
  pToJSVal = unSVGAnimatedAngle
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedAngle where
  pFromJSVal = SVGAnimatedAngle
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedAngle where
  toJSVal = return . unSVGAnimatedAngle
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedAngle where
  fromJSVal = return . fmap SVGAnimatedAngle . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedAngle where
  toGObject = GObject . unSVGAnimatedAngle
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedAngle . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedAngle :: IsGObject obj => obj -> SVGAnimatedAngle
castToSVGAnimatedAngle = castTo gTypeSVGAnimatedAngle "SVGAnimatedAngle"

foreign import javascript unsafe "window[\"SVGAnimatedAngle\"]" gTypeSVGAnimatedAngle :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedBoolean".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean Mozilla SVGAnimatedBoolean documentation>
newtype SVGAnimatedBoolean = SVGAnimatedBoolean { unSVGAnimatedBoolean :: JSVal }

instance Eq (SVGAnimatedBoolean) where
  (SVGAnimatedBoolean a) == (SVGAnimatedBoolean b) = js_eq a b

instance PToJSVal SVGAnimatedBoolean where
  pToJSVal = unSVGAnimatedBoolean
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedBoolean where
  pFromJSVal = SVGAnimatedBoolean
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedBoolean where
  toJSVal = return . unSVGAnimatedBoolean
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedBoolean where
  fromJSVal = return . fmap SVGAnimatedBoolean . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedBoolean where
  toGObject = GObject . unSVGAnimatedBoolean
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedBoolean . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedBoolean :: IsGObject obj => obj -> SVGAnimatedBoolean
castToSVGAnimatedBoolean = castTo gTypeSVGAnimatedBoolean "SVGAnimatedBoolean"

foreign import javascript unsafe "window[\"SVGAnimatedBoolean\"]" gTypeSVGAnimatedBoolean :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedEnumeration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration Mozilla SVGAnimatedEnumeration documentation>
newtype SVGAnimatedEnumeration = SVGAnimatedEnumeration { unSVGAnimatedEnumeration :: JSVal }

instance Eq (SVGAnimatedEnumeration) where
  (SVGAnimatedEnumeration a) == (SVGAnimatedEnumeration b) = js_eq a b

instance PToJSVal SVGAnimatedEnumeration where
  pToJSVal = unSVGAnimatedEnumeration
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedEnumeration where
  pFromJSVal = SVGAnimatedEnumeration
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedEnumeration where
  toJSVal = return . unSVGAnimatedEnumeration
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedEnumeration where
  fromJSVal = return . fmap SVGAnimatedEnumeration . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedEnumeration where
  toGObject = GObject . unSVGAnimatedEnumeration
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedEnumeration . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedEnumeration :: IsGObject obj => obj -> SVGAnimatedEnumeration
castToSVGAnimatedEnumeration = castTo gTypeSVGAnimatedEnumeration "SVGAnimatedEnumeration"

foreign import javascript unsafe "window[\"SVGAnimatedEnumeration\"]" gTypeSVGAnimatedEnumeration :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedInteger".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger Mozilla SVGAnimatedInteger documentation>
newtype SVGAnimatedInteger = SVGAnimatedInteger { unSVGAnimatedInteger :: JSVal }

instance Eq (SVGAnimatedInteger) where
  (SVGAnimatedInteger a) == (SVGAnimatedInteger b) = js_eq a b

instance PToJSVal SVGAnimatedInteger where
  pToJSVal = unSVGAnimatedInteger
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedInteger where
  pFromJSVal = SVGAnimatedInteger
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedInteger where
  toJSVal = return . unSVGAnimatedInteger
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedInteger where
  fromJSVal = return . fmap SVGAnimatedInteger . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedInteger where
  toGObject = GObject . unSVGAnimatedInteger
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedInteger . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedInteger :: IsGObject obj => obj -> SVGAnimatedInteger
castToSVGAnimatedInteger = castTo gTypeSVGAnimatedInteger "SVGAnimatedInteger"

foreign import javascript unsafe "window[\"SVGAnimatedInteger\"]" gTypeSVGAnimatedInteger :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength Mozilla SVGAnimatedLength documentation>
newtype SVGAnimatedLength = SVGAnimatedLength { unSVGAnimatedLength :: JSVal }

instance Eq (SVGAnimatedLength) where
  (SVGAnimatedLength a) == (SVGAnimatedLength b) = js_eq a b

instance PToJSVal SVGAnimatedLength where
  pToJSVal = unSVGAnimatedLength
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedLength where
  pFromJSVal = SVGAnimatedLength
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedLength where
  toJSVal = return . unSVGAnimatedLength
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedLength where
  fromJSVal = return . fmap SVGAnimatedLength . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedLength where
  toGObject = GObject . unSVGAnimatedLength
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedLength . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedLength :: IsGObject obj => obj -> SVGAnimatedLength
castToSVGAnimatedLength = castTo gTypeSVGAnimatedLength "SVGAnimatedLength"

foreign import javascript unsafe "window[\"SVGAnimatedLength\"]" gTypeSVGAnimatedLength :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList Mozilla SVGAnimatedLengthList documentation>
newtype SVGAnimatedLengthList = SVGAnimatedLengthList { unSVGAnimatedLengthList :: JSVal }

instance Eq (SVGAnimatedLengthList) where
  (SVGAnimatedLengthList a) == (SVGAnimatedLengthList b) = js_eq a b

instance PToJSVal SVGAnimatedLengthList where
  pToJSVal = unSVGAnimatedLengthList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedLengthList where
  pFromJSVal = SVGAnimatedLengthList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedLengthList where
  toJSVal = return . unSVGAnimatedLengthList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedLengthList where
  fromJSVal = return . fmap SVGAnimatedLengthList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedLengthList where
  toGObject = GObject . unSVGAnimatedLengthList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedLengthList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedLengthList :: IsGObject obj => obj -> SVGAnimatedLengthList
castToSVGAnimatedLengthList = castTo gTypeSVGAnimatedLengthList "SVGAnimatedLengthList"

foreign import javascript unsafe "window[\"SVGAnimatedLengthList\"]" gTypeSVGAnimatedLengthList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber Mozilla SVGAnimatedNumber documentation>
newtype SVGAnimatedNumber = SVGAnimatedNumber { unSVGAnimatedNumber :: JSVal }

instance Eq (SVGAnimatedNumber) where
  (SVGAnimatedNumber a) == (SVGAnimatedNumber b) = js_eq a b

instance PToJSVal SVGAnimatedNumber where
  pToJSVal = unSVGAnimatedNumber
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedNumber where
  pFromJSVal = SVGAnimatedNumber
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedNumber where
  toJSVal = return . unSVGAnimatedNumber
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedNumber where
  fromJSVal = return . fmap SVGAnimatedNumber . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedNumber where
  toGObject = GObject . unSVGAnimatedNumber
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedNumber . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedNumber :: IsGObject obj => obj -> SVGAnimatedNumber
castToSVGAnimatedNumber = castTo gTypeSVGAnimatedNumber "SVGAnimatedNumber"

foreign import javascript unsafe "window[\"SVGAnimatedNumber\"]" gTypeSVGAnimatedNumber :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList Mozilla SVGAnimatedNumberList documentation>
newtype SVGAnimatedNumberList = SVGAnimatedNumberList { unSVGAnimatedNumberList :: JSVal }

instance Eq (SVGAnimatedNumberList) where
  (SVGAnimatedNumberList a) == (SVGAnimatedNumberList b) = js_eq a b

instance PToJSVal SVGAnimatedNumberList where
  pToJSVal = unSVGAnimatedNumberList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedNumberList where
  pFromJSVal = SVGAnimatedNumberList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedNumberList where
  toJSVal = return . unSVGAnimatedNumberList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedNumberList where
  fromJSVal = return . fmap SVGAnimatedNumberList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedNumberList where
  toGObject = GObject . unSVGAnimatedNumberList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedNumberList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedNumberList :: IsGObject obj => obj -> SVGAnimatedNumberList
castToSVGAnimatedNumberList = castTo gTypeSVGAnimatedNumberList "SVGAnimatedNumberList"

foreign import javascript unsafe "window[\"SVGAnimatedNumberList\"]" gTypeSVGAnimatedNumberList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedPreserveAspectRatio Mozilla SVGAnimatedPreserveAspectRatio documentation>
newtype SVGAnimatedPreserveAspectRatio = SVGAnimatedPreserveAspectRatio { unSVGAnimatedPreserveAspectRatio :: JSVal }

instance Eq (SVGAnimatedPreserveAspectRatio) where
  (SVGAnimatedPreserveAspectRatio a) == (SVGAnimatedPreserveAspectRatio b) = js_eq a b

instance PToJSVal SVGAnimatedPreserveAspectRatio where
  pToJSVal = unSVGAnimatedPreserveAspectRatio
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedPreserveAspectRatio where
  pFromJSVal = SVGAnimatedPreserveAspectRatio
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedPreserveAspectRatio where
  toJSVal = return . unSVGAnimatedPreserveAspectRatio
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedPreserveAspectRatio where
  fromJSVal = return . fmap SVGAnimatedPreserveAspectRatio . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedPreserveAspectRatio where
  toGObject = GObject . unSVGAnimatedPreserveAspectRatio
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedPreserveAspectRatio . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedPreserveAspectRatio :: IsGObject obj => obj -> SVGAnimatedPreserveAspectRatio
castToSVGAnimatedPreserveAspectRatio = castTo gTypeSVGAnimatedPreserveAspectRatio "SVGAnimatedPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGAnimatedPreserveAspectRatio\"]" gTypeSVGAnimatedPreserveAspectRatio :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect Mozilla SVGAnimatedRect documentation>
newtype SVGAnimatedRect = SVGAnimatedRect { unSVGAnimatedRect :: JSVal }

instance Eq (SVGAnimatedRect) where
  (SVGAnimatedRect a) == (SVGAnimatedRect b) = js_eq a b

instance PToJSVal SVGAnimatedRect where
  pToJSVal = unSVGAnimatedRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedRect where
  pFromJSVal = SVGAnimatedRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedRect where
  toJSVal = return . unSVGAnimatedRect
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedRect where
  fromJSVal = return . fmap SVGAnimatedRect . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedRect where
  toGObject = GObject . unSVGAnimatedRect
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedRect . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedRect :: IsGObject obj => obj -> SVGAnimatedRect
castToSVGAnimatedRect = castTo gTypeSVGAnimatedRect "SVGAnimatedRect"

foreign import javascript unsafe "window[\"SVGAnimatedRect\"]" gTypeSVGAnimatedRect :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedString".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString Mozilla SVGAnimatedString documentation>
newtype SVGAnimatedString = SVGAnimatedString { unSVGAnimatedString :: JSVal }

instance Eq (SVGAnimatedString) where
  (SVGAnimatedString a) == (SVGAnimatedString b) = js_eq a b

instance PToJSVal SVGAnimatedString where
  pToJSVal = unSVGAnimatedString
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedString where
  pFromJSVal = SVGAnimatedString
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedString where
  toJSVal = return . unSVGAnimatedString
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedString where
  fromJSVal = return . fmap SVGAnimatedString . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedString where
  toGObject = GObject . unSVGAnimatedString
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedString . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedString :: IsGObject obj => obj -> SVGAnimatedString
castToSVGAnimatedString = castTo gTypeSVGAnimatedString "SVGAnimatedString"

foreign import javascript unsafe "window[\"SVGAnimatedString\"]" gTypeSVGAnimatedString :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimatedTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList Mozilla SVGAnimatedTransformList documentation>
newtype SVGAnimatedTransformList = SVGAnimatedTransformList { unSVGAnimatedTransformList :: JSVal }

instance Eq (SVGAnimatedTransformList) where
  (SVGAnimatedTransformList a) == (SVGAnimatedTransformList b) = js_eq a b

instance PToJSVal SVGAnimatedTransformList where
  pToJSVal = unSVGAnimatedTransformList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimatedTransformList where
  pFromJSVal = SVGAnimatedTransformList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimatedTransformList where
  toJSVal = return . unSVGAnimatedTransformList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimatedTransformList where
  fromJSVal = return . fmap SVGAnimatedTransformList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGAnimatedTransformList where
  toGObject = GObject . unSVGAnimatedTransformList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimatedTransformList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimatedTransformList :: IsGObject obj => obj -> SVGAnimatedTransformList
castToSVGAnimatedTransformList = castTo gTypeSVGAnimatedTransformList "SVGAnimatedTransformList"

foreign import javascript unsafe "window[\"SVGAnimatedTransformList\"]" gTypeSVGAnimatedTransformList :: GType
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
newtype SVGAnimationElement = SVGAnimationElement { unSVGAnimationElement :: JSVal }

instance Eq (SVGAnimationElement) where
  (SVGAnimationElement a) == (SVGAnimationElement b) = js_eq a b

instance PToJSVal SVGAnimationElement where
  pToJSVal = unSVGAnimationElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGAnimationElement where
  pFromJSVal = SVGAnimationElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGAnimationElement where
  toJSVal = return . unSVGAnimationElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGAnimationElement where
  fromJSVal = return . fmap SVGAnimationElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsSVGElement o => IsSVGAnimationElement o
toSVGAnimationElement :: IsSVGAnimationElement o => o -> SVGAnimationElement
toSVGAnimationElement = unsafeCastGObject . toGObject

instance IsSVGAnimationElement SVGAnimationElement
instance IsSVGElement SVGAnimationElement
instance IsElement SVGAnimationElement
instance IsNode SVGAnimationElement
instance IsEventTarget SVGAnimationElement
instance IsGObject SVGAnimationElement where
  toGObject = GObject . unSVGAnimationElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGAnimationElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGAnimationElement :: IsGObject obj => obj -> SVGAnimationElement
castToSVGAnimationElement = castTo gTypeSVGAnimationElement "SVGAnimationElement"

foreign import javascript unsafe "window[\"SVGAnimationElement\"]" gTypeSVGAnimationElement :: GType
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
newtype SVGCircleElement = SVGCircleElement { unSVGCircleElement :: JSVal }

instance Eq (SVGCircleElement) where
  (SVGCircleElement a) == (SVGCircleElement b) = js_eq a b

instance PToJSVal SVGCircleElement where
  pToJSVal = unSVGCircleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGCircleElement where
  pFromJSVal = SVGCircleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGCircleElement where
  toJSVal = return . unSVGCircleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGCircleElement where
  fromJSVal = return . fmap SVGCircleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGCircleElement
instance IsSVGElement SVGCircleElement
instance IsElement SVGCircleElement
instance IsNode SVGCircleElement
instance IsEventTarget SVGCircleElement
instance IsGObject SVGCircleElement where
  toGObject = GObject . unSVGCircleElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGCircleElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGCircleElement :: IsGObject obj => obj -> SVGCircleElement
castToSVGCircleElement = castTo gTypeSVGCircleElement "SVGCircleElement"

foreign import javascript unsafe "window[\"SVGCircleElement\"]" gTypeSVGCircleElement :: GType
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
newtype SVGClipPathElement = SVGClipPathElement { unSVGClipPathElement :: JSVal }

instance Eq (SVGClipPathElement) where
  (SVGClipPathElement a) == (SVGClipPathElement b) = js_eq a b

instance PToJSVal SVGClipPathElement where
  pToJSVal = unSVGClipPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGClipPathElement where
  pFromJSVal = SVGClipPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGClipPathElement where
  toJSVal = return . unSVGClipPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGClipPathElement where
  fromJSVal = return . fmap SVGClipPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGClipPathElement
instance IsSVGElement SVGClipPathElement
instance IsElement SVGClipPathElement
instance IsNode SVGClipPathElement
instance IsEventTarget SVGClipPathElement
instance IsGObject SVGClipPathElement where
  toGObject = GObject . unSVGClipPathElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGClipPathElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGClipPathElement :: IsGObject obj => obj -> SVGClipPathElement
castToSVGClipPathElement = castTo gTypeSVGClipPathElement "SVGClipPathElement"

foreign import javascript unsafe "window[\"SVGClipPathElement\"]" gTypeSVGClipPathElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGColor".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGColor Mozilla SVGColor documentation>
newtype SVGColor = SVGColor { unSVGColor :: JSVal }

instance Eq (SVGColor) where
  (SVGColor a) == (SVGColor b) = js_eq a b

instance PToJSVal SVGColor where
  pToJSVal = unSVGColor
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGColor where
  pFromJSVal = SVGColor
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGColor where
  toJSVal = return . unSVGColor
  {-# INLINE toJSVal #-}

instance FromJSVal SVGColor where
  fromJSVal = return . fmap SVGColor . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsCSSValue o => IsSVGColor o
toSVGColor :: IsSVGColor o => o -> SVGColor
toSVGColor = unsafeCastGObject . toGObject

instance IsSVGColor SVGColor
instance IsCSSValue SVGColor
instance IsGObject SVGColor where
  toGObject = GObject . unSVGColor
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGColor . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGColor :: IsGObject obj => obj -> SVGColor
castToSVGColor = castTo gTypeSVGColor "SVGColor"

foreign import javascript unsafe "window[\"SVGColor\"]" gTypeSVGColor :: GType
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
newtype SVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement { unSVGComponentTransferFunctionElement :: JSVal }

instance Eq (SVGComponentTransferFunctionElement) where
  (SVGComponentTransferFunctionElement a) == (SVGComponentTransferFunctionElement b) = js_eq a b

instance PToJSVal SVGComponentTransferFunctionElement where
  pToJSVal = unSVGComponentTransferFunctionElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGComponentTransferFunctionElement where
  pFromJSVal = SVGComponentTransferFunctionElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGComponentTransferFunctionElement where
  toJSVal = return . unSVGComponentTransferFunctionElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGComponentTransferFunctionElement where
  fromJSVal = return . fmap SVGComponentTransferFunctionElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsSVGElement o => IsSVGComponentTransferFunctionElement o
toSVGComponentTransferFunctionElement :: IsSVGComponentTransferFunctionElement o => o -> SVGComponentTransferFunctionElement
toSVGComponentTransferFunctionElement = unsafeCastGObject . toGObject

instance IsSVGComponentTransferFunctionElement SVGComponentTransferFunctionElement
instance IsSVGElement SVGComponentTransferFunctionElement
instance IsElement SVGComponentTransferFunctionElement
instance IsNode SVGComponentTransferFunctionElement
instance IsEventTarget SVGComponentTransferFunctionElement
instance IsGObject SVGComponentTransferFunctionElement where
  toGObject = GObject . unSVGComponentTransferFunctionElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGComponentTransferFunctionElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGComponentTransferFunctionElement :: IsGObject obj => obj -> SVGComponentTransferFunctionElement
castToSVGComponentTransferFunctionElement = castTo gTypeSVGComponentTransferFunctionElement "SVGComponentTransferFunctionElement"

foreign import javascript unsafe "window[\"SVGComponentTransferFunctionElement\"]" gTypeSVGComponentTransferFunctionElement :: GType
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
newtype SVGCursorElement = SVGCursorElement { unSVGCursorElement :: JSVal }

instance Eq (SVGCursorElement) where
  (SVGCursorElement a) == (SVGCursorElement b) = js_eq a b

instance PToJSVal SVGCursorElement where
  pToJSVal = unSVGCursorElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGCursorElement where
  pFromJSVal = SVGCursorElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGCursorElement where
  toJSVal = return . unSVGCursorElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGCursorElement where
  fromJSVal = return . fmap SVGCursorElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGCursorElement
instance IsElement SVGCursorElement
instance IsNode SVGCursorElement
instance IsEventTarget SVGCursorElement
instance IsGObject SVGCursorElement where
  toGObject = GObject . unSVGCursorElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGCursorElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGCursorElement :: IsGObject obj => obj -> SVGCursorElement
castToSVGCursorElement = castTo gTypeSVGCursorElement "SVGCursorElement"

foreign import javascript unsafe "window[\"SVGCursorElement\"]" gTypeSVGCursorElement :: GType
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
newtype SVGDefsElement = SVGDefsElement { unSVGDefsElement :: JSVal }

instance Eq (SVGDefsElement) where
  (SVGDefsElement a) == (SVGDefsElement b) = js_eq a b

instance PToJSVal SVGDefsElement where
  pToJSVal = unSVGDefsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDefsElement where
  pFromJSVal = SVGDefsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDefsElement where
  toJSVal = return . unSVGDefsElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDefsElement where
  fromJSVal = return . fmap SVGDefsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGDefsElement
instance IsSVGElement SVGDefsElement
instance IsElement SVGDefsElement
instance IsNode SVGDefsElement
instance IsEventTarget SVGDefsElement
instance IsGObject SVGDefsElement where
  toGObject = GObject . unSVGDefsElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGDefsElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGDefsElement :: IsGObject obj => obj -> SVGDefsElement
castToSVGDefsElement = castTo gTypeSVGDefsElement "SVGDefsElement"

foreign import javascript unsafe "window[\"SVGDefsElement\"]" gTypeSVGDefsElement :: GType
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
newtype SVGDescElement = SVGDescElement { unSVGDescElement :: JSVal }

instance Eq (SVGDescElement) where
  (SVGDescElement a) == (SVGDescElement b) = js_eq a b

instance PToJSVal SVGDescElement where
  pToJSVal = unSVGDescElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDescElement where
  pFromJSVal = SVGDescElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDescElement where
  toJSVal = return . unSVGDescElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDescElement where
  fromJSVal = return . fmap SVGDescElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGDescElement
instance IsElement SVGDescElement
instance IsNode SVGDescElement
instance IsEventTarget SVGDescElement
instance IsGObject SVGDescElement where
  toGObject = GObject . unSVGDescElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGDescElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGDescElement :: IsGObject obj => obj -> SVGDescElement
castToSVGDescElement = castTo gTypeSVGDescElement "SVGDescElement"

foreign import javascript unsafe "window[\"SVGDescElement\"]" gTypeSVGDescElement :: GType
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
newtype SVGDocument = SVGDocument { unSVGDocument :: JSVal }

instance Eq (SVGDocument) where
  (SVGDocument a) == (SVGDocument b) = js_eq a b

instance PToJSVal SVGDocument where
  pToJSVal = unSVGDocument
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGDocument where
  pFromJSVal = SVGDocument
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGDocument where
  toJSVal = return . unSVGDocument
  {-# INLINE toJSVal #-}

instance FromJSVal SVGDocument where
  fromJSVal = return . fmap SVGDocument . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsDocument SVGDocument
instance IsNode SVGDocument
instance IsEventTarget SVGDocument
instance IsGObject SVGDocument where
  toGObject = GObject . unSVGDocument
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGDocument . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGDocument :: IsGObject obj => obj -> SVGDocument
castToSVGDocument = castTo gTypeSVGDocument "SVGDocument"

foreign import javascript unsafe "window[\"SVGDocument\"]" gTypeSVGDocument :: GType
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
newtype SVGElement = SVGElement { unSVGElement :: JSVal }

instance Eq (SVGElement) where
  (SVGElement a) == (SVGElement b) = js_eq a b

instance PToJSVal SVGElement where
  pToJSVal = unSVGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGElement where
  pFromJSVal = SVGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGElement where
  toJSVal = return . unSVGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGElement where
  fromJSVal = return . fmap SVGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsElement o => IsSVGElement o
toSVGElement :: IsSVGElement o => o -> SVGElement
toSVGElement = unsafeCastGObject . toGObject

instance IsSVGElement SVGElement
instance IsElement SVGElement
instance IsNode SVGElement
instance IsEventTarget SVGElement
instance IsGObject SVGElement where
  toGObject = GObject . unSVGElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGElement :: IsGObject obj => obj -> SVGElement
castToSVGElement = castTo gTypeSVGElement "SVGElement"

foreign import javascript unsafe "window[\"SVGElement\"]" gTypeSVGElement :: GType
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
newtype SVGEllipseElement = SVGEllipseElement { unSVGEllipseElement :: JSVal }

instance Eq (SVGEllipseElement) where
  (SVGEllipseElement a) == (SVGEllipseElement b) = js_eq a b

instance PToJSVal SVGEllipseElement where
  pToJSVal = unSVGEllipseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGEllipseElement where
  pFromJSVal = SVGEllipseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGEllipseElement where
  toJSVal = return . unSVGEllipseElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGEllipseElement where
  fromJSVal = return . fmap SVGEllipseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGEllipseElement
instance IsSVGElement SVGEllipseElement
instance IsElement SVGEllipseElement
instance IsNode SVGEllipseElement
instance IsEventTarget SVGEllipseElement
instance IsGObject SVGEllipseElement where
  toGObject = GObject . unSVGEllipseElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGEllipseElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGEllipseElement :: IsGObject obj => obj -> SVGEllipseElement
castToSVGEllipseElement = castTo gTypeSVGEllipseElement "SVGEllipseElement"

foreign import javascript unsafe "window[\"SVGEllipseElement\"]" gTypeSVGEllipseElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGExternalResourcesRequired".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired Mozilla SVGExternalResourcesRequired documentation>
newtype SVGExternalResourcesRequired = SVGExternalResourcesRequired { unSVGExternalResourcesRequired :: JSVal }

instance Eq (SVGExternalResourcesRequired) where
  (SVGExternalResourcesRequired a) == (SVGExternalResourcesRequired b) = js_eq a b

instance PToJSVal SVGExternalResourcesRequired where
  pToJSVal = unSVGExternalResourcesRequired
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGExternalResourcesRequired where
  pFromJSVal = SVGExternalResourcesRequired
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGExternalResourcesRequired where
  toJSVal = return . unSVGExternalResourcesRequired
  {-# INLINE toJSVal #-}

instance FromJSVal SVGExternalResourcesRequired where
  fromJSVal = return . fmap SVGExternalResourcesRequired . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGExternalResourcesRequired where
  toGObject = GObject . unSVGExternalResourcesRequired
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGExternalResourcesRequired . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGExternalResourcesRequired :: IsGObject obj => obj -> SVGExternalResourcesRequired
castToSVGExternalResourcesRequired = castTo gTypeSVGExternalResourcesRequired "SVGExternalResourcesRequired"

foreign import javascript unsafe "window[\"SVGExternalResourcesRequired\"]" gTypeSVGExternalResourcesRequired :: GType
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
newtype SVGFEBlendElement = SVGFEBlendElement { unSVGFEBlendElement :: JSVal }

instance Eq (SVGFEBlendElement) where
  (SVGFEBlendElement a) == (SVGFEBlendElement b) = js_eq a b

instance PToJSVal SVGFEBlendElement where
  pToJSVal = unSVGFEBlendElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEBlendElement where
  pFromJSVal = SVGFEBlendElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEBlendElement where
  toJSVal = return . unSVGFEBlendElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEBlendElement where
  fromJSVal = return . fmap SVGFEBlendElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEBlendElement
instance IsElement SVGFEBlendElement
instance IsNode SVGFEBlendElement
instance IsEventTarget SVGFEBlendElement
instance IsGObject SVGFEBlendElement where
  toGObject = GObject . unSVGFEBlendElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEBlendElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEBlendElement :: IsGObject obj => obj -> SVGFEBlendElement
castToSVGFEBlendElement = castTo gTypeSVGFEBlendElement "SVGFEBlendElement"

foreign import javascript unsafe "window[\"SVGFEBlendElement\"]" gTypeSVGFEBlendElement :: GType
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
newtype SVGFEColorMatrixElement = SVGFEColorMatrixElement { unSVGFEColorMatrixElement :: JSVal }

instance Eq (SVGFEColorMatrixElement) where
  (SVGFEColorMatrixElement a) == (SVGFEColorMatrixElement b) = js_eq a b

instance PToJSVal SVGFEColorMatrixElement where
  pToJSVal = unSVGFEColorMatrixElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEColorMatrixElement where
  pFromJSVal = SVGFEColorMatrixElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEColorMatrixElement where
  toJSVal = return . unSVGFEColorMatrixElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEColorMatrixElement where
  fromJSVal = return . fmap SVGFEColorMatrixElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEColorMatrixElement
instance IsElement SVGFEColorMatrixElement
instance IsNode SVGFEColorMatrixElement
instance IsEventTarget SVGFEColorMatrixElement
instance IsGObject SVGFEColorMatrixElement where
  toGObject = GObject . unSVGFEColorMatrixElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEColorMatrixElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEColorMatrixElement :: IsGObject obj => obj -> SVGFEColorMatrixElement
castToSVGFEColorMatrixElement = castTo gTypeSVGFEColorMatrixElement "SVGFEColorMatrixElement"

foreign import javascript unsafe "window[\"SVGFEColorMatrixElement\"]" gTypeSVGFEColorMatrixElement :: GType
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
newtype SVGFEComponentTransferElement = SVGFEComponentTransferElement { unSVGFEComponentTransferElement :: JSVal }

instance Eq (SVGFEComponentTransferElement) where
  (SVGFEComponentTransferElement a) == (SVGFEComponentTransferElement b) = js_eq a b

instance PToJSVal SVGFEComponentTransferElement where
  pToJSVal = unSVGFEComponentTransferElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEComponentTransferElement where
  pFromJSVal = SVGFEComponentTransferElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEComponentTransferElement where
  toJSVal = return . unSVGFEComponentTransferElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEComponentTransferElement where
  fromJSVal = return . fmap SVGFEComponentTransferElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEComponentTransferElement
instance IsElement SVGFEComponentTransferElement
instance IsNode SVGFEComponentTransferElement
instance IsEventTarget SVGFEComponentTransferElement
instance IsGObject SVGFEComponentTransferElement where
  toGObject = GObject . unSVGFEComponentTransferElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEComponentTransferElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEComponentTransferElement :: IsGObject obj => obj -> SVGFEComponentTransferElement
castToSVGFEComponentTransferElement = castTo gTypeSVGFEComponentTransferElement "SVGFEComponentTransferElement"

foreign import javascript unsafe "window[\"SVGFEComponentTransferElement\"]" gTypeSVGFEComponentTransferElement :: GType
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
newtype SVGFECompositeElement = SVGFECompositeElement { unSVGFECompositeElement :: JSVal }

instance Eq (SVGFECompositeElement) where
  (SVGFECompositeElement a) == (SVGFECompositeElement b) = js_eq a b

instance PToJSVal SVGFECompositeElement where
  pToJSVal = unSVGFECompositeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFECompositeElement where
  pFromJSVal = SVGFECompositeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFECompositeElement where
  toJSVal = return . unSVGFECompositeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFECompositeElement where
  fromJSVal = return . fmap SVGFECompositeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFECompositeElement
instance IsElement SVGFECompositeElement
instance IsNode SVGFECompositeElement
instance IsEventTarget SVGFECompositeElement
instance IsGObject SVGFECompositeElement where
  toGObject = GObject . unSVGFECompositeElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFECompositeElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFECompositeElement :: IsGObject obj => obj -> SVGFECompositeElement
castToSVGFECompositeElement = castTo gTypeSVGFECompositeElement "SVGFECompositeElement"

foreign import javascript unsafe "window[\"SVGFECompositeElement\"]" gTypeSVGFECompositeElement :: GType
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
newtype SVGFEConvolveMatrixElement = SVGFEConvolveMatrixElement { unSVGFEConvolveMatrixElement :: JSVal }

instance Eq (SVGFEConvolveMatrixElement) where
  (SVGFEConvolveMatrixElement a) == (SVGFEConvolveMatrixElement b) = js_eq a b

instance PToJSVal SVGFEConvolveMatrixElement where
  pToJSVal = unSVGFEConvolveMatrixElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEConvolveMatrixElement where
  pFromJSVal = SVGFEConvolveMatrixElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEConvolveMatrixElement where
  toJSVal = return . unSVGFEConvolveMatrixElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEConvolveMatrixElement where
  fromJSVal = return . fmap SVGFEConvolveMatrixElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEConvolveMatrixElement
instance IsElement SVGFEConvolveMatrixElement
instance IsNode SVGFEConvolveMatrixElement
instance IsEventTarget SVGFEConvolveMatrixElement
instance IsGObject SVGFEConvolveMatrixElement where
  toGObject = GObject . unSVGFEConvolveMatrixElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEConvolveMatrixElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEConvolveMatrixElement :: IsGObject obj => obj -> SVGFEConvolveMatrixElement
castToSVGFEConvolveMatrixElement = castTo gTypeSVGFEConvolveMatrixElement "SVGFEConvolveMatrixElement"

foreign import javascript unsafe "window[\"SVGFEConvolveMatrixElement\"]" gTypeSVGFEConvolveMatrixElement :: GType
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
newtype SVGFEDiffuseLightingElement = SVGFEDiffuseLightingElement { unSVGFEDiffuseLightingElement :: JSVal }

instance Eq (SVGFEDiffuseLightingElement) where
  (SVGFEDiffuseLightingElement a) == (SVGFEDiffuseLightingElement b) = js_eq a b

instance PToJSVal SVGFEDiffuseLightingElement where
  pToJSVal = unSVGFEDiffuseLightingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDiffuseLightingElement where
  pFromJSVal = SVGFEDiffuseLightingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDiffuseLightingElement where
  toJSVal = return . unSVGFEDiffuseLightingElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDiffuseLightingElement where
  fromJSVal = return . fmap SVGFEDiffuseLightingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEDiffuseLightingElement
instance IsElement SVGFEDiffuseLightingElement
instance IsNode SVGFEDiffuseLightingElement
instance IsEventTarget SVGFEDiffuseLightingElement
instance IsGObject SVGFEDiffuseLightingElement where
  toGObject = GObject . unSVGFEDiffuseLightingElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEDiffuseLightingElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEDiffuseLightingElement :: IsGObject obj => obj -> SVGFEDiffuseLightingElement
castToSVGFEDiffuseLightingElement = castTo gTypeSVGFEDiffuseLightingElement "SVGFEDiffuseLightingElement"

foreign import javascript unsafe "window[\"SVGFEDiffuseLightingElement\"]" gTypeSVGFEDiffuseLightingElement :: GType
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
newtype SVGFEDisplacementMapElement = SVGFEDisplacementMapElement { unSVGFEDisplacementMapElement :: JSVal }

instance Eq (SVGFEDisplacementMapElement) where
  (SVGFEDisplacementMapElement a) == (SVGFEDisplacementMapElement b) = js_eq a b

instance PToJSVal SVGFEDisplacementMapElement where
  pToJSVal = unSVGFEDisplacementMapElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDisplacementMapElement where
  pFromJSVal = SVGFEDisplacementMapElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDisplacementMapElement where
  toJSVal = return . unSVGFEDisplacementMapElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDisplacementMapElement where
  fromJSVal = return . fmap SVGFEDisplacementMapElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEDisplacementMapElement
instance IsElement SVGFEDisplacementMapElement
instance IsNode SVGFEDisplacementMapElement
instance IsEventTarget SVGFEDisplacementMapElement
instance IsGObject SVGFEDisplacementMapElement where
  toGObject = GObject . unSVGFEDisplacementMapElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEDisplacementMapElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEDisplacementMapElement :: IsGObject obj => obj -> SVGFEDisplacementMapElement
castToSVGFEDisplacementMapElement = castTo gTypeSVGFEDisplacementMapElement "SVGFEDisplacementMapElement"

foreign import javascript unsafe "window[\"SVGFEDisplacementMapElement\"]" gTypeSVGFEDisplacementMapElement :: GType
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
newtype SVGFEDistantLightElement = SVGFEDistantLightElement { unSVGFEDistantLightElement :: JSVal }

instance Eq (SVGFEDistantLightElement) where
  (SVGFEDistantLightElement a) == (SVGFEDistantLightElement b) = js_eq a b

instance PToJSVal SVGFEDistantLightElement where
  pToJSVal = unSVGFEDistantLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDistantLightElement where
  pFromJSVal = SVGFEDistantLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDistantLightElement where
  toJSVal = return . unSVGFEDistantLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDistantLightElement where
  fromJSVal = return . fmap SVGFEDistantLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEDistantLightElement
instance IsElement SVGFEDistantLightElement
instance IsNode SVGFEDistantLightElement
instance IsEventTarget SVGFEDistantLightElement
instance IsGObject SVGFEDistantLightElement where
  toGObject = GObject . unSVGFEDistantLightElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEDistantLightElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEDistantLightElement :: IsGObject obj => obj -> SVGFEDistantLightElement
castToSVGFEDistantLightElement = castTo gTypeSVGFEDistantLightElement "SVGFEDistantLightElement"

foreign import javascript unsafe "window[\"SVGFEDistantLightElement\"]" gTypeSVGFEDistantLightElement :: GType
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
newtype SVGFEDropShadowElement = SVGFEDropShadowElement { unSVGFEDropShadowElement :: JSVal }

instance Eq (SVGFEDropShadowElement) where
  (SVGFEDropShadowElement a) == (SVGFEDropShadowElement b) = js_eq a b

instance PToJSVal SVGFEDropShadowElement where
  pToJSVal = unSVGFEDropShadowElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEDropShadowElement where
  pFromJSVal = SVGFEDropShadowElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEDropShadowElement where
  toJSVal = return . unSVGFEDropShadowElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEDropShadowElement where
  fromJSVal = return . fmap SVGFEDropShadowElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEDropShadowElement
instance IsElement SVGFEDropShadowElement
instance IsNode SVGFEDropShadowElement
instance IsEventTarget SVGFEDropShadowElement
instance IsGObject SVGFEDropShadowElement where
  toGObject = GObject . unSVGFEDropShadowElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEDropShadowElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEDropShadowElement :: IsGObject obj => obj -> SVGFEDropShadowElement
castToSVGFEDropShadowElement = castTo gTypeSVGFEDropShadowElement "SVGFEDropShadowElement"

foreign import javascript unsafe "window[\"SVGFEDropShadowElement\"]" gTypeSVGFEDropShadowElement :: GType
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
newtype SVGFEFloodElement = SVGFEFloodElement { unSVGFEFloodElement :: JSVal }

instance Eq (SVGFEFloodElement) where
  (SVGFEFloodElement a) == (SVGFEFloodElement b) = js_eq a b

instance PToJSVal SVGFEFloodElement where
  pToJSVal = unSVGFEFloodElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFloodElement where
  pFromJSVal = SVGFEFloodElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFloodElement where
  toJSVal = return . unSVGFEFloodElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFloodElement where
  fromJSVal = return . fmap SVGFEFloodElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEFloodElement
instance IsElement SVGFEFloodElement
instance IsNode SVGFEFloodElement
instance IsEventTarget SVGFEFloodElement
instance IsGObject SVGFEFloodElement where
  toGObject = GObject . unSVGFEFloodElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEFloodElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEFloodElement :: IsGObject obj => obj -> SVGFEFloodElement
castToSVGFEFloodElement = castTo gTypeSVGFEFloodElement "SVGFEFloodElement"

foreign import javascript unsafe "window[\"SVGFEFloodElement\"]" gTypeSVGFEFloodElement :: GType
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
newtype SVGFEFuncAElement = SVGFEFuncAElement { unSVGFEFuncAElement :: JSVal }

instance Eq (SVGFEFuncAElement) where
  (SVGFEFuncAElement a) == (SVGFEFuncAElement b) = js_eq a b

instance PToJSVal SVGFEFuncAElement where
  pToJSVal = unSVGFEFuncAElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncAElement where
  pFromJSVal = SVGFEFuncAElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncAElement where
  toJSVal = return . unSVGFEFuncAElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncAElement where
  fromJSVal = return . fmap SVGFEFuncAElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncAElement
instance IsSVGElement SVGFEFuncAElement
instance IsElement SVGFEFuncAElement
instance IsNode SVGFEFuncAElement
instance IsEventTarget SVGFEFuncAElement
instance IsGObject SVGFEFuncAElement where
  toGObject = GObject . unSVGFEFuncAElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEFuncAElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEFuncAElement :: IsGObject obj => obj -> SVGFEFuncAElement
castToSVGFEFuncAElement = castTo gTypeSVGFEFuncAElement "SVGFEFuncAElement"

foreign import javascript unsafe "window[\"SVGFEFuncAElement\"]" gTypeSVGFEFuncAElement :: GType
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
newtype SVGFEFuncBElement = SVGFEFuncBElement { unSVGFEFuncBElement :: JSVal }

instance Eq (SVGFEFuncBElement) where
  (SVGFEFuncBElement a) == (SVGFEFuncBElement b) = js_eq a b

instance PToJSVal SVGFEFuncBElement where
  pToJSVal = unSVGFEFuncBElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncBElement where
  pFromJSVal = SVGFEFuncBElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncBElement where
  toJSVal = return . unSVGFEFuncBElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncBElement where
  fromJSVal = return . fmap SVGFEFuncBElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncBElement
instance IsSVGElement SVGFEFuncBElement
instance IsElement SVGFEFuncBElement
instance IsNode SVGFEFuncBElement
instance IsEventTarget SVGFEFuncBElement
instance IsGObject SVGFEFuncBElement where
  toGObject = GObject . unSVGFEFuncBElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEFuncBElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEFuncBElement :: IsGObject obj => obj -> SVGFEFuncBElement
castToSVGFEFuncBElement = castTo gTypeSVGFEFuncBElement "SVGFEFuncBElement"

foreign import javascript unsafe "window[\"SVGFEFuncBElement\"]" gTypeSVGFEFuncBElement :: GType
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
newtype SVGFEFuncGElement = SVGFEFuncGElement { unSVGFEFuncGElement :: JSVal }

instance Eq (SVGFEFuncGElement) where
  (SVGFEFuncGElement a) == (SVGFEFuncGElement b) = js_eq a b

instance PToJSVal SVGFEFuncGElement where
  pToJSVal = unSVGFEFuncGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncGElement where
  pFromJSVal = SVGFEFuncGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncGElement where
  toJSVal = return . unSVGFEFuncGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncGElement where
  fromJSVal = return . fmap SVGFEFuncGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncGElement
instance IsSVGElement SVGFEFuncGElement
instance IsElement SVGFEFuncGElement
instance IsNode SVGFEFuncGElement
instance IsEventTarget SVGFEFuncGElement
instance IsGObject SVGFEFuncGElement where
  toGObject = GObject . unSVGFEFuncGElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEFuncGElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEFuncGElement :: IsGObject obj => obj -> SVGFEFuncGElement
castToSVGFEFuncGElement = castTo gTypeSVGFEFuncGElement "SVGFEFuncGElement"

foreign import javascript unsafe "window[\"SVGFEFuncGElement\"]" gTypeSVGFEFuncGElement :: GType
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
newtype SVGFEFuncRElement = SVGFEFuncRElement { unSVGFEFuncRElement :: JSVal }

instance Eq (SVGFEFuncRElement) where
  (SVGFEFuncRElement a) == (SVGFEFuncRElement b) = js_eq a b

instance PToJSVal SVGFEFuncRElement where
  pToJSVal = unSVGFEFuncRElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEFuncRElement where
  pFromJSVal = SVGFEFuncRElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEFuncRElement where
  toJSVal = return . unSVGFEFuncRElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEFuncRElement where
  fromJSVal = return . fmap SVGFEFuncRElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGComponentTransferFunctionElement SVGFEFuncRElement
instance IsSVGElement SVGFEFuncRElement
instance IsElement SVGFEFuncRElement
instance IsNode SVGFEFuncRElement
instance IsEventTarget SVGFEFuncRElement
instance IsGObject SVGFEFuncRElement where
  toGObject = GObject . unSVGFEFuncRElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEFuncRElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEFuncRElement :: IsGObject obj => obj -> SVGFEFuncRElement
castToSVGFEFuncRElement = castTo gTypeSVGFEFuncRElement "SVGFEFuncRElement"

foreign import javascript unsafe "window[\"SVGFEFuncRElement\"]" gTypeSVGFEFuncRElement :: GType
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
newtype SVGFEGaussianBlurElement = SVGFEGaussianBlurElement { unSVGFEGaussianBlurElement :: JSVal }

instance Eq (SVGFEGaussianBlurElement) where
  (SVGFEGaussianBlurElement a) == (SVGFEGaussianBlurElement b) = js_eq a b

instance PToJSVal SVGFEGaussianBlurElement where
  pToJSVal = unSVGFEGaussianBlurElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEGaussianBlurElement where
  pFromJSVal = SVGFEGaussianBlurElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEGaussianBlurElement where
  toJSVal = return . unSVGFEGaussianBlurElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEGaussianBlurElement where
  fromJSVal = return . fmap SVGFEGaussianBlurElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEGaussianBlurElement
instance IsElement SVGFEGaussianBlurElement
instance IsNode SVGFEGaussianBlurElement
instance IsEventTarget SVGFEGaussianBlurElement
instance IsGObject SVGFEGaussianBlurElement where
  toGObject = GObject . unSVGFEGaussianBlurElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEGaussianBlurElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEGaussianBlurElement :: IsGObject obj => obj -> SVGFEGaussianBlurElement
castToSVGFEGaussianBlurElement = castTo gTypeSVGFEGaussianBlurElement "SVGFEGaussianBlurElement"

foreign import javascript unsafe "window[\"SVGFEGaussianBlurElement\"]" gTypeSVGFEGaussianBlurElement :: GType
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
newtype SVGFEImageElement = SVGFEImageElement { unSVGFEImageElement :: JSVal }

instance Eq (SVGFEImageElement) where
  (SVGFEImageElement a) == (SVGFEImageElement b) = js_eq a b

instance PToJSVal SVGFEImageElement where
  pToJSVal = unSVGFEImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEImageElement where
  pFromJSVal = SVGFEImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEImageElement where
  toJSVal = return . unSVGFEImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEImageElement where
  fromJSVal = return . fmap SVGFEImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEImageElement
instance IsElement SVGFEImageElement
instance IsNode SVGFEImageElement
instance IsEventTarget SVGFEImageElement
instance IsGObject SVGFEImageElement where
  toGObject = GObject . unSVGFEImageElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEImageElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEImageElement :: IsGObject obj => obj -> SVGFEImageElement
castToSVGFEImageElement = castTo gTypeSVGFEImageElement "SVGFEImageElement"

foreign import javascript unsafe "window[\"SVGFEImageElement\"]" gTypeSVGFEImageElement :: GType
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
newtype SVGFEMergeElement = SVGFEMergeElement { unSVGFEMergeElement :: JSVal }

instance Eq (SVGFEMergeElement) where
  (SVGFEMergeElement a) == (SVGFEMergeElement b) = js_eq a b

instance PToJSVal SVGFEMergeElement where
  pToJSVal = unSVGFEMergeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMergeElement where
  pFromJSVal = SVGFEMergeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMergeElement where
  toJSVal = return . unSVGFEMergeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMergeElement where
  fromJSVal = return . fmap SVGFEMergeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEMergeElement
instance IsElement SVGFEMergeElement
instance IsNode SVGFEMergeElement
instance IsEventTarget SVGFEMergeElement
instance IsGObject SVGFEMergeElement where
  toGObject = GObject . unSVGFEMergeElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEMergeElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEMergeElement :: IsGObject obj => obj -> SVGFEMergeElement
castToSVGFEMergeElement = castTo gTypeSVGFEMergeElement "SVGFEMergeElement"

foreign import javascript unsafe "window[\"SVGFEMergeElement\"]" gTypeSVGFEMergeElement :: GType
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
newtype SVGFEMergeNodeElement = SVGFEMergeNodeElement { unSVGFEMergeNodeElement :: JSVal }

instance Eq (SVGFEMergeNodeElement) where
  (SVGFEMergeNodeElement a) == (SVGFEMergeNodeElement b) = js_eq a b

instance PToJSVal SVGFEMergeNodeElement where
  pToJSVal = unSVGFEMergeNodeElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMergeNodeElement where
  pFromJSVal = SVGFEMergeNodeElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMergeNodeElement where
  toJSVal = return . unSVGFEMergeNodeElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMergeNodeElement where
  fromJSVal = return . fmap SVGFEMergeNodeElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEMergeNodeElement
instance IsElement SVGFEMergeNodeElement
instance IsNode SVGFEMergeNodeElement
instance IsEventTarget SVGFEMergeNodeElement
instance IsGObject SVGFEMergeNodeElement where
  toGObject = GObject . unSVGFEMergeNodeElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEMergeNodeElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEMergeNodeElement :: IsGObject obj => obj -> SVGFEMergeNodeElement
castToSVGFEMergeNodeElement = castTo gTypeSVGFEMergeNodeElement "SVGFEMergeNodeElement"

foreign import javascript unsafe "window[\"SVGFEMergeNodeElement\"]" gTypeSVGFEMergeNodeElement :: GType
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
newtype SVGFEMorphologyElement = SVGFEMorphologyElement { unSVGFEMorphologyElement :: JSVal }

instance Eq (SVGFEMorphologyElement) where
  (SVGFEMorphologyElement a) == (SVGFEMorphologyElement b) = js_eq a b

instance PToJSVal SVGFEMorphologyElement where
  pToJSVal = unSVGFEMorphologyElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEMorphologyElement where
  pFromJSVal = SVGFEMorphologyElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEMorphologyElement where
  toJSVal = return . unSVGFEMorphologyElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEMorphologyElement where
  fromJSVal = return . fmap SVGFEMorphologyElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEMorphologyElement
instance IsElement SVGFEMorphologyElement
instance IsNode SVGFEMorphologyElement
instance IsEventTarget SVGFEMorphologyElement
instance IsGObject SVGFEMorphologyElement where
  toGObject = GObject . unSVGFEMorphologyElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEMorphologyElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEMorphologyElement :: IsGObject obj => obj -> SVGFEMorphologyElement
castToSVGFEMorphologyElement = castTo gTypeSVGFEMorphologyElement "SVGFEMorphologyElement"

foreign import javascript unsafe "window[\"SVGFEMorphologyElement\"]" gTypeSVGFEMorphologyElement :: GType
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
newtype SVGFEOffsetElement = SVGFEOffsetElement { unSVGFEOffsetElement :: JSVal }

instance Eq (SVGFEOffsetElement) where
  (SVGFEOffsetElement a) == (SVGFEOffsetElement b) = js_eq a b

instance PToJSVal SVGFEOffsetElement where
  pToJSVal = unSVGFEOffsetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEOffsetElement where
  pFromJSVal = SVGFEOffsetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEOffsetElement where
  toJSVal = return . unSVGFEOffsetElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEOffsetElement where
  fromJSVal = return . fmap SVGFEOffsetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEOffsetElement
instance IsElement SVGFEOffsetElement
instance IsNode SVGFEOffsetElement
instance IsEventTarget SVGFEOffsetElement
instance IsGObject SVGFEOffsetElement where
  toGObject = GObject . unSVGFEOffsetElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEOffsetElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEOffsetElement :: IsGObject obj => obj -> SVGFEOffsetElement
castToSVGFEOffsetElement = castTo gTypeSVGFEOffsetElement "SVGFEOffsetElement"

foreign import javascript unsafe "window[\"SVGFEOffsetElement\"]" gTypeSVGFEOffsetElement :: GType
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
newtype SVGFEPointLightElement = SVGFEPointLightElement { unSVGFEPointLightElement :: JSVal }

instance Eq (SVGFEPointLightElement) where
  (SVGFEPointLightElement a) == (SVGFEPointLightElement b) = js_eq a b

instance PToJSVal SVGFEPointLightElement where
  pToJSVal = unSVGFEPointLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFEPointLightElement where
  pFromJSVal = SVGFEPointLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFEPointLightElement where
  toJSVal = return . unSVGFEPointLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFEPointLightElement where
  fromJSVal = return . fmap SVGFEPointLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFEPointLightElement
instance IsElement SVGFEPointLightElement
instance IsNode SVGFEPointLightElement
instance IsEventTarget SVGFEPointLightElement
instance IsGObject SVGFEPointLightElement where
  toGObject = GObject . unSVGFEPointLightElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFEPointLightElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFEPointLightElement :: IsGObject obj => obj -> SVGFEPointLightElement
castToSVGFEPointLightElement = castTo gTypeSVGFEPointLightElement "SVGFEPointLightElement"

foreign import javascript unsafe "window[\"SVGFEPointLightElement\"]" gTypeSVGFEPointLightElement :: GType
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
newtype SVGFESpecularLightingElement = SVGFESpecularLightingElement { unSVGFESpecularLightingElement :: JSVal }

instance Eq (SVGFESpecularLightingElement) where
  (SVGFESpecularLightingElement a) == (SVGFESpecularLightingElement b) = js_eq a b

instance PToJSVal SVGFESpecularLightingElement where
  pToJSVal = unSVGFESpecularLightingElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFESpecularLightingElement where
  pFromJSVal = SVGFESpecularLightingElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFESpecularLightingElement where
  toJSVal = return . unSVGFESpecularLightingElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFESpecularLightingElement where
  fromJSVal = return . fmap SVGFESpecularLightingElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFESpecularLightingElement
instance IsElement SVGFESpecularLightingElement
instance IsNode SVGFESpecularLightingElement
instance IsEventTarget SVGFESpecularLightingElement
instance IsGObject SVGFESpecularLightingElement where
  toGObject = GObject . unSVGFESpecularLightingElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFESpecularLightingElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFESpecularLightingElement :: IsGObject obj => obj -> SVGFESpecularLightingElement
castToSVGFESpecularLightingElement = castTo gTypeSVGFESpecularLightingElement "SVGFESpecularLightingElement"

foreign import javascript unsafe "window[\"SVGFESpecularLightingElement\"]" gTypeSVGFESpecularLightingElement :: GType
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
newtype SVGFESpotLightElement = SVGFESpotLightElement { unSVGFESpotLightElement :: JSVal }

instance Eq (SVGFESpotLightElement) where
  (SVGFESpotLightElement a) == (SVGFESpotLightElement b) = js_eq a b

instance PToJSVal SVGFESpotLightElement where
  pToJSVal = unSVGFESpotLightElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFESpotLightElement where
  pFromJSVal = SVGFESpotLightElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFESpotLightElement where
  toJSVal = return . unSVGFESpotLightElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFESpotLightElement where
  fromJSVal = return . fmap SVGFESpotLightElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFESpotLightElement
instance IsElement SVGFESpotLightElement
instance IsNode SVGFESpotLightElement
instance IsEventTarget SVGFESpotLightElement
instance IsGObject SVGFESpotLightElement where
  toGObject = GObject . unSVGFESpotLightElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFESpotLightElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFESpotLightElement :: IsGObject obj => obj -> SVGFESpotLightElement
castToSVGFESpotLightElement = castTo gTypeSVGFESpotLightElement "SVGFESpotLightElement"

foreign import javascript unsafe "window[\"SVGFESpotLightElement\"]" gTypeSVGFESpotLightElement :: GType
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
newtype SVGFETileElement = SVGFETileElement { unSVGFETileElement :: JSVal }

instance Eq (SVGFETileElement) where
  (SVGFETileElement a) == (SVGFETileElement b) = js_eq a b

instance PToJSVal SVGFETileElement where
  pToJSVal = unSVGFETileElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFETileElement where
  pFromJSVal = SVGFETileElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFETileElement where
  toJSVal = return . unSVGFETileElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFETileElement where
  fromJSVal = return . fmap SVGFETileElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFETileElement
instance IsElement SVGFETileElement
instance IsNode SVGFETileElement
instance IsEventTarget SVGFETileElement
instance IsGObject SVGFETileElement where
  toGObject = GObject . unSVGFETileElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFETileElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFETileElement :: IsGObject obj => obj -> SVGFETileElement
castToSVGFETileElement = castTo gTypeSVGFETileElement "SVGFETileElement"

foreign import javascript unsafe "window[\"SVGFETileElement\"]" gTypeSVGFETileElement :: GType
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
newtype SVGFETurbulenceElement = SVGFETurbulenceElement { unSVGFETurbulenceElement :: JSVal }

instance Eq (SVGFETurbulenceElement) where
  (SVGFETurbulenceElement a) == (SVGFETurbulenceElement b) = js_eq a b

instance PToJSVal SVGFETurbulenceElement where
  pToJSVal = unSVGFETurbulenceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFETurbulenceElement where
  pFromJSVal = SVGFETurbulenceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFETurbulenceElement where
  toJSVal = return . unSVGFETurbulenceElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFETurbulenceElement where
  fromJSVal = return . fmap SVGFETurbulenceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFETurbulenceElement
instance IsElement SVGFETurbulenceElement
instance IsNode SVGFETurbulenceElement
instance IsEventTarget SVGFETurbulenceElement
instance IsGObject SVGFETurbulenceElement where
  toGObject = GObject . unSVGFETurbulenceElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFETurbulenceElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFETurbulenceElement :: IsGObject obj => obj -> SVGFETurbulenceElement
castToSVGFETurbulenceElement = castTo gTypeSVGFETurbulenceElement "SVGFETurbulenceElement"

foreign import javascript unsafe "window[\"SVGFETurbulenceElement\"]" gTypeSVGFETurbulenceElement :: GType
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
newtype SVGFilterElement = SVGFilterElement { unSVGFilterElement :: JSVal }

instance Eq (SVGFilterElement) where
  (SVGFilterElement a) == (SVGFilterElement b) = js_eq a b

instance PToJSVal SVGFilterElement where
  pToJSVal = unSVGFilterElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFilterElement where
  pFromJSVal = SVGFilterElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFilterElement where
  toJSVal = return . unSVGFilterElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFilterElement where
  fromJSVal = return . fmap SVGFilterElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFilterElement
instance IsElement SVGFilterElement
instance IsNode SVGFilterElement
instance IsEventTarget SVGFilterElement
instance IsGObject SVGFilterElement where
  toGObject = GObject . unSVGFilterElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFilterElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFilterElement :: IsGObject obj => obj -> SVGFilterElement
castToSVGFilterElement = castTo gTypeSVGFilterElement "SVGFilterElement"

foreign import javascript unsafe "window[\"SVGFilterElement\"]" gTypeSVGFilterElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFilterPrimitiveStandardAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes Mozilla SVGFilterPrimitiveStandardAttributes documentation>
newtype SVGFilterPrimitiveStandardAttributes = SVGFilterPrimitiveStandardAttributes { unSVGFilterPrimitiveStandardAttributes :: JSVal }

instance Eq (SVGFilterPrimitiveStandardAttributes) where
  (SVGFilterPrimitiveStandardAttributes a) == (SVGFilterPrimitiveStandardAttributes b) = js_eq a b

instance PToJSVal SVGFilterPrimitiveStandardAttributes where
  pToJSVal = unSVGFilterPrimitiveStandardAttributes
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFilterPrimitiveStandardAttributes where
  pFromJSVal = SVGFilterPrimitiveStandardAttributes
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFilterPrimitiveStandardAttributes where
  toJSVal = return . unSVGFilterPrimitiveStandardAttributes
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFilterPrimitiveStandardAttributes where
  fromJSVal = return . fmap SVGFilterPrimitiveStandardAttributes . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGFilterPrimitiveStandardAttributes where
  toGObject = GObject . unSVGFilterPrimitiveStandardAttributes
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFilterPrimitiveStandardAttributes . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFilterPrimitiveStandardAttributes :: IsGObject obj => obj -> SVGFilterPrimitiveStandardAttributes
castToSVGFilterPrimitiveStandardAttributes = castTo gTypeSVGFilterPrimitiveStandardAttributes "SVGFilterPrimitiveStandardAttributes"

foreign import javascript unsafe "window[\"SVGFilterPrimitiveStandardAttributes\"]" gTypeSVGFilterPrimitiveStandardAttributes :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFitToViewBox".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox Mozilla SVGFitToViewBox documentation>
newtype SVGFitToViewBox = SVGFitToViewBox { unSVGFitToViewBox :: JSVal }

instance Eq (SVGFitToViewBox) where
  (SVGFitToViewBox a) == (SVGFitToViewBox b) = js_eq a b

instance PToJSVal SVGFitToViewBox where
  pToJSVal = unSVGFitToViewBox
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFitToViewBox where
  pFromJSVal = SVGFitToViewBox
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFitToViewBox where
  toJSVal = return . unSVGFitToViewBox
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFitToViewBox where
  fromJSVal = return . fmap SVGFitToViewBox . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGFitToViewBox where
  toGObject = GObject . unSVGFitToViewBox
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFitToViewBox . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFitToViewBox :: IsGObject obj => obj -> SVGFitToViewBox
castToSVGFitToViewBox = castTo gTypeSVGFitToViewBox "SVGFitToViewBox"

foreign import javascript unsafe "window[\"SVGFitToViewBox\"]" gTypeSVGFitToViewBox :: GType
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
newtype SVGFontElement = SVGFontElement { unSVGFontElement :: JSVal }

instance Eq (SVGFontElement) where
  (SVGFontElement a) == (SVGFontElement b) = js_eq a b

instance PToJSVal SVGFontElement where
  pToJSVal = unSVGFontElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontElement where
  pFromJSVal = SVGFontElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontElement where
  toJSVal = return . unSVGFontElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontElement where
  fromJSVal = return . fmap SVGFontElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontElement
instance IsElement SVGFontElement
instance IsNode SVGFontElement
instance IsEventTarget SVGFontElement
instance IsGObject SVGFontElement where
  toGObject = GObject . unSVGFontElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontElement :: IsGObject obj => obj -> SVGFontElement
castToSVGFontElement = castTo gTypeSVGFontElement "SVGFontElement"

foreign import javascript unsafe "window[\"SVGFontElement\"]" gTypeSVGFontElement :: GType
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
newtype SVGFontFaceElement = SVGFontFaceElement { unSVGFontFaceElement :: JSVal }

instance Eq (SVGFontFaceElement) where
  (SVGFontFaceElement a) == (SVGFontFaceElement b) = js_eq a b

instance PToJSVal SVGFontFaceElement where
  pToJSVal = unSVGFontFaceElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceElement where
  pFromJSVal = SVGFontFaceElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceElement where
  toJSVal = return . unSVGFontFaceElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceElement where
  fromJSVal = return . fmap SVGFontFaceElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontFaceElement
instance IsElement SVGFontFaceElement
instance IsNode SVGFontFaceElement
instance IsEventTarget SVGFontFaceElement
instance IsGObject SVGFontFaceElement where
  toGObject = GObject . unSVGFontFaceElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontFaceElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontFaceElement :: IsGObject obj => obj -> SVGFontFaceElement
castToSVGFontFaceElement = castTo gTypeSVGFontFaceElement "SVGFontFaceElement"

foreign import javascript unsafe "window[\"SVGFontFaceElement\"]" gTypeSVGFontFaceElement :: GType
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
newtype SVGFontFaceFormatElement = SVGFontFaceFormatElement { unSVGFontFaceFormatElement :: JSVal }

instance Eq (SVGFontFaceFormatElement) where
  (SVGFontFaceFormatElement a) == (SVGFontFaceFormatElement b) = js_eq a b

instance PToJSVal SVGFontFaceFormatElement where
  pToJSVal = unSVGFontFaceFormatElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceFormatElement where
  pFromJSVal = SVGFontFaceFormatElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceFormatElement where
  toJSVal = return . unSVGFontFaceFormatElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceFormatElement where
  fromJSVal = return . fmap SVGFontFaceFormatElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontFaceFormatElement
instance IsElement SVGFontFaceFormatElement
instance IsNode SVGFontFaceFormatElement
instance IsEventTarget SVGFontFaceFormatElement
instance IsGObject SVGFontFaceFormatElement where
  toGObject = GObject . unSVGFontFaceFormatElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontFaceFormatElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontFaceFormatElement :: IsGObject obj => obj -> SVGFontFaceFormatElement
castToSVGFontFaceFormatElement = castTo gTypeSVGFontFaceFormatElement "SVGFontFaceFormatElement"

foreign import javascript unsafe "window[\"SVGFontFaceFormatElement\"]" gTypeSVGFontFaceFormatElement :: GType
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
newtype SVGFontFaceNameElement = SVGFontFaceNameElement { unSVGFontFaceNameElement :: JSVal }

instance Eq (SVGFontFaceNameElement) where
  (SVGFontFaceNameElement a) == (SVGFontFaceNameElement b) = js_eq a b

instance PToJSVal SVGFontFaceNameElement where
  pToJSVal = unSVGFontFaceNameElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceNameElement where
  pFromJSVal = SVGFontFaceNameElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceNameElement where
  toJSVal = return . unSVGFontFaceNameElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceNameElement where
  fromJSVal = return . fmap SVGFontFaceNameElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontFaceNameElement
instance IsElement SVGFontFaceNameElement
instance IsNode SVGFontFaceNameElement
instance IsEventTarget SVGFontFaceNameElement
instance IsGObject SVGFontFaceNameElement where
  toGObject = GObject . unSVGFontFaceNameElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontFaceNameElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontFaceNameElement :: IsGObject obj => obj -> SVGFontFaceNameElement
castToSVGFontFaceNameElement = castTo gTypeSVGFontFaceNameElement "SVGFontFaceNameElement"

foreign import javascript unsafe "window[\"SVGFontFaceNameElement\"]" gTypeSVGFontFaceNameElement :: GType
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
newtype SVGFontFaceSrcElement = SVGFontFaceSrcElement { unSVGFontFaceSrcElement :: JSVal }

instance Eq (SVGFontFaceSrcElement) where
  (SVGFontFaceSrcElement a) == (SVGFontFaceSrcElement b) = js_eq a b

instance PToJSVal SVGFontFaceSrcElement where
  pToJSVal = unSVGFontFaceSrcElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceSrcElement where
  pFromJSVal = SVGFontFaceSrcElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceSrcElement where
  toJSVal = return . unSVGFontFaceSrcElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceSrcElement where
  fromJSVal = return . fmap SVGFontFaceSrcElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontFaceSrcElement
instance IsElement SVGFontFaceSrcElement
instance IsNode SVGFontFaceSrcElement
instance IsEventTarget SVGFontFaceSrcElement
instance IsGObject SVGFontFaceSrcElement where
  toGObject = GObject . unSVGFontFaceSrcElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontFaceSrcElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontFaceSrcElement :: IsGObject obj => obj -> SVGFontFaceSrcElement
castToSVGFontFaceSrcElement = castTo gTypeSVGFontFaceSrcElement "SVGFontFaceSrcElement"

foreign import javascript unsafe "window[\"SVGFontFaceSrcElement\"]" gTypeSVGFontFaceSrcElement :: GType
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
newtype SVGFontFaceUriElement = SVGFontFaceUriElement { unSVGFontFaceUriElement :: JSVal }

instance Eq (SVGFontFaceUriElement) where
  (SVGFontFaceUriElement a) == (SVGFontFaceUriElement b) = js_eq a b

instance PToJSVal SVGFontFaceUriElement where
  pToJSVal = unSVGFontFaceUriElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGFontFaceUriElement where
  pFromJSVal = SVGFontFaceUriElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGFontFaceUriElement where
  toJSVal = return . unSVGFontFaceUriElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGFontFaceUriElement where
  fromJSVal = return . fmap SVGFontFaceUriElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGFontFaceUriElement
instance IsElement SVGFontFaceUriElement
instance IsNode SVGFontFaceUriElement
instance IsEventTarget SVGFontFaceUriElement
instance IsGObject SVGFontFaceUriElement where
  toGObject = GObject . unSVGFontFaceUriElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGFontFaceUriElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGFontFaceUriElement :: IsGObject obj => obj -> SVGFontFaceUriElement
castToSVGFontFaceUriElement = castTo gTypeSVGFontFaceUriElement "SVGFontFaceUriElement"

foreign import javascript unsafe "window[\"SVGFontFaceUriElement\"]" gTypeSVGFontFaceUriElement :: GType
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
newtype SVGForeignObjectElement = SVGForeignObjectElement { unSVGForeignObjectElement :: JSVal }

instance Eq (SVGForeignObjectElement) where
  (SVGForeignObjectElement a) == (SVGForeignObjectElement b) = js_eq a b

instance PToJSVal SVGForeignObjectElement where
  pToJSVal = unSVGForeignObjectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGForeignObjectElement where
  pFromJSVal = SVGForeignObjectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGForeignObjectElement where
  toJSVal = return . unSVGForeignObjectElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGForeignObjectElement where
  fromJSVal = return . fmap SVGForeignObjectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGForeignObjectElement
instance IsSVGElement SVGForeignObjectElement
instance IsElement SVGForeignObjectElement
instance IsNode SVGForeignObjectElement
instance IsEventTarget SVGForeignObjectElement
instance IsGObject SVGForeignObjectElement where
  toGObject = GObject . unSVGForeignObjectElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGForeignObjectElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGForeignObjectElement :: IsGObject obj => obj -> SVGForeignObjectElement
castToSVGForeignObjectElement = castTo gTypeSVGForeignObjectElement "SVGForeignObjectElement"

foreign import javascript unsafe "window[\"SVGForeignObjectElement\"]" gTypeSVGForeignObjectElement :: GType
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
newtype SVGGElement = SVGGElement { unSVGGElement :: JSVal }

instance Eq (SVGGElement) where
  (SVGGElement a) == (SVGGElement b) = js_eq a b

instance PToJSVal SVGGElement where
  pToJSVal = unSVGGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGElement where
  pFromJSVal = SVGGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGElement where
  toJSVal = return . unSVGGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGElement where
  fromJSVal = return . fmap SVGGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGGElement
instance IsSVGElement SVGGElement
instance IsElement SVGGElement
instance IsNode SVGGElement
instance IsEventTarget SVGGElement
instance IsGObject SVGGElement where
  toGObject = GObject . unSVGGElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGGElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGGElement :: IsGObject obj => obj -> SVGGElement
castToSVGGElement = castTo gTypeSVGGElement "SVGGElement"

foreign import javascript unsafe "window[\"SVGGElement\"]" gTypeSVGGElement :: GType
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
newtype SVGGlyphElement = SVGGlyphElement { unSVGGlyphElement :: JSVal }

instance Eq (SVGGlyphElement) where
  (SVGGlyphElement a) == (SVGGlyphElement b) = js_eq a b

instance PToJSVal SVGGlyphElement where
  pToJSVal = unSVGGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGlyphElement where
  pFromJSVal = SVGGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGlyphElement where
  toJSVal = return . unSVGGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGlyphElement where
  fromJSVal = return . fmap SVGGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGGlyphElement
instance IsElement SVGGlyphElement
instance IsNode SVGGlyphElement
instance IsEventTarget SVGGlyphElement
instance IsGObject SVGGlyphElement where
  toGObject = GObject . unSVGGlyphElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGGlyphElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGGlyphElement :: IsGObject obj => obj -> SVGGlyphElement
castToSVGGlyphElement = castTo gTypeSVGGlyphElement "SVGGlyphElement"

foreign import javascript unsafe "window[\"SVGGlyphElement\"]" gTypeSVGGlyphElement :: GType
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
newtype SVGGlyphRefElement = SVGGlyphRefElement { unSVGGlyphRefElement :: JSVal }

instance Eq (SVGGlyphRefElement) where
  (SVGGlyphRefElement a) == (SVGGlyphRefElement b) = js_eq a b

instance PToJSVal SVGGlyphRefElement where
  pToJSVal = unSVGGlyphRefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGlyphRefElement where
  pFromJSVal = SVGGlyphRefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGlyphRefElement where
  toJSVal = return . unSVGGlyphRefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGlyphRefElement where
  fromJSVal = return . fmap SVGGlyphRefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGGlyphRefElement
instance IsElement SVGGlyphRefElement
instance IsNode SVGGlyphRefElement
instance IsEventTarget SVGGlyphRefElement
instance IsGObject SVGGlyphRefElement where
  toGObject = GObject . unSVGGlyphRefElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGGlyphRefElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGGlyphRefElement :: IsGObject obj => obj -> SVGGlyphRefElement
castToSVGGlyphRefElement = castTo gTypeSVGGlyphRefElement "SVGGlyphRefElement"

foreign import javascript unsafe "window[\"SVGGlyphRefElement\"]" gTypeSVGGlyphRefElement :: GType
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
newtype SVGGradientElement = SVGGradientElement { unSVGGradientElement :: JSVal }

instance Eq (SVGGradientElement) where
  (SVGGradientElement a) == (SVGGradientElement b) = js_eq a b

instance PToJSVal SVGGradientElement where
  pToJSVal = unSVGGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGradientElement where
  pFromJSVal = SVGGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGradientElement where
  toJSVal = return . unSVGGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGradientElement where
  fromJSVal = return . fmap SVGGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsSVGElement o => IsSVGGradientElement o
toSVGGradientElement :: IsSVGGradientElement o => o -> SVGGradientElement
toSVGGradientElement = unsafeCastGObject . toGObject

instance IsSVGGradientElement SVGGradientElement
instance IsSVGElement SVGGradientElement
instance IsElement SVGGradientElement
instance IsNode SVGGradientElement
instance IsEventTarget SVGGradientElement
instance IsGObject SVGGradientElement where
  toGObject = GObject . unSVGGradientElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGGradientElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGGradientElement :: IsGObject obj => obj -> SVGGradientElement
castToSVGGradientElement = castTo gTypeSVGGradientElement "SVGGradientElement"

foreign import javascript unsafe "window[\"SVGGradientElement\"]" gTypeSVGGradientElement :: GType
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
newtype SVGGraphicsElement = SVGGraphicsElement { unSVGGraphicsElement :: JSVal }

instance Eq (SVGGraphicsElement) where
  (SVGGraphicsElement a) == (SVGGraphicsElement b) = js_eq a b

instance PToJSVal SVGGraphicsElement where
  pToJSVal = unSVGGraphicsElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGGraphicsElement where
  pFromJSVal = SVGGraphicsElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGGraphicsElement where
  toJSVal = return . unSVGGraphicsElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGGraphicsElement where
  fromJSVal = return . fmap SVGGraphicsElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsSVGElement o => IsSVGGraphicsElement o
toSVGGraphicsElement :: IsSVGGraphicsElement o => o -> SVGGraphicsElement
toSVGGraphicsElement = unsafeCastGObject . toGObject

instance IsSVGGraphicsElement SVGGraphicsElement
instance IsSVGElement SVGGraphicsElement
instance IsElement SVGGraphicsElement
instance IsNode SVGGraphicsElement
instance IsEventTarget SVGGraphicsElement
instance IsGObject SVGGraphicsElement where
  toGObject = GObject . unSVGGraphicsElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGGraphicsElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGGraphicsElement :: IsGObject obj => obj -> SVGGraphicsElement
castToSVGGraphicsElement = castTo gTypeSVGGraphicsElement "SVGGraphicsElement"

foreign import javascript unsafe "window[\"SVGGraphicsElement\"]" gTypeSVGGraphicsElement :: GType
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
newtype SVGHKernElement = SVGHKernElement { unSVGHKernElement :: JSVal }

instance Eq (SVGHKernElement) where
  (SVGHKernElement a) == (SVGHKernElement b) = js_eq a b

instance PToJSVal SVGHKernElement where
  pToJSVal = unSVGHKernElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGHKernElement where
  pFromJSVal = SVGHKernElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGHKernElement where
  toJSVal = return . unSVGHKernElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGHKernElement where
  fromJSVal = return . fmap SVGHKernElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGHKernElement
instance IsElement SVGHKernElement
instance IsNode SVGHKernElement
instance IsEventTarget SVGHKernElement
instance IsGObject SVGHKernElement where
  toGObject = GObject . unSVGHKernElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGHKernElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGHKernElement :: IsGObject obj => obj -> SVGHKernElement
castToSVGHKernElement = castTo gTypeSVGHKernElement "SVGHKernElement"

foreign import javascript unsafe "window[\"SVGHKernElement\"]" gTypeSVGHKernElement :: GType
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
newtype SVGImageElement = SVGImageElement { unSVGImageElement :: JSVal }

instance Eq (SVGImageElement) where
  (SVGImageElement a) == (SVGImageElement b) = js_eq a b

instance PToJSVal SVGImageElement where
  pToJSVal = unSVGImageElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGImageElement where
  pFromJSVal = SVGImageElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGImageElement where
  toJSVal = return . unSVGImageElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGImageElement where
  fromJSVal = return . fmap SVGImageElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGImageElement
instance IsSVGElement SVGImageElement
instance IsElement SVGImageElement
instance IsNode SVGImageElement
instance IsEventTarget SVGImageElement
instance IsGObject SVGImageElement where
  toGObject = GObject . unSVGImageElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGImageElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGImageElement :: IsGObject obj => obj -> SVGImageElement
castToSVGImageElement = castTo gTypeSVGImageElement "SVGImageElement"

foreign import javascript unsafe "window[\"SVGImageElement\"]" gTypeSVGImageElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLength".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength Mozilla SVGLength documentation>
newtype SVGLength = SVGLength { unSVGLength :: JSVal }

instance Eq (SVGLength) where
  (SVGLength a) == (SVGLength b) = js_eq a b

instance PToJSVal SVGLength where
  pToJSVal = unSVGLength
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLength where
  pFromJSVal = SVGLength
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLength where
  toJSVal = return . unSVGLength
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLength where
  fromJSVal = return . fmap SVGLength . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGLength where
  toGObject = GObject . unSVGLength
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGLength . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGLength :: IsGObject obj => obj -> SVGLength
castToSVGLength = castTo gTypeSVGLength "SVGLength"

foreign import javascript unsafe "window[\"SVGLength\"]" gTypeSVGLength :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLengthList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList Mozilla SVGLengthList documentation>
newtype SVGLengthList = SVGLengthList { unSVGLengthList :: JSVal }

instance Eq (SVGLengthList) where
  (SVGLengthList a) == (SVGLengthList b) = js_eq a b

instance PToJSVal SVGLengthList where
  pToJSVal = unSVGLengthList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLengthList where
  pFromJSVal = SVGLengthList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLengthList where
  toJSVal = return . unSVGLengthList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLengthList where
  fromJSVal = return . fmap SVGLengthList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGLengthList where
  toGObject = GObject . unSVGLengthList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGLengthList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGLengthList :: IsGObject obj => obj -> SVGLengthList
castToSVGLengthList = castTo gTypeSVGLengthList "SVGLengthList"

foreign import javascript unsafe "window[\"SVGLengthList\"]" gTypeSVGLengthList :: GType
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
newtype SVGLineElement = SVGLineElement { unSVGLineElement :: JSVal }

instance Eq (SVGLineElement) where
  (SVGLineElement a) == (SVGLineElement b) = js_eq a b

instance PToJSVal SVGLineElement where
  pToJSVal = unSVGLineElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLineElement where
  pFromJSVal = SVGLineElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLineElement where
  toJSVal = return . unSVGLineElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLineElement where
  fromJSVal = return . fmap SVGLineElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGLineElement
instance IsSVGElement SVGLineElement
instance IsElement SVGLineElement
instance IsNode SVGLineElement
instance IsEventTarget SVGLineElement
instance IsGObject SVGLineElement where
  toGObject = GObject . unSVGLineElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGLineElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGLineElement :: IsGObject obj => obj -> SVGLineElement
castToSVGLineElement = castTo gTypeSVGLineElement "SVGLineElement"

foreign import javascript unsafe "window[\"SVGLineElement\"]" gTypeSVGLineElement :: GType
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
newtype SVGLinearGradientElement = SVGLinearGradientElement { unSVGLinearGradientElement :: JSVal }

instance Eq (SVGLinearGradientElement) where
  (SVGLinearGradientElement a) == (SVGLinearGradientElement b) = js_eq a b

instance PToJSVal SVGLinearGradientElement where
  pToJSVal = unSVGLinearGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGLinearGradientElement where
  pFromJSVal = SVGLinearGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGLinearGradientElement where
  toJSVal = return . unSVGLinearGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGLinearGradientElement where
  fromJSVal = return . fmap SVGLinearGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGradientElement SVGLinearGradientElement
instance IsSVGElement SVGLinearGradientElement
instance IsElement SVGLinearGradientElement
instance IsNode SVGLinearGradientElement
instance IsEventTarget SVGLinearGradientElement
instance IsGObject SVGLinearGradientElement where
  toGObject = GObject . unSVGLinearGradientElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGLinearGradientElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGLinearGradientElement :: IsGObject obj => obj -> SVGLinearGradientElement
castToSVGLinearGradientElement = castTo gTypeSVGLinearGradientElement "SVGLinearGradientElement"

foreign import javascript unsafe "window[\"SVGLinearGradientElement\"]" gTypeSVGLinearGradientElement :: GType
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
newtype SVGMPathElement = SVGMPathElement { unSVGMPathElement :: JSVal }

instance Eq (SVGMPathElement) where
  (SVGMPathElement a) == (SVGMPathElement b) = js_eq a b

instance PToJSVal SVGMPathElement where
  pToJSVal = unSVGMPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMPathElement where
  pFromJSVal = SVGMPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMPathElement where
  toJSVal = return . unSVGMPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMPathElement where
  fromJSVal = return . fmap SVGMPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGMPathElement
instance IsElement SVGMPathElement
instance IsNode SVGMPathElement
instance IsEventTarget SVGMPathElement
instance IsGObject SVGMPathElement where
  toGObject = GObject . unSVGMPathElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMPathElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMPathElement :: IsGObject obj => obj -> SVGMPathElement
castToSVGMPathElement = castTo gTypeSVGMPathElement "SVGMPathElement"

foreign import javascript unsafe "window[\"SVGMPathElement\"]" gTypeSVGMPathElement :: GType
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
newtype SVGMarkerElement = SVGMarkerElement { unSVGMarkerElement :: JSVal }

instance Eq (SVGMarkerElement) where
  (SVGMarkerElement a) == (SVGMarkerElement b) = js_eq a b

instance PToJSVal SVGMarkerElement where
  pToJSVal = unSVGMarkerElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMarkerElement where
  pFromJSVal = SVGMarkerElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMarkerElement where
  toJSVal = return . unSVGMarkerElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMarkerElement where
  fromJSVal = return . fmap SVGMarkerElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGMarkerElement
instance IsElement SVGMarkerElement
instance IsNode SVGMarkerElement
instance IsEventTarget SVGMarkerElement
instance IsGObject SVGMarkerElement where
  toGObject = GObject . unSVGMarkerElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMarkerElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMarkerElement :: IsGObject obj => obj -> SVGMarkerElement
castToSVGMarkerElement = castTo gTypeSVGMarkerElement "SVGMarkerElement"

foreign import javascript unsafe "window[\"SVGMarkerElement\"]" gTypeSVGMarkerElement :: GType
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
newtype SVGMaskElement = SVGMaskElement { unSVGMaskElement :: JSVal }

instance Eq (SVGMaskElement) where
  (SVGMaskElement a) == (SVGMaskElement b) = js_eq a b

instance PToJSVal SVGMaskElement where
  pToJSVal = unSVGMaskElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMaskElement where
  pFromJSVal = SVGMaskElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMaskElement where
  toJSVal = return . unSVGMaskElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMaskElement where
  fromJSVal = return . fmap SVGMaskElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGMaskElement
instance IsElement SVGMaskElement
instance IsNode SVGMaskElement
instance IsEventTarget SVGMaskElement
instance IsGObject SVGMaskElement where
  toGObject = GObject . unSVGMaskElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMaskElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMaskElement :: IsGObject obj => obj -> SVGMaskElement
castToSVGMaskElement = castTo gTypeSVGMaskElement "SVGMaskElement"

foreign import javascript unsafe "window[\"SVGMaskElement\"]" gTypeSVGMaskElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix Mozilla SVGMatrix documentation>
newtype SVGMatrix = SVGMatrix { unSVGMatrix :: JSVal }

instance Eq (SVGMatrix) where
  (SVGMatrix a) == (SVGMatrix b) = js_eq a b

instance PToJSVal SVGMatrix where
  pToJSVal = unSVGMatrix
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMatrix where
  pFromJSVal = SVGMatrix
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMatrix where
  toJSVal = return . unSVGMatrix
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMatrix where
  fromJSVal = return . fmap SVGMatrix . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGMatrix where
  toGObject = GObject . unSVGMatrix
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMatrix . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMatrix :: IsGObject obj => obj -> SVGMatrix
castToSVGMatrix = castTo gTypeSVGMatrix "SVGMatrix"

foreign import javascript unsafe "window[\"SVGMatrix\"]" gTypeSVGMatrix :: GType
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
newtype SVGMetadataElement = SVGMetadataElement { unSVGMetadataElement :: JSVal }

instance Eq (SVGMetadataElement) where
  (SVGMetadataElement a) == (SVGMetadataElement b) = js_eq a b

instance PToJSVal SVGMetadataElement where
  pToJSVal = unSVGMetadataElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMetadataElement where
  pFromJSVal = SVGMetadataElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMetadataElement where
  toJSVal = return . unSVGMetadataElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMetadataElement where
  fromJSVal = return . fmap SVGMetadataElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGMetadataElement
instance IsElement SVGMetadataElement
instance IsNode SVGMetadataElement
instance IsEventTarget SVGMetadataElement
instance IsGObject SVGMetadataElement where
  toGObject = GObject . unSVGMetadataElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMetadataElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMetadataElement :: IsGObject obj => obj -> SVGMetadataElement
castToSVGMetadataElement = castTo gTypeSVGMetadataElement "SVGMetadataElement"

foreign import javascript unsafe "window[\"SVGMetadataElement\"]" gTypeSVGMetadataElement :: GType
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
newtype SVGMissingGlyphElement = SVGMissingGlyphElement { unSVGMissingGlyphElement :: JSVal }

instance Eq (SVGMissingGlyphElement) where
  (SVGMissingGlyphElement a) == (SVGMissingGlyphElement b) = js_eq a b

instance PToJSVal SVGMissingGlyphElement where
  pToJSVal = unSVGMissingGlyphElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGMissingGlyphElement where
  pFromJSVal = SVGMissingGlyphElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGMissingGlyphElement where
  toJSVal = return . unSVGMissingGlyphElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGMissingGlyphElement where
  fromJSVal = return . fmap SVGMissingGlyphElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGMissingGlyphElement
instance IsElement SVGMissingGlyphElement
instance IsNode SVGMissingGlyphElement
instance IsEventTarget SVGMissingGlyphElement
instance IsGObject SVGMissingGlyphElement where
  toGObject = GObject . unSVGMissingGlyphElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGMissingGlyphElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGMissingGlyphElement :: IsGObject obj => obj -> SVGMissingGlyphElement
castToSVGMissingGlyphElement = castTo gTypeSVGMissingGlyphElement "SVGMissingGlyphElement"

foreign import javascript unsafe "window[\"SVGMissingGlyphElement\"]" gTypeSVGMissingGlyphElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGNumber".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber Mozilla SVGNumber documentation>
newtype SVGNumber = SVGNumber { unSVGNumber :: JSVal }

instance Eq (SVGNumber) where
  (SVGNumber a) == (SVGNumber b) = js_eq a b

instance PToJSVal SVGNumber where
  pToJSVal = unSVGNumber
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGNumber where
  pFromJSVal = SVGNumber
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGNumber where
  toJSVal = return . unSVGNumber
  {-# INLINE toJSVal #-}

instance FromJSVal SVGNumber where
  fromJSVal = return . fmap SVGNumber . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGNumber where
  toGObject = GObject . unSVGNumber
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGNumber . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGNumber :: IsGObject obj => obj -> SVGNumber
castToSVGNumber = castTo gTypeSVGNumber "SVGNumber"

foreign import javascript unsafe "window[\"SVGNumber\"]" gTypeSVGNumber :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGNumberList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumberList Mozilla SVGNumberList documentation>
newtype SVGNumberList = SVGNumberList { unSVGNumberList :: JSVal }

instance Eq (SVGNumberList) where
  (SVGNumberList a) == (SVGNumberList b) = js_eq a b

instance PToJSVal SVGNumberList where
  pToJSVal = unSVGNumberList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGNumberList where
  pFromJSVal = SVGNumberList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGNumberList where
  toJSVal = return . unSVGNumberList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGNumberList where
  fromJSVal = return . fmap SVGNumberList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGNumberList where
  toGObject = GObject . unSVGNumberList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGNumberList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGNumberList :: IsGObject obj => obj -> SVGNumberList
castToSVGNumberList = castTo gTypeSVGNumberList "SVGNumberList"

foreign import javascript unsafe "window[\"SVGNumberList\"]" gTypeSVGNumberList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPaint".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGColor"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPaint Mozilla SVGPaint documentation>
newtype SVGPaint = SVGPaint { unSVGPaint :: JSVal }

instance Eq (SVGPaint) where
  (SVGPaint a) == (SVGPaint b) = js_eq a b

instance PToJSVal SVGPaint where
  pToJSVal = unSVGPaint
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPaint where
  pFromJSVal = SVGPaint
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPaint where
  toJSVal = return . unSVGPaint
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPaint where
  fromJSVal = return . fmap SVGPaint . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGColor SVGPaint
instance IsCSSValue SVGPaint
instance IsGObject SVGPaint where
  toGObject = GObject . unSVGPaint
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPaint . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPaint :: IsGObject obj => obj -> SVGPaint
castToSVGPaint = castTo gTypeSVGPaint "SVGPaint"

foreign import javascript unsafe "window[\"SVGPaint\"]" gTypeSVGPaint :: GType
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
newtype SVGPathElement = SVGPathElement { unSVGPathElement :: JSVal }

instance Eq (SVGPathElement) where
  (SVGPathElement a) == (SVGPathElement b) = js_eq a b

instance PToJSVal SVGPathElement where
  pToJSVal = unSVGPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathElement where
  pFromJSVal = SVGPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathElement where
  toJSVal = return . unSVGPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathElement where
  fromJSVal = return . fmap SVGPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGPathElement
instance IsSVGElement SVGPathElement
instance IsElement SVGPathElement
instance IsNode SVGPathElement
instance IsEventTarget SVGPathElement
instance IsGObject SVGPathElement where
  toGObject = GObject . unSVGPathElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathElement :: IsGObject obj => obj -> SVGPathElement
castToSVGPathElement = castTo gTypeSVGPathElement "SVGPathElement"

foreign import javascript unsafe "window[\"SVGPathElement\"]" gTypeSVGPathElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSeg".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSeg Mozilla SVGPathSeg documentation>
newtype SVGPathSeg = SVGPathSeg { unSVGPathSeg :: JSVal }

instance Eq (SVGPathSeg) where
  (SVGPathSeg a) == (SVGPathSeg b) = js_eq a b

instance PToJSVal SVGPathSeg where
  pToJSVal = unSVGPathSeg
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSeg where
  pFromJSVal = SVGPathSeg
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSeg where
  toJSVal = return . unSVGPathSeg
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSeg where
  fromJSVal = return . fmap SVGPathSeg . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsSVGPathSeg o
toSVGPathSeg :: IsSVGPathSeg o => o -> SVGPathSeg
toSVGPathSeg = unsafeCastGObject . toGObject

instance IsSVGPathSeg SVGPathSeg
instance IsGObject SVGPathSeg where
  toGObject = GObject . unSVGPathSeg
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSeg . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSeg :: IsGObject obj => obj -> SVGPathSeg
castToSVGPathSeg = castTo gTypeSVGPathSeg "SVGPathSeg"

foreign import javascript unsafe "window[\"SVGPathSeg\"]" gTypeSVGPathSeg :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegArcAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs Mozilla SVGPathSegArcAbs documentation>
newtype SVGPathSegArcAbs = SVGPathSegArcAbs { unSVGPathSegArcAbs :: JSVal }

instance Eq (SVGPathSegArcAbs) where
  (SVGPathSegArcAbs a) == (SVGPathSegArcAbs b) = js_eq a b

instance PToJSVal SVGPathSegArcAbs where
  pToJSVal = unSVGPathSegArcAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegArcAbs where
  pFromJSVal = SVGPathSegArcAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegArcAbs where
  toJSVal = return . unSVGPathSegArcAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegArcAbs where
  fromJSVal = return . fmap SVGPathSegArcAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegArcAbs
instance IsGObject SVGPathSegArcAbs where
  toGObject = GObject . unSVGPathSegArcAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegArcAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegArcAbs :: IsGObject obj => obj -> SVGPathSegArcAbs
castToSVGPathSegArcAbs = castTo gTypeSVGPathSegArcAbs "SVGPathSegArcAbs"

foreign import javascript unsafe "window[\"SVGPathSegArcAbs\"]" gTypeSVGPathSegArcAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegArcRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel Mozilla SVGPathSegArcRel documentation>
newtype SVGPathSegArcRel = SVGPathSegArcRel { unSVGPathSegArcRel :: JSVal }

instance Eq (SVGPathSegArcRel) where
  (SVGPathSegArcRel a) == (SVGPathSegArcRel b) = js_eq a b

instance PToJSVal SVGPathSegArcRel where
  pToJSVal = unSVGPathSegArcRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegArcRel where
  pFromJSVal = SVGPathSegArcRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegArcRel where
  toJSVal = return . unSVGPathSegArcRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegArcRel where
  fromJSVal = return . fmap SVGPathSegArcRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegArcRel
instance IsGObject SVGPathSegArcRel where
  toGObject = GObject . unSVGPathSegArcRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegArcRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegArcRel :: IsGObject obj => obj -> SVGPathSegArcRel
castToSVGPathSegArcRel = castTo gTypeSVGPathSegArcRel "SVGPathSegArcRel"

foreign import javascript unsafe "window[\"SVGPathSegArcRel\"]" gTypeSVGPathSegArcRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegClosePath".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegClosePath Mozilla SVGPathSegClosePath documentation>
newtype SVGPathSegClosePath = SVGPathSegClosePath { unSVGPathSegClosePath :: JSVal }

instance Eq (SVGPathSegClosePath) where
  (SVGPathSegClosePath a) == (SVGPathSegClosePath b) = js_eq a b

instance PToJSVal SVGPathSegClosePath where
  pToJSVal = unSVGPathSegClosePath
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegClosePath where
  pFromJSVal = SVGPathSegClosePath
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegClosePath where
  toJSVal = return . unSVGPathSegClosePath
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegClosePath where
  fromJSVal = return . fmap SVGPathSegClosePath . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegClosePath
instance IsGObject SVGPathSegClosePath where
  toGObject = GObject . unSVGPathSegClosePath
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegClosePath . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegClosePath :: IsGObject obj => obj -> SVGPathSegClosePath
castToSVGPathSegClosePath = castTo gTypeSVGPathSegClosePath "SVGPathSegClosePath"

foreign import javascript unsafe "window[\"SVGPathSegClosePath\"]" gTypeSVGPathSegClosePath :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicAbs Mozilla SVGPathSegCurvetoCubicAbs documentation>
newtype SVGPathSegCurvetoCubicAbs = SVGPathSegCurvetoCubicAbs { unSVGPathSegCurvetoCubicAbs :: JSVal }

instance Eq (SVGPathSegCurvetoCubicAbs) where
  (SVGPathSegCurvetoCubicAbs a) == (SVGPathSegCurvetoCubicAbs b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoCubicAbs where
  pToJSVal = unSVGPathSegCurvetoCubicAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicAbs where
  pFromJSVal = SVGPathSegCurvetoCubicAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicAbs where
  toJSVal = return . unSVGPathSegCurvetoCubicAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicAbs where
  fromJSVal = return . fmap SVGPathSegCurvetoCubicAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicAbs
instance IsGObject SVGPathSegCurvetoCubicAbs where
  toGObject = GObject . unSVGPathSegCurvetoCubicAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoCubicAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoCubicAbs :: IsGObject obj => obj -> SVGPathSegCurvetoCubicAbs
castToSVGPathSegCurvetoCubicAbs = castTo gTypeSVGPathSegCurvetoCubicAbs "SVGPathSegCurvetoCubicAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicAbs\"]" gTypeSVGPathSegCurvetoCubicAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel Mozilla SVGPathSegCurvetoCubicRel documentation>
newtype SVGPathSegCurvetoCubicRel = SVGPathSegCurvetoCubicRel { unSVGPathSegCurvetoCubicRel :: JSVal }

instance Eq (SVGPathSegCurvetoCubicRel) where
  (SVGPathSegCurvetoCubicRel a) == (SVGPathSegCurvetoCubicRel b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoCubicRel where
  pToJSVal = unSVGPathSegCurvetoCubicRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicRel where
  pFromJSVal = SVGPathSegCurvetoCubicRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicRel where
  toJSVal = return . unSVGPathSegCurvetoCubicRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicRel where
  fromJSVal = return . fmap SVGPathSegCurvetoCubicRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicRel
instance IsGObject SVGPathSegCurvetoCubicRel where
  toGObject = GObject . unSVGPathSegCurvetoCubicRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoCubicRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoCubicRel :: IsGObject obj => obj -> SVGPathSegCurvetoCubicRel
castToSVGPathSegCurvetoCubicRel = castTo gTypeSVGPathSegCurvetoCubicRel "SVGPathSegCurvetoCubicRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicRel\"]" gTypeSVGPathSegCurvetoCubicRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathSegCurvetoCubicSmoothAbs documentation>
newtype SVGPathSegCurvetoCubicSmoothAbs = SVGPathSegCurvetoCubicSmoothAbs { unSVGPathSegCurvetoCubicSmoothAbs :: JSVal }

instance Eq (SVGPathSegCurvetoCubicSmoothAbs) where
  (SVGPathSegCurvetoCubicSmoothAbs a) == (SVGPathSegCurvetoCubicSmoothAbs b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoCubicSmoothAbs where
  pToJSVal = unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicSmoothAbs where
  pFromJSVal = SVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicSmoothAbs where
  toJSVal = return . unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicSmoothAbs where
  fromJSVal = return . fmap SVGPathSegCurvetoCubicSmoothAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothAbs
instance IsGObject SVGPathSegCurvetoCubicSmoothAbs where
  toGObject = GObject . unSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoCubicSmoothAbs :: IsGObject obj => obj -> SVGPathSegCurvetoCubicSmoothAbs
castToSVGPathSegCurvetoCubicSmoothAbs = castTo gTypeSVGPathSegCurvetoCubicSmoothAbs "SVGPathSegCurvetoCubicSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothAbs\"]" gTypeSVGPathSegCurvetoCubicSmoothAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoCubicSmoothRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathSegCurvetoCubicSmoothRel documentation>
newtype SVGPathSegCurvetoCubicSmoothRel = SVGPathSegCurvetoCubicSmoothRel { unSVGPathSegCurvetoCubicSmoothRel :: JSVal }

instance Eq (SVGPathSegCurvetoCubicSmoothRel) where
  (SVGPathSegCurvetoCubicSmoothRel a) == (SVGPathSegCurvetoCubicSmoothRel b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoCubicSmoothRel where
  pToJSVal = unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoCubicSmoothRel where
  pFromJSVal = SVGPathSegCurvetoCubicSmoothRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoCubicSmoothRel where
  toJSVal = return . unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoCubicSmoothRel where
  fromJSVal = return . fmap SVGPathSegCurvetoCubicSmoothRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoCubicSmoothRel
instance IsGObject SVGPathSegCurvetoCubicSmoothRel where
  toGObject = GObject . unSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoCubicSmoothRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoCubicSmoothRel :: IsGObject obj => obj -> SVGPathSegCurvetoCubicSmoothRel
castToSVGPathSegCurvetoCubicSmoothRel = castTo gTypeSVGPathSegCurvetoCubicSmoothRel "SVGPathSegCurvetoCubicSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothRel\"]" gTypeSVGPathSegCurvetoCubicSmoothRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs Mozilla SVGPathSegCurvetoQuadraticAbs documentation>
newtype SVGPathSegCurvetoQuadraticAbs = SVGPathSegCurvetoQuadraticAbs { unSVGPathSegCurvetoQuadraticAbs :: JSVal }

instance Eq (SVGPathSegCurvetoQuadraticAbs) where
  (SVGPathSegCurvetoQuadraticAbs a) == (SVGPathSegCurvetoQuadraticAbs b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoQuadraticAbs where
  pToJSVal = unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticAbs where
  pFromJSVal = SVGPathSegCurvetoQuadraticAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticAbs where
  toJSVal = return . unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticAbs where
  fromJSVal = return . fmap SVGPathSegCurvetoQuadraticAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticAbs
instance IsGObject SVGPathSegCurvetoQuadraticAbs where
  toGObject = GObject . unSVGPathSegCurvetoQuadraticAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoQuadraticAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoQuadraticAbs :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticAbs
castToSVGPathSegCurvetoQuadraticAbs = castTo gTypeSVGPathSegCurvetoQuadraticAbs "SVGPathSegCurvetoQuadraticAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticAbs\"]" gTypeSVGPathSegCurvetoQuadraticAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel Mozilla SVGPathSegCurvetoQuadraticRel documentation>
newtype SVGPathSegCurvetoQuadraticRel = SVGPathSegCurvetoQuadraticRel { unSVGPathSegCurvetoQuadraticRel :: JSVal }

instance Eq (SVGPathSegCurvetoQuadraticRel) where
  (SVGPathSegCurvetoQuadraticRel a) == (SVGPathSegCurvetoQuadraticRel b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoQuadraticRel where
  pToJSVal = unSVGPathSegCurvetoQuadraticRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticRel where
  pFromJSVal = SVGPathSegCurvetoQuadraticRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticRel where
  toJSVal = return . unSVGPathSegCurvetoQuadraticRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticRel where
  fromJSVal = return . fmap SVGPathSegCurvetoQuadraticRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticRel
instance IsGObject SVGPathSegCurvetoQuadraticRel where
  toGObject = GObject . unSVGPathSegCurvetoQuadraticRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoQuadraticRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoQuadraticRel :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticRel
castToSVGPathSegCurvetoQuadraticRel = castTo gTypeSVGPathSegCurvetoQuadraticRel "SVGPathSegCurvetoQuadraticRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticRel\"]" gTypeSVGPathSegCurvetoQuadraticRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathSegCurvetoQuadraticSmoothAbs documentation>
newtype SVGPathSegCurvetoQuadraticSmoothAbs = SVGPathSegCurvetoQuadraticSmoothAbs { unSVGPathSegCurvetoQuadraticSmoothAbs :: JSVal }

instance Eq (SVGPathSegCurvetoQuadraticSmoothAbs) where
  (SVGPathSegCurvetoQuadraticSmoothAbs a) == (SVGPathSegCurvetoQuadraticSmoothAbs b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  pToJSVal = unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  pFromJSVal = SVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  toJSVal = return . unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticSmoothAbs where
  fromJSVal = return . fmap SVGPathSegCurvetoQuadraticSmoothAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothAbs
instance IsGObject SVGPathSegCurvetoQuadraticSmoothAbs where
  toGObject = GObject . unSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoQuadraticSmoothAbs :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticSmoothAbs
castToSVGPathSegCurvetoQuadraticSmoothAbs = castTo gTypeSVGPathSegCurvetoQuadraticSmoothAbs "SVGPathSegCurvetoQuadraticSmoothAbs"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothAbs\"]" gTypeSVGPathSegCurvetoQuadraticSmoothAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathSegCurvetoQuadraticSmoothRel documentation>
newtype SVGPathSegCurvetoQuadraticSmoothRel = SVGPathSegCurvetoQuadraticSmoothRel { unSVGPathSegCurvetoQuadraticSmoothRel :: JSVal }

instance Eq (SVGPathSegCurvetoQuadraticSmoothRel) where
  (SVGPathSegCurvetoQuadraticSmoothRel a) == (SVGPathSegCurvetoQuadraticSmoothRel b) = js_eq a b

instance PToJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  pToJSVal = unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  pFromJSVal = SVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  toJSVal = return . unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegCurvetoQuadraticSmoothRel where
  fromJSVal = return . fmap SVGPathSegCurvetoQuadraticSmoothRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegCurvetoQuadraticSmoothRel
instance IsGObject SVGPathSegCurvetoQuadraticSmoothRel where
  toGObject = GObject . unSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegCurvetoQuadraticSmoothRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegCurvetoQuadraticSmoothRel :: IsGObject obj => obj -> SVGPathSegCurvetoQuadraticSmoothRel
castToSVGPathSegCurvetoQuadraticSmoothRel = castTo gTypeSVGPathSegCurvetoQuadraticSmoothRel "SVGPathSegCurvetoQuadraticSmoothRel"

foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothRel\"]" gTypeSVGPathSegCurvetoQuadraticSmoothRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs Mozilla SVGPathSegLinetoAbs documentation>
newtype SVGPathSegLinetoAbs = SVGPathSegLinetoAbs { unSVGPathSegLinetoAbs :: JSVal }

instance Eq (SVGPathSegLinetoAbs) where
  (SVGPathSegLinetoAbs a) == (SVGPathSegLinetoAbs b) = js_eq a b

instance PToJSVal SVGPathSegLinetoAbs where
  pToJSVal = unSVGPathSegLinetoAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoAbs where
  pFromJSVal = SVGPathSegLinetoAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoAbs where
  toJSVal = return . unSVGPathSegLinetoAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoAbs where
  fromJSVal = return . fmap SVGPathSegLinetoAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoAbs
instance IsGObject SVGPathSegLinetoAbs where
  toGObject = GObject . unSVGPathSegLinetoAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoAbs :: IsGObject obj => obj -> SVGPathSegLinetoAbs
castToSVGPathSegLinetoAbs = castTo gTypeSVGPathSegLinetoAbs "SVGPathSegLinetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoAbs\"]" gTypeSVGPathSegLinetoAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoHorizontalAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs Mozilla SVGPathSegLinetoHorizontalAbs documentation>
newtype SVGPathSegLinetoHorizontalAbs = SVGPathSegLinetoHorizontalAbs { unSVGPathSegLinetoHorizontalAbs :: JSVal }

instance Eq (SVGPathSegLinetoHorizontalAbs) where
  (SVGPathSegLinetoHorizontalAbs a) == (SVGPathSegLinetoHorizontalAbs b) = js_eq a b

instance PToJSVal SVGPathSegLinetoHorizontalAbs where
  pToJSVal = unSVGPathSegLinetoHorizontalAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoHorizontalAbs where
  pFromJSVal = SVGPathSegLinetoHorizontalAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoHorizontalAbs where
  toJSVal = return . unSVGPathSegLinetoHorizontalAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoHorizontalAbs where
  fromJSVal = return . fmap SVGPathSegLinetoHorizontalAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoHorizontalAbs
instance IsGObject SVGPathSegLinetoHorizontalAbs where
  toGObject = GObject . unSVGPathSegLinetoHorizontalAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoHorizontalAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoHorizontalAbs :: IsGObject obj => obj -> SVGPathSegLinetoHorizontalAbs
castToSVGPathSegLinetoHorizontalAbs = castTo gTypeSVGPathSegLinetoHorizontalAbs "SVGPathSegLinetoHorizontalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalAbs\"]" gTypeSVGPathSegLinetoHorizontalAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoHorizontalRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel Mozilla SVGPathSegLinetoHorizontalRel documentation>
newtype SVGPathSegLinetoHorizontalRel = SVGPathSegLinetoHorizontalRel { unSVGPathSegLinetoHorizontalRel :: JSVal }

instance Eq (SVGPathSegLinetoHorizontalRel) where
  (SVGPathSegLinetoHorizontalRel a) == (SVGPathSegLinetoHorizontalRel b) = js_eq a b

instance PToJSVal SVGPathSegLinetoHorizontalRel where
  pToJSVal = unSVGPathSegLinetoHorizontalRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoHorizontalRel where
  pFromJSVal = SVGPathSegLinetoHorizontalRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoHorizontalRel where
  toJSVal = return . unSVGPathSegLinetoHorizontalRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoHorizontalRel where
  fromJSVal = return . fmap SVGPathSegLinetoHorizontalRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoHorizontalRel
instance IsGObject SVGPathSegLinetoHorizontalRel where
  toGObject = GObject . unSVGPathSegLinetoHorizontalRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoHorizontalRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoHorizontalRel :: IsGObject obj => obj -> SVGPathSegLinetoHorizontalRel
castToSVGPathSegLinetoHorizontalRel = castTo gTypeSVGPathSegLinetoHorizontalRel "SVGPathSegLinetoHorizontalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalRel\"]" gTypeSVGPathSegLinetoHorizontalRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel Mozilla SVGPathSegLinetoRel documentation>
newtype SVGPathSegLinetoRel = SVGPathSegLinetoRel { unSVGPathSegLinetoRel :: JSVal }

instance Eq (SVGPathSegLinetoRel) where
  (SVGPathSegLinetoRel a) == (SVGPathSegLinetoRel b) = js_eq a b

instance PToJSVal SVGPathSegLinetoRel where
  pToJSVal = unSVGPathSegLinetoRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoRel where
  pFromJSVal = SVGPathSegLinetoRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoRel where
  toJSVal = return . unSVGPathSegLinetoRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoRel where
  fromJSVal = return . fmap SVGPathSegLinetoRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoRel
instance IsGObject SVGPathSegLinetoRel where
  toGObject = GObject . unSVGPathSegLinetoRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoRel :: IsGObject obj => obj -> SVGPathSegLinetoRel
castToSVGPathSegLinetoRel = castTo gTypeSVGPathSegLinetoRel "SVGPathSegLinetoRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoRel\"]" gTypeSVGPathSegLinetoRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoVerticalAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs Mozilla SVGPathSegLinetoVerticalAbs documentation>
newtype SVGPathSegLinetoVerticalAbs = SVGPathSegLinetoVerticalAbs { unSVGPathSegLinetoVerticalAbs :: JSVal }

instance Eq (SVGPathSegLinetoVerticalAbs) where
  (SVGPathSegLinetoVerticalAbs a) == (SVGPathSegLinetoVerticalAbs b) = js_eq a b

instance PToJSVal SVGPathSegLinetoVerticalAbs where
  pToJSVal = unSVGPathSegLinetoVerticalAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoVerticalAbs where
  pFromJSVal = SVGPathSegLinetoVerticalAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoVerticalAbs where
  toJSVal = return . unSVGPathSegLinetoVerticalAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoVerticalAbs where
  fromJSVal = return . fmap SVGPathSegLinetoVerticalAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoVerticalAbs
instance IsGObject SVGPathSegLinetoVerticalAbs where
  toGObject = GObject . unSVGPathSegLinetoVerticalAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoVerticalAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoVerticalAbs :: IsGObject obj => obj -> SVGPathSegLinetoVerticalAbs
castToSVGPathSegLinetoVerticalAbs = castTo gTypeSVGPathSegLinetoVerticalAbs "SVGPathSegLinetoVerticalAbs"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalAbs\"]" gTypeSVGPathSegLinetoVerticalAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegLinetoVerticalRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel Mozilla SVGPathSegLinetoVerticalRel documentation>
newtype SVGPathSegLinetoVerticalRel = SVGPathSegLinetoVerticalRel { unSVGPathSegLinetoVerticalRel :: JSVal }

instance Eq (SVGPathSegLinetoVerticalRel) where
  (SVGPathSegLinetoVerticalRel a) == (SVGPathSegLinetoVerticalRel b) = js_eq a b

instance PToJSVal SVGPathSegLinetoVerticalRel where
  pToJSVal = unSVGPathSegLinetoVerticalRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegLinetoVerticalRel where
  pFromJSVal = SVGPathSegLinetoVerticalRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegLinetoVerticalRel where
  toJSVal = return . unSVGPathSegLinetoVerticalRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegLinetoVerticalRel where
  fromJSVal = return . fmap SVGPathSegLinetoVerticalRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegLinetoVerticalRel
instance IsGObject SVGPathSegLinetoVerticalRel where
  toGObject = GObject . unSVGPathSegLinetoVerticalRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegLinetoVerticalRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegLinetoVerticalRel :: IsGObject obj => obj -> SVGPathSegLinetoVerticalRel
castToSVGPathSegLinetoVerticalRel = castTo gTypeSVGPathSegLinetoVerticalRel "SVGPathSegLinetoVerticalRel"

foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalRel\"]" gTypeSVGPathSegLinetoVerticalRel :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList Mozilla SVGPathSegList documentation>
newtype SVGPathSegList = SVGPathSegList { unSVGPathSegList :: JSVal }

instance Eq (SVGPathSegList) where
  (SVGPathSegList a) == (SVGPathSegList b) = js_eq a b

instance PToJSVal SVGPathSegList where
  pToJSVal = unSVGPathSegList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegList where
  pFromJSVal = SVGPathSegList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegList where
  toJSVal = return . unSVGPathSegList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegList where
  fromJSVal = return . fmap SVGPathSegList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGPathSegList where
  toGObject = GObject . unSVGPathSegList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegList :: IsGObject obj => obj -> SVGPathSegList
castToSVGPathSegList = castTo gTypeSVGPathSegList "SVGPathSegList"

foreign import javascript unsafe "window[\"SVGPathSegList\"]" gTypeSVGPathSegList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegMovetoAbs".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoAbs Mozilla SVGPathSegMovetoAbs documentation>
newtype SVGPathSegMovetoAbs = SVGPathSegMovetoAbs { unSVGPathSegMovetoAbs :: JSVal }

instance Eq (SVGPathSegMovetoAbs) where
  (SVGPathSegMovetoAbs a) == (SVGPathSegMovetoAbs b) = js_eq a b

instance PToJSVal SVGPathSegMovetoAbs where
  pToJSVal = unSVGPathSegMovetoAbs
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegMovetoAbs where
  pFromJSVal = SVGPathSegMovetoAbs
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegMovetoAbs where
  toJSVal = return . unSVGPathSegMovetoAbs
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegMovetoAbs where
  fromJSVal = return . fmap SVGPathSegMovetoAbs . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegMovetoAbs
instance IsGObject SVGPathSegMovetoAbs where
  toGObject = GObject . unSVGPathSegMovetoAbs
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegMovetoAbs . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegMovetoAbs :: IsGObject obj => obj -> SVGPathSegMovetoAbs
castToSVGPathSegMovetoAbs = castTo gTypeSVGPathSegMovetoAbs "SVGPathSegMovetoAbs"

foreign import javascript unsafe "window[\"SVGPathSegMovetoAbs\"]" gTypeSVGPathSegMovetoAbs :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathSegMovetoRel".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGPathSeg"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel Mozilla SVGPathSegMovetoRel documentation>
newtype SVGPathSegMovetoRel = SVGPathSegMovetoRel { unSVGPathSegMovetoRel :: JSVal }

instance Eq (SVGPathSegMovetoRel) where
  (SVGPathSegMovetoRel a) == (SVGPathSegMovetoRel b) = js_eq a b

instance PToJSVal SVGPathSegMovetoRel where
  pToJSVal = unSVGPathSegMovetoRel
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPathSegMovetoRel where
  pFromJSVal = SVGPathSegMovetoRel
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPathSegMovetoRel where
  toJSVal = return . unSVGPathSegMovetoRel
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPathSegMovetoRel where
  fromJSVal = return . fmap SVGPathSegMovetoRel . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGPathSeg SVGPathSegMovetoRel
instance IsGObject SVGPathSegMovetoRel where
  toGObject = GObject . unSVGPathSegMovetoRel
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPathSegMovetoRel . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPathSegMovetoRel :: IsGObject obj => obj -> SVGPathSegMovetoRel
castToSVGPathSegMovetoRel = castTo gTypeSVGPathSegMovetoRel "SVGPathSegMovetoRel"

foreign import javascript unsafe "window[\"SVGPathSegMovetoRel\"]" gTypeSVGPathSegMovetoRel :: GType
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
newtype SVGPatternElement = SVGPatternElement { unSVGPatternElement :: JSVal }

instance Eq (SVGPatternElement) where
  (SVGPatternElement a) == (SVGPatternElement b) = js_eq a b

instance PToJSVal SVGPatternElement where
  pToJSVal = unSVGPatternElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPatternElement where
  pFromJSVal = SVGPatternElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPatternElement where
  toJSVal = return . unSVGPatternElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPatternElement where
  fromJSVal = return . fmap SVGPatternElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGPatternElement
instance IsElement SVGPatternElement
instance IsNode SVGPatternElement
instance IsEventTarget SVGPatternElement
instance IsGObject SVGPatternElement where
  toGObject = GObject . unSVGPatternElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPatternElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPatternElement :: IsGObject obj => obj -> SVGPatternElement
castToSVGPatternElement = castTo gTypeSVGPatternElement "SVGPatternElement"

foreign import javascript unsafe "window[\"SVGPatternElement\"]" gTypeSVGPatternElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint Mozilla SVGPoint documentation>
newtype SVGPoint = SVGPoint { unSVGPoint :: JSVal }

instance Eq (SVGPoint) where
  (SVGPoint a) == (SVGPoint b) = js_eq a b

instance PToJSVal SVGPoint where
  pToJSVal = unSVGPoint
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPoint where
  pFromJSVal = SVGPoint
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPoint where
  toJSVal = return . unSVGPoint
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPoint where
  fromJSVal = return . fmap SVGPoint . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGPoint where
  toGObject = GObject . unSVGPoint
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPoint . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPoint :: IsGObject obj => obj -> SVGPoint
castToSVGPoint = castTo gTypeSVGPoint "SVGPoint"

foreign import javascript unsafe "window[\"SVGPoint\"]" gTypeSVGPoint :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPointList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPointList Mozilla SVGPointList documentation>
newtype SVGPointList = SVGPointList { unSVGPointList :: JSVal }

instance Eq (SVGPointList) where
  (SVGPointList a) == (SVGPointList b) = js_eq a b

instance PToJSVal SVGPointList where
  pToJSVal = unSVGPointList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPointList where
  pFromJSVal = SVGPointList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPointList where
  toJSVal = return . unSVGPointList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPointList where
  fromJSVal = return . fmap SVGPointList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGPointList where
  toGObject = GObject . unSVGPointList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPointList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPointList :: IsGObject obj => obj -> SVGPointList
castToSVGPointList = castTo gTypeSVGPointList "SVGPointList"

foreign import javascript unsafe "window[\"SVGPointList\"]" gTypeSVGPointList :: GType
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
newtype SVGPolygonElement = SVGPolygonElement { unSVGPolygonElement :: JSVal }

instance Eq (SVGPolygonElement) where
  (SVGPolygonElement a) == (SVGPolygonElement b) = js_eq a b

instance PToJSVal SVGPolygonElement where
  pToJSVal = unSVGPolygonElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPolygonElement where
  pFromJSVal = SVGPolygonElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPolygonElement where
  toJSVal = return . unSVGPolygonElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPolygonElement where
  fromJSVal = return . fmap SVGPolygonElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGPolygonElement
instance IsSVGElement SVGPolygonElement
instance IsElement SVGPolygonElement
instance IsNode SVGPolygonElement
instance IsEventTarget SVGPolygonElement
instance IsGObject SVGPolygonElement where
  toGObject = GObject . unSVGPolygonElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPolygonElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPolygonElement :: IsGObject obj => obj -> SVGPolygonElement
castToSVGPolygonElement = castTo gTypeSVGPolygonElement "SVGPolygonElement"

foreign import javascript unsafe "window[\"SVGPolygonElement\"]" gTypeSVGPolygonElement :: GType
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
newtype SVGPolylineElement = SVGPolylineElement { unSVGPolylineElement :: JSVal }

instance Eq (SVGPolylineElement) where
  (SVGPolylineElement a) == (SVGPolylineElement b) = js_eq a b

instance PToJSVal SVGPolylineElement where
  pToJSVal = unSVGPolylineElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPolylineElement where
  pFromJSVal = SVGPolylineElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPolylineElement where
  toJSVal = return . unSVGPolylineElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPolylineElement where
  fromJSVal = return . fmap SVGPolylineElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGPolylineElement
instance IsSVGElement SVGPolylineElement
instance IsElement SVGPolylineElement
instance IsNode SVGPolylineElement
instance IsEventTarget SVGPolylineElement
instance IsGObject SVGPolylineElement where
  toGObject = GObject . unSVGPolylineElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPolylineElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPolylineElement :: IsGObject obj => obj -> SVGPolylineElement
castToSVGPolylineElement = castTo gTypeSVGPolylineElement "SVGPolylineElement"

foreign import javascript unsafe "window[\"SVGPolylineElement\"]" gTypeSVGPolylineElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPreserveAspectRatio".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio Mozilla SVGPreserveAspectRatio documentation>
newtype SVGPreserveAspectRatio = SVGPreserveAspectRatio { unSVGPreserveAspectRatio :: JSVal }

instance Eq (SVGPreserveAspectRatio) where
  (SVGPreserveAspectRatio a) == (SVGPreserveAspectRatio b) = js_eq a b

instance PToJSVal SVGPreserveAspectRatio where
  pToJSVal = unSVGPreserveAspectRatio
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGPreserveAspectRatio where
  pFromJSVal = SVGPreserveAspectRatio
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGPreserveAspectRatio where
  toJSVal = return . unSVGPreserveAspectRatio
  {-# INLINE toJSVal #-}

instance FromJSVal SVGPreserveAspectRatio where
  fromJSVal = return . fmap SVGPreserveAspectRatio . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGPreserveAspectRatio where
  toGObject = GObject . unSVGPreserveAspectRatio
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGPreserveAspectRatio . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGPreserveAspectRatio :: IsGObject obj => obj -> SVGPreserveAspectRatio
castToSVGPreserveAspectRatio = castTo gTypeSVGPreserveAspectRatio "SVGPreserveAspectRatio"

foreign import javascript unsafe "window[\"SVGPreserveAspectRatio\"]" gTypeSVGPreserveAspectRatio :: GType
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
newtype SVGRadialGradientElement = SVGRadialGradientElement { unSVGRadialGradientElement :: JSVal }

instance Eq (SVGRadialGradientElement) where
  (SVGRadialGradientElement a) == (SVGRadialGradientElement b) = js_eq a b

instance PToJSVal SVGRadialGradientElement where
  pToJSVal = unSVGRadialGradientElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRadialGradientElement where
  pFromJSVal = SVGRadialGradientElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRadialGradientElement where
  toJSVal = return . unSVGRadialGradientElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRadialGradientElement where
  fromJSVal = return . fmap SVGRadialGradientElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGradientElement SVGRadialGradientElement
instance IsSVGElement SVGRadialGradientElement
instance IsElement SVGRadialGradientElement
instance IsNode SVGRadialGradientElement
instance IsEventTarget SVGRadialGradientElement
instance IsGObject SVGRadialGradientElement where
  toGObject = GObject . unSVGRadialGradientElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGRadialGradientElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGRadialGradientElement :: IsGObject obj => obj -> SVGRadialGradientElement
castToSVGRadialGradientElement = castTo gTypeSVGRadialGradientElement "SVGRadialGradientElement"

foreign import javascript unsafe "window[\"SVGRadialGradientElement\"]" gTypeSVGRadialGradientElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect Mozilla SVGRect documentation>
newtype SVGRect = SVGRect { unSVGRect :: JSVal }

instance Eq (SVGRect) where
  (SVGRect a) == (SVGRect b) = js_eq a b

instance PToJSVal SVGRect where
  pToJSVal = unSVGRect
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRect where
  pFromJSVal = SVGRect
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRect where
  toJSVal = return . unSVGRect
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRect where
  fromJSVal = return . fmap SVGRect . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGRect where
  toGObject = GObject . unSVGRect
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGRect . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGRect :: IsGObject obj => obj -> SVGRect
castToSVGRect = castTo gTypeSVGRect "SVGRect"

foreign import javascript unsafe "window[\"SVGRect\"]" gTypeSVGRect :: GType
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
newtype SVGRectElement = SVGRectElement { unSVGRectElement :: JSVal }

instance Eq (SVGRectElement) where
  (SVGRectElement a) == (SVGRectElement b) = js_eq a b

instance PToJSVal SVGRectElement where
  pToJSVal = unSVGRectElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRectElement where
  pFromJSVal = SVGRectElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRectElement where
  toJSVal = return . unSVGRectElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRectElement where
  fromJSVal = return . fmap SVGRectElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGRectElement
instance IsSVGElement SVGRectElement
instance IsElement SVGRectElement
instance IsNode SVGRectElement
instance IsEventTarget SVGRectElement
instance IsGObject SVGRectElement where
  toGObject = GObject . unSVGRectElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGRectElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGRectElement :: IsGObject obj => obj -> SVGRectElement
castToSVGRectElement = castTo gTypeSVGRectElement "SVGRectElement"

foreign import javascript unsafe "window[\"SVGRectElement\"]" gTypeSVGRectElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRenderingIntent".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRenderingIntent Mozilla SVGRenderingIntent documentation>
newtype SVGRenderingIntent = SVGRenderingIntent { unSVGRenderingIntent :: JSVal }

instance Eq (SVGRenderingIntent) where
  (SVGRenderingIntent a) == (SVGRenderingIntent b) = js_eq a b

instance PToJSVal SVGRenderingIntent where
  pToJSVal = unSVGRenderingIntent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGRenderingIntent where
  pFromJSVal = SVGRenderingIntent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGRenderingIntent where
  toJSVal = return . unSVGRenderingIntent
  {-# INLINE toJSVal #-}

instance FromJSVal SVGRenderingIntent where
  fromJSVal = return . fmap SVGRenderingIntent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGRenderingIntent where
  toGObject = GObject . unSVGRenderingIntent
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGRenderingIntent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGRenderingIntent :: IsGObject obj => obj -> SVGRenderingIntent
castToSVGRenderingIntent = castTo gTypeSVGRenderingIntent "SVGRenderingIntent"

foreign import javascript unsafe "window[\"SVGRenderingIntent\"]" gTypeSVGRenderingIntent :: GType
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
newtype SVGSVGElement = SVGSVGElement { unSVGSVGElement :: JSVal }

instance Eq (SVGSVGElement) where
  (SVGSVGElement a) == (SVGSVGElement b) = js_eq a b

instance PToJSVal SVGSVGElement where
  pToJSVal = unSVGSVGElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSVGElement where
  pFromJSVal = SVGSVGElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSVGElement where
  toJSVal = return . unSVGSVGElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSVGElement where
  fromJSVal = return . fmap SVGSVGElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGSVGElement
instance IsSVGElement SVGSVGElement
instance IsElement SVGSVGElement
instance IsNode SVGSVGElement
instance IsEventTarget SVGSVGElement
instance IsGObject SVGSVGElement where
  toGObject = GObject . unSVGSVGElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGSVGElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGSVGElement :: IsGObject obj => obj -> SVGSVGElement
castToSVGSVGElement = castTo gTypeSVGSVGElement "SVGSVGElement"

foreign import javascript unsafe "window[\"SVGSVGElement\"]" gTypeSVGSVGElement :: GType
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
newtype SVGScriptElement = SVGScriptElement { unSVGScriptElement :: JSVal }

instance Eq (SVGScriptElement) where
  (SVGScriptElement a) == (SVGScriptElement b) = js_eq a b

instance PToJSVal SVGScriptElement where
  pToJSVal = unSVGScriptElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGScriptElement where
  pFromJSVal = SVGScriptElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGScriptElement where
  toJSVal = return . unSVGScriptElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGScriptElement where
  fromJSVal = return . fmap SVGScriptElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGScriptElement
instance IsElement SVGScriptElement
instance IsNode SVGScriptElement
instance IsEventTarget SVGScriptElement
instance IsGObject SVGScriptElement where
  toGObject = GObject . unSVGScriptElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGScriptElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGScriptElement :: IsGObject obj => obj -> SVGScriptElement
castToSVGScriptElement = castTo gTypeSVGScriptElement "SVGScriptElement"

foreign import javascript unsafe "window[\"SVGScriptElement\"]" gTypeSVGScriptElement :: GType
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
newtype SVGSetElement = SVGSetElement { unSVGSetElement :: JSVal }

instance Eq (SVGSetElement) where
  (SVGSetElement a) == (SVGSetElement b) = js_eq a b

instance PToJSVal SVGSetElement where
  pToJSVal = unSVGSetElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSetElement where
  pFromJSVal = SVGSetElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSetElement where
  toJSVal = return . unSVGSetElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSetElement where
  fromJSVal = return . fmap SVGSetElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGAnimationElement SVGSetElement
instance IsSVGElement SVGSetElement
instance IsElement SVGSetElement
instance IsNode SVGSetElement
instance IsEventTarget SVGSetElement
instance IsGObject SVGSetElement where
  toGObject = GObject . unSVGSetElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGSetElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGSetElement :: IsGObject obj => obj -> SVGSetElement
castToSVGSetElement = castTo gTypeSVGSetElement "SVGSetElement"

foreign import javascript unsafe "window[\"SVGSetElement\"]" gTypeSVGSetElement :: GType
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
newtype SVGStopElement = SVGStopElement { unSVGStopElement :: JSVal }

instance Eq (SVGStopElement) where
  (SVGStopElement a) == (SVGStopElement b) = js_eq a b

instance PToJSVal SVGStopElement where
  pToJSVal = unSVGStopElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStopElement where
  pFromJSVal = SVGStopElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStopElement where
  toJSVal = return . unSVGStopElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStopElement where
  fromJSVal = return . fmap SVGStopElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGStopElement
instance IsElement SVGStopElement
instance IsNode SVGStopElement
instance IsEventTarget SVGStopElement
instance IsGObject SVGStopElement where
  toGObject = GObject . unSVGStopElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGStopElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGStopElement :: IsGObject obj => obj -> SVGStopElement
castToSVGStopElement = castTo gTypeSVGStopElement "SVGStopElement"

foreign import javascript unsafe "window[\"SVGStopElement\"]" gTypeSVGStopElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList Mozilla SVGStringList documentation>
newtype SVGStringList = SVGStringList { unSVGStringList :: JSVal }

instance Eq (SVGStringList) where
  (SVGStringList a) == (SVGStringList b) = js_eq a b

instance PToJSVal SVGStringList where
  pToJSVal = unSVGStringList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStringList where
  pFromJSVal = SVGStringList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStringList where
  toJSVal = return . unSVGStringList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStringList where
  fromJSVal = return . fmap SVGStringList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGStringList where
  toGObject = GObject . unSVGStringList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGStringList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGStringList :: IsGObject obj => obj -> SVGStringList
castToSVGStringList = castTo gTypeSVGStringList "SVGStringList"

foreign import javascript unsafe "window[\"SVGStringList\"]" gTypeSVGStringList :: GType
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
newtype SVGStyleElement = SVGStyleElement { unSVGStyleElement :: JSVal }

instance Eq (SVGStyleElement) where
  (SVGStyleElement a) == (SVGStyleElement b) = js_eq a b

instance PToJSVal SVGStyleElement where
  pToJSVal = unSVGStyleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGStyleElement where
  pFromJSVal = SVGStyleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGStyleElement where
  toJSVal = return . unSVGStyleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGStyleElement where
  fromJSVal = return . fmap SVGStyleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGStyleElement
instance IsElement SVGStyleElement
instance IsNode SVGStyleElement
instance IsEventTarget SVGStyleElement
instance IsGObject SVGStyleElement where
  toGObject = GObject . unSVGStyleElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGStyleElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGStyleElement :: IsGObject obj => obj -> SVGStyleElement
castToSVGStyleElement = castTo gTypeSVGStyleElement "SVGStyleElement"

foreign import javascript unsafe "window[\"SVGStyleElement\"]" gTypeSVGStyleElement :: GType
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
newtype SVGSwitchElement = SVGSwitchElement { unSVGSwitchElement :: JSVal }

instance Eq (SVGSwitchElement) where
  (SVGSwitchElement a) == (SVGSwitchElement b) = js_eq a b

instance PToJSVal SVGSwitchElement where
  pToJSVal = unSVGSwitchElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSwitchElement where
  pFromJSVal = SVGSwitchElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSwitchElement where
  toJSVal = return . unSVGSwitchElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSwitchElement where
  fromJSVal = return . fmap SVGSwitchElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGSwitchElement
instance IsSVGElement SVGSwitchElement
instance IsElement SVGSwitchElement
instance IsNode SVGSwitchElement
instance IsEventTarget SVGSwitchElement
instance IsGObject SVGSwitchElement where
  toGObject = GObject . unSVGSwitchElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGSwitchElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGSwitchElement :: IsGObject obj => obj -> SVGSwitchElement
castToSVGSwitchElement = castTo gTypeSVGSwitchElement "SVGSwitchElement"

foreign import javascript unsafe "window[\"SVGSwitchElement\"]" gTypeSVGSwitchElement :: GType
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
newtype SVGSymbolElement = SVGSymbolElement { unSVGSymbolElement :: JSVal }

instance Eq (SVGSymbolElement) where
  (SVGSymbolElement a) == (SVGSymbolElement b) = js_eq a b

instance PToJSVal SVGSymbolElement where
  pToJSVal = unSVGSymbolElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGSymbolElement where
  pFromJSVal = SVGSymbolElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGSymbolElement where
  toJSVal = return . unSVGSymbolElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGSymbolElement where
  fromJSVal = return . fmap SVGSymbolElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGSymbolElement
instance IsElement SVGSymbolElement
instance IsNode SVGSymbolElement
instance IsEventTarget SVGSymbolElement
instance IsGObject SVGSymbolElement where
  toGObject = GObject . unSVGSymbolElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGSymbolElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGSymbolElement :: IsGObject obj => obj -> SVGSymbolElement
castToSVGSymbolElement = castTo gTypeSVGSymbolElement "SVGSymbolElement"

foreign import javascript unsafe "window[\"SVGSymbolElement\"]" gTypeSVGSymbolElement :: GType
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
newtype SVGTRefElement = SVGTRefElement { unSVGTRefElement :: JSVal }

instance Eq (SVGTRefElement) where
  (SVGTRefElement a) == (SVGTRefElement b) = js_eq a b

instance PToJSVal SVGTRefElement where
  pToJSVal = unSVGTRefElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTRefElement where
  pFromJSVal = SVGTRefElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTRefElement where
  toJSVal = return . unSVGTRefElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTRefElement where
  fromJSVal = return . fmap SVGTRefElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGTextPositioningElement SVGTRefElement
instance IsSVGTextContentElement SVGTRefElement
instance IsSVGGraphicsElement SVGTRefElement
instance IsSVGElement SVGTRefElement
instance IsElement SVGTRefElement
instance IsNode SVGTRefElement
instance IsEventTarget SVGTRefElement
instance IsGObject SVGTRefElement where
  toGObject = GObject . unSVGTRefElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTRefElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTRefElement :: IsGObject obj => obj -> SVGTRefElement
castToSVGTRefElement = castTo gTypeSVGTRefElement "SVGTRefElement"

foreign import javascript unsafe "window[\"SVGTRefElement\"]" gTypeSVGTRefElement :: GType
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
newtype SVGTSpanElement = SVGTSpanElement { unSVGTSpanElement :: JSVal }

instance Eq (SVGTSpanElement) where
  (SVGTSpanElement a) == (SVGTSpanElement b) = js_eq a b

instance PToJSVal SVGTSpanElement where
  pToJSVal = unSVGTSpanElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTSpanElement where
  pFromJSVal = SVGTSpanElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTSpanElement where
  toJSVal = return . unSVGTSpanElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTSpanElement where
  fromJSVal = return . fmap SVGTSpanElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGTextPositioningElement SVGTSpanElement
instance IsSVGTextContentElement SVGTSpanElement
instance IsSVGGraphicsElement SVGTSpanElement
instance IsSVGElement SVGTSpanElement
instance IsElement SVGTSpanElement
instance IsNode SVGTSpanElement
instance IsEventTarget SVGTSpanElement
instance IsGObject SVGTSpanElement where
  toGObject = GObject . unSVGTSpanElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTSpanElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTSpanElement :: IsGObject obj => obj -> SVGTSpanElement
castToSVGTSpanElement = castTo gTypeSVGTSpanElement "SVGTSpanElement"

foreign import javascript unsafe "window[\"SVGTSpanElement\"]" gTypeSVGTSpanElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTests".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests Mozilla SVGTests documentation>
newtype SVGTests = SVGTests { unSVGTests :: JSVal }

instance Eq (SVGTests) where
  (SVGTests a) == (SVGTests b) = js_eq a b

instance PToJSVal SVGTests where
  pToJSVal = unSVGTests
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTests where
  pFromJSVal = SVGTests
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTests where
  toJSVal = return . unSVGTests
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTests where
  fromJSVal = return . fmap SVGTests . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGTests where
  toGObject = GObject . unSVGTests
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTests . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTests :: IsGObject obj => obj -> SVGTests
castToSVGTests = castTo gTypeSVGTests "SVGTests"

foreign import javascript unsafe "window[\"SVGTests\"]" gTypeSVGTests :: GType
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
newtype SVGTextContentElement = SVGTextContentElement { unSVGTextContentElement :: JSVal }

instance Eq (SVGTextContentElement) where
  (SVGTextContentElement a) == (SVGTextContentElement b) = js_eq a b

instance PToJSVal SVGTextContentElement where
  pToJSVal = unSVGTextContentElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextContentElement where
  pFromJSVal = SVGTextContentElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextContentElement where
  toJSVal = return . unSVGTextContentElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextContentElement where
  fromJSVal = return . fmap SVGTextContentElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

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
  toGObject = GObject . unSVGTextContentElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTextContentElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTextContentElement :: IsGObject obj => obj -> SVGTextContentElement
castToSVGTextContentElement = castTo gTypeSVGTextContentElement "SVGTextContentElement"

foreign import javascript unsafe "window[\"SVGTextContentElement\"]" gTypeSVGTextContentElement :: GType
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
newtype SVGTextElement = SVGTextElement { unSVGTextElement :: JSVal }

instance Eq (SVGTextElement) where
  (SVGTextElement a) == (SVGTextElement b) = js_eq a b

instance PToJSVal SVGTextElement where
  pToJSVal = unSVGTextElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextElement where
  pFromJSVal = SVGTextElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextElement where
  toJSVal = return . unSVGTextElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextElement where
  fromJSVal = return . fmap SVGTextElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGTextPositioningElement SVGTextElement
instance IsSVGTextContentElement SVGTextElement
instance IsSVGGraphicsElement SVGTextElement
instance IsSVGElement SVGTextElement
instance IsElement SVGTextElement
instance IsNode SVGTextElement
instance IsEventTarget SVGTextElement
instance IsGObject SVGTextElement where
  toGObject = GObject . unSVGTextElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTextElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTextElement :: IsGObject obj => obj -> SVGTextElement
castToSVGTextElement = castTo gTypeSVGTextElement "SVGTextElement"

foreign import javascript unsafe "window[\"SVGTextElement\"]" gTypeSVGTextElement :: GType
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
newtype SVGTextPathElement = SVGTextPathElement { unSVGTextPathElement :: JSVal }

instance Eq (SVGTextPathElement) where
  (SVGTextPathElement a) == (SVGTextPathElement b) = js_eq a b

instance PToJSVal SVGTextPathElement where
  pToJSVal = unSVGTextPathElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextPathElement where
  pFromJSVal = SVGTextPathElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextPathElement where
  toJSVal = return . unSVGTextPathElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextPathElement where
  fromJSVal = return . fmap SVGTextPathElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGTextContentElement SVGTextPathElement
instance IsSVGGraphicsElement SVGTextPathElement
instance IsSVGElement SVGTextPathElement
instance IsElement SVGTextPathElement
instance IsNode SVGTextPathElement
instance IsEventTarget SVGTextPathElement
instance IsGObject SVGTextPathElement where
  toGObject = GObject . unSVGTextPathElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTextPathElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTextPathElement :: IsGObject obj => obj -> SVGTextPathElement
castToSVGTextPathElement = castTo gTypeSVGTextPathElement "SVGTextPathElement"

foreign import javascript unsafe "window[\"SVGTextPathElement\"]" gTypeSVGTextPathElement :: GType
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
newtype SVGTextPositioningElement = SVGTextPositioningElement { unSVGTextPositioningElement :: JSVal }

instance Eq (SVGTextPositioningElement) where
  (SVGTextPositioningElement a) == (SVGTextPositioningElement b) = js_eq a b

instance PToJSVal SVGTextPositioningElement where
  pToJSVal = unSVGTextPositioningElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTextPositioningElement where
  pFromJSVal = SVGTextPositioningElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTextPositioningElement where
  toJSVal = return . unSVGTextPositioningElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTextPositioningElement where
  fromJSVal = return . fmap SVGTextPositioningElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

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
  toGObject = GObject . unSVGTextPositioningElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTextPositioningElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTextPositioningElement :: IsGObject obj => obj -> SVGTextPositioningElement
castToSVGTextPositioningElement = castTo gTypeSVGTextPositioningElement "SVGTextPositioningElement"

foreign import javascript unsafe "window[\"SVGTextPositioningElement\"]" gTypeSVGTextPositioningElement :: GType
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
newtype SVGTitleElement = SVGTitleElement { unSVGTitleElement :: JSVal }

instance Eq (SVGTitleElement) where
  (SVGTitleElement a) == (SVGTitleElement b) = js_eq a b

instance PToJSVal SVGTitleElement where
  pToJSVal = unSVGTitleElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTitleElement where
  pFromJSVal = SVGTitleElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTitleElement where
  toJSVal = return . unSVGTitleElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTitleElement where
  fromJSVal = return . fmap SVGTitleElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGTitleElement
instance IsElement SVGTitleElement
instance IsNode SVGTitleElement
instance IsEventTarget SVGTitleElement
instance IsGObject SVGTitleElement where
  toGObject = GObject . unSVGTitleElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTitleElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTitleElement :: IsGObject obj => obj -> SVGTitleElement
castToSVGTitleElement = castTo gTypeSVGTitleElement "SVGTitleElement"

foreign import javascript unsafe "window[\"SVGTitleElement\"]" gTypeSVGTitleElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTransform".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform Mozilla SVGTransform documentation>
newtype SVGTransform = SVGTransform { unSVGTransform :: JSVal }

instance Eq (SVGTransform) where
  (SVGTransform a) == (SVGTransform b) = js_eq a b

instance PToJSVal SVGTransform where
  pToJSVal = unSVGTransform
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTransform where
  pFromJSVal = SVGTransform
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTransform where
  toJSVal = return . unSVGTransform
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTransform where
  fromJSVal = return . fmap SVGTransform . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGTransform where
  toGObject = GObject . unSVGTransform
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTransform . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTransform :: IsGObject obj => obj -> SVGTransform
castToSVGTransform = castTo gTypeSVGTransform "SVGTransform"

foreign import javascript unsafe "window[\"SVGTransform\"]" gTypeSVGTransform :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTransformList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransformList Mozilla SVGTransformList documentation>
newtype SVGTransformList = SVGTransformList { unSVGTransformList :: JSVal }

instance Eq (SVGTransformList) where
  (SVGTransformList a) == (SVGTransformList b) = js_eq a b

instance PToJSVal SVGTransformList where
  pToJSVal = unSVGTransformList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGTransformList where
  pFromJSVal = SVGTransformList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGTransformList where
  toJSVal = return . unSVGTransformList
  {-# INLINE toJSVal #-}

instance FromJSVal SVGTransformList where
  fromJSVal = return . fmap SVGTransformList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGTransformList where
  toGObject = GObject . unSVGTransformList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGTransformList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGTransformList :: IsGObject obj => obj -> SVGTransformList
castToSVGTransformList = castTo gTypeSVGTransformList "SVGTransformList"

foreign import javascript unsafe "window[\"SVGTransformList\"]" gTypeSVGTransformList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGURIReference".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGURIReference Mozilla SVGURIReference documentation>
newtype SVGURIReference = SVGURIReference { unSVGURIReference :: JSVal }

instance Eq (SVGURIReference) where
  (SVGURIReference a) == (SVGURIReference b) = js_eq a b

instance PToJSVal SVGURIReference where
  pToJSVal = unSVGURIReference
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGURIReference where
  pFromJSVal = SVGURIReference
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGURIReference where
  toJSVal = return . unSVGURIReference
  {-# INLINE toJSVal #-}

instance FromJSVal SVGURIReference where
  fromJSVal = return . fmap SVGURIReference . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGURIReference where
  toGObject = GObject . unSVGURIReference
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGURIReference . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGURIReference :: IsGObject obj => obj -> SVGURIReference
castToSVGURIReference = castTo gTypeSVGURIReference "SVGURIReference"

foreign import javascript unsafe "window[\"SVGURIReference\"]" gTypeSVGURIReference :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGUnitTypes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes Mozilla SVGUnitTypes documentation>
newtype SVGUnitTypes = SVGUnitTypes { unSVGUnitTypes :: JSVal }

instance Eq (SVGUnitTypes) where
  (SVGUnitTypes a) == (SVGUnitTypes b) = js_eq a b

instance PToJSVal SVGUnitTypes where
  pToJSVal = unSVGUnitTypes
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGUnitTypes where
  pFromJSVal = SVGUnitTypes
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGUnitTypes where
  toJSVal = return . unSVGUnitTypes
  {-# INLINE toJSVal #-}

instance FromJSVal SVGUnitTypes where
  fromJSVal = return . fmap SVGUnitTypes . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGUnitTypes where
  toGObject = GObject . unSVGUnitTypes
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGUnitTypes . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGUnitTypes :: IsGObject obj => obj -> SVGUnitTypes
castToSVGUnitTypes = castTo gTypeSVGUnitTypes "SVGUnitTypes"

foreign import javascript unsafe "window[\"SVGUnitTypes\"]" gTypeSVGUnitTypes :: GType
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
newtype SVGUseElement = SVGUseElement { unSVGUseElement :: JSVal }

instance Eq (SVGUseElement) where
  (SVGUseElement a) == (SVGUseElement b) = js_eq a b

instance PToJSVal SVGUseElement where
  pToJSVal = unSVGUseElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGUseElement where
  pFromJSVal = SVGUseElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGUseElement where
  toJSVal = return . unSVGUseElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGUseElement where
  fromJSVal = return . fmap SVGUseElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGGraphicsElement SVGUseElement
instance IsSVGElement SVGUseElement
instance IsElement SVGUseElement
instance IsNode SVGUseElement
instance IsEventTarget SVGUseElement
instance IsGObject SVGUseElement where
  toGObject = GObject . unSVGUseElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGUseElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGUseElement :: IsGObject obj => obj -> SVGUseElement
castToSVGUseElement = castTo gTypeSVGUseElement "SVGUseElement"

foreign import javascript unsafe "window[\"SVGUseElement\"]" gTypeSVGUseElement :: GType
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
newtype SVGVKernElement = SVGVKernElement { unSVGVKernElement :: JSVal }

instance Eq (SVGVKernElement) where
  (SVGVKernElement a) == (SVGVKernElement b) = js_eq a b

instance PToJSVal SVGVKernElement where
  pToJSVal = unSVGVKernElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGVKernElement where
  pFromJSVal = SVGVKernElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGVKernElement where
  toJSVal = return . unSVGVKernElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGVKernElement where
  fromJSVal = return . fmap SVGVKernElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGVKernElement
instance IsElement SVGVKernElement
instance IsNode SVGVKernElement
instance IsEventTarget SVGVKernElement
instance IsGObject SVGVKernElement where
  toGObject = GObject . unSVGVKernElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGVKernElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGVKernElement :: IsGObject obj => obj -> SVGVKernElement
castToSVGVKernElement = castTo gTypeSVGVKernElement "SVGVKernElement"

foreign import javascript unsafe "window[\"SVGVKernElement\"]" gTypeSVGVKernElement :: GType
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
newtype SVGViewElement = SVGViewElement { unSVGViewElement :: JSVal }

instance Eq (SVGViewElement) where
  (SVGViewElement a) == (SVGViewElement b) = js_eq a b

instance PToJSVal SVGViewElement where
  pToJSVal = unSVGViewElement
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGViewElement where
  pFromJSVal = SVGViewElement
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGViewElement where
  toJSVal = return . unSVGViewElement
  {-# INLINE toJSVal #-}

instance FromJSVal SVGViewElement where
  fromJSVal = return . fmap SVGViewElement . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsSVGElement SVGViewElement
instance IsElement SVGViewElement
instance IsNode SVGViewElement
instance IsEventTarget SVGViewElement
instance IsGObject SVGViewElement where
  toGObject = GObject . unSVGViewElement
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGViewElement . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGViewElement :: IsGObject obj => obj -> SVGViewElement
castToSVGViewElement = castTo gTypeSVGViewElement "SVGViewElement"

foreign import javascript unsafe "window[\"SVGViewElement\"]" gTypeSVGViewElement :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGViewSpec".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec Mozilla SVGViewSpec documentation>
newtype SVGViewSpec = SVGViewSpec { unSVGViewSpec :: JSVal }

instance Eq (SVGViewSpec) where
  (SVGViewSpec a) == (SVGViewSpec b) = js_eq a b

instance PToJSVal SVGViewSpec where
  pToJSVal = unSVGViewSpec
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGViewSpec where
  pFromJSVal = SVGViewSpec
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGViewSpec where
  toJSVal = return . unSVGViewSpec
  {-# INLINE toJSVal #-}

instance FromJSVal SVGViewSpec where
  fromJSVal = return . fmap SVGViewSpec . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGViewSpec where
  toGObject = GObject . unSVGViewSpec
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGViewSpec . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGViewSpec :: IsGObject obj => obj -> SVGViewSpec
castToSVGViewSpec = castTo gTypeSVGViewSpec "SVGViewSpec"

foreign import javascript unsafe "window[\"SVGViewSpec\"]" gTypeSVGViewSpec :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGZoomAndPan".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan Mozilla SVGZoomAndPan documentation>
newtype SVGZoomAndPan = SVGZoomAndPan { unSVGZoomAndPan :: JSVal }

instance Eq (SVGZoomAndPan) where
  (SVGZoomAndPan a) == (SVGZoomAndPan b) = js_eq a b

instance PToJSVal SVGZoomAndPan where
  pToJSVal = unSVGZoomAndPan
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGZoomAndPan where
  pFromJSVal = SVGZoomAndPan
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGZoomAndPan where
  toJSVal = return . unSVGZoomAndPan
  {-# INLINE toJSVal #-}

instance FromJSVal SVGZoomAndPan where
  fromJSVal = return . fmap SVGZoomAndPan . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SVGZoomAndPan where
  toGObject = GObject . unSVGZoomAndPan
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGZoomAndPan . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGZoomAndPan :: IsGObject obj => obj -> SVGZoomAndPan
castToSVGZoomAndPan = castTo gTypeSVGZoomAndPan "SVGZoomAndPan"

foreign import javascript unsafe "window[\"SVGZoomAndPan\"]" gTypeSVGZoomAndPan :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGZoomEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent Mozilla SVGZoomEvent documentation>
newtype SVGZoomEvent = SVGZoomEvent { unSVGZoomEvent :: JSVal }

instance Eq (SVGZoomEvent) where
  (SVGZoomEvent a) == (SVGZoomEvent b) = js_eq a b

instance PToJSVal SVGZoomEvent where
  pToJSVal = unSVGZoomEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SVGZoomEvent where
  pFromJSVal = SVGZoomEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SVGZoomEvent where
  toJSVal = return . unSVGZoomEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SVGZoomEvent where
  fromJSVal = return . fmap SVGZoomEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent SVGZoomEvent
instance IsEvent SVGZoomEvent
instance IsGObject SVGZoomEvent where
  toGObject = GObject . unSVGZoomEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = SVGZoomEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSVGZoomEvent :: IsGObject obj => obj -> SVGZoomEvent
castToSVGZoomEvent = castTo gTypeSVGZoomEvent "SVGZoomEvent"

foreign import javascript unsafe "window[\"SVGZoomEvent\"]" gTypeSVGZoomEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Screen".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Screen Mozilla Screen documentation>
newtype Screen = Screen { unScreen :: JSVal }

instance Eq (Screen) where
  (Screen a) == (Screen b) = js_eq a b

instance PToJSVal Screen where
  pToJSVal = unScreen
  {-# INLINE pToJSVal #-}

instance PFromJSVal Screen where
  pFromJSVal = Screen
  {-# INLINE pFromJSVal #-}

instance ToJSVal Screen where
  toJSVal = return . unScreen
  {-# INLINE toJSVal #-}

instance FromJSVal Screen where
  fromJSVal = return . fmap Screen . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Screen where
  toGObject = GObject . unScreen
  {-# INLINE toGObject #-}
  unsafeCastGObject = Screen . unGObject
  {-# INLINE unsafeCastGObject #-}

castToScreen :: IsGObject obj => obj -> Screen
castToScreen = castTo gTypeScreen "Screen"

foreign import javascript unsafe "window[\"Screen\"]" gTypeScreen :: GType
#else
type IsScreen o = ScreenClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProcessorNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProcessorNode Mozilla ScriptProcessorNode documentation>
newtype ScriptProcessorNode = ScriptProcessorNode { unScriptProcessorNode :: JSVal }

instance Eq (ScriptProcessorNode) where
  (ScriptProcessorNode a) == (ScriptProcessorNode b) = js_eq a b

instance PToJSVal ScriptProcessorNode where
  pToJSVal = unScriptProcessorNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProcessorNode where
  pFromJSVal = ScriptProcessorNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProcessorNode where
  toJSVal = return . unScriptProcessorNode
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProcessorNode where
  fromJSVal = return . fmap ScriptProcessorNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode ScriptProcessorNode
instance IsEventTarget ScriptProcessorNode
instance IsGObject ScriptProcessorNode where
  toGObject = GObject . unScriptProcessorNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ScriptProcessorNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToScriptProcessorNode :: IsGObject obj => obj -> ScriptProcessorNode
castToScriptProcessorNode = castTo gTypeScriptProcessorNode "ScriptProcessorNode"

foreign import javascript unsafe "window[\"ScriptProcessorNode\"]" gTypeScriptProcessorNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProfile".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile Mozilla ScriptProfile documentation>
newtype ScriptProfile = ScriptProfile { unScriptProfile :: JSVal }

instance Eq (ScriptProfile) where
  (ScriptProfile a) == (ScriptProfile b) = js_eq a b

instance PToJSVal ScriptProfile where
  pToJSVal = unScriptProfile
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProfile where
  pFromJSVal = ScriptProfile
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProfile where
  toJSVal = return . unScriptProfile
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProfile where
  fromJSVal = return . fmap ScriptProfile . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ScriptProfile where
  toGObject = GObject . unScriptProfile
  {-# INLINE toGObject #-}
  unsafeCastGObject = ScriptProfile . unGObject
  {-# INLINE unsafeCastGObject #-}

castToScriptProfile :: IsGObject obj => obj -> ScriptProfile
castToScriptProfile = castTo gTypeScriptProfile "ScriptProfile"

foreign import javascript unsafe "window[\"ScriptProfile\"]" gTypeScriptProfile :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ScriptProfileNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode Mozilla ScriptProfileNode documentation>
newtype ScriptProfileNode = ScriptProfileNode { unScriptProfileNode :: JSVal }

instance Eq (ScriptProfileNode) where
  (ScriptProfileNode a) == (ScriptProfileNode b) = js_eq a b

instance PToJSVal ScriptProfileNode where
  pToJSVal = unScriptProfileNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal ScriptProfileNode where
  pFromJSVal = ScriptProfileNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal ScriptProfileNode where
  toJSVal = return . unScriptProfileNode
  {-# INLINE toJSVal #-}

instance FromJSVal ScriptProfileNode where
  fromJSVal = return . fmap ScriptProfileNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ScriptProfileNode where
  toGObject = GObject . unScriptProfileNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = ScriptProfileNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToScriptProfileNode :: IsGObject obj => obj -> ScriptProfileNode
castToScriptProfileNode = castTo gTypeScriptProfileNode "ScriptProfileNode"

foreign import javascript unsafe "window[\"ScriptProfileNode\"]" gTypeScriptProfileNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SecurityPolicy".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy Mozilla SecurityPolicy documentation>
newtype SecurityPolicy = SecurityPolicy { unSecurityPolicy :: JSVal }

instance Eq (SecurityPolicy) where
  (SecurityPolicy a) == (SecurityPolicy b) = js_eq a b

instance PToJSVal SecurityPolicy where
  pToJSVal = unSecurityPolicy
  {-# INLINE pToJSVal #-}

instance PFromJSVal SecurityPolicy where
  pFromJSVal = SecurityPolicy
  {-# INLINE pFromJSVal #-}

instance ToJSVal SecurityPolicy where
  toJSVal = return . unSecurityPolicy
  {-# INLINE toJSVal #-}

instance FromJSVal SecurityPolicy where
  fromJSVal = return . fmap SecurityPolicy . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SecurityPolicy where
  toGObject = GObject . unSecurityPolicy
  {-# INLINE toGObject #-}
  unsafeCastGObject = SecurityPolicy . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSecurityPolicy :: IsGObject obj => obj -> SecurityPolicy
castToSecurityPolicy = castTo gTypeSecurityPolicy "SecurityPolicy"

foreign import javascript unsafe "window[\"SecurityPolicy\"]" gTypeSecurityPolicy :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsSecurityPolicy o = SecurityPolicyClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SecurityPolicyViolationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent Mozilla SecurityPolicyViolationEvent documentation>
newtype SecurityPolicyViolationEvent = SecurityPolicyViolationEvent { unSecurityPolicyViolationEvent :: JSVal }

instance Eq (SecurityPolicyViolationEvent) where
  (SecurityPolicyViolationEvent a) == (SecurityPolicyViolationEvent b) = js_eq a b

instance PToJSVal SecurityPolicyViolationEvent where
  pToJSVal = unSecurityPolicyViolationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SecurityPolicyViolationEvent where
  pFromJSVal = SecurityPolicyViolationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SecurityPolicyViolationEvent where
  toJSVal = return . unSecurityPolicyViolationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SecurityPolicyViolationEvent where
  fromJSVal = return . fmap SecurityPolicyViolationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent SecurityPolicyViolationEvent
instance IsGObject SecurityPolicyViolationEvent where
  toGObject = GObject . unSecurityPolicyViolationEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = SecurityPolicyViolationEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSecurityPolicyViolationEvent :: IsGObject obj => obj -> SecurityPolicyViolationEvent
castToSecurityPolicyViolationEvent = castTo gTypeSecurityPolicyViolationEvent "SecurityPolicyViolationEvent"

foreign import javascript unsafe "window[\"SecurityPolicyViolationEvent\"]" gTypeSecurityPolicyViolationEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Selection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Selection Mozilla Selection documentation>
newtype Selection = Selection { unSelection :: JSVal }

instance Eq (Selection) where
  (Selection a) == (Selection b) = js_eq a b

instance PToJSVal Selection where
  pToJSVal = unSelection
  {-# INLINE pToJSVal #-}

instance PFromJSVal Selection where
  pFromJSVal = Selection
  {-# INLINE pFromJSVal #-}

instance ToJSVal Selection where
  toJSVal = return . unSelection
  {-# INLINE toJSVal #-}

instance FromJSVal Selection where
  fromJSVal = return . fmap Selection . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Selection where
  toGObject = GObject . unSelection
  {-# INLINE toGObject #-}
  unsafeCastGObject = Selection . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSelection :: IsGObject obj => obj -> Selection
castToSelection = castTo gTypeSelection "Selection"

foreign import javascript unsafe "window[\"Selection\"]" gTypeSelection :: GType
#else
type IsSelection o = SelectionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceBuffer".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer Mozilla SourceBuffer documentation>
newtype SourceBuffer = SourceBuffer { unSourceBuffer :: JSVal }

instance Eq (SourceBuffer) where
  (SourceBuffer a) == (SourceBuffer b) = js_eq a b

instance PToJSVal SourceBuffer where
  pToJSVal = unSourceBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceBuffer where
  pFromJSVal = SourceBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceBuffer where
  toJSVal = return . unSourceBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal SourceBuffer where
  fromJSVal = return . fmap SourceBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget SourceBuffer
instance IsGObject SourceBuffer where
  toGObject = GObject . unSourceBuffer
  {-# INLINE toGObject #-}
  unsafeCastGObject = SourceBuffer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSourceBuffer :: IsGObject obj => obj -> SourceBuffer
castToSourceBuffer = castTo gTypeSourceBuffer "SourceBuffer"

foreign import javascript unsafe "window[\"SourceBuffer\"]" gTypeSourceBuffer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceBufferList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList Mozilla SourceBufferList documentation>
newtype SourceBufferList = SourceBufferList { unSourceBufferList :: JSVal }

instance Eq (SourceBufferList) where
  (SourceBufferList a) == (SourceBufferList b) = js_eq a b

instance PToJSVal SourceBufferList where
  pToJSVal = unSourceBufferList
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceBufferList where
  pFromJSVal = SourceBufferList
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceBufferList where
  toJSVal = return . unSourceBufferList
  {-# INLINE toJSVal #-}

instance FromJSVal SourceBufferList where
  fromJSVal = return . fmap SourceBufferList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget SourceBufferList
instance IsGObject SourceBufferList where
  toGObject = GObject . unSourceBufferList
  {-# INLINE toGObject #-}
  unsafeCastGObject = SourceBufferList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSourceBufferList :: IsGObject obj => obj -> SourceBufferList
castToSourceBufferList = castTo gTypeSourceBufferList "SourceBufferList"

foreign import javascript unsafe "window[\"SourceBufferList\"]" gTypeSourceBufferList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SourceInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo Mozilla SourceInfo documentation>
newtype SourceInfo = SourceInfo { unSourceInfo :: JSVal }

instance Eq (SourceInfo) where
  (SourceInfo a) == (SourceInfo b) = js_eq a b

instance PToJSVal SourceInfo where
  pToJSVal = unSourceInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal SourceInfo where
  pFromJSVal = SourceInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal SourceInfo where
  toJSVal = return . unSourceInfo
  {-# INLINE toJSVal #-}

instance FromJSVal SourceInfo where
  fromJSVal = return . fmap SourceInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SourceInfo where
  toGObject = GObject . unSourceInfo
  {-# INLINE toGObject #-}
  unsafeCastGObject = SourceInfo . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSourceInfo :: IsGObject obj => obj -> SourceInfo
castToSourceInfo = castTo gTypeSourceInfo "SourceInfo"

foreign import javascript unsafe "window[\"SourceInfo\"]" gTypeSourceInfo :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesis".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis Mozilla SpeechSynthesis documentation>
newtype SpeechSynthesis = SpeechSynthesis { unSpeechSynthesis :: JSVal }

instance Eq (SpeechSynthesis) where
  (SpeechSynthesis a) == (SpeechSynthesis b) = js_eq a b

instance PToJSVal SpeechSynthesis where
  pToJSVal = unSpeechSynthesis
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesis where
  pFromJSVal = SpeechSynthesis
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesis where
  toJSVal = return . unSpeechSynthesis
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesis where
  fromJSVal = return . fmap SpeechSynthesis . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SpeechSynthesis where
  toGObject = GObject . unSpeechSynthesis
  {-# INLINE toGObject #-}
  unsafeCastGObject = SpeechSynthesis . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSpeechSynthesis :: IsGObject obj => obj -> SpeechSynthesis
castToSpeechSynthesis = castTo gTypeSpeechSynthesis "SpeechSynthesis"

foreign import javascript unsafe "window[\"SpeechSynthesis\"]" gTypeSpeechSynthesis :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent Mozilla SpeechSynthesisEvent documentation>
newtype SpeechSynthesisEvent = SpeechSynthesisEvent { unSpeechSynthesisEvent :: JSVal }

instance Eq (SpeechSynthesisEvent) where
  (SpeechSynthesisEvent a) == (SpeechSynthesisEvent b) = js_eq a b

instance PToJSVal SpeechSynthesisEvent where
  pToJSVal = unSpeechSynthesisEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisEvent where
  pFromJSVal = SpeechSynthesisEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisEvent where
  toJSVal = return . unSpeechSynthesisEvent
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisEvent where
  fromJSVal = return . fmap SpeechSynthesisEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent SpeechSynthesisEvent
instance IsGObject SpeechSynthesisEvent where
  toGObject = GObject . unSpeechSynthesisEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = SpeechSynthesisEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSpeechSynthesisEvent :: IsGObject obj => obj -> SpeechSynthesisEvent
castToSpeechSynthesisEvent = castTo gTypeSpeechSynthesisEvent "SpeechSynthesisEvent"

foreign import javascript unsafe "window[\"SpeechSynthesisEvent\"]" gTypeSpeechSynthesisEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisUtterance".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation>
newtype SpeechSynthesisUtterance = SpeechSynthesisUtterance { unSpeechSynthesisUtterance :: JSVal }

instance Eq (SpeechSynthesisUtterance) where
  (SpeechSynthesisUtterance a) == (SpeechSynthesisUtterance b) = js_eq a b

instance PToJSVal SpeechSynthesisUtterance where
  pToJSVal = unSpeechSynthesisUtterance
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisUtterance where
  pFromJSVal = SpeechSynthesisUtterance
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisUtterance where
  toJSVal = return . unSpeechSynthesisUtterance
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisUtterance where
  fromJSVal = return . fmap SpeechSynthesisUtterance . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget SpeechSynthesisUtterance
instance IsGObject SpeechSynthesisUtterance where
  toGObject = GObject . unSpeechSynthesisUtterance
  {-# INLINE toGObject #-}
  unsafeCastGObject = SpeechSynthesisUtterance . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSpeechSynthesisUtterance :: IsGObject obj => obj -> SpeechSynthesisUtterance
castToSpeechSynthesisUtterance = castTo gTypeSpeechSynthesisUtterance "SpeechSynthesisUtterance"

foreign import javascript unsafe "window[\"SpeechSynthesisUtterance\"]" gTypeSpeechSynthesisUtterance :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisVoice".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice Mozilla SpeechSynthesisVoice documentation>
newtype SpeechSynthesisVoice = SpeechSynthesisVoice { unSpeechSynthesisVoice :: JSVal }

instance Eq (SpeechSynthesisVoice) where
  (SpeechSynthesisVoice a) == (SpeechSynthesisVoice b) = js_eq a b

instance PToJSVal SpeechSynthesisVoice where
  pToJSVal = unSpeechSynthesisVoice
  {-# INLINE pToJSVal #-}

instance PFromJSVal SpeechSynthesisVoice where
  pFromJSVal = SpeechSynthesisVoice
  {-# INLINE pFromJSVal #-}

instance ToJSVal SpeechSynthesisVoice where
  toJSVal = return . unSpeechSynthesisVoice
  {-# INLINE toJSVal #-}

instance FromJSVal SpeechSynthesisVoice where
  fromJSVal = return . fmap SpeechSynthesisVoice . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SpeechSynthesisVoice where
  toGObject = GObject . unSpeechSynthesisVoice
  {-# INLINE toGObject #-}
  unsafeCastGObject = SpeechSynthesisVoice . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSpeechSynthesisVoice :: IsGObject obj => obj -> SpeechSynthesisVoice
castToSpeechSynthesisVoice = castTo gTypeSpeechSynthesisVoice "SpeechSynthesisVoice"

foreign import javascript unsafe "window[\"SpeechSynthesisVoice\"]" gTypeSpeechSynthesisVoice :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Storage".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Storage Mozilla Storage documentation>
newtype Storage = Storage { unStorage :: JSVal }

instance Eq (Storage) where
  (Storage a) == (Storage b) = js_eq a b

instance PToJSVal Storage where
  pToJSVal = unStorage
  {-# INLINE pToJSVal #-}

instance PFromJSVal Storage where
  pFromJSVal = Storage
  {-# INLINE pFromJSVal #-}

instance ToJSVal Storage where
  toJSVal = return . unStorage
  {-# INLINE toJSVal #-}

instance FromJSVal Storage where
  fromJSVal = return . fmap Storage . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Storage where
  toGObject = GObject . unStorage
  {-# INLINE toGObject #-}
  unsafeCastGObject = Storage . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStorage :: IsGObject obj => obj -> Storage
castToStorage = castTo gTypeStorage "Storage"

foreign import javascript unsafe "window[\"Storage\"]" gTypeStorage :: GType
#else
type IsStorage o = StorageClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent Mozilla StorageEvent documentation>
newtype StorageEvent = StorageEvent { unStorageEvent :: JSVal }

instance Eq (StorageEvent) where
  (StorageEvent a) == (StorageEvent b) = js_eq a b

instance PToJSVal StorageEvent where
  pToJSVal = unStorageEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageEvent where
  pFromJSVal = StorageEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageEvent where
  toJSVal = return . unStorageEvent
  {-# INLINE toJSVal #-}

instance FromJSVal StorageEvent where
  fromJSVal = return . fmap StorageEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent StorageEvent
instance IsGObject StorageEvent where
  toGObject = GObject . unStorageEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = StorageEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStorageEvent :: IsGObject obj => obj -> StorageEvent
castToStorageEvent = castTo gTypeStorageEvent "StorageEvent"

foreign import javascript unsafe "window[\"StorageEvent\"]" gTypeStorageEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo Mozilla StorageInfo documentation>
newtype StorageInfo = StorageInfo { unStorageInfo :: JSVal }

instance Eq (StorageInfo) where
  (StorageInfo a) == (StorageInfo b) = js_eq a b

instance PToJSVal StorageInfo where
  pToJSVal = unStorageInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageInfo where
  pFromJSVal = StorageInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageInfo where
  toJSVal = return . unStorageInfo
  {-# INLINE toJSVal #-}

instance FromJSVal StorageInfo where
  fromJSVal = return . fmap StorageInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject StorageInfo where
  toGObject = GObject . unStorageInfo
  {-# INLINE toGObject #-}
  unsafeCastGObject = StorageInfo . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStorageInfo :: IsGObject obj => obj -> StorageInfo
castToStorageInfo = castTo gTypeStorageInfo "StorageInfo"

foreign import javascript unsafe "window[\"StorageInfo\"]" gTypeStorageInfo :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsStorageInfo o = StorageInfoClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StorageQuota".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota Mozilla StorageQuota documentation>
newtype StorageQuota = StorageQuota { unStorageQuota :: JSVal }

instance Eq (StorageQuota) where
  (StorageQuota a) == (StorageQuota b) = js_eq a b

instance PToJSVal StorageQuota where
  pToJSVal = unStorageQuota
  {-# INLINE pToJSVal #-}

instance PFromJSVal StorageQuota where
  pFromJSVal = StorageQuota
  {-# INLINE pFromJSVal #-}

instance ToJSVal StorageQuota where
  toJSVal = return . unStorageQuota
  {-# INLINE toJSVal #-}

instance FromJSVal StorageQuota where
  fromJSVal = return . fmap StorageQuota . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject StorageQuota where
  toGObject = GObject . unStorageQuota
  {-# INLINE toGObject #-}
  unsafeCastGObject = StorageQuota . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStorageQuota :: IsGObject obj => obj -> StorageQuota
castToStorageQuota = castTo gTypeStorageQuota "StorageQuota"

foreign import javascript unsafe "window[\"StorageQuota\"]" gTypeStorageQuota :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsStorageQuota o = StorageQuotaClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleMedia".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia Mozilla StyleMedia documentation>
newtype StyleMedia = StyleMedia { unStyleMedia :: JSVal }

instance Eq (StyleMedia) where
  (StyleMedia a) == (StyleMedia b) = js_eq a b

instance PToJSVal StyleMedia where
  pToJSVal = unStyleMedia
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleMedia where
  pFromJSVal = StyleMedia
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleMedia where
  toJSVal = return . unStyleMedia
  {-# INLINE toJSVal #-}

instance FromJSVal StyleMedia where
  fromJSVal = return . fmap StyleMedia . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject StyleMedia where
  toGObject = GObject . unStyleMedia
  {-# INLINE toGObject #-}
  unsafeCastGObject = StyleMedia . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStyleMedia :: IsGObject obj => obj -> StyleMedia
castToStyleMedia = castTo gTypeStyleMedia "StyleMedia"

foreign import javascript unsafe "window[\"StyleMedia\"]" gTypeStyleMedia :: GType
#else
type IsStyleMedia o = StyleMediaClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet Mozilla StyleSheet documentation>
newtype StyleSheet = StyleSheet { unStyleSheet :: JSVal }

instance Eq (StyleSheet) where
  (StyleSheet a) == (StyleSheet b) = js_eq a b

instance PToJSVal StyleSheet where
  pToJSVal = unStyleSheet
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleSheet where
  pFromJSVal = StyleSheet
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleSheet where
  toJSVal = return . unStyleSheet
  {-# INLINE toJSVal #-}

instance FromJSVal StyleSheet where
  fromJSVal = return . fmap StyleSheet . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsGObject o => IsStyleSheet o
toStyleSheet :: IsStyleSheet o => o -> StyleSheet
toStyleSheet = unsafeCastGObject . toGObject

instance IsStyleSheet StyleSheet
instance IsGObject StyleSheet where
  toGObject = GObject . unStyleSheet
  {-# INLINE toGObject #-}
  unsafeCastGObject = StyleSheet . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStyleSheet :: IsGObject obj => obj -> StyleSheet
castToStyleSheet = castTo gTypeStyleSheet "StyleSheet"

foreign import javascript unsafe "window[\"StyleSheet\"]" gTypeStyleSheet :: GType
#else
type IsStyleSheet o = StyleSheetClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheetList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList Mozilla StyleSheetList documentation>
newtype StyleSheetList = StyleSheetList { unStyleSheetList :: JSVal }

instance Eq (StyleSheetList) where
  (StyleSheetList a) == (StyleSheetList b) = js_eq a b

instance PToJSVal StyleSheetList where
  pToJSVal = unStyleSheetList
  {-# INLINE pToJSVal #-}

instance PFromJSVal StyleSheetList where
  pFromJSVal = StyleSheetList
  {-# INLINE pFromJSVal #-}

instance ToJSVal StyleSheetList where
  toJSVal = return . unStyleSheetList
  {-# INLINE toJSVal #-}

instance FromJSVal StyleSheetList where
  fromJSVal = return . fmap StyleSheetList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject StyleSheetList where
  toGObject = GObject . unStyleSheetList
  {-# INLINE toGObject #-}
  unsafeCastGObject = StyleSheetList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToStyleSheetList :: IsGObject obj => obj -> StyleSheetList
castToStyleSheetList = castTo gTypeStyleSheetList "StyleSheetList"

foreign import javascript unsafe "window[\"StyleSheetList\"]" gTypeStyleSheetList :: GType
#else
type IsStyleSheetList o = StyleSheetListClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SubtleCrypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto Mozilla WebKitSubtleCrypto documentation>
newtype SubtleCrypto = SubtleCrypto { unSubtleCrypto :: JSVal }

instance Eq (SubtleCrypto) where
  (SubtleCrypto a) == (SubtleCrypto b) = js_eq a b

instance PToJSVal SubtleCrypto where
  pToJSVal = unSubtleCrypto
  {-# INLINE pToJSVal #-}

instance PFromJSVal SubtleCrypto where
  pFromJSVal = SubtleCrypto
  {-# INLINE pFromJSVal #-}

instance ToJSVal SubtleCrypto where
  toJSVal = return . unSubtleCrypto
  {-# INLINE toJSVal #-}

instance FromJSVal SubtleCrypto where
  fromJSVal = return . fmap SubtleCrypto . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject SubtleCrypto where
  toGObject = GObject . unSubtleCrypto
  {-# INLINE toGObject #-}
  unsafeCastGObject = SubtleCrypto . unGObject
  {-# INLINE unsafeCastGObject #-}

castToSubtleCrypto :: IsGObject obj => obj -> SubtleCrypto
castToSubtleCrypto = castTo gTypeSubtleCrypto "SubtleCrypto"

foreign import javascript unsafe "window[\"WebKitSubtleCrypto\"]" gTypeSubtleCrypto :: GType
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
newtype Text = Text { unText :: JSVal }

instance Eq (Text) where
  (Text a) == (Text b) = js_eq a b

instance PToJSVal Text where
  pToJSVal = unText
  {-# INLINE pToJSVal #-}

instance PFromJSVal Text where
  pFromJSVal = Text
  {-# INLINE pFromJSVal #-}

instance ToJSVal Text where
  toJSVal = return . unText
  {-# INLINE toJSVal #-}

instance FromJSVal Text where
  fromJSVal = return . fmap Text . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsCharacterData o => IsText o
toText :: IsText o => o -> Text
toText = unsafeCastGObject . toGObject

instance IsText Text
instance IsCharacterData Text
instance IsNode Text
instance IsEventTarget Text
instance IsGObject Text where
  toGObject = GObject . unText
  {-# INLINE toGObject #-}
  unsafeCastGObject = Text . unGObject
  {-# INLINE unsafeCastGObject #-}

castToText :: IsGObject obj => obj -> Text
castToText = castTo gTypeText "Text"

foreign import javascript unsafe "window[\"Text\"]" gTypeText :: GType
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
newtype TextEvent = TextEvent { unTextEvent :: JSVal }

instance Eq (TextEvent) where
  (TextEvent a) == (TextEvent b) = js_eq a b

instance PToJSVal TextEvent where
  pToJSVal = unTextEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextEvent where
  pFromJSVal = TextEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextEvent where
  toJSVal = return . unTextEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TextEvent where
  fromJSVal = return . fmap TextEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent TextEvent
instance IsEvent TextEvent
instance IsGObject TextEvent where
  toGObject = GObject . unTextEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextEvent :: IsGObject obj => obj -> TextEvent
castToTextEvent = castTo gTypeTextEvent "TextEvent"

foreign import javascript unsafe "window[\"TextEvent\"]" gTypeTextEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextMetrics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics Mozilla TextMetrics documentation>
newtype TextMetrics = TextMetrics { unTextMetrics :: JSVal }

instance Eq (TextMetrics) where
  (TextMetrics a) == (TextMetrics b) = js_eq a b

instance PToJSVal TextMetrics where
  pToJSVal = unTextMetrics
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextMetrics where
  pFromJSVal = TextMetrics
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextMetrics where
  toJSVal = return . unTextMetrics
  {-# INLINE toJSVal #-}

instance FromJSVal TextMetrics where
  fromJSVal = return . fmap TextMetrics . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TextMetrics where
  toGObject = GObject . unTextMetrics
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextMetrics . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextMetrics :: IsGObject obj => obj -> TextMetrics
castToTextMetrics = castTo gTypeTextMetrics "TextMetrics"

foreign import javascript unsafe "window[\"TextMetrics\"]" gTypeTextMetrics :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack Mozilla TextTrack documentation>
newtype TextTrack = TextTrack { unTextTrack :: JSVal }

instance Eq (TextTrack) where
  (TextTrack a) == (TextTrack b) = js_eq a b

instance PToJSVal TextTrack where
  pToJSVal = unTextTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrack where
  pFromJSVal = TextTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrack where
  toJSVal = return . unTextTrack
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrack where
  fromJSVal = return . fmap TextTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget TextTrack
instance IsGObject TextTrack where
  toGObject = GObject . unTextTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextTrack :: IsGObject obj => obj -> TextTrack
castToTextTrack = castTo gTypeTextTrack "TextTrack"

foreign import javascript unsafe "window[\"TextTrack\"]" gTypeTextTrack :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrack o = TextTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation>
newtype TextTrackCue = TextTrackCue { unTextTrackCue :: JSVal }

instance Eq (TextTrackCue) where
  (TextTrackCue a) == (TextTrackCue b) = js_eq a b

instance PToJSVal TextTrackCue where
  pToJSVal = unTextTrackCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackCue where
  pFromJSVal = TextTrackCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackCue where
  toJSVal = return . unTextTrackCue
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackCue where
  fromJSVal = return . fmap TextTrackCue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsTextTrackCue o
toTextTrackCue :: IsTextTrackCue o => o -> TextTrackCue
toTextTrackCue = unsafeCastGObject . toGObject

instance IsTextTrackCue TextTrackCue
instance IsEventTarget TextTrackCue
instance IsGObject TextTrackCue where
  toGObject = GObject . unTextTrackCue
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextTrackCue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextTrackCue :: IsGObject obj => obj -> TextTrackCue
castToTextTrackCue = castTo gTypeTextTrackCue "TextTrackCue"

foreign import javascript unsafe "window[\"TextTrackCue\"]" gTypeTextTrackCue :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackCue o = TextTrackCueClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackCueList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList Mozilla TextTrackCueList documentation>
newtype TextTrackCueList = TextTrackCueList { unTextTrackCueList :: JSVal }

instance Eq (TextTrackCueList) where
  (TextTrackCueList a) == (TextTrackCueList b) = js_eq a b

instance PToJSVal TextTrackCueList where
  pToJSVal = unTextTrackCueList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackCueList where
  pFromJSVal = TextTrackCueList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackCueList where
  toJSVal = return . unTextTrackCueList
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackCueList where
  fromJSVal = return . fmap TextTrackCueList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TextTrackCueList where
  toGObject = GObject . unTextTrackCueList
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextTrackCueList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextTrackCueList :: IsGObject obj => obj -> TextTrackCueList
castToTextTrackCueList = castTo gTypeTextTrackCueList "TextTrackCueList"

foreign import javascript unsafe "window[\"TextTrackCueList\"]" gTypeTextTrackCueList :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackCueList o = TextTrackCueListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList Mozilla TextTrackList documentation>
newtype TextTrackList = TextTrackList { unTextTrackList :: JSVal }

instance Eq (TextTrackList) where
  (TextTrackList a) == (TextTrackList b) = js_eq a b

instance PToJSVal TextTrackList where
  pToJSVal = unTextTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TextTrackList where
  pFromJSVal = TextTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TextTrackList where
  toJSVal = return . unTextTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal TextTrackList where
  fromJSVal = return . fmap TextTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget TextTrackList
instance IsGObject TextTrackList where
  toGObject = GObject . unTextTrackList
  {-# INLINE toGObject #-}
  unsafeCastGObject = TextTrackList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTextTrackList :: IsGObject obj => obj -> TextTrackList
castToTextTrackList = castTo gTypeTextTrackList "TextTrackList"

foreign import javascript unsafe "window[\"TextTrackList\"]" gTypeTextTrackList :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsTextTrackList o = TextTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TimeRanges".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges Mozilla TimeRanges documentation>
newtype TimeRanges = TimeRanges { unTimeRanges :: JSVal }

instance Eq (TimeRanges) where
  (TimeRanges a) == (TimeRanges b) = js_eq a b

instance PToJSVal TimeRanges where
  pToJSVal = unTimeRanges
  {-# INLINE pToJSVal #-}

instance PFromJSVal TimeRanges where
  pFromJSVal = TimeRanges
  {-# INLINE pFromJSVal #-}

instance ToJSVal TimeRanges where
  toJSVal = return . unTimeRanges
  {-# INLINE toJSVal #-}

instance FromJSVal TimeRanges where
  fromJSVal = return . fmap TimeRanges . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TimeRanges where
  toGObject = GObject . unTimeRanges
  {-# INLINE toGObject #-}
  unsafeCastGObject = TimeRanges . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTimeRanges :: IsGObject obj => obj -> TimeRanges
castToTimeRanges = castTo gTypeTimeRanges "TimeRanges"

foreign import javascript unsafe "window[\"TimeRanges\"]" gTypeTimeRanges :: GType
#else
type IsTimeRanges o = TimeRangesClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Touch".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Touch Mozilla Touch documentation>
newtype Touch = Touch { unTouch :: JSVal }

instance Eq (Touch) where
  (Touch a) == (Touch b) = js_eq a b

instance PToJSVal Touch where
  pToJSVal = unTouch
  {-# INLINE pToJSVal #-}

instance PFromJSVal Touch where
  pFromJSVal = Touch
  {-# INLINE pFromJSVal #-}

instance ToJSVal Touch where
  toJSVal = return . unTouch
  {-# INLINE toJSVal #-}

instance FromJSVal Touch where
  fromJSVal = return . fmap Touch . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject Touch where
  toGObject = GObject . unTouch
  {-# INLINE toGObject #-}
  unsafeCastGObject = Touch . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTouch :: IsGObject obj => obj -> Touch
castToTouch = castTo gTypeTouch "Touch"

foreign import javascript unsafe "window[\"Touch\"]" gTypeTouch :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsTouch o = TouchClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TouchEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.UIEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent Mozilla TouchEvent documentation>
newtype TouchEvent = TouchEvent { unTouchEvent :: JSVal }

instance Eq (TouchEvent) where
  (TouchEvent a) == (TouchEvent b) = js_eq a b

instance PToJSVal TouchEvent where
  pToJSVal = unTouchEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TouchEvent where
  pFromJSVal = TouchEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TouchEvent where
  toJSVal = return . unTouchEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TouchEvent where
  fromJSVal = return . fmap TouchEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent TouchEvent
instance IsEvent TouchEvent
instance IsGObject TouchEvent where
  toGObject = GObject . unTouchEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = TouchEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTouchEvent :: IsGObject obj => obj -> TouchEvent
castToTouchEvent = castTo gTypeTouchEvent "TouchEvent"

foreign import javascript unsafe "window[\"TouchEvent\"]" gTypeTouchEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TouchList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TouchList Mozilla TouchList documentation>
newtype TouchList = TouchList { unTouchList :: JSVal }

instance Eq (TouchList) where
  (TouchList a) == (TouchList b) = js_eq a b

instance PToJSVal TouchList where
  pToJSVal = unTouchList
  {-# INLINE pToJSVal #-}

instance PFromJSVal TouchList where
  pFromJSVal = TouchList
  {-# INLINE pFromJSVal #-}

instance ToJSVal TouchList where
  toJSVal = return . unTouchList
  {-# INLINE toJSVal #-}

instance FromJSVal TouchList where
  fromJSVal = return . fmap TouchList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TouchList where
  toGObject = GObject . unTouchList
  {-# INLINE toGObject #-}
  unsafeCastGObject = TouchList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTouchList :: IsGObject obj => obj -> TouchList
castToTouchList = castTo gTypeTouchList "TouchList"

foreign import javascript unsafe "window[\"TouchList\"]" gTypeTouchList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TrackEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent Mozilla TrackEvent documentation>
newtype TrackEvent = TrackEvent { unTrackEvent :: JSVal }

instance Eq (TrackEvent) where
  (TrackEvent a) == (TrackEvent b) = js_eq a b

instance PToJSVal TrackEvent where
  pToJSVal = unTrackEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TrackEvent where
  pFromJSVal = TrackEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TrackEvent where
  toJSVal = return . unTrackEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TrackEvent where
  fromJSVal = return . fmap TrackEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent TrackEvent
instance IsGObject TrackEvent where
  toGObject = GObject . unTrackEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = TrackEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTrackEvent :: IsGObject obj => obj -> TrackEvent
castToTrackEvent = castTo gTypeTrackEvent "TrackEvent"

foreign import javascript unsafe "window[\"TrackEvent\"]" gTypeTrackEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TransitionEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent Mozilla TransitionEvent documentation>
newtype TransitionEvent = TransitionEvent { unTransitionEvent :: JSVal }

instance Eq (TransitionEvent) where
  (TransitionEvent a) == (TransitionEvent b) = js_eq a b

instance PToJSVal TransitionEvent where
  pToJSVal = unTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal TransitionEvent where
  pFromJSVal = TransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal TransitionEvent where
  toJSVal = return . unTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal TransitionEvent where
  fromJSVal = return . fmap TransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent TransitionEvent
instance IsGObject TransitionEvent where
  toGObject = GObject . unTransitionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = TransitionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTransitionEvent :: IsGObject obj => obj -> TransitionEvent
castToTransitionEvent = castTo gTypeTransitionEvent "TransitionEvent"

foreign import javascript unsafe "window[\"TransitionEvent\"]" gTypeTransitionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TreeWalker".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker Mozilla TreeWalker documentation>
newtype TreeWalker = TreeWalker { unTreeWalker :: JSVal }

instance Eq (TreeWalker) where
  (TreeWalker a) == (TreeWalker b) = js_eq a b

instance PToJSVal TreeWalker where
  pToJSVal = unTreeWalker
  {-# INLINE pToJSVal #-}

instance PFromJSVal TreeWalker where
  pFromJSVal = TreeWalker
  {-# INLINE pFromJSVal #-}

instance ToJSVal TreeWalker where
  toJSVal = return . unTreeWalker
  {-# INLINE toJSVal #-}

instance FromJSVal TreeWalker where
  fromJSVal = return . fmap TreeWalker . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TreeWalker where
  toGObject = GObject . unTreeWalker
  {-# INLINE toGObject #-}
  unsafeCastGObject = TreeWalker . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTreeWalker :: IsGObject obj => obj -> TreeWalker
castToTreeWalker = castTo gTypeTreeWalker "TreeWalker"

foreign import javascript unsafe "window[\"TreeWalker\"]" gTypeTreeWalker :: GType
#else
type IsTreeWalker o = TreeWalkerClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TypeConversions".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions Mozilla TypeConversions documentation>
newtype TypeConversions = TypeConversions { unTypeConversions :: JSVal }

instance Eq (TypeConversions) where
  (TypeConversions a) == (TypeConversions b) = js_eq a b

instance PToJSVal TypeConversions where
  pToJSVal = unTypeConversions
  {-# INLINE pToJSVal #-}

instance PFromJSVal TypeConversions where
  pFromJSVal = TypeConversions
  {-# INLINE pFromJSVal #-}

instance ToJSVal TypeConversions where
  toJSVal = return . unTypeConversions
  {-# INLINE toJSVal #-}

instance FromJSVal TypeConversions where
  fromJSVal = return . fmap TypeConversions . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject TypeConversions where
  toGObject = GObject . unTypeConversions
  {-# INLINE toGObject #-}
  unsafeCastGObject = TypeConversions . unGObject
  {-# INLINE unsafeCastGObject #-}

castToTypeConversions :: IsGObject obj => obj -> TypeConversions
castToTypeConversions = castTo gTypeTypeConversions "TypeConversions"

foreign import javascript unsafe "window[\"TypeConversions\"]" gTypeTypeConversions :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UIEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent Mozilla UIEvent documentation>
newtype UIEvent = UIEvent { unUIEvent :: JSVal }

instance Eq (UIEvent) where
  (UIEvent a) == (UIEvent b) = js_eq a b

instance PToJSVal UIEvent where
  pToJSVal = unUIEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal UIEvent where
  pFromJSVal = UIEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal UIEvent where
  toJSVal = return . unUIEvent
  {-# INLINE toJSVal #-}

instance FromJSVal UIEvent where
  fromJSVal = return . fmap UIEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEvent o => IsUIEvent o
toUIEvent :: IsUIEvent o => o -> UIEvent
toUIEvent = unsafeCastGObject . toGObject

instance IsUIEvent UIEvent
instance IsEvent UIEvent
instance IsGObject UIEvent where
  toGObject = GObject . unUIEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = UIEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToUIEvent :: IsGObject obj => obj -> UIEvent
castToUIEvent = castTo gTypeUIEvent "UIEvent"

foreign import javascript unsafe "window[\"UIEvent\"]" gTypeUIEvent :: GType
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
newtype UIRequestEvent = UIRequestEvent { unUIRequestEvent :: JSVal }

instance Eq (UIRequestEvent) where
  (UIRequestEvent a) == (UIRequestEvent b) = js_eq a b

instance PToJSVal UIRequestEvent where
  pToJSVal = unUIRequestEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal UIRequestEvent where
  pFromJSVal = UIRequestEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal UIRequestEvent where
  toJSVal = return . unUIRequestEvent
  {-# INLINE toJSVal #-}

instance FromJSVal UIRequestEvent where
  fromJSVal = return . fmap UIRequestEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsUIEvent UIRequestEvent
instance IsEvent UIRequestEvent
instance IsGObject UIRequestEvent where
  toGObject = GObject . unUIRequestEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = UIRequestEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToUIRequestEvent :: IsGObject obj => obj -> UIRequestEvent
castToUIRequestEvent = castTo gTypeUIRequestEvent "UIRequestEvent"

foreign import javascript unsafe "window[\"UIRequestEvent\"]" gTypeUIRequestEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.URL".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation>
newtype URL = URL { unURL :: JSVal }

instance Eq (URL) where
  (URL a) == (URL b) = js_eq a b

instance PToJSVal URL where
  pToJSVal = unURL
  {-# INLINE pToJSVal #-}

instance PFromJSVal URL where
  pFromJSVal = URL
  {-# INLINE pFromJSVal #-}

instance ToJSVal URL where
  toJSVal = return . unURL
  {-# INLINE toJSVal #-}

instance FromJSVal URL where
  fromJSVal = return . fmap URL . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject URL where
  toGObject = GObject . unURL
  {-# INLINE toGObject #-}
  unsafeCastGObject = URL . unGObject
  {-# INLINE unsafeCastGObject #-}

castToURL :: IsGObject obj => obj -> URL
castToURL = castTo gTypeURL "URL"

foreign import javascript unsafe "window[\"URL\"]" gTypeURL :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.URLUtils".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils Mozilla URLUtils documentation>
newtype URLUtils = URLUtils { unURLUtils :: JSVal }

instance Eq (URLUtils) where
  (URLUtils a) == (URLUtils b) = js_eq a b

instance PToJSVal URLUtils where
  pToJSVal = unURLUtils
  {-# INLINE pToJSVal #-}

instance PFromJSVal URLUtils where
  pFromJSVal = URLUtils
  {-# INLINE pFromJSVal #-}

instance ToJSVal URLUtils where
  toJSVal = return . unURLUtils
  {-# INLINE toJSVal #-}

instance FromJSVal URLUtils where
  fromJSVal = return . fmap URLUtils . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject URLUtils where
  toGObject = GObject . unURLUtils
  {-# INLINE toGObject #-}
  unsafeCastGObject = URLUtils . unGObject
  {-# INLINE unsafeCastGObject #-}

castToURLUtils :: IsGObject obj => obj -> URLUtils
castToURLUtils = castTo gTypeURLUtils "URLUtils"

foreign import javascript unsafe "window[\"URLUtils\"]" gTypeURLUtils :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UserMessageHandler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler Mozilla UserMessageHandler documentation>
newtype UserMessageHandler = UserMessageHandler { unUserMessageHandler :: JSVal }

instance Eq (UserMessageHandler) where
  (UserMessageHandler a) == (UserMessageHandler b) = js_eq a b

instance PToJSVal UserMessageHandler where
  pToJSVal = unUserMessageHandler
  {-# INLINE pToJSVal #-}

instance PFromJSVal UserMessageHandler where
  pFromJSVal = UserMessageHandler
  {-# INLINE pFromJSVal #-}

instance ToJSVal UserMessageHandler where
  toJSVal = return . unUserMessageHandler
  {-# INLINE toJSVal #-}

instance FromJSVal UserMessageHandler where
  fromJSVal = return . fmap UserMessageHandler . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject UserMessageHandler where
  toGObject = GObject . unUserMessageHandler
  {-# INLINE toGObject #-}
  unsafeCastGObject = UserMessageHandler . unGObject
  {-# INLINE unsafeCastGObject #-}

castToUserMessageHandler :: IsGObject obj => obj -> UserMessageHandler
castToUserMessageHandler = castTo gTypeUserMessageHandler "UserMessageHandler"

foreign import javascript unsafe "window[\"UserMessageHandler\"]" gTypeUserMessageHandler :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.UserMessageHandlersNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandlersNamespace Mozilla UserMessageHandlersNamespace documentation>
newtype UserMessageHandlersNamespace = UserMessageHandlersNamespace { unUserMessageHandlersNamespace :: JSVal }

instance Eq (UserMessageHandlersNamespace) where
  (UserMessageHandlersNamespace a) == (UserMessageHandlersNamespace b) = js_eq a b

instance PToJSVal UserMessageHandlersNamespace where
  pToJSVal = unUserMessageHandlersNamespace
  {-# INLINE pToJSVal #-}

instance PFromJSVal UserMessageHandlersNamespace where
  pFromJSVal = UserMessageHandlersNamespace
  {-# INLINE pFromJSVal #-}

instance ToJSVal UserMessageHandlersNamespace where
  toJSVal = return . unUserMessageHandlersNamespace
  {-# INLINE toJSVal #-}

instance FromJSVal UserMessageHandlersNamespace where
  fromJSVal = return . fmap UserMessageHandlersNamespace . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject UserMessageHandlersNamespace where
  toGObject = GObject . unUserMessageHandlersNamespace
  {-# INLINE toGObject #-}
  unsafeCastGObject = UserMessageHandlersNamespace . unGObject
  {-# INLINE unsafeCastGObject #-}

castToUserMessageHandlersNamespace :: IsGObject obj => obj -> UserMessageHandlersNamespace
castToUserMessageHandlersNamespace = castTo gTypeUserMessageHandlersNamespace "UserMessageHandlersNamespace"

foreign import javascript unsafe "window[\"UserMessageHandlersNamespace\"]" gTypeUserMessageHandlersNamespace :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTCue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.TextTrackCue"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation>
newtype VTTCue = VTTCue { unVTTCue :: JSVal }

instance Eq (VTTCue) where
  (VTTCue a) == (VTTCue b) = js_eq a b

instance PToJSVal VTTCue where
  pToJSVal = unVTTCue
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTCue where
  pFromJSVal = VTTCue
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTCue where
  toJSVal = return . unVTTCue
  {-# INLINE toJSVal #-}

instance FromJSVal VTTCue where
  fromJSVal = return . fmap VTTCue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsTextTrackCue VTTCue
instance IsEventTarget VTTCue
instance IsGObject VTTCue where
  toGObject = GObject . unVTTCue
  {-# INLINE toGObject #-}
  unsafeCastGObject = VTTCue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVTTCue :: IsGObject obj => obj -> VTTCue
castToVTTCue = castTo gTypeVTTCue "VTTCue"

foreign import javascript unsafe "window[\"VTTCue\"]" gTypeVTTCue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTRegion".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation>
newtype VTTRegion = VTTRegion { unVTTRegion :: JSVal }

instance Eq (VTTRegion) where
  (VTTRegion a) == (VTTRegion b) = js_eq a b

instance PToJSVal VTTRegion where
  pToJSVal = unVTTRegion
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTRegion where
  pFromJSVal = VTTRegion
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTRegion where
  toJSVal = return . unVTTRegion
  {-# INLINE toJSVal #-}

instance FromJSVal VTTRegion where
  fromJSVal = return . fmap VTTRegion . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject VTTRegion where
  toGObject = GObject . unVTTRegion
  {-# INLINE toGObject #-}
  unsafeCastGObject = VTTRegion . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVTTRegion :: IsGObject obj => obj -> VTTRegion
castToVTTRegion = castTo gTypeVTTRegion "VTTRegion"

foreign import javascript unsafe "window[\"VTTRegion\"]" gTypeVTTRegion :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VTTRegionList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList Mozilla VTTRegionList documentation>
newtype VTTRegionList = VTTRegionList { unVTTRegionList :: JSVal }

instance Eq (VTTRegionList) where
  (VTTRegionList a) == (VTTRegionList b) = js_eq a b

instance PToJSVal VTTRegionList where
  pToJSVal = unVTTRegionList
  {-# INLINE pToJSVal #-}

instance PFromJSVal VTTRegionList where
  pFromJSVal = VTTRegionList
  {-# INLINE pFromJSVal #-}

instance ToJSVal VTTRegionList where
  toJSVal = return . unVTTRegionList
  {-# INLINE toJSVal #-}

instance FromJSVal VTTRegionList where
  fromJSVal = return . fmap VTTRegionList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject VTTRegionList where
  toGObject = GObject . unVTTRegionList
  {-# INLINE toGObject #-}
  unsafeCastGObject = VTTRegionList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVTTRegionList :: IsGObject obj => obj -> VTTRegionList
castToVTTRegionList = castTo gTypeVTTRegionList "VTTRegionList"

foreign import javascript unsafe "window[\"VTTRegionList\"]" gTypeVTTRegionList :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.ValidityState".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState Mozilla ValidityState documentation>
newtype ValidityState = ValidityState { unValidityState :: JSVal }

instance Eq (ValidityState) where
  (ValidityState a) == (ValidityState b) = js_eq a b

instance PToJSVal ValidityState where
  pToJSVal = unValidityState
  {-# INLINE pToJSVal #-}

instance PFromJSVal ValidityState where
  pFromJSVal = ValidityState
  {-# INLINE pFromJSVal #-}

instance ToJSVal ValidityState where
  toJSVal = return . unValidityState
  {-# INLINE toJSVal #-}

instance FromJSVal ValidityState where
  fromJSVal = return . fmap ValidityState . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject ValidityState where
  toGObject = GObject . unValidityState
  {-# INLINE toGObject #-}
  unsafeCastGObject = ValidityState . unGObject
  {-# INLINE unsafeCastGObject #-}

castToValidityState :: IsGObject obj => obj -> ValidityState
castToValidityState = castTo gTypeValidityState "ValidityState"

foreign import javascript unsafe "window[\"ValidityState\"]" gTypeValidityState :: GType
#else
type IsValidityState o = ValidityStateClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoPlaybackQuality".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality Mozilla VideoPlaybackQuality documentation>
newtype VideoPlaybackQuality = VideoPlaybackQuality { unVideoPlaybackQuality :: JSVal }

instance Eq (VideoPlaybackQuality) where
  (VideoPlaybackQuality a) == (VideoPlaybackQuality b) = js_eq a b

instance PToJSVal VideoPlaybackQuality where
  pToJSVal = unVideoPlaybackQuality
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoPlaybackQuality where
  pFromJSVal = VideoPlaybackQuality
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoPlaybackQuality where
  toJSVal = return . unVideoPlaybackQuality
  {-# INLINE toJSVal #-}

instance FromJSVal VideoPlaybackQuality where
  fromJSVal = return . fmap VideoPlaybackQuality . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject VideoPlaybackQuality where
  toGObject = GObject . unVideoPlaybackQuality
  {-# INLINE toGObject #-}
  unsafeCastGObject = VideoPlaybackQuality . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVideoPlaybackQuality :: IsGObject obj => obj -> VideoPlaybackQuality
castToVideoPlaybackQuality = castTo gTypeVideoPlaybackQuality "VideoPlaybackQuality"

foreign import javascript unsafe "window[\"VideoPlaybackQuality\"]" gTypeVideoPlaybackQuality :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoStreamTrack".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.MediaStreamTrack"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation>
newtype VideoStreamTrack = VideoStreamTrack { unVideoStreamTrack :: JSVal }

instance Eq (VideoStreamTrack) where
  (VideoStreamTrack a) == (VideoStreamTrack b) = js_eq a b

instance PToJSVal VideoStreamTrack where
  pToJSVal = unVideoStreamTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoStreamTrack where
  pFromJSVal = VideoStreamTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoStreamTrack where
  toJSVal = return . unVideoStreamTrack
  {-# INLINE toJSVal #-}

instance FromJSVal VideoStreamTrack where
  fromJSVal = return . fmap VideoStreamTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsMediaStreamTrack VideoStreamTrack
instance IsEventTarget VideoStreamTrack
instance IsGObject VideoStreamTrack where
  toGObject = GObject . unVideoStreamTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = VideoStreamTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVideoStreamTrack :: IsGObject obj => obj -> VideoStreamTrack
castToVideoStreamTrack = castTo gTypeVideoStreamTrack "VideoStreamTrack"

foreign import javascript unsafe "window[\"VideoStreamTrack\"]" gTypeVideoStreamTrack :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack Mozilla VideoTrack documentation>
newtype VideoTrack = VideoTrack { unVideoTrack :: JSVal }

instance Eq (VideoTrack) where
  (VideoTrack a) == (VideoTrack b) = js_eq a b

instance PToJSVal VideoTrack where
  pToJSVal = unVideoTrack
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoTrack where
  pFromJSVal = VideoTrack
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoTrack where
  toJSVal = return . unVideoTrack
  {-# INLINE toJSVal #-}

instance FromJSVal VideoTrack where
  fromJSVal = return . fmap VideoTrack . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject VideoTrack where
  toGObject = GObject . unVideoTrack
  {-# INLINE toGObject #-}
  unsafeCastGObject = VideoTrack . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVideoTrack :: IsGObject obj => obj -> VideoTrack
castToVideoTrack = castTo gTypeVideoTrack "VideoTrack"

foreign import javascript unsafe "window[\"VideoTrack\"]" gTypeVideoTrack :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsVideoTrack o = VideoTrackClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoTrackList".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList Mozilla VideoTrackList documentation>
newtype VideoTrackList = VideoTrackList { unVideoTrackList :: JSVal }

instance Eq (VideoTrackList) where
  (VideoTrackList a) == (VideoTrackList b) = js_eq a b

instance PToJSVal VideoTrackList where
  pToJSVal = unVideoTrackList
  {-# INLINE pToJSVal #-}

instance PFromJSVal VideoTrackList where
  pFromJSVal = VideoTrackList
  {-# INLINE pFromJSVal #-}

instance ToJSVal VideoTrackList where
  toJSVal = return . unVideoTrackList
  {-# INLINE toJSVal #-}

instance FromJSVal VideoTrackList where
  fromJSVal = return . fmap VideoTrackList . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget VideoTrackList
instance IsGObject VideoTrackList where
  toGObject = GObject . unVideoTrackList
  {-# INLINE toGObject #-}
  unsafeCastGObject = VideoTrackList . unGObject
  {-# INLINE unsafeCastGObject #-}

castToVideoTrackList :: IsGObject obj => obj -> VideoTrackList
castToVideoTrackList = castTo gTypeVideoTrackList "VideoTrackList"

foreign import javascript unsafe "window[\"VideoTrackList\"]" gTypeVideoTrackList :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsVideoTrackList o = VideoTrackListClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WaveShaperNode".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.AudioNode"
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode Mozilla WaveShaperNode documentation>
newtype WaveShaperNode = WaveShaperNode { unWaveShaperNode :: JSVal }

instance Eq (WaveShaperNode) where
  (WaveShaperNode a) == (WaveShaperNode b) = js_eq a b

instance PToJSVal WaveShaperNode where
  pToJSVal = unWaveShaperNode
  {-# INLINE pToJSVal #-}

instance PFromJSVal WaveShaperNode where
  pFromJSVal = WaveShaperNode
  {-# INLINE pFromJSVal #-}

instance ToJSVal WaveShaperNode where
  toJSVal = return . unWaveShaperNode
  {-# INLINE toJSVal #-}

instance FromJSVal WaveShaperNode where
  fromJSVal = return . fmap WaveShaperNode . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsAudioNode WaveShaperNode
instance IsEventTarget WaveShaperNode
instance IsGObject WaveShaperNode where
  toGObject = GObject . unWaveShaperNode
  {-# INLINE toGObject #-}
  unsafeCastGObject = WaveShaperNode . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWaveShaperNode :: IsGObject obj => obj -> WaveShaperNode
castToWaveShaperNode = castTo gTypeWaveShaperNode "WaveShaperNode"

foreign import javascript unsafe "window[\"WaveShaperNode\"]" gTypeWaveShaperNode :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGL2RenderingContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WebGLRenderingContextBase"
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext Mozilla WebGL2RenderingContext documentation>
newtype WebGL2RenderingContext = WebGL2RenderingContext { unWebGL2RenderingContext :: JSVal }

instance Eq (WebGL2RenderingContext) where
  (WebGL2RenderingContext a) == (WebGL2RenderingContext b) = js_eq a b

instance PToJSVal WebGL2RenderingContext where
  pToJSVal = unWebGL2RenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGL2RenderingContext where
  pFromJSVal = WebGL2RenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGL2RenderingContext where
  toJSVal = return . unWebGL2RenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGL2RenderingContext where
  fromJSVal = return . fmap WebGL2RenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsWebGLRenderingContextBase WebGL2RenderingContext
instance IsCanvasRenderingContext WebGL2RenderingContext
instance IsGObject WebGL2RenderingContext where
  toGObject = GObject . unWebGL2RenderingContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGL2RenderingContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGL2RenderingContext :: IsGObject obj => obj -> WebGL2RenderingContext
castToWebGL2RenderingContext = castTo gTypeWebGL2RenderingContext "WebGL2RenderingContext"

foreign import javascript unsafe "window[\"WebGL2RenderingContext\"]" gTypeWebGL2RenderingContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLActiveInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo Mozilla WebGLActiveInfo documentation>
newtype WebGLActiveInfo = WebGLActiveInfo { unWebGLActiveInfo :: JSVal }

instance Eq (WebGLActiveInfo) where
  (WebGLActiveInfo a) == (WebGLActiveInfo b) = js_eq a b

instance PToJSVal WebGLActiveInfo where
  pToJSVal = unWebGLActiveInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLActiveInfo where
  pFromJSVal = WebGLActiveInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLActiveInfo where
  toJSVal = return . unWebGLActiveInfo
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLActiveInfo where
  fromJSVal = return . fmap WebGLActiveInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLActiveInfo where
  toGObject = GObject . unWebGLActiveInfo
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLActiveInfo . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLActiveInfo :: IsGObject obj => obj -> WebGLActiveInfo
castToWebGLActiveInfo = castTo gTypeWebGLActiveInfo "WebGLActiveInfo"

foreign import javascript unsafe "window[\"WebGLActiveInfo\"]" gTypeWebGLActiveInfo :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLBuffer Mozilla WebGLBuffer documentation>
newtype WebGLBuffer = WebGLBuffer { unWebGLBuffer :: JSVal }

instance Eq (WebGLBuffer) where
  (WebGLBuffer a) == (WebGLBuffer b) = js_eq a b

instance PToJSVal WebGLBuffer where
  pToJSVal = unWebGLBuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLBuffer where
  pFromJSVal = WebGLBuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLBuffer where
  toJSVal = return . unWebGLBuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLBuffer where
  fromJSVal = return . fmap WebGLBuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLBuffer where
  toGObject = GObject . unWebGLBuffer
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLBuffer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLBuffer :: IsGObject obj => obj -> WebGLBuffer
castToWebGLBuffer = castTo gTypeWebGLBuffer "WebGLBuffer"

foreign import javascript unsafe "window[\"WebGLBuffer\"]" gTypeWebGLBuffer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTextureATC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureATC Mozilla WebGLCompressedTextureATC documentation>
newtype WebGLCompressedTextureATC = WebGLCompressedTextureATC { unWebGLCompressedTextureATC :: JSVal }

instance Eq (WebGLCompressedTextureATC) where
  (WebGLCompressedTextureATC a) == (WebGLCompressedTextureATC b) = js_eq a b

instance PToJSVal WebGLCompressedTextureATC where
  pToJSVal = unWebGLCompressedTextureATC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTextureATC where
  pFromJSVal = WebGLCompressedTextureATC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTextureATC where
  toJSVal = return . unWebGLCompressedTextureATC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTextureATC where
  fromJSVal = return . fmap WebGLCompressedTextureATC . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLCompressedTextureATC where
  toGObject = GObject . unWebGLCompressedTextureATC
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLCompressedTextureATC . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLCompressedTextureATC :: IsGObject obj => obj -> WebGLCompressedTextureATC
castToWebGLCompressedTextureATC = castTo gTypeWebGLCompressedTextureATC "WebGLCompressedTextureATC"

foreign import javascript unsafe "window[\"WebGLCompressedTextureATC\"]" gTypeWebGLCompressedTextureATC :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTexturePVRTC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTexturePVRTC Mozilla WebGLCompressedTexturePVRTC documentation>
newtype WebGLCompressedTexturePVRTC = WebGLCompressedTexturePVRTC { unWebGLCompressedTexturePVRTC :: JSVal }

instance Eq (WebGLCompressedTexturePVRTC) where
  (WebGLCompressedTexturePVRTC a) == (WebGLCompressedTexturePVRTC b) = js_eq a b

instance PToJSVal WebGLCompressedTexturePVRTC where
  pToJSVal = unWebGLCompressedTexturePVRTC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTexturePVRTC where
  pFromJSVal = WebGLCompressedTexturePVRTC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTexturePVRTC where
  toJSVal = return . unWebGLCompressedTexturePVRTC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTexturePVRTC where
  fromJSVal = return . fmap WebGLCompressedTexturePVRTC . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLCompressedTexturePVRTC where
  toGObject = GObject . unWebGLCompressedTexturePVRTC
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLCompressedTexturePVRTC . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLCompressedTexturePVRTC :: IsGObject obj => obj -> WebGLCompressedTexturePVRTC
castToWebGLCompressedTexturePVRTC = castTo gTypeWebGLCompressedTexturePVRTC "WebGLCompressedTexturePVRTC"

foreign import javascript unsafe "window[\"WebGLCompressedTexturePVRTC\"]" gTypeWebGLCompressedTexturePVRTC :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLCompressedTextureS3TC".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLCompressedTextureS3TC Mozilla WebGLCompressedTextureS3TC documentation>
newtype WebGLCompressedTextureS3TC = WebGLCompressedTextureS3TC { unWebGLCompressedTextureS3TC :: JSVal }

instance Eq (WebGLCompressedTextureS3TC) where
  (WebGLCompressedTextureS3TC a) == (WebGLCompressedTextureS3TC b) = js_eq a b

instance PToJSVal WebGLCompressedTextureS3TC where
  pToJSVal = unWebGLCompressedTextureS3TC
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLCompressedTextureS3TC where
  pFromJSVal = WebGLCompressedTextureS3TC
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLCompressedTextureS3TC where
  toJSVal = return . unWebGLCompressedTextureS3TC
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLCompressedTextureS3TC where
  fromJSVal = return . fmap WebGLCompressedTextureS3TC . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLCompressedTextureS3TC where
  toGObject = GObject . unWebGLCompressedTextureS3TC
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLCompressedTextureS3TC . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLCompressedTextureS3TC :: IsGObject obj => obj -> WebGLCompressedTextureS3TC
castToWebGLCompressedTextureS3TC = castTo gTypeWebGLCompressedTextureS3TC "WebGLCompressedTextureS3TC"

foreign import javascript unsafe "window[\"WebGLCompressedTextureS3TC\"]" gTypeWebGLCompressedTextureS3TC :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLContextAttributes".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes Mozilla WebGLContextAttributes documentation>
newtype WebGLContextAttributes = WebGLContextAttributes { unWebGLContextAttributes :: JSVal }

instance Eq (WebGLContextAttributes) where
  (WebGLContextAttributes a) == (WebGLContextAttributes b) = js_eq a b

instance PToJSVal WebGLContextAttributes where
  pToJSVal = unWebGLContextAttributes
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLContextAttributes where
  pFromJSVal = WebGLContextAttributes
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLContextAttributes where
  toJSVal = return . unWebGLContextAttributes
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLContextAttributes where
  fromJSVal = return . fmap WebGLContextAttributes . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLContextAttributes where
  toGObject = GObject . unWebGLContextAttributes
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLContextAttributes . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLContextAttributes :: IsGObject obj => obj -> WebGLContextAttributes
castToWebGLContextAttributes = castTo gTypeWebGLContextAttributes "WebGLContextAttributes"

foreign import javascript unsafe "window[\"WebGLContextAttributes\"]" gTypeWebGLContextAttributes :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLContextEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent Mozilla WebGLContextEvent documentation>
newtype WebGLContextEvent = WebGLContextEvent { unWebGLContextEvent :: JSVal }

instance Eq (WebGLContextEvent) where
  (WebGLContextEvent a) == (WebGLContextEvent b) = js_eq a b

instance PToJSVal WebGLContextEvent where
  pToJSVal = unWebGLContextEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLContextEvent where
  pFromJSVal = WebGLContextEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLContextEvent where
  toJSVal = return . unWebGLContextEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLContextEvent where
  fromJSVal = return . fmap WebGLContextEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent WebGLContextEvent
instance IsGObject WebGLContextEvent where
  toGObject = GObject . unWebGLContextEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLContextEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLContextEvent :: IsGObject obj => obj -> WebGLContextEvent
castToWebGLContextEvent = castTo gTypeWebGLContextEvent "WebGLContextEvent"

foreign import javascript unsafe "window[\"WebGLContextEvent\"]" gTypeWebGLContextEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDebugRendererInfo".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugRendererInfo Mozilla WebGLDebugRendererInfo documentation>
newtype WebGLDebugRendererInfo = WebGLDebugRendererInfo { unWebGLDebugRendererInfo :: JSVal }

instance Eq (WebGLDebugRendererInfo) where
  (WebGLDebugRendererInfo a) == (WebGLDebugRendererInfo b) = js_eq a b

instance PToJSVal WebGLDebugRendererInfo where
  pToJSVal = unWebGLDebugRendererInfo
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDebugRendererInfo where
  pFromJSVal = WebGLDebugRendererInfo
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDebugRendererInfo where
  toJSVal = return . unWebGLDebugRendererInfo
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDebugRendererInfo where
  fromJSVal = return . fmap WebGLDebugRendererInfo . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLDebugRendererInfo where
  toGObject = GObject . unWebGLDebugRendererInfo
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLDebugRendererInfo . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLDebugRendererInfo :: IsGObject obj => obj -> WebGLDebugRendererInfo
castToWebGLDebugRendererInfo = castTo gTypeWebGLDebugRendererInfo "WebGLDebugRendererInfo"

foreign import javascript unsafe "window[\"WebGLDebugRendererInfo\"]" gTypeWebGLDebugRendererInfo :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDebugShaders".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders Mozilla WebGLDebugShaders documentation>
newtype WebGLDebugShaders = WebGLDebugShaders { unWebGLDebugShaders :: JSVal }

instance Eq (WebGLDebugShaders) where
  (WebGLDebugShaders a) == (WebGLDebugShaders b) = js_eq a b

instance PToJSVal WebGLDebugShaders where
  pToJSVal = unWebGLDebugShaders
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDebugShaders where
  pFromJSVal = WebGLDebugShaders
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDebugShaders where
  toJSVal = return . unWebGLDebugShaders
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDebugShaders where
  fromJSVal = return . fmap WebGLDebugShaders . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLDebugShaders where
  toGObject = GObject . unWebGLDebugShaders
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLDebugShaders . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLDebugShaders :: IsGObject obj => obj -> WebGLDebugShaders
castToWebGLDebugShaders = castTo gTypeWebGLDebugShaders "WebGLDebugShaders"

foreign import javascript unsafe "window[\"WebGLDebugShaders\"]" gTypeWebGLDebugShaders :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDepthTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDepthTexture Mozilla WebGLDepthTexture documentation>
newtype WebGLDepthTexture = WebGLDepthTexture { unWebGLDepthTexture :: JSVal }

instance Eq (WebGLDepthTexture) where
  (WebGLDepthTexture a) == (WebGLDepthTexture b) = js_eq a b

instance PToJSVal WebGLDepthTexture where
  pToJSVal = unWebGLDepthTexture
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDepthTexture where
  pFromJSVal = WebGLDepthTexture
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDepthTexture where
  toJSVal = return . unWebGLDepthTexture
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDepthTexture where
  fromJSVal = return . fmap WebGLDepthTexture . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLDepthTexture where
  toGObject = GObject . unWebGLDepthTexture
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLDepthTexture . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLDepthTexture :: IsGObject obj => obj -> WebGLDepthTexture
castToWebGLDepthTexture = castTo gTypeWebGLDepthTexture "WebGLDepthTexture"

foreign import javascript unsafe "window[\"WebGLDepthTexture\"]" gTypeWebGLDepthTexture :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLDrawBuffers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDrawBuffers Mozilla WebGLDrawBuffers documentation>
newtype WebGLDrawBuffers = WebGLDrawBuffers { unWebGLDrawBuffers :: JSVal }

instance Eq (WebGLDrawBuffers) where
  (WebGLDrawBuffers a) == (WebGLDrawBuffers b) = js_eq a b

instance PToJSVal WebGLDrawBuffers where
  pToJSVal = unWebGLDrawBuffers
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLDrawBuffers where
  pFromJSVal = WebGLDrawBuffers
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLDrawBuffers where
  toJSVal = return . unWebGLDrawBuffers
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLDrawBuffers where
  fromJSVal = return . fmap WebGLDrawBuffers . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLDrawBuffers where
  toGObject = GObject . unWebGLDrawBuffers
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLDrawBuffers . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLDrawBuffers :: IsGObject obj => obj -> WebGLDrawBuffers
castToWebGLDrawBuffers = castTo gTypeWebGLDrawBuffers "WebGLDrawBuffers"

foreign import javascript unsafe "window[\"WebGLDrawBuffers\"]" gTypeWebGLDrawBuffers :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLFramebuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLFramebuffer Mozilla WebGLFramebuffer documentation>
newtype WebGLFramebuffer = WebGLFramebuffer { unWebGLFramebuffer :: JSVal }

instance Eq (WebGLFramebuffer) where
  (WebGLFramebuffer a) == (WebGLFramebuffer b) = js_eq a b

instance PToJSVal WebGLFramebuffer where
  pToJSVal = unWebGLFramebuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLFramebuffer where
  pFromJSVal = WebGLFramebuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLFramebuffer where
  toJSVal = return . unWebGLFramebuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLFramebuffer where
  fromJSVal = return . fmap WebGLFramebuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLFramebuffer where
  toGObject = GObject . unWebGLFramebuffer
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLFramebuffer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLFramebuffer :: IsGObject obj => obj -> WebGLFramebuffer
castToWebGLFramebuffer = castTo gTypeWebGLFramebuffer "WebGLFramebuffer"

foreign import javascript unsafe "window[\"WebGLFramebuffer\"]" gTypeWebGLFramebuffer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLLoseContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext Mozilla WebGLLoseContext documentation>
newtype WebGLLoseContext = WebGLLoseContext { unWebGLLoseContext :: JSVal }

instance Eq (WebGLLoseContext) where
  (WebGLLoseContext a) == (WebGLLoseContext b) = js_eq a b

instance PToJSVal WebGLLoseContext where
  pToJSVal = unWebGLLoseContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLLoseContext where
  pFromJSVal = WebGLLoseContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLLoseContext where
  toJSVal = return . unWebGLLoseContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLLoseContext where
  fromJSVal = return . fmap WebGLLoseContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLLoseContext where
  toGObject = GObject . unWebGLLoseContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLLoseContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLLoseContext :: IsGObject obj => obj -> WebGLLoseContext
castToWebGLLoseContext = castTo gTypeWebGLLoseContext "WebGLLoseContext"

foreign import javascript unsafe "window[\"WebGLLoseContext\"]" gTypeWebGLLoseContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLProgram".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLProgram Mozilla WebGLProgram documentation>
newtype WebGLProgram = WebGLProgram { unWebGLProgram :: JSVal }

instance Eq (WebGLProgram) where
  (WebGLProgram a) == (WebGLProgram b) = js_eq a b

instance PToJSVal WebGLProgram where
  pToJSVal = unWebGLProgram
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLProgram where
  pFromJSVal = WebGLProgram
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLProgram where
  toJSVal = return . unWebGLProgram
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLProgram where
  fromJSVal = return . fmap WebGLProgram . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLProgram where
  toGObject = GObject . unWebGLProgram
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLProgram . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLProgram :: IsGObject obj => obj -> WebGLProgram
castToWebGLProgram = castTo gTypeWebGLProgram "WebGLProgram"

foreign import javascript unsafe "window[\"WebGLProgram\"]" gTypeWebGLProgram :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLQuery".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLQuery Mozilla WebGLQuery documentation>
newtype WebGLQuery = WebGLQuery { unWebGLQuery :: JSVal }

instance Eq (WebGLQuery) where
  (WebGLQuery a) == (WebGLQuery b) = js_eq a b

instance PToJSVal WebGLQuery where
  pToJSVal = unWebGLQuery
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLQuery where
  pFromJSVal = WebGLQuery
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLQuery where
  toJSVal = return . unWebGLQuery
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLQuery where
  fromJSVal = return . fmap WebGLQuery . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLQuery where
  toGObject = GObject . unWebGLQuery
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLQuery . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLQuery :: IsGObject obj => obj -> WebGLQuery
castToWebGLQuery = castTo gTypeWebGLQuery "WebGLQuery"

foreign import javascript unsafe "window[\"WebGLQuery\"]" gTypeWebGLQuery :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderbuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderbuffer Mozilla WebGLRenderbuffer documentation>
newtype WebGLRenderbuffer = WebGLRenderbuffer { unWebGLRenderbuffer :: JSVal }

instance Eq (WebGLRenderbuffer) where
  (WebGLRenderbuffer a) == (WebGLRenderbuffer b) = js_eq a b

instance PToJSVal WebGLRenderbuffer where
  pToJSVal = unWebGLRenderbuffer
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderbuffer where
  pFromJSVal = WebGLRenderbuffer
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderbuffer where
  toJSVal = return . unWebGLRenderbuffer
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderbuffer where
  fromJSVal = return . fmap WebGLRenderbuffer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLRenderbuffer where
  toGObject = GObject . unWebGLRenderbuffer
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLRenderbuffer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLRenderbuffer :: IsGObject obj => obj -> WebGLRenderbuffer
castToWebGLRenderbuffer = castTo gTypeWebGLRenderbuffer "WebGLRenderbuffer"

foreign import javascript unsafe "window[\"WebGLRenderbuffer\"]" gTypeWebGLRenderbuffer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderingContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WebGLRenderingContextBase"
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext Mozilla WebGLRenderingContext documentation>
newtype WebGLRenderingContext = WebGLRenderingContext { unWebGLRenderingContext :: JSVal }

instance Eq (WebGLRenderingContext) where
  (WebGLRenderingContext a) == (WebGLRenderingContext b) = js_eq a b

instance PToJSVal WebGLRenderingContext where
  pToJSVal = unWebGLRenderingContext
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderingContext where
  pFromJSVal = WebGLRenderingContext
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderingContext where
  toJSVal = return . unWebGLRenderingContext
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderingContext where
  fromJSVal = return . fmap WebGLRenderingContext . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsWebGLRenderingContextBase WebGLRenderingContext
instance IsCanvasRenderingContext WebGLRenderingContext
instance IsGObject WebGLRenderingContext where
  toGObject = GObject . unWebGLRenderingContext
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLRenderingContext . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLRenderingContext :: IsGObject obj => obj -> WebGLRenderingContext
castToWebGLRenderingContext = castTo gTypeWebGLRenderingContext "WebGLRenderingContext"

foreign import javascript unsafe "window[\"WebGLRenderingContext\"]" gTypeWebGLRenderingContext :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderingContextBase".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase Mozilla WebGLRenderingContextBase documentation>
newtype WebGLRenderingContextBase = WebGLRenderingContextBase { unWebGLRenderingContextBase :: JSVal }

instance Eq (WebGLRenderingContextBase) where
  (WebGLRenderingContextBase a) == (WebGLRenderingContextBase b) = js_eq a b

instance PToJSVal WebGLRenderingContextBase where
  pToJSVal = unWebGLRenderingContextBase
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLRenderingContextBase where
  pFromJSVal = WebGLRenderingContextBase
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLRenderingContextBase where
  toJSVal = return . unWebGLRenderingContextBase
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLRenderingContextBase where
  fromJSVal = return . fmap WebGLRenderingContextBase . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsCanvasRenderingContext o => IsWebGLRenderingContextBase o
toWebGLRenderingContextBase :: IsWebGLRenderingContextBase o => o -> WebGLRenderingContextBase
toWebGLRenderingContextBase = unsafeCastGObject . toGObject

instance IsWebGLRenderingContextBase WebGLRenderingContextBase
instance IsCanvasRenderingContext WebGLRenderingContextBase
instance IsGObject WebGLRenderingContextBase where
  toGObject = GObject . unWebGLRenderingContextBase
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLRenderingContextBase . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLRenderingContextBase :: IsGObject obj => obj -> WebGLRenderingContextBase
castToWebGLRenderingContextBase = castTo gTypeWebGLRenderingContextBase "WebGLRenderingContextBase"

foreign import javascript unsafe "window[\"WebGLRenderingContextBase\"]" gTypeWebGLRenderingContextBase :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLSampler".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSampler Mozilla WebGLSampler documentation>
newtype WebGLSampler = WebGLSampler { unWebGLSampler :: JSVal }

instance Eq (WebGLSampler) where
  (WebGLSampler a) == (WebGLSampler b) = js_eq a b

instance PToJSVal WebGLSampler where
  pToJSVal = unWebGLSampler
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLSampler where
  pFromJSVal = WebGLSampler
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLSampler where
  toJSVal = return . unWebGLSampler
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLSampler where
  fromJSVal = return . fmap WebGLSampler . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLSampler where
  toGObject = GObject . unWebGLSampler
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLSampler . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLSampler :: IsGObject obj => obj -> WebGLSampler
castToWebGLSampler = castTo gTypeWebGLSampler "WebGLSampler"

foreign import javascript unsafe "window[\"WebGLSampler\"]" gTypeWebGLSampler :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLShader".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShader Mozilla WebGLShader documentation>
newtype WebGLShader = WebGLShader { unWebGLShader :: JSVal }

instance Eq (WebGLShader) where
  (WebGLShader a) == (WebGLShader b) = js_eq a b

instance PToJSVal WebGLShader where
  pToJSVal = unWebGLShader
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLShader where
  pFromJSVal = WebGLShader
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLShader where
  toJSVal = return . unWebGLShader
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLShader where
  fromJSVal = return . fmap WebGLShader . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLShader where
  toGObject = GObject . unWebGLShader
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLShader . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLShader :: IsGObject obj => obj -> WebGLShader
castToWebGLShader = castTo gTypeWebGLShader "WebGLShader"

foreign import javascript unsafe "window[\"WebGLShader\"]" gTypeWebGLShader :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLShaderPrecisionFormat".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat Mozilla WebGLShaderPrecisionFormat documentation>
newtype WebGLShaderPrecisionFormat = WebGLShaderPrecisionFormat { unWebGLShaderPrecisionFormat :: JSVal }

instance Eq (WebGLShaderPrecisionFormat) where
  (WebGLShaderPrecisionFormat a) == (WebGLShaderPrecisionFormat b) = js_eq a b

instance PToJSVal WebGLShaderPrecisionFormat where
  pToJSVal = unWebGLShaderPrecisionFormat
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLShaderPrecisionFormat where
  pFromJSVal = WebGLShaderPrecisionFormat
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLShaderPrecisionFormat where
  toJSVal = return . unWebGLShaderPrecisionFormat
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLShaderPrecisionFormat where
  fromJSVal = return . fmap WebGLShaderPrecisionFormat . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLShaderPrecisionFormat where
  toGObject = GObject . unWebGLShaderPrecisionFormat
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLShaderPrecisionFormat . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLShaderPrecisionFormat :: IsGObject obj => obj -> WebGLShaderPrecisionFormat
castToWebGLShaderPrecisionFormat = castTo gTypeWebGLShaderPrecisionFormat "WebGLShaderPrecisionFormat"

foreign import javascript unsafe "window[\"WebGLShaderPrecisionFormat\"]" gTypeWebGLShaderPrecisionFormat :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLSync Mozilla WebGLSync documentation>
newtype WebGLSync = WebGLSync { unWebGLSync :: JSVal }

instance Eq (WebGLSync) where
  (WebGLSync a) == (WebGLSync b) = js_eq a b

instance PToJSVal WebGLSync where
  pToJSVal = unWebGLSync
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLSync where
  pFromJSVal = WebGLSync
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLSync where
  toJSVal = return . unWebGLSync
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLSync where
  fromJSVal = return . fmap WebGLSync . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLSync where
  toGObject = GObject . unWebGLSync
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLSync . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLSync :: IsGObject obj => obj -> WebGLSync
castToWebGLSync = castTo gTypeWebGLSync "WebGLSync"

foreign import javascript unsafe "window[\"WebGLSync\"]" gTypeWebGLSync :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLTexture".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTexture Mozilla WebGLTexture documentation>
newtype WebGLTexture = WebGLTexture { unWebGLTexture :: JSVal }

instance Eq (WebGLTexture) where
  (WebGLTexture a) == (WebGLTexture b) = js_eq a b

instance PToJSVal WebGLTexture where
  pToJSVal = unWebGLTexture
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLTexture where
  pFromJSVal = WebGLTexture
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLTexture where
  toJSVal = return . unWebGLTexture
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLTexture where
  fromJSVal = return . fmap WebGLTexture . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLTexture where
  toGObject = GObject . unWebGLTexture
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLTexture . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLTexture :: IsGObject obj => obj -> WebGLTexture
castToWebGLTexture = castTo gTypeWebGLTexture "WebGLTexture"

foreign import javascript unsafe "window[\"WebGLTexture\"]" gTypeWebGLTexture :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLTransformFeedback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLTransformFeedback Mozilla WebGLTransformFeedback documentation>
newtype WebGLTransformFeedback = WebGLTransformFeedback { unWebGLTransformFeedback :: JSVal }

instance Eq (WebGLTransformFeedback) where
  (WebGLTransformFeedback a) == (WebGLTransformFeedback b) = js_eq a b

instance PToJSVal WebGLTransformFeedback where
  pToJSVal = unWebGLTransformFeedback
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLTransformFeedback where
  pFromJSVal = WebGLTransformFeedback
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLTransformFeedback where
  toJSVal = return . unWebGLTransformFeedback
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLTransformFeedback where
  fromJSVal = return . fmap WebGLTransformFeedback . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLTransformFeedback where
  toGObject = GObject . unWebGLTransformFeedback
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLTransformFeedback . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLTransformFeedback :: IsGObject obj => obj -> WebGLTransformFeedback
castToWebGLTransformFeedback = castTo gTypeWebGLTransformFeedback "WebGLTransformFeedback"

foreign import javascript unsafe "window[\"WebGLTransformFeedback\"]" gTypeWebGLTransformFeedback :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLUniformLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLUniformLocation Mozilla WebGLUniformLocation documentation>
newtype WebGLUniformLocation = WebGLUniformLocation { unWebGLUniformLocation :: JSVal }

instance Eq (WebGLUniformLocation) where
  (WebGLUniformLocation a) == (WebGLUniformLocation b) = js_eq a b

instance PToJSVal WebGLUniformLocation where
  pToJSVal = unWebGLUniformLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLUniformLocation where
  pFromJSVal = WebGLUniformLocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLUniformLocation where
  toJSVal = return . unWebGLUniformLocation
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLUniformLocation where
  fromJSVal = return . fmap WebGLUniformLocation . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLUniformLocation where
  toGObject = GObject . unWebGLUniformLocation
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLUniformLocation . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLUniformLocation :: IsGObject obj => obj -> WebGLUniformLocation
castToWebGLUniformLocation = castTo gTypeWebGLUniformLocation "WebGLUniformLocation"

foreign import javascript unsafe "window[\"WebGLUniformLocation\"]" gTypeWebGLUniformLocation :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLVertexArrayObject".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObject Mozilla WebGLVertexArrayObject documentation>
newtype WebGLVertexArrayObject = WebGLVertexArrayObject { unWebGLVertexArrayObject :: JSVal }

instance Eq (WebGLVertexArrayObject) where
  (WebGLVertexArrayObject a) == (WebGLVertexArrayObject b) = js_eq a b

instance PToJSVal WebGLVertexArrayObject where
  pToJSVal = unWebGLVertexArrayObject
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLVertexArrayObject where
  pFromJSVal = WebGLVertexArrayObject
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLVertexArrayObject where
  toJSVal = return . unWebGLVertexArrayObject
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLVertexArrayObject where
  fromJSVal = return . fmap WebGLVertexArrayObject . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLVertexArrayObject where
  toGObject = GObject . unWebGLVertexArrayObject
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLVertexArrayObject . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLVertexArrayObject :: IsGObject obj => obj -> WebGLVertexArrayObject
castToWebGLVertexArrayObject = castTo gTypeWebGLVertexArrayObject "WebGLVertexArrayObject"

foreign import javascript unsafe "window[\"WebGLVertexArrayObject\"]" gTypeWebGLVertexArrayObject :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLVertexArrayObjectOES".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLVertexArrayObjectOES Mozilla WebGLVertexArrayObjectOES documentation>
newtype WebGLVertexArrayObjectOES = WebGLVertexArrayObjectOES { unWebGLVertexArrayObjectOES :: JSVal }

instance Eq (WebGLVertexArrayObjectOES) where
  (WebGLVertexArrayObjectOES a) == (WebGLVertexArrayObjectOES b) = js_eq a b

instance PToJSVal WebGLVertexArrayObjectOES where
  pToJSVal = unWebGLVertexArrayObjectOES
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebGLVertexArrayObjectOES where
  pFromJSVal = WebGLVertexArrayObjectOES
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebGLVertexArrayObjectOES where
  toJSVal = return . unWebGLVertexArrayObjectOES
  {-# INLINE toJSVal #-}

instance FromJSVal WebGLVertexArrayObjectOES where
  fromJSVal = return . fmap WebGLVertexArrayObjectOES . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebGLVertexArrayObjectOES where
  toGObject = GObject . unWebGLVertexArrayObjectOES
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebGLVertexArrayObjectOES . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebGLVertexArrayObjectOES :: IsGObject obj => obj -> WebGLVertexArrayObjectOES
castToWebGLVertexArrayObjectOES = castTo gTypeWebGLVertexArrayObjectOES "WebGLVertexArrayObjectOES"

foreign import javascript unsafe "window[\"WebGLVertexArrayObjectOES\"]" gTypeWebGLVertexArrayObjectOES :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitAnimationEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent Mozilla WebKitAnimationEvent documentation>
newtype WebKitAnimationEvent = WebKitAnimationEvent { unWebKitAnimationEvent :: JSVal }

instance Eq (WebKitAnimationEvent) where
  (WebKitAnimationEvent a) == (WebKitAnimationEvent b) = js_eq a b

instance PToJSVal WebKitAnimationEvent where
  pToJSVal = unWebKitAnimationEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitAnimationEvent where
  pFromJSVal = WebKitAnimationEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitAnimationEvent where
  toJSVal = return . unWebKitAnimationEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitAnimationEvent where
  fromJSVal = return . fmap WebKitAnimationEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent WebKitAnimationEvent
instance IsGObject WebKitAnimationEvent where
  toGObject = GObject . unWebKitAnimationEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitAnimationEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitAnimationEvent :: IsGObject obj => obj -> WebKitAnimationEvent
castToWebKitAnimationEvent = castTo gTypeWebKitAnimationEvent "WebKitAnimationEvent"

foreign import javascript unsafe "window[\"WebKitAnimationEvent\"]" gTypeWebKitAnimationEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSFilterValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValueList"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue Mozilla WebKitCSSFilterValue documentation>
newtype WebKitCSSFilterValue = WebKitCSSFilterValue { unWebKitCSSFilterValue :: JSVal }

instance Eq (WebKitCSSFilterValue) where
  (WebKitCSSFilterValue a) == (WebKitCSSFilterValue b) = js_eq a b

instance PToJSVal WebKitCSSFilterValue where
  pToJSVal = unWebKitCSSFilterValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSFilterValue where
  pFromJSVal = WebKitCSSFilterValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSFilterValue where
  toJSVal = return . unWebKitCSSFilterValue
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSFilterValue where
  fromJSVal = return . fmap WebKitCSSFilterValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSValueList WebKitCSSFilterValue
instance IsCSSValue WebKitCSSFilterValue
instance IsGObject WebKitCSSFilterValue where
  toGObject = GObject . unWebKitCSSFilterValue
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitCSSFilterValue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitCSSFilterValue :: IsGObject obj => obj -> WebKitCSSFilterValue
castToWebKitCSSFilterValue = castTo gTypeWebKitCSSFilterValue "WebKitCSSFilterValue"

foreign import javascript unsafe "window[\"WebKitCSSFilterValue\"]" gTypeWebKitCSSFilterValue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSMatrix".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation>
newtype WebKitCSSMatrix = WebKitCSSMatrix { unWebKitCSSMatrix :: JSVal }

instance Eq (WebKitCSSMatrix) where
  (WebKitCSSMatrix a) == (WebKitCSSMatrix b) = js_eq a b

instance PToJSVal WebKitCSSMatrix where
  pToJSVal = unWebKitCSSMatrix
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSMatrix where
  pFromJSVal = WebKitCSSMatrix
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSMatrix where
  toJSVal = return . unWebKitCSSMatrix
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSMatrix where
  fromJSVal = return . fmap WebKitCSSMatrix . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebKitCSSMatrix where
  toGObject = GObject . unWebKitCSSMatrix
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitCSSMatrix . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitCSSMatrix :: IsGObject obj => obj -> WebKitCSSMatrix
castToWebKitCSSMatrix = castTo gTypeWebKitCSSMatrix "WebKitCSSMatrix"

foreign import javascript unsafe "window[\"WebKitCSSMatrix\"]" gTypeWebKitCSSMatrix :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSRegionRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule Mozilla WebKitCSSRegionRule documentation>
newtype WebKitCSSRegionRule = WebKitCSSRegionRule { unWebKitCSSRegionRule :: JSVal }

instance Eq (WebKitCSSRegionRule) where
  (WebKitCSSRegionRule a) == (WebKitCSSRegionRule b) = js_eq a b

instance PToJSVal WebKitCSSRegionRule where
  pToJSVal = unWebKitCSSRegionRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSRegionRule where
  pFromJSVal = WebKitCSSRegionRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSRegionRule where
  toJSVal = return . unWebKitCSSRegionRule
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSRegionRule where
  fromJSVal = return . fmap WebKitCSSRegionRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule WebKitCSSRegionRule
instance IsGObject WebKitCSSRegionRule where
  toGObject = GObject . unWebKitCSSRegionRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitCSSRegionRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitCSSRegionRule :: IsGObject obj => obj -> WebKitCSSRegionRule
castToWebKitCSSRegionRule = castTo gTypeWebKitCSSRegionRule "WebKitCSSRegionRule"

foreign import javascript unsafe "window[\"WebKitCSSRegionRule\"]" gTypeWebKitCSSRegionRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSTransformValue".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSValueList"
--     * "GHCJS.DOM.CSSValue"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue Mozilla WebKitCSSTransformValue documentation>
newtype WebKitCSSTransformValue = WebKitCSSTransformValue { unWebKitCSSTransformValue :: JSVal }

instance Eq (WebKitCSSTransformValue) where
  (WebKitCSSTransformValue a) == (WebKitCSSTransformValue b) = js_eq a b

instance PToJSVal WebKitCSSTransformValue where
  pToJSVal = unWebKitCSSTransformValue
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSTransformValue where
  pFromJSVal = WebKitCSSTransformValue
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSTransformValue where
  toJSVal = return . unWebKitCSSTransformValue
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSTransformValue where
  fromJSVal = return . fmap WebKitCSSTransformValue . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSValueList WebKitCSSTransformValue
instance IsCSSValue WebKitCSSTransformValue
instance IsGObject WebKitCSSTransformValue where
  toGObject = GObject . unWebKitCSSTransformValue
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitCSSTransformValue . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitCSSTransformValue :: IsGObject obj => obj -> WebKitCSSTransformValue
castToWebKitCSSTransformValue = castTo gTypeWebKitCSSTransformValue "WebKitCSSTransformValue"

foreign import javascript unsafe "window[\"WebKitCSSTransformValue\"]" gTypeWebKitCSSTransformValue :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitCSSViewportRule".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CSSRule"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule Mozilla WebKitCSSViewportRule documentation>
newtype WebKitCSSViewportRule = WebKitCSSViewportRule { unWebKitCSSViewportRule :: JSVal }

instance Eq (WebKitCSSViewportRule) where
  (WebKitCSSViewportRule a) == (WebKitCSSViewportRule b) = js_eq a b

instance PToJSVal WebKitCSSViewportRule where
  pToJSVal = unWebKitCSSViewportRule
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitCSSViewportRule where
  pFromJSVal = WebKitCSSViewportRule
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitCSSViewportRule where
  toJSVal = return . unWebKitCSSViewportRule
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitCSSViewportRule where
  fromJSVal = return . fmap WebKitCSSViewportRule . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsCSSRule WebKitCSSViewportRule
instance IsGObject WebKitCSSViewportRule where
  toGObject = GObject . unWebKitCSSViewportRule
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitCSSViewportRule . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitCSSViewportRule :: IsGObject obj => obj -> WebKitCSSViewportRule
castToWebKitCSSViewportRule = castTo gTypeWebKitCSSViewportRule "WebKitCSSViewportRule"

foreign import javascript unsafe "window[\"WebKitCSSViewportRule\"]" gTypeWebKitCSSViewportRule :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamedFlow".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow Mozilla WebKitNamedFlow documentation>
newtype WebKitNamedFlow = WebKitNamedFlow { unWebKitNamedFlow :: JSVal }

instance Eq (WebKitNamedFlow) where
  (WebKitNamedFlow a) == (WebKitNamedFlow b) = js_eq a b

instance PToJSVal WebKitNamedFlow where
  pToJSVal = unWebKitNamedFlow
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitNamedFlow where
  pFromJSVal = WebKitNamedFlow
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitNamedFlow where
  toJSVal = return . unWebKitNamedFlow
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitNamedFlow where
  fromJSVal = return . fmap WebKitNamedFlow . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget WebKitNamedFlow
instance IsGObject WebKitNamedFlow where
  toGObject = GObject . unWebKitNamedFlow
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitNamedFlow . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitNamedFlow :: IsGObject obj => obj -> WebKitNamedFlow
castToWebKitNamedFlow = castTo gTypeWebKitNamedFlow "WebKitNamedFlow"

foreign import javascript unsafe "window[\"WebKitNamedFlow\"]" gTypeWebKitNamedFlow :: GType
#else
type IsWebKitNamedFlow o = WebKitNamedFlowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace Mozilla WebKitNamespace documentation>
newtype WebKitNamespace = WebKitNamespace { unWebKitNamespace :: JSVal }

instance Eq (WebKitNamespace) where
  (WebKitNamespace a) == (WebKitNamespace b) = js_eq a b

instance PToJSVal WebKitNamespace where
  pToJSVal = unWebKitNamespace
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitNamespace where
  pFromJSVal = WebKitNamespace
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitNamespace where
  toJSVal = return . unWebKitNamespace
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitNamespace where
  fromJSVal = return . fmap WebKitNamespace . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebKitNamespace where
  toGObject = GObject . unWebKitNamespace
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitNamespace . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitNamespace :: IsGObject obj => obj -> WebKitNamespace
castToWebKitNamespace = castTo gTypeWebKitNamespace "WebKitNamespace"

foreign import javascript unsafe "window[\"WebKitNamespace\"]" gTypeWebKitNamespace :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitPlaybackTargetAvailabilityEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent Mozilla WebKitPlaybackTargetAvailabilityEvent documentation>
newtype WebKitPlaybackTargetAvailabilityEvent = WebKitPlaybackTargetAvailabilityEvent { unWebKitPlaybackTargetAvailabilityEvent :: JSVal }

instance Eq (WebKitPlaybackTargetAvailabilityEvent) where
  (WebKitPlaybackTargetAvailabilityEvent a) == (WebKitPlaybackTargetAvailabilityEvent b) = js_eq a b

instance PToJSVal WebKitPlaybackTargetAvailabilityEvent where
  pToJSVal = unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitPlaybackTargetAvailabilityEvent where
  pFromJSVal = WebKitPlaybackTargetAvailabilityEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitPlaybackTargetAvailabilityEvent where
  toJSVal = return . unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitPlaybackTargetAvailabilityEvent where
  fromJSVal = return . fmap WebKitPlaybackTargetAvailabilityEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent WebKitPlaybackTargetAvailabilityEvent
instance IsGObject WebKitPlaybackTargetAvailabilityEvent where
  toGObject = GObject . unWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitPlaybackTargetAvailabilityEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitPlaybackTargetAvailabilityEvent :: IsGObject obj => obj -> WebKitPlaybackTargetAvailabilityEvent
castToWebKitPlaybackTargetAvailabilityEvent = castTo gTypeWebKitPlaybackTargetAvailabilityEvent "WebKitPlaybackTargetAvailabilityEvent"

foreign import javascript unsafe "window[\"WebKitPlaybackTargetAvailabilityEvent\"]" gTypeWebKitPlaybackTargetAvailabilityEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitPoint".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation>
newtype WebKitPoint = WebKitPoint { unWebKitPoint :: JSVal }

instance Eq (WebKitPoint) where
  (WebKitPoint a) == (WebKitPoint b) = js_eq a b

instance PToJSVal WebKitPoint where
  pToJSVal = unWebKitPoint
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitPoint where
  pFromJSVal = WebKitPoint
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitPoint where
  toJSVal = return . unWebKitPoint
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitPoint where
  fromJSVal = return . fmap WebKitPoint . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WebKitPoint where
  toGObject = GObject . unWebKitPoint
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitPoint . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitPoint :: IsGObject obj => obj -> WebKitPoint
castToWebKitPoint = castTo gTypeWebKitPoint "WebKitPoint"

foreign import javascript unsafe "window[\"WebKitPoint\"]" gTypeWebKitPoint :: GType
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
newtype WebKitTransitionEvent = WebKitTransitionEvent { unWebKitTransitionEvent :: JSVal }

instance Eq (WebKitTransitionEvent) where
  (WebKitTransitionEvent a) == (WebKitTransitionEvent b) = js_eq a b

instance PToJSVal WebKitTransitionEvent where
  pToJSVal = unWebKitTransitionEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebKitTransitionEvent where
  pFromJSVal = WebKitTransitionEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebKitTransitionEvent where
  toJSVal = return . unWebKitTransitionEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WebKitTransitionEvent where
  fromJSVal = return . fmap WebKitTransitionEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEvent WebKitTransitionEvent
instance IsGObject WebKitTransitionEvent where
  toGObject = GObject . unWebKitTransitionEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebKitTransitionEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebKitTransitionEvent :: IsGObject obj => obj -> WebKitTransitionEvent
castToWebKitTransitionEvent = castTo gTypeWebKitTransitionEvent "WebKitTransitionEvent"

foreign import javascript unsafe "window[\"WebKitTransitionEvent\"]" gTypeWebKitTransitionEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebSocket".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation>
newtype WebSocket = WebSocket { unWebSocket :: JSVal }

instance Eq (WebSocket) where
  (WebSocket a) == (WebSocket b) = js_eq a b

instance PToJSVal WebSocket where
  pToJSVal = unWebSocket
  {-# INLINE pToJSVal #-}

instance PFromJSVal WebSocket where
  pFromJSVal = WebSocket
  {-# INLINE pFromJSVal #-}

instance ToJSVal WebSocket where
  toJSVal = return . unWebSocket
  {-# INLINE toJSVal #-}

instance FromJSVal WebSocket where
  fromJSVal = return . fmap WebSocket . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget WebSocket
instance IsGObject WebSocket where
  toGObject = GObject . unWebSocket
  {-# INLINE toGObject #-}
  unsafeCastGObject = WebSocket . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWebSocket :: IsGObject obj => obj -> WebSocket
castToWebSocket = castTo gTypeWebSocket "WebSocket"

foreign import javascript unsafe "window[\"WebSocket\"]" gTypeWebSocket :: GType
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
newtype WheelEvent = WheelEvent { unWheelEvent :: JSVal }

instance Eq (WheelEvent) where
  (WheelEvent a) == (WheelEvent b) = js_eq a b

instance PToJSVal WheelEvent where
  pToJSVal = unWheelEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal WheelEvent where
  pFromJSVal = WheelEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal WheelEvent where
  toJSVal = return . unWheelEvent
  {-# INLINE toJSVal #-}

instance FromJSVal WheelEvent where
  fromJSVal = return . fmap WheelEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsMouseEvent WheelEvent
instance IsUIEvent WheelEvent
instance IsEvent WheelEvent
instance IsGObject WheelEvent where
  toGObject = GObject . unWheelEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = WheelEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWheelEvent :: IsGObject obj => obj -> WheelEvent
castToWheelEvent = castTo gTypeWheelEvent "WheelEvent"

foreign import javascript unsafe "window[\"WheelEvent\"]" gTypeWheelEvent :: GType
#else
#ifndef USE_OLD_WEBKIT
type IsWheelEvent o = WheelEventClass o
#endif
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Window".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Window Mozilla Window documentation>
newtype Window = Window { unWindow :: JSVal }

instance Eq (Window) where
  (Window a) == (Window b) = js_eq a b

instance PToJSVal Window where
  pToJSVal = unWindow
  {-# INLINE pToJSVal #-}

instance PFromJSVal Window where
  pFromJSVal = Window
  {-# INLINE pFromJSVal #-}

instance ToJSVal Window where
  toJSVal = return . unWindow
  {-# INLINE toJSVal #-}

instance FromJSVal Window where
  fromJSVal = return . fmap Window . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget Window
instance IsGObject Window where
  toGObject = GObject . unWindow
  {-# INLINE toGObject #-}
  unsafeCastGObject = Window . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWindow :: IsGObject obj => obj -> Window
castToWindow = castTo gTypeWindow "Window"

foreign import javascript unsafe "window[\"Window\"]" gTypeWindow :: GType
#else
type IsWindow o = WindowClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WindowBase64".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64 Mozilla WindowBase64 documentation>
newtype WindowBase64 = WindowBase64 { unWindowBase64 :: JSVal }

instance Eq (WindowBase64) where
  (WindowBase64 a) == (WindowBase64 b) = js_eq a b

instance PToJSVal WindowBase64 where
  pToJSVal = unWindowBase64
  {-# INLINE pToJSVal #-}

instance PFromJSVal WindowBase64 where
  pFromJSVal = WindowBase64
  {-# INLINE pFromJSVal #-}

instance ToJSVal WindowBase64 where
  toJSVal = return . unWindowBase64
  {-# INLINE toJSVal #-}

instance FromJSVal WindowBase64 where
  fromJSVal = return . fmap WindowBase64 . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WindowBase64 where
  toGObject = GObject . unWindowBase64
  {-# INLINE toGObject #-}
  unsafeCastGObject = WindowBase64 . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWindowBase64 :: IsGObject obj => obj -> WindowBase64
castToWindowBase64 = castTo gTypeWindowBase64 "WindowBase64"

foreign import javascript unsafe "window[\"WindowBase64\"]" gTypeWindowBase64 :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WindowTimers".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers Mozilla WindowTimers documentation>
newtype WindowTimers = WindowTimers { unWindowTimers :: JSVal }

instance Eq (WindowTimers) where
  (WindowTimers a) == (WindowTimers b) = js_eq a b

instance PToJSVal WindowTimers where
  pToJSVal = unWindowTimers
  {-# INLINE pToJSVal #-}

instance PFromJSVal WindowTimers where
  pFromJSVal = WindowTimers
  {-# INLINE pFromJSVal #-}

instance ToJSVal WindowTimers where
  toJSVal = return . unWindowTimers
  {-# INLINE toJSVal #-}

instance FromJSVal WindowTimers where
  fromJSVal = return . fmap WindowTimers . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WindowTimers where
  toGObject = GObject . unWindowTimers
  {-# INLINE toGObject #-}
  unsafeCastGObject = WindowTimers . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWindowTimers :: IsGObject obj => obj -> WindowTimers
castToWindowTimers = castTo gTypeWindowTimers "WindowTimers"

foreign import javascript unsafe "window[\"WindowTimers\"]" gTypeWindowTimers :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Worker".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation>
newtype Worker = Worker { unWorker :: JSVal }

instance Eq (Worker) where
  (Worker a) == (Worker b) = js_eq a b

instance PToJSVal Worker where
  pToJSVal = unWorker
  {-# INLINE pToJSVal #-}

instance PFromJSVal Worker where
  pFromJSVal = Worker
  {-# INLINE pFromJSVal #-}

instance ToJSVal Worker where
  toJSVal = return . unWorker
  {-# INLINE toJSVal #-}

instance FromJSVal Worker where
  fromJSVal = return . fmap Worker . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget Worker
instance IsGObject Worker where
  toGObject = GObject . unWorker
  {-# INLINE toGObject #-}
  unsafeCastGObject = Worker . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWorker :: IsGObject obj => obj -> Worker
castToWorker = castTo gTypeWorker "Worker"

foreign import javascript unsafe "window[\"Worker\"]" gTypeWorker :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope Mozilla WorkerGlobalScope documentation>
newtype WorkerGlobalScope = WorkerGlobalScope { unWorkerGlobalScope :: JSVal }

instance Eq (WorkerGlobalScope) where
  (WorkerGlobalScope a) == (WorkerGlobalScope b) = js_eq a b

instance PToJSVal WorkerGlobalScope where
  pToJSVal = unWorkerGlobalScope
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerGlobalScope where
  pFromJSVal = WorkerGlobalScope
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerGlobalScope where
  toJSVal = return . unWorkerGlobalScope
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerGlobalScope where
  fromJSVal = return . fmap WorkerGlobalScope . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

class IsEventTarget o => IsWorkerGlobalScope o
toWorkerGlobalScope :: IsWorkerGlobalScope o => o -> WorkerGlobalScope
toWorkerGlobalScope = unsafeCastGObject . toGObject

instance IsWorkerGlobalScope WorkerGlobalScope
instance IsEventTarget WorkerGlobalScope
instance IsGObject WorkerGlobalScope where
  toGObject = GObject . unWorkerGlobalScope
  {-# INLINE toGObject #-}
  unsafeCastGObject = WorkerGlobalScope . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWorkerGlobalScope :: IsGObject obj => obj -> WorkerGlobalScope
castToWorkerGlobalScope = castTo gTypeWorkerGlobalScope "WorkerGlobalScope"

foreign import javascript unsafe "window[\"WorkerGlobalScope\"]" gTypeWorkerGlobalScope :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerLocation".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation Mozilla WorkerLocation documentation>
newtype WorkerLocation = WorkerLocation { unWorkerLocation :: JSVal }

instance Eq (WorkerLocation) where
  (WorkerLocation a) == (WorkerLocation b) = js_eq a b

instance PToJSVal WorkerLocation where
  pToJSVal = unWorkerLocation
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerLocation where
  pFromJSVal = WorkerLocation
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerLocation where
  toJSVal = return . unWorkerLocation
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerLocation where
  fromJSVal = return . fmap WorkerLocation . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WorkerLocation where
  toGObject = GObject . unWorkerLocation
  {-# INLINE toGObject #-}
  unsafeCastGObject = WorkerLocation . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWorkerLocation :: IsGObject obj => obj -> WorkerLocation
castToWorkerLocation = castTo gTypeWorkerLocation "WorkerLocation"

foreign import javascript unsafe "window[\"WorkerLocation\"]" gTypeWorkerLocation :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerNavigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator Mozilla WorkerNavigator documentation>
newtype WorkerNavigator = WorkerNavigator { unWorkerNavigator :: JSVal }

instance Eq (WorkerNavigator) where
  (WorkerNavigator a) == (WorkerNavigator b) = js_eq a b

instance PToJSVal WorkerNavigator where
  pToJSVal = unWorkerNavigator
  {-# INLINE pToJSVal #-}

instance PFromJSVal WorkerNavigator where
  pFromJSVal = WorkerNavigator
  {-# INLINE pFromJSVal #-}

instance ToJSVal WorkerNavigator where
  toJSVal = return . unWorkerNavigator
  {-# INLINE toJSVal #-}

instance FromJSVal WorkerNavigator where
  fromJSVal = return . fmap WorkerNavigator . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject WorkerNavigator where
  toGObject = GObject . unWorkerNavigator
  {-# INLINE toGObject #-}
  unsafeCastGObject = WorkerNavigator . unGObject
  {-# INLINE unsafeCastGObject #-}

castToWorkerNavigator :: IsGObject obj => obj -> WorkerNavigator
castToWorkerNavigator = castTo gTypeWorkerNavigator "WorkerNavigator"

foreign import javascript unsafe "window[\"WorkerNavigator\"]" gTypeWorkerNavigator :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequest".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation>
newtype XMLHttpRequest = XMLHttpRequest { unXMLHttpRequest :: JSVal }

instance Eq (XMLHttpRequest) where
  (XMLHttpRequest a) == (XMLHttpRequest b) = js_eq a b

instance PToJSVal XMLHttpRequest where
  pToJSVal = unXMLHttpRequest
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequest where
  pFromJSVal = XMLHttpRequest
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequest where
  toJSVal = return . unXMLHttpRequest
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequest where
  fromJSVal = return . fmap XMLHttpRequest . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget XMLHttpRequest
instance IsGObject XMLHttpRequest where
  toGObject = GObject . unXMLHttpRequest
  {-# INLINE toGObject #-}
  unsafeCastGObject = XMLHttpRequest . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXMLHttpRequest :: IsGObject obj => obj -> XMLHttpRequest
castToXMLHttpRequest = castTo gTypeXMLHttpRequest "XMLHttpRequest"

foreign import javascript unsafe "window[\"XMLHttpRequest\"]" gTypeXMLHttpRequest :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequestProgressEvent".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.ProgressEvent"
--     * "GHCJS.DOM.Event"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent Mozilla XMLHttpRequestProgressEvent documentation>
newtype XMLHttpRequestProgressEvent = XMLHttpRequestProgressEvent { unXMLHttpRequestProgressEvent :: JSVal }

instance Eq (XMLHttpRequestProgressEvent) where
  (XMLHttpRequestProgressEvent a) == (XMLHttpRequestProgressEvent b) = js_eq a b

instance PToJSVal XMLHttpRequestProgressEvent where
  pToJSVal = unXMLHttpRequestProgressEvent
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequestProgressEvent where
  pFromJSVal = XMLHttpRequestProgressEvent
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequestProgressEvent where
  toJSVal = return . unXMLHttpRequestProgressEvent
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequestProgressEvent where
  fromJSVal = return . fmap XMLHttpRequestProgressEvent . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsProgressEvent XMLHttpRequestProgressEvent
instance IsEvent XMLHttpRequestProgressEvent
instance IsGObject XMLHttpRequestProgressEvent where
  toGObject = GObject . unXMLHttpRequestProgressEvent
  {-# INLINE toGObject #-}
  unsafeCastGObject = XMLHttpRequestProgressEvent . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXMLHttpRequestProgressEvent :: IsGObject obj => obj -> XMLHttpRequestProgressEvent
castToXMLHttpRequestProgressEvent = castTo gTypeXMLHttpRequestProgressEvent "XMLHttpRequestProgressEvent"

foreign import javascript unsafe "window[\"XMLHttpRequestProgressEvent\"]" gTypeXMLHttpRequestProgressEvent :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequestUpload".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload Mozilla XMLHttpRequestUpload documentation>
newtype XMLHttpRequestUpload = XMLHttpRequestUpload { unXMLHttpRequestUpload :: JSVal }

instance Eq (XMLHttpRequestUpload) where
  (XMLHttpRequestUpload a) == (XMLHttpRequestUpload b) = js_eq a b

instance PToJSVal XMLHttpRequestUpload where
  pToJSVal = unXMLHttpRequestUpload
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLHttpRequestUpload where
  pFromJSVal = XMLHttpRequestUpload
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLHttpRequestUpload where
  toJSVal = return . unXMLHttpRequestUpload
  {-# INLINE toJSVal #-}

instance FromJSVal XMLHttpRequestUpload where
  fromJSVal = return . fmap XMLHttpRequestUpload . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget XMLHttpRequestUpload
instance IsGObject XMLHttpRequestUpload where
  toGObject = GObject . unXMLHttpRequestUpload
  {-# INLINE toGObject #-}
  unsafeCastGObject = XMLHttpRequestUpload . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXMLHttpRequestUpload :: IsGObject obj => obj -> XMLHttpRequestUpload
castToXMLHttpRequestUpload = castTo gTypeXMLHttpRequestUpload "XMLHttpRequestUpload"

foreign import javascript unsafe "window[\"XMLHttpRequestUpload\"]" gTypeXMLHttpRequestUpload :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLSerializer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation>
newtype XMLSerializer = XMLSerializer { unXMLSerializer :: JSVal }

instance Eq (XMLSerializer) where
  (XMLSerializer a) == (XMLSerializer b) = js_eq a b

instance PToJSVal XMLSerializer where
  pToJSVal = unXMLSerializer
  {-# INLINE pToJSVal #-}

instance PFromJSVal XMLSerializer where
  pFromJSVal = XMLSerializer
  {-# INLINE pFromJSVal #-}

instance ToJSVal XMLSerializer where
  toJSVal = return . unXMLSerializer
  {-# INLINE toJSVal #-}

instance FromJSVal XMLSerializer where
  fromJSVal = return . fmap XMLSerializer . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XMLSerializer where
  toGObject = GObject . unXMLSerializer
  {-# INLINE toGObject #-}
  unsafeCastGObject = XMLSerializer . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXMLSerializer :: IsGObject obj => obj -> XMLSerializer
castToXMLSerializer = castTo gTypeXMLSerializer "XMLSerializer"

foreign import javascript unsafe "window[\"XMLSerializer\"]" gTypeXMLSerializer :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathEvaluator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation>
newtype XPathEvaluator = XPathEvaluator { unXPathEvaluator :: JSVal }

instance Eq (XPathEvaluator) where
  (XPathEvaluator a) == (XPathEvaluator b) = js_eq a b

instance PToJSVal XPathEvaluator where
  pToJSVal = unXPathEvaluator
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathEvaluator where
  pFromJSVal = XPathEvaluator
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathEvaluator where
  toJSVal = return . unXPathEvaluator
  {-# INLINE toJSVal #-}

instance FromJSVal XPathEvaluator where
  fromJSVal = return . fmap XPathEvaluator . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XPathEvaluator where
  toGObject = GObject . unXPathEvaluator
  {-# INLINE toGObject #-}
  unsafeCastGObject = XPathEvaluator . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXPathEvaluator :: IsGObject obj => obj -> XPathEvaluator
castToXPathEvaluator = castTo gTypeXPathEvaluator "XPathEvaluator"

foreign import javascript unsafe "window[\"XPathEvaluator\"]" gTypeXPathEvaluator :: GType
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathExpression".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression Mozilla XPathExpression documentation>
newtype XPathExpression = XPathExpression { unXPathExpression :: JSVal }

instance Eq (XPathExpression) where
  (XPathExpression a) == (XPathExpression b) = js_eq a b

instance PToJSVal XPathExpression where
  pToJSVal = unXPathExpression
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathExpression where
  pFromJSVal = XPathExpression
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathExpression where
  toJSVal = return . unXPathExpression
  {-# INLINE toJSVal #-}

instance FromJSVal XPathExpression where
  fromJSVal = return . fmap XPathExpression . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XPathExpression where
  toGObject = GObject . unXPathExpression
  {-# INLINE toGObject #-}
  unsafeCastGObject = XPathExpression . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXPathExpression :: IsGObject obj => obj -> XPathExpression
castToXPathExpression = castTo gTypeXPathExpression "XPathExpression"

foreign import javascript unsafe "window[\"XPathExpression\"]" gTypeXPathExpression :: GType
#else
type IsXPathExpression o = XPathExpressionClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathNSResolver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver Mozilla XPathNSResolver documentation>
newtype XPathNSResolver = XPathNSResolver { unXPathNSResolver :: JSVal }

instance Eq (XPathNSResolver) where
  (XPathNSResolver a) == (XPathNSResolver b) = js_eq a b

instance PToJSVal XPathNSResolver where
  pToJSVal = unXPathNSResolver
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathNSResolver where
  pFromJSVal = XPathNSResolver
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathNSResolver where
  toJSVal = return . unXPathNSResolver
  {-# INLINE toJSVal #-}

instance FromJSVal XPathNSResolver where
  fromJSVal = return . fmap XPathNSResolver . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XPathNSResolver where
  toGObject = GObject . unXPathNSResolver
  {-# INLINE toGObject #-}
  unsafeCastGObject = XPathNSResolver . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXPathNSResolver :: IsGObject obj => obj -> XPathNSResolver
castToXPathNSResolver = castTo gTypeXPathNSResolver "XPathNSResolver"

foreign import javascript unsafe "window[\"XPathNSResolver\"]" gTypeXPathNSResolver :: GType
#else
type IsXPathNSResolver o = XPathNSResolverClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XPathResult".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult Mozilla XPathResult documentation>
newtype XPathResult = XPathResult { unXPathResult :: JSVal }

instance Eq (XPathResult) where
  (XPathResult a) == (XPathResult b) = js_eq a b

instance PToJSVal XPathResult where
  pToJSVal = unXPathResult
  {-# INLINE pToJSVal #-}

instance PFromJSVal XPathResult where
  pFromJSVal = XPathResult
  {-# INLINE pFromJSVal #-}

instance ToJSVal XPathResult where
  toJSVal = return . unXPathResult
  {-# INLINE toJSVal #-}

instance FromJSVal XPathResult where
  fromJSVal = return . fmap XPathResult . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XPathResult where
  toGObject = GObject . unXPathResult
  {-# INLINE toGObject #-}
  unsafeCastGObject = XPathResult . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXPathResult :: IsGObject obj => obj -> XPathResult
castToXPathResult = castTo gTypeXPathResult "XPathResult"

foreign import javascript unsafe "window[\"XPathResult\"]" gTypeXPathResult :: GType
#else
type IsXPathResult o = XPathResultClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XSLTProcessor".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation>
newtype XSLTProcessor = XSLTProcessor { unXSLTProcessor :: JSVal }

instance Eq (XSLTProcessor) where
  (XSLTProcessor a) == (XSLTProcessor b) = js_eq a b

instance PToJSVal XSLTProcessor where
  pToJSVal = unXSLTProcessor
  {-# INLINE pToJSVal #-}

instance PFromJSVal XSLTProcessor where
  pFromJSVal = XSLTProcessor
  {-# INLINE pFromJSVal #-}

instance ToJSVal XSLTProcessor where
  toJSVal = return . unXSLTProcessor
  {-# INLINE toJSVal #-}

instance FromJSVal XSLTProcessor where
  fromJSVal = return . fmap XSLTProcessor . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsGObject XSLTProcessor where
  toGObject = GObject . unXSLTProcessor
  {-# INLINE toGObject #-}
  unsafeCastGObject = XSLTProcessor . unGObject
  {-# INLINE unsafeCastGObject #-}

castToXSLTProcessor :: IsGObject obj => obj -> XSLTProcessor
castToXSLTProcessor = castTo gTypeXSLTProcessor "XSLTProcessor"

foreign import javascript unsafe "window[\"XSLTProcessor\"]" gTypeXSLTProcessor :: GType
#endif


