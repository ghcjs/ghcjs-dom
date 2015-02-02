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
    maybeJSNull, propagateGError, GType(..)
  , GObject(..), GObjectClass, toGObject, unGObject, castToGObject, gTypeGObject, unsafeCastGObject, isA

  -- * DOMString
  , DOMString(..), ToDOMString(..), FromDOMString(..), IsDOMString

  -- * Dictionary
  , Dictionary(Dictionary), unDictionary, IsDictionary, toDictionary

  -- * Promise
  , Promise(Promise), unPromise, IsPromise, toPromise

  -- * Date
  , Date(Date), unDate, IsDate, toDate

  -- * Arrays
  , Array(Array), unArray, IsArray, toArray
  , ObjectArray(ObjectArray), unObjectArray, IsObjectArray, toObjectArray
  , ArrayBuffer(ArrayBuffer), unArrayBuffer, IsArrayBuffer, toArrayBuffer
  , ArrayBufferView(ArrayBufferView), unArrayBufferView, IsArrayBufferView, toArrayBufferView
  , Float32Array(Float32Array), unFloat32Array, IsFloat32Array, toFloat32Array
  , Uint8Array(Uint8Array), unUint8Array, IsUint8Array, toUint8Array
  , Int32Array(Int32Array), unInt32Array, IsInt32Array, toInt32Array
  , Uint8ClampedArray(Uint8ClampedArray), unUint8ClampedArray, IsUint8ClampedArray, toUint8ClampedArray

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

  -- * Inteface types from IDL files

-- AUTO GENERATION STARTS HERE
  , ANGLEInstancedArrays(ANGLEInstancedArrays), unANGLEInstancedArrays, IsANGLEInstancedArrays, toANGLEInstancedArrays, castToANGLEInstancedArrays, gTypeANGLEInstancedArrays
  , AbstractView(AbstractView), unAbstractView, IsAbstractView, toAbstractView, castToAbstractView, gTypeAbstractView
  , AbstractWorker(AbstractWorker), unAbstractWorker, IsAbstractWorker, toAbstractWorker, castToAbstractWorker, gTypeAbstractWorker
  , AllAudioCapabilities(AllAudioCapabilities), unAllAudioCapabilities, IsAllAudioCapabilities, toAllAudioCapabilities, castToAllAudioCapabilities, gTypeAllAudioCapabilities
  , AllVideoCapabilities(AllVideoCapabilities), unAllVideoCapabilities, IsAllVideoCapabilities, toAllVideoCapabilities, castToAllVideoCapabilities, gTypeAllVideoCapabilities
  , AnalyserNode(AnalyserNode), unAnalyserNode, IsAnalyserNode, toAnalyserNode, castToAnalyserNode, gTypeAnalyserNode
  , AnimationEvent(AnimationEvent), unAnimationEvent, IsAnimationEvent, toAnimationEvent, castToAnimationEvent, gTypeAnimationEvent
  , DOMAttr(DOMAttr), unDOMAttr, IsDOMAttr, toDOMAttr, castToDOMAttr, gTypeDOMAttr
  , AudioBuffer(AudioBuffer), unAudioBuffer, IsAudioBuffer, toAudioBuffer, castToAudioBuffer, gTypeAudioBuffer
  , AudioBufferCallback(AudioBufferCallback), unAudioBufferCallback, IsAudioBufferCallback, toAudioBufferCallback, castToAudioBufferCallback, gTypeAudioBufferCallback
  , AudioBufferSourceNode(AudioBufferSourceNode), unAudioBufferSourceNode, IsAudioBufferSourceNode, toAudioBufferSourceNode, castToAudioBufferSourceNode, gTypeAudioBufferSourceNode
  , AudioContext(AudioContext), unAudioContext, IsAudioContext, toAudioContext, castToAudioContext, gTypeAudioContext
  , AudioDestinationNode(AudioDestinationNode), unAudioDestinationNode, IsAudioDestinationNode, toAudioDestinationNode, castToAudioDestinationNode, gTypeAudioDestinationNode
  , AudioListener(AudioListener), unAudioListener, IsAudioListener, toAudioListener, castToAudioListener, gTypeAudioListener
  , AudioNode(AudioNode), unAudioNode, IsAudioNode, toAudioNode, castToAudioNode, gTypeAudioNode
  , AudioParam(AudioParam), unAudioParam, IsAudioParam, toAudioParam, castToAudioParam, gTypeAudioParam
  , AudioProcessingEvent(AudioProcessingEvent), unAudioProcessingEvent, IsAudioProcessingEvent, toAudioProcessingEvent, castToAudioProcessingEvent, gTypeAudioProcessingEvent
  , AudioStreamTrack(AudioStreamTrack), unAudioStreamTrack, IsAudioStreamTrack, toAudioStreamTrack, castToAudioStreamTrack, gTypeAudioStreamTrack
  , AudioTrack(AudioTrack), unAudioTrack, IsAudioTrack, toAudioTrack, castToAudioTrack, gTypeAudioTrack
  , AudioTrackList(AudioTrackList), unAudioTrackList, IsAudioTrackList, toAudioTrackList, castToAudioTrackList, gTypeAudioTrackList
  , AutocompleteErrorEvent(AutocompleteErrorEvent), unAutocompleteErrorEvent, IsAutocompleteErrorEvent, toAutocompleteErrorEvent, castToAutocompleteErrorEvent, gTypeAutocompleteErrorEvent
  , BarProp(BarProp), unBarProp, IsBarProp, toBarProp, castToBarProp, gTypeBarProp
  , BatteryManager(BatteryManager), unBatteryManager, IsBatteryManager, toBatteryManager, castToBatteryManager, gTypeBatteryManager
  , BeforeLoadEvent(BeforeLoadEvent), unBeforeLoadEvent, IsBeforeLoadEvent, toBeforeLoadEvent, castToBeforeLoadEvent, gTypeBeforeLoadEvent
  , BeforeUnloadEvent(BeforeUnloadEvent), unBeforeUnloadEvent, IsBeforeUnloadEvent, toBeforeUnloadEvent, castToBeforeUnloadEvent, gTypeBeforeUnloadEvent
  , BiquadFilterNode(BiquadFilterNode), unBiquadFilterNode, IsBiquadFilterNode, toBiquadFilterNode, castToBiquadFilterNode, gTypeBiquadFilterNode
  , Blob(Blob), unBlob, IsBlob, toBlob, castToBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, IsCDATASection, toCDATASection, castToCDATASection, gTypeCDATASection
  , CSSCharsetRule(CSSCharsetRule), unCSSCharsetRule, IsCSSCharsetRule, toCSSCharsetRule, castToCSSCharsetRule, gTypeCSSCharsetRule
  , CSSFontFaceLoadEvent(CSSFontFaceLoadEvent), unCSSFontFaceLoadEvent, IsCSSFontFaceLoadEvent, toCSSFontFaceLoadEvent, castToCSSFontFaceLoadEvent, gTypeCSSFontFaceLoadEvent
  , CSSFontFaceRule(CSSFontFaceRule), unCSSFontFaceRule, IsCSSFontFaceRule, toCSSFontFaceRule, castToCSSFontFaceRule, gTypeCSSFontFaceRule
  , CSSImportRule(CSSImportRule), unCSSImportRule, IsCSSImportRule, toCSSImportRule, castToCSSImportRule, gTypeCSSImportRule
  , CSSKeyframeRule(CSSKeyframeRule), unCSSKeyframeRule, IsCSSKeyframeRule, toCSSKeyframeRule, castToCSSKeyframeRule, gTypeCSSKeyframeRule
  , CSSKeyframesRule(CSSKeyframesRule), unCSSKeyframesRule, IsCSSKeyframesRule, toCSSKeyframesRule, castToCSSKeyframesRule, gTypeCSSKeyframesRule
  , CSSMediaRule(CSSMediaRule), unCSSMediaRule, IsCSSMediaRule, toCSSMediaRule, castToCSSMediaRule, gTypeCSSMediaRule
  , CSSPageRule(CSSPageRule), unCSSPageRule, IsCSSPageRule, toCSSPageRule, castToCSSPageRule, gTypeCSSPageRule
  , CSSPrimitiveValue(CSSPrimitiveValue), unCSSPrimitiveValue, IsCSSPrimitiveValue, toCSSPrimitiveValue, castToCSSPrimitiveValue, gTypeCSSPrimitiveValue
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, castToCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, IsCSSRuleList, toCSSRuleList, castToCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, IsCSSStyleDeclaration, toCSSStyleDeclaration, castToCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleRule(CSSStyleRule), unCSSStyleRule, IsCSSStyleRule, toCSSStyleRule, castToCSSStyleRule, gTypeCSSStyleRule
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, IsCSSStyleSheet, toCSSStyleSheet, castToCSSStyleSheet, gTypeCSSStyleSheet
  , CSSSupportsRule(CSSSupportsRule), unCSSSupportsRule, IsCSSSupportsRule, toCSSSupportsRule, castToCSSSupportsRule, gTypeCSSSupportsRule
  , CSSUnknownRule(CSSUnknownRule), unCSSUnknownRule, IsCSSUnknownRule, toCSSUnknownRule, castToCSSUnknownRule, gTypeCSSUnknownRule
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, castToCSSValue, gTypeCSSValue
  , CSSValueList(CSSValueList), unCSSValueList, IsCSSValueList, toCSSValueList, castToCSSValueList, gTypeCSSValueList
  , CanvasGradient(CanvasGradient), unCanvasGradient, IsCanvasGradient, toCanvasGradient, castToCanvasGradient, gTypeCanvasGradient
  , CanvasPattern(CanvasPattern), unCanvasPattern, IsCanvasPattern, toCanvasPattern, castToCanvasPattern, gTypeCanvasPattern
  , CanvasProxy(CanvasProxy), unCanvasProxy, IsCanvasProxy, toCanvasProxy, castToCanvasProxy, gTypeCanvasProxy
  , CanvasRenderingContext(CanvasRenderingContext), unCanvasRenderingContext, IsCanvasRenderingContext, toCanvasRenderingContext, castToCanvasRenderingContext, gTypeCanvasRenderingContext
  , CanvasRenderingContext2D(CanvasRenderingContext2D), unCanvasRenderingContext2D, IsCanvasRenderingContext2D, toCanvasRenderingContext2D, castToCanvasRenderingContext2D, gTypeCanvasRenderingContext2D
  , CapabilityRange(CapabilityRange), unCapabilityRange, IsCapabilityRange, toCapabilityRange, castToCapabilityRange, gTypeCapabilityRange
  , ChannelMergerNode(ChannelMergerNode), unChannelMergerNode, IsChannelMergerNode, toChannelMergerNode, castToChannelMergerNode, gTypeChannelMergerNode
  , ChannelSplitterNode(ChannelSplitterNode), unChannelSplitterNode, IsChannelSplitterNode, toChannelSplitterNode, castToChannelSplitterNode, gTypeChannelSplitterNode
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, castToCharacterData, gTypeCharacterData
  , ChildNode(ChildNode), unChildNode, IsChildNode, toChildNode, castToChildNode, gTypeChildNode
  , ClientRect(ClientRect), unClientRect, IsClientRect, toClientRect, castToClientRect, gTypeClientRect
  , ClientRectList(ClientRectList), unClientRectList, IsClientRectList, toClientRectList, castToClientRectList, gTypeClientRectList
  , CloseEvent(CloseEvent), unCloseEvent, IsCloseEvent, toCloseEvent, castToCloseEvent, gTypeCloseEvent
  , CommandLineAPIHost(CommandLineAPIHost), unCommandLineAPIHost, IsCommandLineAPIHost, toCommandLineAPIHost, castToCommandLineAPIHost, gTypeCommandLineAPIHost
  , Comment(Comment), unComment, IsComment, toComment, castToComment, gTypeComment
  , CompositionEvent(CompositionEvent), unCompositionEvent, IsCompositionEvent, toCompositionEvent, castToCompositionEvent, gTypeCompositionEvent
  , ConvolverNode(ConvolverNode), unConvolverNode, IsConvolverNode, toConvolverNode, castToConvolverNode, gTypeConvolverNode
  , Coordinates(Coordinates), unCoordinates, IsCoordinates, toCoordinates, castToCoordinates, gTypeCoordinates
  , Counter(Counter), unCounter, IsCounter, toCounter, castToCounter, gTypeCounter
  , Crypto(Crypto), unCrypto, IsCrypto, toCrypto, castToCrypto, gTypeCrypto
  , CryptoKey(CryptoKey), unCryptoKey, IsCryptoKey, toCryptoKey, castToCryptoKey, gTypeCryptoKey
  , CryptoKeyPair(CryptoKeyPair), unCryptoKeyPair, IsCryptoKeyPair, toCryptoKeyPair, castToCryptoKeyPair, gTypeCryptoKeyPair
  , CustomEvent(CustomEvent), unCustomEvent, IsCustomEvent, toCustomEvent, castToCustomEvent, gTypeCustomEvent
  , DOMApplicationCache(DOMApplicationCache), unDOMApplicationCache, IsDOMApplicationCache, toDOMApplicationCache, castToDOMApplicationCache, gTypeDOMApplicationCache
  , DOMError(DOMError), unDOMError, IsDOMError, toDOMError, castToDOMError, gTypeDOMError
  , DOMFormData(DOMFormData), unDOMFormData, IsDOMFormData, toDOMFormData, castToDOMFormData, gTypeDOMFormData
  , DOMImplementation(DOMImplementation), unDOMImplementation, IsDOMImplementation, toDOMImplementation, castToDOMImplementation, gTypeDOMImplementation
  , DOMMimeType(DOMMimeType), unDOMMimeType, IsDOMMimeType, toDOMMimeType, castToDOMMimeType, gTypeDOMMimeType
  , DOMMimeTypeArray(DOMMimeTypeArray), unDOMMimeTypeArray, IsDOMMimeTypeArray, toDOMMimeTypeArray, castToDOMMimeTypeArray, gTypeDOMMimeTypeArray
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, IsDOMNamedFlowCollection, toDOMNamedFlowCollection, castToDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMParser(DOMParser), unDOMParser, IsDOMParser, toDOMParser, castToDOMParser, gTypeDOMParser
  , DOMPath(DOMPath), unDOMPath, IsDOMPath, toDOMPath, castToDOMPath, gTypeDOMPath
  , DOMPlugin(DOMPlugin), unDOMPlugin, IsDOMPlugin, toDOMPlugin, castToDOMPlugin, gTypeDOMPlugin
  , DOMPluginArray(DOMPluginArray), unDOMPluginArray, IsDOMPluginArray, toDOMPluginArray, castToDOMPluginArray, gTypeDOMPluginArray
  , DOMSecurityPolicy(DOMSecurityPolicy), unDOMSecurityPolicy, IsDOMSecurityPolicy, toDOMSecurityPolicy, castToDOMSecurityPolicy, gTypeDOMSecurityPolicy
  , DOMSelection(DOMSelection), unDOMSelection, IsDOMSelection, toDOMSelection, castToDOMSelection, gTypeDOMSelection
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, IsDOMSettableTokenList, toDOMSettableTokenList, castToDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, IsDOMStringList, toDOMStringList, castToDOMStringList, gTypeDOMStringList
  , DOMStringMap(DOMStringMap), unDOMStringMap, IsDOMStringMap, toDOMStringMap, castToDOMStringMap, gTypeDOMStringMap
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, castToDOMTokenList, gTypeDOMTokenList
  , DOMURL(DOMURL), unDOMURL, IsDOMURL, toDOMURL, castToDOMURL, gTypeDOMURL
  , DOMWindow(DOMWindow), unDOMWindow, IsDOMWindow, toDOMWindow, castToDOMWindow, gTypeDOMWindow
  , DOMWindowCSS(DOMWindowCSS), unDOMWindowCSS, IsDOMWindowCSS, toDOMWindowCSS, castToDOMWindowCSS, gTypeDOMWindowCSS
  , DataCue(DataCue), unDataCue, IsDataCue, toDataCue, castToDataCue, gTypeDataCue
  , DataTransfer(DataTransfer), unDataTransfer, IsDataTransfer, toDataTransfer, castToDataTransfer, gTypeDataTransfer
  , DataTransferItem(DataTransferItem), unDataTransferItem, IsDataTransferItem, toDataTransferItem, castToDataTransferItem, gTypeDataTransferItem
  , DataTransferItemList(DataTransferItemList), unDataTransferItemList, IsDataTransferItemList, toDataTransferItemList, castToDataTransferItemList, gTypeDataTransferItemList
  , Database(Database), unDatabase, IsDatabase, toDatabase, castToDatabase, gTypeDatabase
  , DatabaseCallback(DatabaseCallback), unDatabaseCallback, IsDatabaseCallback, toDatabaseCallback, castToDatabaseCallback, gTypeDatabaseCallback
  , DatabaseSync(DatabaseSync), unDatabaseSync, IsDatabaseSync, toDatabaseSync, castToDatabaseSync, gTypeDatabaseSync
  , DedicatedWorkerGlobalScope(DedicatedWorkerGlobalScope), unDedicatedWorkerGlobalScope, IsDedicatedWorkerGlobalScope, toDedicatedWorkerGlobalScope, castToDedicatedWorkerGlobalScope, gTypeDedicatedWorkerGlobalScope
  , DelayNode(DelayNode), unDelayNode, IsDelayNode, toDelayNode, castToDelayNode, gTypeDelayNode
  , DeviceMotionEvent(DeviceMotionEvent), unDeviceMotionEvent, IsDeviceMotionEvent, toDeviceMotionEvent, castToDeviceMotionEvent, gTypeDeviceMotionEvent
  , DeviceOrientationEvent(DeviceOrientationEvent), unDeviceOrientationEvent, IsDeviceOrientationEvent, toDeviceOrientationEvent, castToDeviceOrientationEvent, gTypeDeviceOrientationEvent
  , DeviceProximityEvent(DeviceProximityEvent), unDeviceProximityEvent, IsDeviceProximityEvent, toDeviceProximityEvent, castToDeviceProximityEvent, gTypeDeviceProximityEvent
  , Document(Document), unDocument, IsDocument, toDocument, castToDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, IsDocumentFragment, toDocumentFragment, castToDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, IsDocumentType, toDocumentType, castToDocumentType, gTypeDocumentType
  , DynamicsCompressorNode(DynamicsCompressorNode), unDynamicsCompressorNode, IsDynamicsCompressorNode, toDynamicsCompressorNode, castToDynamicsCompressorNode, gTypeDynamicsCompressorNode
  , EXTShaderTextureLOD(EXTShaderTextureLOD), unEXTShaderTextureLOD, IsEXTShaderTextureLOD, toEXTShaderTextureLOD, castToEXTShaderTextureLOD, gTypeEXTShaderTextureLOD
  , EXTTextureFilterAnisotropic(EXTTextureFilterAnisotropic), unEXTTextureFilterAnisotropic, IsEXTTextureFilterAnisotropic, toEXTTextureFilterAnisotropic, castToEXTTextureFilterAnisotropic, gTypeEXTTextureFilterAnisotropic
  , Element(Element), unElement, IsElement, toElement, castToElement, gTypeElement
  , Entity(Entity), unEntity, IsEntity, toEntity, castToEntity, gTypeEntity
  , EntityReference(EntityReference), unEntityReference, IsEntityReference, toEntityReference, castToEntityReference, gTypeEntityReference
  , ErrorEvent(ErrorEvent), unErrorEvent, IsErrorEvent, toErrorEvent, castToErrorEvent, gTypeErrorEvent
  , Event(Event), unEvent, IsEvent, toEvent, castToEvent, gTypeEvent
  , EventListener(EventListener), unEventListener, IsEventListener, toEventListener, castToEventListener, gTypeEventListener
  , EventSource(EventSource), unEventSource, IsEventSource, toEventSource, castToEventSource, gTypeEventSource
  , EventTarget(EventTarget), unEventTarget, IsEventTarget, toEventTarget, castToEventTarget, gTypeEventTarget
  , File(File), unFile, IsFile, toFile, castToFile, gTypeFile
  , FileError(FileError), unFileError, IsFileError, toFileError, castToFileError, gTypeFileError
  , FileList(FileList), unFileList, IsFileList, toFileList, castToFileList, gTypeFileList
  , FileReader(FileReader), unFileReader, IsFileReader, toFileReader, castToFileReader, gTypeFileReader
  , FileReaderSync(FileReaderSync), unFileReaderSync, IsFileReaderSync, toFileReaderSync, castToFileReaderSync, gTypeFileReaderSync
  , FocusEvent(FocusEvent), unFocusEvent, IsFocusEvent, toFocusEvent, castToFocusEvent, gTypeFocusEvent
  , FontLoader(FontLoader), unFontLoader, IsFontLoader, toFontLoader, castToFontLoader, gTypeFontLoader
  , GainNode(GainNode), unGainNode, IsGainNode, toGainNode, castToGainNode, gTypeGainNode
  , Gamepad(Gamepad), unGamepad, IsGamepad, toGamepad, castToGamepad, gTypeGamepad
  , GamepadButton(GamepadButton), unGamepadButton, IsGamepadButton, toGamepadButton, castToGamepadButton, gTypeGamepadButton
  , GamepadEvent(GamepadEvent), unGamepadEvent, IsGamepadEvent, toGamepadEvent, castToGamepadEvent, gTypeGamepadEvent
  , Geolocation(Geolocation), unGeolocation, IsGeolocation, toGeolocation, castToGeolocation, gTypeGeolocation
  , Geoposition(Geoposition), unGeoposition, IsGeoposition, toGeoposition, castToGeoposition, gTypeGeoposition
  , HTMLAllCollection(HTMLAllCollection), unHTMLAllCollection, IsHTMLAllCollection, toHTMLAllCollection, castToHTMLAllCollection, gTypeHTMLAllCollection
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
  , HTMLDataListElement(HTMLDataListElement), unHTMLDataListElement, IsHTMLDataListElement, toHTMLDataListElement, castToHTMLDataListElement, gTypeHTMLDataListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, IsHTMLDetailsElement, toHTMLDetailsElement, castToHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, IsHTMLDirectoryElement, toHTMLDirectoryElement, castToHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, IsHTMLDivElement, toHTMLDivElement, castToHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, IsHTMLDocument, toHTMLDocument, castToHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, IsHTMLElement, toHTMLElement, castToHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, IsHTMLEmbedElement, toHTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, IsHTMLFieldSetElement, toHTMLFieldSetElement, castToHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, IsHTMLFontElement, toHTMLFontElement, castToHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormControlsCollection(HTMLFormControlsCollection), unHTMLFormControlsCollection, IsHTMLFormControlsCollection, toHTMLFormControlsCollection, castToHTMLFormControlsCollection, gTypeHTMLFormControlsCollection
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
  , HTMLMeterElement(HTMLMeterElement), unHTMLMeterElement, IsHTMLMeterElement, toHTMLMeterElement, castToHTMLMeterElement, gTypeHTMLMeterElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, IsHTMLModElement, toHTMLModElement, castToHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, IsHTMLOListElement, toHTMLOListElement, castToHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, IsHTMLObjectElement, toHTMLObjectElement, castToHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, IsHTMLOptGroupElement, toHTMLOptGroupElement, castToHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, IsHTMLOptionElement, toHTMLOptionElement, castToHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, IsHTMLOptionsCollection, toHTMLOptionsCollection, castToHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLOutputElement(HTMLOutputElement), unHTMLOutputElement, IsHTMLOutputElement, toHTMLOutputElement, castToHTMLOutputElement, gTypeHTMLOutputElement
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, IsHTMLParagraphElement, toHTMLParagraphElement, castToHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, IsHTMLParamElement, toHTMLParamElement, castToHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, IsHTMLPreElement, toHTMLPreElement, castToHTMLPreElement, gTypeHTMLPreElement
  , HTMLProgressElement(HTMLProgressElement), unHTMLProgressElement, IsHTMLProgressElement, toHTMLProgressElement, castToHTMLProgressElement, gTypeHTMLProgressElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, IsHTMLQuoteElement, toHTMLQuoteElement, castToHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, IsHTMLScriptElement, toHTMLScriptElement, castToHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, IsHTMLSelectElement, toHTMLSelectElement, castToHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLSourceElement(HTMLSourceElement), unHTMLSourceElement, IsHTMLSourceElement, toHTMLSourceElement, castToHTMLSourceElement, gTypeHTMLSourceElement
  , HTMLSpanElement(HTMLSpanElement), unHTMLSpanElement, IsHTMLSpanElement, toHTMLSpanElement, castToHTMLSpanElement, gTypeHTMLSpanElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, IsHTMLStyleElement, toHTMLStyleElement, castToHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, IsHTMLTableCaptionElement, toHTMLTableCaptionElement, castToHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, IsHTMLTableCellElement, toHTMLTableCellElement, castToHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, IsHTMLTableColElement, toHTMLTableColElement, castToHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, IsHTMLTableElement, toHTMLTableElement, castToHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, IsHTMLTableRowElement, toHTMLTableRowElement, castToHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, IsHTMLTableSectionElement, toHTMLTableSectionElement, castToHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTemplateElement(HTMLTemplateElement), unHTMLTemplateElement, IsHTMLTemplateElement, toHTMLTemplateElement, castToHTMLTemplateElement, gTypeHTMLTemplateElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, IsHTMLTextAreaElement, toHTMLTextAreaElement, castToHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, IsHTMLTitleElement, toHTMLTitleElement, castToHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLTrackElement(HTMLTrackElement), unHTMLTrackElement, IsHTMLTrackElement, toHTMLTrackElement, castToHTMLTrackElement, gTypeHTMLTrackElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, IsHTMLUListElement, toHTMLUListElement, castToHTMLUListElement, gTypeHTMLUListElement
  , HTMLUnknownElement(HTMLUnknownElement), unHTMLUnknownElement, IsHTMLUnknownElement, toHTMLUnknownElement, castToHTMLUnknownElement, gTypeHTMLUnknownElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, IsHTMLVideoElement, toHTMLVideoElement, castToHTMLVideoElement, gTypeHTMLVideoElement
  , HashChangeEvent(HashChangeEvent), unHashChangeEvent, IsHashChangeEvent, toHashChangeEvent, castToHashChangeEvent, gTypeHashChangeEvent
  , History(History), unHistory, IsHistory, toHistory, castToHistory, gTypeHistory
  , IDBAny(IDBAny), unIDBAny, IsIDBAny, toIDBAny, castToIDBAny, gTypeIDBAny
  , IDBCursor(IDBCursor), unIDBCursor, IsIDBCursor, toIDBCursor, castToIDBCursor, gTypeIDBCursor
  , IDBCursorWithValue(IDBCursorWithValue), unIDBCursorWithValue, IsIDBCursorWithValue, toIDBCursorWithValue, castToIDBCursorWithValue, gTypeIDBCursorWithValue
  , IDBDatabase(IDBDatabase), unIDBDatabase, IsIDBDatabase, toIDBDatabase, castToIDBDatabase, gTypeIDBDatabase
  , IDBFactory(IDBFactory), unIDBFactory, IsIDBFactory, toIDBFactory, castToIDBFactory, gTypeIDBFactory
  , IDBIndex(IDBIndex), unIDBIndex, IsIDBIndex, toIDBIndex, castToIDBIndex, gTypeIDBIndex
  , IDBKeyRange(IDBKeyRange), unIDBKeyRange, IsIDBKeyRange, toIDBKeyRange, castToIDBKeyRange, gTypeIDBKeyRange
  , IDBObjectStore(IDBObjectStore), unIDBObjectStore, IsIDBObjectStore, toIDBObjectStore, castToIDBObjectStore, gTypeIDBObjectStore
  , IDBOpenDBRequest(IDBOpenDBRequest), unIDBOpenDBRequest, IsIDBOpenDBRequest, toIDBOpenDBRequest, castToIDBOpenDBRequest, gTypeIDBOpenDBRequest
  , IDBRequest(IDBRequest), unIDBRequest, IsIDBRequest, toIDBRequest, castToIDBRequest, gTypeIDBRequest
  , IDBTransaction(IDBTransaction), unIDBTransaction, IsIDBTransaction, toIDBTransaction, castToIDBTransaction, gTypeIDBTransaction
  , IDBVersionChangeEvent(IDBVersionChangeEvent), unIDBVersionChangeEvent, IsIDBVersionChangeEvent, toIDBVersionChangeEvent, castToIDBVersionChangeEvent, gTypeIDBVersionChangeEvent
  , ImageData(ImageData), unImageData, IsImageData, toImageData, castToImageData, gTypeImageData
  , InspectorFrontendHost(InspectorFrontendHost), unInspectorFrontendHost, IsInspectorFrontendHost, toInspectorFrontendHost, castToInspectorFrontendHost, gTypeInspectorFrontendHost
  , InternalSettings(InternalSettings), unInternalSettings, IsInternalSettings, toInternalSettings, castToInternalSettings, gTypeInternalSettings
  , Internals(Internals), unInternals, IsInternals, toInternals, castToInternals, gTypeInternals
  , KeyboardEvent(KeyboardEvent), unKeyboardEvent, IsKeyboardEvent, toKeyboardEvent, castToKeyboardEvent, gTypeKeyboardEvent
  , Location(Location), unLocation, IsLocation, toLocation, castToLocation, gTypeLocation
  , MallocStatistics(MallocStatistics), unMallocStatistics, IsMallocStatistics, toMallocStatistics, castToMallocStatistics, gTypeMallocStatistics
  , MediaController(MediaController), unMediaController, IsMediaController, toMediaController, castToMediaController, gTypeMediaController
  , MediaControlsHost(MediaControlsHost), unMediaControlsHost, IsMediaControlsHost, toMediaControlsHost, castToMediaControlsHost, gTypeMediaControlsHost
  , MediaElementAudioSourceNode(MediaElementAudioSourceNode), unMediaElementAudioSourceNode, IsMediaElementAudioSourceNode, toMediaElementAudioSourceNode, castToMediaElementAudioSourceNode, gTypeMediaElementAudioSourceNode
  , MediaError(MediaError), unMediaError, IsMediaError, toMediaError, castToMediaError, gTypeMediaError
  , MediaKeyError(MediaKeyError), unMediaKeyError, IsMediaKeyError, toMediaKeyError, castToMediaKeyError, gTypeMediaKeyError
  , MediaKeyEvent(MediaKeyEvent), unMediaKeyEvent, IsMediaKeyEvent, toMediaKeyEvent, castToMediaKeyEvent, gTypeMediaKeyEvent
  , MediaKeyMessageEvent(MediaKeyMessageEvent), unMediaKeyMessageEvent, IsMediaKeyMessageEvent, toMediaKeyMessageEvent, castToMediaKeyMessageEvent, gTypeMediaKeyMessageEvent
  , MediaKeyNeededEvent(MediaKeyNeededEvent), unMediaKeyNeededEvent, IsMediaKeyNeededEvent, toMediaKeyNeededEvent, castToMediaKeyNeededEvent, gTypeMediaKeyNeededEvent
  , MediaKeySession(MediaKeySession), unMediaKeySession, IsMediaKeySession, toMediaKeySession, castToMediaKeySession, gTypeMediaKeySession
  , MediaKeys(MediaKeys), unMediaKeys, IsMediaKeys, toMediaKeys, castToMediaKeys, gTypeMediaKeys
  , MediaList(MediaList), unMediaList, IsMediaList, toMediaList, castToMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, IsMediaQueryList, toMediaQueryList, castToMediaQueryList, gTypeMediaQueryList
  , MediaQueryListListener(MediaQueryListListener), unMediaQueryListListener, IsMediaQueryListListener, toMediaQueryListListener, castToMediaQueryListListener, gTypeMediaQueryListListener
  , MediaSource(MediaSource), unMediaSource, IsMediaSource, toMediaSource, castToMediaSource, gTypeMediaSource
  , MediaSourceStates(MediaSourceStates), unMediaSourceStates, IsMediaSourceStates, toMediaSourceStates, castToMediaSourceStates, gTypeMediaSourceStates
  , MediaStream(MediaStream), unMediaStream, IsMediaStream, toMediaStream, castToMediaStream, gTypeMediaStream
  , MediaStreamAudioDestinationNode(MediaStreamAudioDestinationNode), unMediaStreamAudioDestinationNode, IsMediaStreamAudioDestinationNode, toMediaStreamAudioDestinationNode, castToMediaStreamAudioDestinationNode, gTypeMediaStreamAudioDestinationNode
  , MediaStreamAudioSourceNode(MediaStreamAudioSourceNode), unMediaStreamAudioSourceNode, IsMediaStreamAudioSourceNode, toMediaStreamAudioSourceNode, castToMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode
  , MediaStreamCapabilities(MediaStreamCapabilities), unMediaStreamCapabilities, IsMediaStreamCapabilities, toMediaStreamCapabilities, castToMediaStreamCapabilities, gTypeMediaStreamCapabilities
  , MediaStreamEvent(MediaStreamEvent), unMediaStreamEvent, IsMediaStreamEvent, toMediaStreamEvent, castToMediaStreamEvent, gTypeMediaStreamEvent
  , MediaStreamTrack(MediaStreamTrack), unMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack, castToMediaStreamTrack, gTypeMediaStreamTrack
  , MediaStreamTrackEvent(MediaStreamTrackEvent), unMediaStreamTrackEvent, IsMediaStreamTrackEvent, toMediaStreamTrackEvent, castToMediaStreamTrackEvent, gTypeMediaStreamTrackEvent
  , MediaStreamTrackSourcesCallback(MediaStreamTrackSourcesCallback), unMediaStreamTrackSourcesCallback, IsMediaStreamTrackSourcesCallback, toMediaStreamTrackSourcesCallback, castToMediaStreamTrackSourcesCallback, gTypeMediaStreamTrackSourcesCallback
  , MediaTrackConstraint(MediaTrackConstraint), unMediaTrackConstraint, IsMediaTrackConstraint, toMediaTrackConstraint, castToMediaTrackConstraint, gTypeMediaTrackConstraint
  , MediaTrackConstraintSet(MediaTrackConstraintSet), unMediaTrackConstraintSet, IsMediaTrackConstraintSet, toMediaTrackConstraintSet, castToMediaTrackConstraintSet, gTypeMediaTrackConstraintSet
  , MediaTrackConstraints(MediaTrackConstraints), unMediaTrackConstraints, IsMediaTrackConstraints, toMediaTrackConstraints, castToMediaTrackConstraints, gTypeMediaTrackConstraints
  , MemoryInfo(MemoryInfo), unMemoryInfo, IsMemoryInfo, toMemoryInfo, castToMemoryInfo, gTypeMemoryInfo
  , MessageChannel(MessageChannel), unMessageChannel, IsMessageChannel, toMessageChannel, castToMessageChannel, gTypeMessageChannel
  , MessageEvent(MessageEvent), unMessageEvent, IsMessageEvent, toMessageEvent, castToMessageEvent, gTypeMessageEvent
  , MessagePort(MessagePort), unMessagePort, IsMessagePort, toMessagePort, castToMessagePort, gTypeMessagePort
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, castToMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, IsMutationEvent, toMutationEvent, castToMutationEvent, gTypeMutationEvent
  , MutationObserver(MutationObserver), unMutationObserver, IsMutationObserver, toMutationObserver, castToMutationObserver, gTypeMutationObserver
  , MutationRecord(MutationRecord), unMutationRecord, IsMutationRecord, toMutationRecord, castToMutationRecord, gTypeMutationRecord
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, IsNamedNodeMap, toNamedNodeMap, castToNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, IsNavigator, toNavigator, castToNavigator, gTypeNavigator
  , NavigatorUserMediaError(NavigatorUserMediaError), unNavigatorUserMediaError, IsNavigatorUserMediaError, toNavigatorUserMediaError, castToNavigatorUserMediaError, gTypeNavigatorUserMediaError
  , NavigatorUserMediaErrorCallback(NavigatorUserMediaErrorCallback), unNavigatorUserMediaErrorCallback, IsNavigatorUserMediaErrorCallback, toNavigatorUserMediaErrorCallback, castToNavigatorUserMediaErrorCallback, gTypeNavigatorUserMediaErrorCallback
  , NavigatorUserMediaSuccessCallback(NavigatorUserMediaSuccessCallback), unNavigatorUserMediaSuccessCallback, IsNavigatorUserMediaSuccessCallback, toNavigatorUserMediaSuccessCallback, castToNavigatorUserMediaSuccessCallback, gTypeNavigatorUserMediaSuccessCallback
  , Node(Node), unNode, IsNode, toNode, castToNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, IsNodeFilter, toNodeFilter, castToNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, IsNodeIterator, toNodeIterator, castToNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, castToNodeList, gTypeNodeList
  , Notation(Notation), unNotation, IsNotation, toNotation, castToNotation, gTypeNotation
  , Notification(Notification), unNotification, IsNotification, toNotification, castToNotification, gTypeNotification
  , NotificationCenter(NotificationCenter), unNotificationCenter, IsNotificationCenter, toNotificationCenter, castToNotificationCenter, gTypeNotificationCenter
  , NotificationPermissionCallback(NotificationPermissionCallback), unNotificationPermissionCallback, IsNotificationPermissionCallback, toNotificationPermissionCallback, castToNotificationPermissionCallback, gTypeNotificationPermissionCallback
  , OESElementIndexUint(OESElementIndexUint), unOESElementIndexUint, IsOESElementIndexUint, toOESElementIndexUint, castToOESElementIndexUint, gTypeOESElementIndexUint
  , OESStandardDerivatives(OESStandardDerivatives), unOESStandardDerivatives, IsOESStandardDerivatives, toOESStandardDerivatives, castToOESStandardDerivatives, gTypeOESStandardDerivatives
  , OESTextureFloat(OESTextureFloat), unOESTextureFloat, IsOESTextureFloat, toOESTextureFloat, castToOESTextureFloat, gTypeOESTextureFloat
  , OESTextureFloatLinear(OESTextureFloatLinear), unOESTextureFloatLinear, IsOESTextureFloatLinear, toOESTextureFloatLinear, castToOESTextureFloatLinear, gTypeOESTextureFloatLinear
  , OESTextureHalfFloat(OESTextureHalfFloat), unOESTextureHalfFloat, IsOESTextureHalfFloat, toOESTextureHalfFloat, castToOESTextureHalfFloat, gTypeOESTextureHalfFloat
  , OESTextureHalfFloatLinear(OESTextureHalfFloatLinear), unOESTextureHalfFloatLinear, IsOESTextureHalfFloatLinear, toOESTextureHalfFloatLinear, castToOESTextureHalfFloatLinear, gTypeOESTextureHalfFloatLinear
  , OESVertexArrayObject(OESVertexArrayObject), unOESVertexArrayObject, IsOESVertexArrayObject, toOESVertexArrayObject, castToOESVertexArrayObject, gTypeOESVertexArrayObject
  , OfflineAudioCompletionEvent(OfflineAudioCompletionEvent), unOfflineAudioCompletionEvent, IsOfflineAudioCompletionEvent, toOfflineAudioCompletionEvent, castToOfflineAudioCompletionEvent, gTypeOfflineAudioCompletionEvent
  , OfflineAudioContext(OfflineAudioContext), unOfflineAudioContext, IsOfflineAudioContext, toOfflineAudioContext, castToOfflineAudioContext, gTypeOfflineAudioContext
  , OscillatorNode(OscillatorNode), unOscillatorNode, IsOscillatorNode, toOscillatorNode, castToOscillatorNode, gTypeOscillatorNode
  , OverflowEvent(OverflowEvent), unOverflowEvent, IsOverflowEvent, toOverflowEvent, castToOverflowEvent, gTypeOverflowEvent
  , PageTransitionEvent(PageTransitionEvent), unPageTransitionEvent, IsPageTransitionEvent, toPageTransitionEvent, castToPageTransitionEvent, gTypePageTransitionEvent
  , PannerNode(PannerNode), unPannerNode, IsPannerNode, toPannerNode, castToPannerNode, gTypePannerNode
  , Performance(Performance), unPerformance, IsPerformance, toPerformance, castToPerformance, gTypePerformance
  , PerformanceEntry(PerformanceEntry), unPerformanceEntry, IsPerformanceEntry, toPerformanceEntry, castToPerformanceEntry, gTypePerformanceEntry
  , PerformanceEntryList(PerformanceEntryList), unPerformanceEntryList, IsPerformanceEntryList, toPerformanceEntryList, castToPerformanceEntryList, gTypePerformanceEntryList
  , PerformanceMark(PerformanceMark), unPerformanceMark, IsPerformanceMark, toPerformanceMark, castToPerformanceMark, gTypePerformanceMark
  , PerformanceMeasure(PerformanceMeasure), unPerformanceMeasure, IsPerformanceMeasure, toPerformanceMeasure, castToPerformanceMeasure, gTypePerformanceMeasure
  , PerformanceNavigation(PerformanceNavigation), unPerformanceNavigation, IsPerformanceNavigation, toPerformanceNavigation, castToPerformanceNavigation, gTypePerformanceNavigation
  , PerformanceResourceTiming(PerformanceResourceTiming), unPerformanceResourceTiming, IsPerformanceResourceTiming, toPerformanceResourceTiming, castToPerformanceResourceTiming, gTypePerformanceResourceTiming
  , PerformanceTiming(PerformanceTiming), unPerformanceTiming, IsPerformanceTiming, toPerformanceTiming, castToPerformanceTiming, gTypePerformanceTiming
  , PeriodicWave(PeriodicWave), unPeriodicWave, IsPeriodicWave, toPeriodicWave, castToPeriodicWave, gTypePeriodicWave
  , PopStateEvent(PopStateEvent), unPopStateEvent, IsPopStateEvent, toPopStateEvent, castToPopStateEvent, gTypePopStateEvent
  , PositionCallback(PositionCallback), unPositionCallback, IsPositionCallback, toPositionCallback, castToPositionCallback, gTypePositionCallback
  , PositionError(PositionError), unPositionError, IsPositionError, toPositionError, castToPositionError, gTypePositionError
  , PositionErrorCallback(PositionErrorCallback), unPositionErrorCallback, IsPositionErrorCallback, toPositionErrorCallback, castToPositionErrorCallback, gTypePositionErrorCallback
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, IsProcessingInstruction, toProcessingInstruction, castToProcessingInstruction, gTypeProcessingInstruction
  , ProgressEvent(ProgressEvent), unProgressEvent, IsProgressEvent, toProgressEvent, castToProgressEvent, gTypeProgressEvent
  , QuickTimePluginReplacement(QuickTimePluginReplacement), unQuickTimePluginReplacement, IsQuickTimePluginReplacement, toQuickTimePluginReplacement, castToQuickTimePluginReplacement, gTypeQuickTimePluginReplacement
  , RGBColor(RGBColor), unRGBColor, IsRGBColor, toRGBColor, castToRGBColor, gTypeRGBColor
  , RTCConfiguration(RTCConfiguration), unRTCConfiguration, IsRTCConfiguration, toRTCConfiguration, castToRTCConfiguration, gTypeRTCConfiguration
  , RTCDTMFSender(RTCDTMFSender), unRTCDTMFSender, IsRTCDTMFSender, toRTCDTMFSender, castToRTCDTMFSender, gTypeRTCDTMFSender
  , RTCDTMFToneChangeEvent(RTCDTMFToneChangeEvent), unRTCDTMFToneChangeEvent, IsRTCDTMFToneChangeEvent, toRTCDTMFToneChangeEvent, castToRTCDTMFToneChangeEvent, gTypeRTCDTMFToneChangeEvent
  , RTCDataChannel(RTCDataChannel), unRTCDataChannel, IsRTCDataChannel, toRTCDataChannel, castToRTCDataChannel, gTypeRTCDataChannel
  , RTCDataChannelEvent(RTCDataChannelEvent), unRTCDataChannelEvent, IsRTCDataChannelEvent, toRTCDataChannelEvent, castToRTCDataChannelEvent, gTypeRTCDataChannelEvent
  , RTCIceCandidate(RTCIceCandidate), unRTCIceCandidate, IsRTCIceCandidate, toRTCIceCandidate, castToRTCIceCandidate, gTypeRTCIceCandidate
  , RTCIceCandidateEvent(RTCIceCandidateEvent), unRTCIceCandidateEvent, IsRTCIceCandidateEvent, toRTCIceCandidateEvent, castToRTCIceCandidateEvent, gTypeRTCIceCandidateEvent
  , RTCIceServer(RTCIceServer), unRTCIceServer, IsRTCIceServer, toRTCIceServer, castToRTCIceServer, gTypeRTCIceServer
  , RTCPeerConnection(RTCPeerConnection), unRTCPeerConnection, IsRTCPeerConnection, toRTCPeerConnection, castToRTCPeerConnection, gTypeRTCPeerConnection
  , RTCPeerConnectionErrorCallback(RTCPeerConnectionErrorCallback), unRTCPeerConnectionErrorCallback, IsRTCPeerConnectionErrorCallback, toRTCPeerConnectionErrorCallback, castToRTCPeerConnectionErrorCallback, gTypeRTCPeerConnectionErrorCallback
  , RTCSessionDescription(RTCSessionDescription), unRTCSessionDescription, IsRTCSessionDescription, toRTCSessionDescription, castToRTCSessionDescription, gTypeRTCSessionDescription
  , RTCSessionDescriptionCallback(RTCSessionDescriptionCallback), unRTCSessionDescriptionCallback, IsRTCSessionDescriptionCallback, toRTCSessionDescriptionCallback, castToRTCSessionDescriptionCallback, gTypeRTCSessionDescriptionCallback
  , RTCStatsCallback(RTCStatsCallback), unRTCStatsCallback, IsRTCStatsCallback, toRTCStatsCallback, castToRTCStatsCallback, gTypeRTCStatsCallback
  , RTCStatsReport(RTCStatsReport), unRTCStatsReport, IsRTCStatsReport, toRTCStatsReport, castToRTCStatsReport, gTypeRTCStatsReport
  , RTCStatsResponse(RTCStatsResponse), unRTCStatsResponse, IsRTCStatsResponse, toRTCStatsResponse, castToRTCStatsResponse, gTypeRTCStatsResponse
  , RadioNodeList(RadioNodeList), unRadioNodeList, IsRadioNodeList, toRadioNodeList, castToRadioNodeList, gTypeRadioNodeList
  , DOMRange(DOMRange), unDOMRange, IsDOMRange, toDOMRange, castToDOMRange, gTypeDOMRange
  , Rect(Rect), unRect, IsRect, toRect, castToRect, gTypeRect
  , RequestAnimationFrameCallback(RequestAnimationFrameCallback), unRequestAnimationFrameCallback, IsRequestAnimationFrameCallback, toRequestAnimationFrameCallback, castToRequestAnimationFrameCallback, gTypeRequestAnimationFrameCallback
  , SQLError(SQLError), unSQLError, IsSQLError, toSQLError, castToSQLError, gTypeSQLError
  , SQLResultSet(SQLResultSet), unSQLResultSet, IsSQLResultSet, toSQLResultSet, castToSQLResultSet, gTypeSQLResultSet
  , SQLResultSetRowList(SQLResultSetRowList), unSQLResultSetRowList, IsSQLResultSetRowList, toSQLResultSetRowList, castToSQLResultSetRowList, gTypeSQLResultSetRowList
  , SQLStatementCallback(SQLStatementCallback), unSQLStatementCallback, IsSQLStatementCallback, toSQLStatementCallback, castToSQLStatementCallback, gTypeSQLStatementCallback
  , SQLStatementErrorCallback(SQLStatementErrorCallback), unSQLStatementErrorCallback, IsSQLStatementErrorCallback, toSQLStatementErrorCallback, castToSQLStatementErrorCallback, gTypeSQLStatementErrorCallback
  , SQLTransaction(SQLTransaction), unSQLTransaction, IsSQLTransaction, toSQLTransaction, castToSQLTransaction, gTypeSQLTransaction
  , SQLTransactionCallback(SQLTransactionCallback), unSQLTransactionCallback, IsSQLTransactionCallback, toSQLTransactionCallback, castToSQLTransactionCallback, gTypeSQLTransactionCallback
  , SQLTransactionErrorCallback(SQLTransactionErrorCallback), unSQLTransactionErrorCallback, IsSQLTransactionErrorCallback, toSQLTransactionErrorCallback, castToSQLTransactionErrorCallback, gTypeSQLTransactionErrorCallback
  , SQLTransactionSync(SQLTransactionSync), unSQLTransactionSync, IsSQLTransactionSync, toSQLTransactionSync, castToSQLTransactionSync, gTypeSQLTransactionSync
  , SQLTransactionSyncCallback(SQLTransactionSyncCallback), unSQLTransactionSyncCallback, IsSQLTransactionSyncCallback, toSQLTransactionSyncCallback, castToSQLTransactionSyncCallback, gTypeSQLTransactionSyncCallback
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
  , ScriptProcessorNode(ScriptProcessorNode), unScriptProcessorNode, IsScriptProcessorNode, toScriptProcessorNode, castToScriptProcessorNode, gTypeScriptProcessorNode
  , ScriptProfile(ScriptProfile), unScriptProfile, IsScriptProfile, toScriptProfile, castToScriptProfile, gTypeScriptProfile
  , ScriptProfileNode(ScriptProfileNode), unScriptProfileNode, IsScriptProfileNode, toScriptProfileNode, castToScriptProfileNode, gTypeScriptProfileNode
  , SecurityPolicyViolationEvent(SecurityPolicyViolationEvent), unSecurityPolicyViolationEvent, IsSecurityPolicyViolationEvent, toSecurityPolicyViolationEvent, castToSecurityPolicyViolationEvent, gTypeSecurityPolicyViolationEvent
  , SharedWorker(SharedWorker), unSharedWorker, IsSharedWorker, toSharedWorker, castToSharedWorker, gTypeSharedWorker
  , SharedWorkerGlobalScope(SharedWorkerGlobalScope), unSharedWorkerGlobalScope, IsSharedWorkerGlobalScope, toSharedWorkerGlobalScope, castToSharedWorkerGlobalScope, gTypeSharedWorkerGlobalScope
  , SourceBuffer(SourceBuffer), unSourceBuffer, IsSourceBuffer, toSourceBuffer, castToSourceBuffer, gTypeSourceBuffer
  , SourceBufferList(SourceBufferList), unSourceBufferList, IsSourceBufferList, toSourceBufferList, castToSourceBufferList, gTypeSourceBufferList
  , SourceInfo(SourceInfo), unSourceInfo, IsSourceInfo, toSourceInfo, castToSourceInfo, gTypeSourceInfo
  , SpeechSynthesis(SpeechSynthesis), unSpeechSynthesis, IsSpeechSynthesis, toSpeechSynthesis, castToSpeechSynthesis, gTypeSpeechSynthesis
  , SpeechSynthesisEvent(SpeechSynthesisEvent), unSpeechSynthesisEvent, IsSpeechSynthesisEvent, toSpeechSynthesisEvent, castToSpeechSynthesisEvent, gTypeSpeechSynthesisEvent
  , SpeechSynthesisUtterance(SpeechSynthesisUtterance), unSpeechSynthesisUtterance, IsSpeechSynthesisUtterance, toSpeechSynthesisUtterance, castToSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance
  , SpeechSynthesisVoice(SpeechSynthesisVoice), unSpeechSynthesisVoice, IsSpeechSynthesisVoice, toSpeechSynthesisVoice, castToSpeechSynthesisVoice, gTypeSpeechSynthesisVoice
  , Storage(Storage), unStorage, IsStorage, toStorage, castToStorage, gTypeStorage
  , StorageErrorCallback(StorageErrorCallback), unStorageErrorCallback, IsStorageErrorCallback, toStorageErrorCallback, castToStorageErrorCallback, gTypeStorageErrorCallback
  , StorageEvent(StorageEvent), unStorageEvent, IsStorageEvent, toStorageEvent, castToStorageEvent, gTypeStorageEvent
  , StorageInfo(StorageInfo), unStorageInfo, IsStorageInfo, toStorageInfo, castToStorageInfo, gTypeStorageInfo
  , StorageQuota(StorageQuota), unStorageQuota, IsStorageQuota, toStorageQuota, castToStorageQuota, gTypeStorageQuota
  , StorageQuotaCallback(StorageQuotaCallback), unStorageQuotaCallback, IsStorageQuotaCallback, toStorageQuotaCallback, castToStorageQuotaCallback, gTypeStorageQuotaCallback
  , StorageUsageCallback(StorageUsageCallback), unStorageUsageCallback, IsStorageUsageCallback, toStorageUsageCallback, castToStorageUsageCallback, gTypeStorageUsageCallback
  , StringCallback(StringCallback), unStringCallback, IsStringCallback, toStringCallback, castToStringCallback, gTypeStringCallback
  , StyleMedia(StyleMedia), unStyleMedia, IsStyleMedia, toStyleMedia, castToStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, IsStyleSheet, toStyleSheet, castToStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, IsStyleSheetList, toStyleSheetList, castToStyleSheetList, gTypeStyleSheetList
  , SubtleCrypto(SubtleCrypto), unSubtleCrypto, IsSubtleCrypto, toSubtleCrypto, castToSubtleCrypto, gTypeSubtleCrypto
  , Text(Text), unText, IsText, toText, castToText, gTypeText
  , TextEvent(TextEvent), unTextEvent, IsTextEvent, toTextEvent, castToTextEvent, gTypeTextEvent
  , TextMetrics(TextMetrics), unTextMetrics, IsTextMetrics, toTextMetrics, castToTextMetrics, gTypeTextMetrics
  , TextTrack(TextTrack), unTextTrack, IsTextTrack, toTextTrack, castToTextTrack, gTypeTextTrack
  , TextTrackCue(TextTrackCue), unTextTrackCue, IsTextTrackCue, toTextTrackCue, castToTextTrackCue, gTypeTextTrackCue
  , TextTrackCueList(TextTrackCueList), unTextTrackCueList, IsTextTrackCueList, toTextTrackCueList, castToTextTrackCueList, gTypeTextTrackCueList
  , TextTrackList(TextTrackList), unTextTrackList, IsTextTrackList, toTextTrackList, castToTextTrackList, gTypeTextTrackList
  , TimeRanges(TimeRanges), unTimeRanges, IsTimeRanges, toTimeRanges, castToTimeRanges, gTypeTimeRanges
  , Touch(Touch), unTouch, IsTouch, toTouch, castToTouch, gTypeTouch
  , TouchEvent(TouchEvent), unTouchEvent, IsTouchEvent, toTouchEvent, castToTouchEvent, gTypeTouchEvent
  , TouchList(TouchList), unTouchList, IsTouchList, toTouchList, castToTouchList, gTypeTouchList
  , TrackEvent(TrackEvent), unTrackEvent, IsTrackEvent, toTrackEvent, castToTrackEvent, gTypeTrackEvent
  , TransitionEvent(TransitionEvent), unTransitionEvent, IsTransitionEvent, toTransitionEvent, castToTransitionEvent, gTypeTransitionEvent
  , TreeWalker(TreeWalker), unTreeWalker, IsTreeWalker, toTreeWalker, castToTreeWalker, gTypeTreeWalker
  , TypeConversions(TypeConversions), unTypeConversions, IsTypeConversions, toTypeConversions, castToTypeConversions, gTypeTypeConversions
  , UIEvent(UIEvent), unUIEvent, IsUIEvent, toUIEvent, castToUIEvent, gTypeUIEvent
  , UIRequestEvent(UIRequestEvent), unUIRequestEvent, IsUIRequestEvent, toUIRequestEvent, castToUIRequestEvent, gTypeUIRequestEvent
  , URLUtils(URLUtils), unURLUtils, IsURLUtils, toURLUtils, castToURLUtils, gTypeURLUtils
  , UserMessageHandler(UserMessageHandler), unUserMessageHandler, IsUserMessageHandler, toUserMessageHandler, castToUserMessageHandler, gTypeUserMessageHandler
  , UserMessageHandlersNamespace(UserMessageHandlersNamespace), unUserMessageHandlersNamespace, IsUserMessageHandlersNamespace, toUserMessageHandlersNamespace, castToUserMessageHandlersNamespace, gTypeUserMessageHandlersNamespace
  , VTTCue(VTTCue), unVTTCue, IsVTTCue, toVTTCue, castToVTTCue, gTypeVTTCue
  , VTTRegion(VTTRegion), unVTTRegion, IsVTTRegion, toVTTRegion, castToVTTRegion, gTypeVTTRegion
  , VTTRegionList(VTTRegionList), unVTTRegionList, IsVTTRegionList, toVTTRegionList, castToVTTRegionList, gTypeVTTRegionList
  , ValidityState(ValidityState), unValidityState, IsValidityState, toValidityState, castToValidityState, gTypeValidityState
  , VideoPlaybackQuality(VideoPlaybackQuality), unVideoPlaybackQuality, IsVideoPlaybackQuality, toVideoPlaybackQuality, castToVideoPlaybackQuality, gTypeVideoPlaybackQuality
  , VideoStreamTrack(VideoStreamTrack), unVideoStreamTrack, IsVideoStreamTrack, toVideoStreamTrack, castToVideoStreamTrack, gTypeVideoStreamTrack
  , VideoTrack(VideoTrack), unVideoTrack, IsVideoTrack, toVideoTrack, castToVideoTrack, gTypeVideoTrack
  , VideoTrackList(VideoTrackList), unVideoTrackList, IsVideoTrackList, toVideoTrackList, castToVideoTrackList, gTypeVideoTrackList
  , VoidCallback(VoidCallback), unVoidCallback, IsVoidCallback, toVoidCallback, castToVoidCallback, gTypeVoidCallback
  , WaveShaperNode(WaveShaperNode), unWaveShaperNode, IsWaveShaperNode, toWaveShaperNode, castToWaveShaperNode, gTypeWaveShaperNode
  , WebGLActiveInfo(WebGLActiveInfo), unWebGLActiveInfo, IsWebGLActiveInfo, toWebGLActiveInfo, castToWebGLActiveInfo, gTypeWebGLActiveInfo
  , WebGLBuffer(WebGLBuffer), unWebGLBuffer, IsWebGLBuffer, toWebGLBuffer, castToWebGLBuffer, gTypeWebGLBuffer
  , WebGLCompressedTextureATC(WebGLCompressedTextureATC), unWebGLCompressedTextureATC, IsWebGLCompressedTextureATC, toWebGLCompressedTextureATC, castToWebGLCompressedTextureATC, gTypeWebGLCompressedTextureATC
  , WebGLCompressedTexturePVRTC(WebGLCompressedTexturePVRTC), unWebGLCompressedTexturePVRTC, IsWebGLCompressedTexturePVRTC, toWebGLCompressedTexturePVRTC, castToWebGLCompressedTexturePVRTC, gTypeWebGLCompressedTexturePVRTC
  , WebGLCompressedTextureS3TC(WebGLCompressedTextureS3TC), unWebGLCompressedTextureS3TC, IsWebGLCompressedTextureS3TC, toWebGLCompressedTextureS3TC, castToWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC
  , WebGLContextAttributes(WebGLContextAttributes), unWebGLContextAttributes, IsWebGLContextAttributes, toWebGLContextAttributes, castToWebGLContextAttributes, gTypeWebGLContextAttributes
  , WebGLContextEvent(WebGLContextEvent), unWebGLContextEvent, IsWebGLContextEvent, toWebGLContextEvent, castToWebGLContextEvent, gTypeWebGLContextEvent
  , WebGLDebugRendererInfo(WebGLDebugRendererInfo), unWebGLDebugRendererInfo, IsWebGLDebugRendererInfo, toWebGLDebugRendererInfo, castToWebGLDebugRendererInfo, gTypeWebGLDebugRendererInfo
  , WebGLDebugShaders(WebGLDebugShaders), unWebGLDebugShaders, IsWebGLDebugShaders, toWebGLDebugShaders, castToWebGLDebugShaders, gTypeWebGLDebugShaders
  , WebGLDepthTexture(WebGLDepthTexture), unWebGLDepthTexture, IsWebGLDepthTexture, toWebGLDepthTexture, castToWebGLDepthTexture, gTypeWebGLDepthTexture
  , WebGLDrawBuffers(WebGLDrawBuffers), unWebGLDrawBuffers, IsWebGLDrawBuffers, toWebGLDrawBuffers, castToWebGLDrawBuffers, gTypeWebGLDrawBuffers
  , WebGLFramebuffer(WebGLFramebuffer), unWebGLFramebuffer, IsWebGLFramebuffer, toWebGLFramebuffer, castToWebGLFramebuffer, gTypeWebGLFramebuffer
  , WebGLLoseContext(WebGLLoseContext), unWebGLLoseContext, IsWebGLLoseContext, toWebGLLoseContext, castToWebGLLoseContext, gTypeWebGLLoseContext
  , WebGLProgram(WebGLProgram), unWebGLProgram, IsWebGLProgram, toWebGLProgram, castToWebGLProgram, gTypeWebGLProgram
  , WebGLRenderbuffer(WebGLRenderbuffer), unWebGLRenderbuffer, IsWebGLRenderbuffer, toWebGLRenderbuffer, castToWebGLRenderbuffer, gTypeWebGLRenderbuffer
  , WebGLRenderingContext(WebGLRenderingContext), unWebGLRenderingContext, IsWebGLRenderingContext, toWebGLRenderingContext, castToWebGLRenderingContext, gTypeWebGLRenderingContext
  , WebGLShader(WebGLShader), unWebGLShader, IsWebGLShader, toWebGLShader, castToWebGLShader, gTypeWebGLShader
  , WebGLShaderPrecisionFormat(WebGLShaderPrecisionFormat), unWebGLShaderPrecisionFormat, IsWebGLShaderPrecisionFormat, toWebGLShaderPrecisionFormat, castToWebGLShaderPrecisionFormat, gTypeWebGLShaderPrecisionFormat
  , WebGLTexture(WebGLTexture), unWebGLTexture, IsWebGLTexture, toWebGLTexture, castToWebGLTexture, gTypeWebGLTexture
  , WebGLUniformLocation(WebGLUniformLocation), unWebGLUniformLocation, IsWebGLUniformLocation, toWebGLUniformLocation, castToWebGLUniformLocation, gTypeWebGLUniformLocation
  , WebGLVertexArrayObjectOES(WebGLVertexArrayObjectOES), unWebGLVertexArrayObjectOES, IsWebGLVertexArrayObjectOES, toWebGLVertexArrayObjectOES, castToWebGLVertexArrayObjectOES, gTypeWebGLVertexArrayObjectOES
  , WebKitAnimationEvent(WebKitAnimationEvent), unWebKitAnimationEvent, IsWebKitAnimationEvent, toWebKitAnimationEvent, castToWebKitAnimationEvent, gTypeWebKitAnimationEvent
  , WebKitCSSFilterValue(WebKitCSSFilterValue), unWebKitCSSFilterValue, IsWebKitCSSFilterValue, toWebKitCSSFilterValue, castToWebKitCSSFilterValue, gTypeWebKitCSSFilterValue
  , WebKitCSSMatrix(WebKitCSSMatrix), unWebKitCSSMatrix, IsWebKitCSSMatrix, toWebKitCSSMatrix, castToWebKitCSSMatrix, gTypeWebKitCSSMatrix
  , WebKitCSSRegionRule(WebKitCSSRegionRule), unWebKitCSSRegionRule, IsWebKitCSSRegionRule, toWebKitCSSRegionRule, castToWebKitCSSRegionRule, gTypeWebKitCSSRegionRule
  , WebKitCSSTransformValue(WebKitCSSTransformValue), unWebKitCSSTransformValue, IsWebKitCSSTransformValue, toWebKitCSSTransformValue, castToWebKitCSSTransformValue, gTypeWebKitCSSTransformValue
  , WebKitCSSViewportRule(WebKitCSSViewportRule), unWebKitCSSViewportRule, IsWebKitCSSViewportRule, toWebKitCSSViewportRule, castToWebKitCSSViewportRule, gTypeWebKitCSSViewportRule
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, IsWebKitNamedFlow, toWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitNamespace(WebKitNamespace), unWebKitNamespace, IsWebKitNamespace, toWebKitNamespace, castToWebKitNamespace, gTypeWebKitNamespace
  , WebKitPlaybackTargetAvailabilityEvent(WebKitPlaybackTargetAvailabilityEvent), unWebKitPlaybackTargetAvailabilityEvent, IsWebKitPlaybackTargetAvailabilityEvent, toWebKitPlaybackTargetAvailabilityEvent, castToWebKitPlaybackTargetAvailabilityEvent, gTypeWebKitPlaybackTargetAvailabilityEvent
  , WebKitPoint(WebKitPoint), unWebKitPoint, IsWebKitPoint, toWebKitPoint, castToWebKitPoint, gTypeWebKitPoint
  , WebKitTransitionEvent(WebKitTransitionEvent), unWebKitTransitionEvent, IsWebKitTransitionEvent, toWebKitTransitionEvent, castToWebKitTransitionEvent, gTypeWebKitTransitionEvent
  , WebSocket(WebSocket), unWebSocket, IsWebSocket, toWebSocket, castToWebSocket, gTypeWebSocket
  , WheelEvent(WheelEvent), unWheelEvent, IsWheelEvent, toWheelEvent, castToWheelEvent, gTypeWheelEvent
  , WindowBase64(WindowBase64), unWindowBase64, IsWindowBase64, toWindowBase64, castToWindowBase64, gTypeWindowBase64
  , WindowTimers(WindowTimers), unWindowTimers, IsWindowTimers, toWindowTimers, castToWindowTimers, gTypeWindowTimers
  , Worker(Worker), unWorker, IsWorker, toWorker, castToWorker, gTypeWorker
  , WorkerGlobalScope(WorkerGlobalScope), unWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope, castToWorkerGlobalScope, gTypeWorkerGlobalScope
  , WorkerLocation(WorkerLocation), unWorkerLocation, IsWorkerLocation, toWorkerLocation, castToWorkerLocation, gTypeWorkerLocation
  , WorkerNavigator(WorkerNavigator), unWorkerNavigator, IsWorkerNavigator, toWorkerNavigator, castToWorkerNavigator, gTypeWorkerNavigator
  , XMLHttpRequest(XMLHttpRequest), unXMLHttpRequest, IsXMLHttpRequest, toXMLHttpRequest, castToXMLHttpRequest, gTypeXMLHttpRequest
  , XMLHttpRequestProgressEvent(XMLHttpRequestProgressEvent), unXMLHttpRequestProgressEvent, IsXMLHttpRequestProgressEvent, toXMLHttpRequestProgressEvent, castToXMLHttpRequestProgressEvent, gTypeXMLHttpRequestProgressEvent
  , XMLHttpRequestUpload(XMLHttpRequestUpload), unXMLHttpRequestUpload, IsXMLHttpRequestUpload, toXMLHttpRequestUpload, castToXMLHttpRequestUpload, gTypeXMLHttpRequestUpload
  , XMLSerializer(XMLSerializer), unXMLSerializer, IsXMLSerializer, toXMLSerializer, castToXMLSerializer, gTypeXMLSerializer
  , XPathEvaluator(XPathEvaluator), unXPathEvaluator, IsXPathEvaluator, toXPathEvaluator, castToXPathEvaluator, gTypeXPathEvaluator
  , XPathExpression(XPathExpression), unXPathExpression, IsXPathExpression, toXPathExpression, castToXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, IsXPathNSResolver, toXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, IsXPathResult, toXPathResult, castToXPathResult, gTypeXPathResult
  , XSLTProcessor(XSLTProcessor), unXSLTProcessor, IsXSLTProcessor, toXSLTProcessor, castToXSLTProcessor, gTypeXSLTProcessor
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
import Data.Int (Int8, Int16, Int32, Int64)
import Data.Word (Word8, Word16, Word32, Word64)

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

type IsDOMString s = (ToDOMString s, FromDOMString s)

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

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Dictionary = Dictionary (JSRef Dictionary) deriving (Eq)

unDictionary (Dictionary o) = o

instance ToJSRef Dictionary where
  toJSRef = return . unDictionary
  {-# INLINE toJSRef #-}

instance FromJSRef Dictionary where
  fromJSRef = return . fmap Dictionary . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDictionary o
toDictionary :: IsDictionary o => o -> Dictionary
toDictionary = unsafeCastGObject . toGObject

instance IsDictionary Dictionary
instance GObjectClass Dictionary where
  toGObject = GObject . castRef . unDictionary
  unsafeCastGObject = Dictionary . castRef . unGObject
-- TODO add more IsDictionary instances
#else
-- TODO work out how we can support Dictionary in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Promise = Promise (JSRef Promise) deriving (Eq)

unPromise (Promise o) = o

instance ToJSRef Promise where
  toJSRef = return . unPromise
  {-# INLINE toJSRef #-}

instance FromJSRef Promise where
  fromJSRef = return . fmap Promise . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPromise o
toPromise :: IsPromise o => o -> Promise
toPromise = unsafeCastGObject . toGObject

instance IsPromise Promise
instance GObjectClass Promise where
  toGObject = GObject . castRef . unPromise
  unsafeCastGObject = Promise . castRef . unGObject
-- TODO add more IsPromise instances
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
  fromJSRef = return . fmap ArrayBuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsArrayBuffer o
toArrayBuffer :: IsArrayBuffer o => o -> ArrayBuffer
toArrayBuffer = unsafeCastGObject . toGObject

instance IsArrayBuffer ArrayBuffer
instance GObjectClass ArrayBuffer where
  toGObject = GObject . castRef . unArrayBuffer
  unsafeCastGObject = ArrayBuffer . castRef . unGObject
-- TODO add more IsArrayBuffer instances
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
  fromJSRef = return . fmap Float32Array . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFloat32Array o
toFloat32Array :: IsFloat32Array o => o -> Float32Array
toFloat32Array = unsafeCastGObject . toGObject

instance IsFloat32Array Float32Array
instance GObjectClass Float32Array where
  toGObject = GObject . castRef . unFloat32Array
  unsafeCastGObject = Float32Array . castRef . unGObject
-- TODO add more IsFloat32Array instances
#else
-- TODO work out how we can support Float32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8Array = Uint8Array (JSRef Uint8Array) deriving (Eq)

unUint8Array (Uint8Array o) = o

instance ToJSRef Uint8Array where
  toJSRef = return . unUint8Array
  {-# INLINE toJSRef #-}

instance FromJSRef Uint8Array where
  fromJSRef = return . fmap Uint8Array . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsUint8Array o
toUint8Array :: IsUint8Array o => o -> Uint8Array
toUint8Array = unsafeCastGObject . toGObject

instance IsUint8Array Uint8Array
instance GObjectClass Uint8Array where
  toGObject = GObject . castRef . unUint8Array
  unsafeCastGObject = Uint8Array . castRef . unGObject
-- TODO add more IsUint8Array instances
#else
-- TODO work out how we can support Uint8Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Int32Array = Int32Array (JSRef Int32Array) deriving (Eq)

unInt32Array (Int32Array o) = o

instance ToJSRef Int32Array where
  toJSRef = return . unInt32Array
  {-# INLINE toJSRef #-}

instance FromJSRef Int32Array where
  fromJSRef = return . fmap Int32Array . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsInt32Array o
toInt32Array :: IsInt32Array o => o -> Int32Array
toInt32Array = unsafeCastGObject . toGObject

instance IsInt32Array Int32Array
instance GObjectClass Int32Array where
  toGObject = GObject . castRef . unInt32Array
  unsafeCastGObject = Int32Array . castRef . unGObject
-- TODO add more IsInt32Array instances
#else
-- TODO work out how we can support Int32Array in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype Uint8ClampedArray = Uint8ClampedArray (JSRef Uint8ClampedArray) deriving (Eq)

unUint8ClampedArray (Uint8ClampedArray o) = o

instance ToJSRef Uint8ClampedArray where
  toJSRef = return . unUint8ClampedArray
  {-# INLINE toJSRef #-}

instance FromJSRef Uint8ClampedArray where
  fromJSRef = return . fmap Uint8ClampedArray . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsUint8ClampedArray o
toUint8ClampedArray :: IsUint8ClampedArray o => o -> Uint8ClampedArray
toUint8ClampedArray = unsafeCastGObject . toGObject

instance IsUint8ClampedArray Uint8ClampedArray
instance GObjectClass Uint8ClampedArray where
  toGObject = GObject . castRef . unUint8ClampedArray
  unsafeCastGObject = Uint8ClampedArray . castRef . unGObject
-- TODO add more IsUint8ClampedArray instances
#else
-- TODO work out how we can support Uint8ClampedArray in native code
#endif

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
newtype ObjectArray = ObjectArray (JSRef ObjectArray) deriving (Eq)

unObjectArray (ObjectArray o) = o

instance ToJSRef ObjectArray where
  toJSRef = return . unObjectArray
  {-# INLINE toJSRef #-}

instance FromJSRef ObjectArray where
  fromJSRef = return . fmap ObjectArray . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsObjectArray o
toObjectArray :: IsObjectArray o => o -> ObjectArray
toObjectArray = unsafeCastGObject . toGObject

instance IsObjectArray ObjectArray
instance GObjectClass ObjectArray where
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
  fromJSRef = return . fmap ArrayBufferView . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsArrayBufferView o
toArrayBufferView :: IsArrayBufferView o => o -> ArrayBufferView
toArrayBufferView = unsafeCastGObject . toGObject

instance IsArrayBufferView ArrayBufferView
instance GObjectClass ArrayBufferView where
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
  fromJSRef = return . fmap Array . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsArray o
toArray :: IsArray o => o -> Array
toArray = unsafeCastGObject . toGObject

instance IsArray Array
instance GObjectClass Array where
  toGObject = GObject . castRef . unArray
  unsafeCastGObject = Array . castRef . unGObject
-- TODO add more IsArray instances
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
  fromJSRef = return . fmap Date . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDate o
toDate :: IsDate o => o -> Date
toDate = unsafeCastGObject . toGObject

instance IsDate Date
instance GObjectClass Date where
  toGObject = GObject . castRef . unDate
  unsafeCastGObject = Date . castRef . unGObject
-- TODO add more IsDate instances
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
  fromJSRef = return . fmap Acceleration . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAcceleration o
toAcceleration :: IsAcceleration o => o -> Acceleration
toAcceleration = unsafeCastGObject . toGObject

instance IsAcceleration Acceleration
instance GObjectClass Acceleration where
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
  fromJSRef = return . fmap RotationRate . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRotationRate o
toRotationRate :: IsRotationRate o => o -> RotationRate
toRotationRate = unsafeCastGObject . toGObject

instance IsRotationRate RotationRate
instance GObjectClass RotationRate where
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
  fromJSRef = return . fmap Algorithm . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAlgorithm o
toAlgorithm :: IsAlgorithm o => o -> Algorithm
toAlgorithm = unsafeCastGObject . toGObject

instance IsAlgorithm Algorithm
instance GObjectClass Algorithm where
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
  fromJSRef = return . fmap CryptoOperationData . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCryptoOperationData o
toCryptoOperationData :: IsCryptoOperationData o => o -> CryptoOperationData
toCryptoOperationData = unsafeCastGObject . toGObject

instance IsCryptoOperationData CryptoOperationData
instance GObjectClass CryptoOperationData where
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
  fromJSRef = return . fmap CanvasStyle . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCanvasStyle o
toCanvasStyle :: IsCanvasStyle o => o -> CanvasStyle
toCanvasStyle = unsafeCastGObject . toGObject

instance IsCanvasStyle CanvasStyle
instance GObjectClass CanvasStyle where
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
  fromJSRef = return . fmap DOMCoreException . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMCoreException o
toDOMCoreException :: IsDOMCoreException o => o -> DOMCoreException
toDOMCoreException = unsafeCastGObject . toGObject

instance IsDOMCoreException DOMCoreException
instance GObjectClass DOMCoreException where
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
  fromJSRef = return . fmap DOMURLConstructor . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMURLConstructor o
toDOMURLConstructor :: IsDOMURLConstructor o => o -> DOMURLConstructor
toDOMURLConstructor = unsafeCastGObject . toGObject

instance IsDOMURLConstructor DOMURLConstructor
instance GObjectClass DOMURLConstructor where
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
type GLsizei = Int32
type GLintptr = Int64
type GLsizeiptr = Int64
type GLubyte = Word8
type GLushort = Word16
type GLuint = Word32
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
  fromJSRef = return . fmap ANGLEInstancedArrays . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsANGLEInstancedArrays o
toANGLEInstancedArrays :: IsANGLEInstancedArrays o => o -> ANGLEInstancedArrays
toANGLEInstancedArrays = unsafeCastGObject . toGObject

instance IsANGLEInstancedArrays ANGLEInstancedArrays
instance GObjectClass ANGLEInstancedArrays where
  toGObject = GObject . castRef . unANGLEInstancedArrays
  unsafeCastGObject = ANGLEInstancedArrays . castRef . unGObject

castToANGLEInstancedArrays :: GObjectClass obj => obj -> ANGLEInstancedArrays
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
  fromJSRef = return . fmap AbstractView . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAbstractView o
toAbstractView :: IsAbstractView o => o -> AbstractView
toAbstractView = unsafeCastGObject . toGObject

instance IsAbstractView AbstractView
instance GObjectClass AbstractView where
  toGObject = GObject . castRef . unAbstractView
  unsafeCastGObject = AbstractView . castRef . unGObject

castToAbstractView :: GObjectClass obj => obj -> AbstractView
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
  fromJSRef = return . fmap AbstractWorker . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAbstractWorker o
toAbstractWorker :: IsAbstractWorker o => o -> AbstractWorker
toAbstractWorker = unsafeCastGObject . toGObject

instance IsAbstractWorker AbstractWorker
instance GObjectClass AbstractWorker where
  toGObject = GObject . castRef . unAbstractWorker
  unsafeCastGObject = AbstractWorker . castRef . unGObject

castToAbstractWorker :: GObjectClass obj => obj -> AbstractWorker
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
  fromJSRef = return . fmap AllAudioCapabilities . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsMediaStreamCapabilities o => IsAllAudioCapabilities o
toAllAudioCapabilities :: IsAllAudioCapabilities o => o -> AllAudioCapabilities
toAllAudioCapabilities = unsafeCastGObject . toGObject

instance IsAllAudioCapabilities AllAudioCapabilities
instance IsMediaStreamCapabilities AllAudioCapabilities
instance GObjectClass AllAudioCapabilities where
  toGObject = GObject . castRef . unAllAudioCapabilities
  unsafeCastGObject = AllAudioCapabilities . castRef . unGObject

castToAllAudioCapabilities :: GObjectClass obj => obj -> AllAudioCapabilities
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
  fromJSRef = return . fmap AllVideoCapabilities . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsMediaStreamCapabilities o => IsAllVideoCapabilities o
toAllVideoCapabilities :: IsAllVideoCapabilities o => o -> AllVideoCapabilities
toAllVideoCapabilities = unsafeCastGObject . toGObject

instance IsAllVideoCapabilities AllVideoCapabilities
instance IsMediaStreamCapabilities AllVideoCapabilities
instance GObjectClass AllVideoCapabilities where
  toGObject = GObject . castRef . unAllVideoCapabilities
  unsafeCastGObject = AllVideoCapabilities . castRef . unGObject

castToAllVideoCapabilities :: GObjectClass obj => obj -> AllVideoCapabilities
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
  fromJSRef = return . fmap AnalyserNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsAnalyserNode o
toAnalyserNode :: IsAnalyserNode o => o -> AnalyserNode
toAnalyserNode = unsafeCastGObject . toGObject

instance IsAnalyserNode AnalyserNode
instance IsAudioNode AnalyserNode
instance IsEventTarget AnalyserNode
instance GObjectClass AnalyserNode where
  toGObject = GObject . castRef . unAnalyserNode
  unsafeCastGObject = AnalyserNode . castRef . unGObject

castToAnalyserNode :: GObjectClass obj => obj -> AnalyserNode
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
  fromJSRef = return . fmap AnimationEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsAnimationEvent o
toAnimationEvent :: IsAnimationEvent o => o -> AnimationEvent
toAnimationEvent = unsafeCastGObject . toGObject

instance IsAnimationEvent AnimationEvent
instance IsEvent AnimationEvent
instance GObjectClass AnimationEvent where
  toGObject = GObject . castRef . unAnimationEvent
  unsafeCastGObject = AnimationEvent . castRef . unGObject

castToAnimationEvent :: GObjectClass obj => obj -> AnimationEvent
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMAttr Mozilla DOMAttr documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.AudioBuffer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer Mozilla AudioBuffer documentation>
newtype AudioBuffer = AudioBuffer (JSRef AudioBuffer) deriving (Eq)

unAudioBuffer (AudioBuffer o) = o

instance ToJSRef AudioBuffer where
  toJSRef = return . unAudioBuffer
  {-# INLINE toJSRef #-}

instance FromJSRef AudioBuffer where
  fromJSRef = return . fmap AudioBuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioBuffer o
toAudioBuffer :: IsAudioBuffer o => o -> AudioBuffer
toAudioBuffer = unsafeCastGObject . toGObject

instance IsAudioBuffer AudioBuffer
instance GObjectClass AudioBuffer where
  toGObject = GObject . castRef . unAudioBuffer
  unsafeCastGObject = AudioBuffer . castRef . unGObject

castToAudioBuffer :: GObjectClass obj => obj -> AudioBuffer
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
  fromJSRef = return . fmap AudioBufferCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioBufferCallback o
toAudioBufferCallback :: IsAudioBufferCallback o => o -> AudioBufferCallback
toAudioBufferCallback = unsafeCastGObject . toGObject

instance IsAudioBufferCallback AudioBufferCallback
instance GObjectClass AudioBufferCallback where
  toGObject = GObject . castRef . unAudioBufferCallback
  unsafeCastGObject = AudioBufferCallback . castRef . unGObject

castToAudioBufferCallback :: GObjectClass obj => obj -> AudioBufferCallback
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
  fromJSRef = return . fmap AudioBufferSourceNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsAudioBufferSourceNode o
toAudioBufferSourceNode :: IsAudioBufferSourceNode o => o -> AudioBufferSourceNode
toAudioBufferSourceNode = unsafeCastGObject . toGObject

instance IsAudioBufferSourceNode AudioBufferSourceNode
instance IsAudioNode AudioBufferSourceNode
instance IsEventTarget AudioBufferSourceNode
instance GObjectClass AudioBufferSourceNode where
  toGObject = GObject . castRef . unAudioBufferSourceNode
  unsafeCastGObject = AudioBufferSourceNode . castRef . unGObject

castToAudioBufferSourceNode :: GObjectClass obj => obj -> AudioBufferSourceNode
castToAudioBufferSourceNode = castTo gTypeAudioBufferSourceNode "AudioBufferSourceNode"

foreign import javascript unsafe "window[\"AudioBufferSourceNode\"]" gTypeAudioBufferSourceNode' :: JSRef GType
gTypeAudioBufferSourceNode = GType gTypeAudioBufferSourceNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioContext".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext Mozilla webkitAudioContext documentation>
newtype AudioContext = AudioContext (JSRef AudioContext) deriving (Eq)

unAudioContext (AudioContext o) = o

instance ToJSRef AudioContext where
  toJSRef = return . unAudioContext
  {-# INLINE toJSRef #-}

instance FromJSRef AudioContext where
  fromJSRef = return . fmap AudioContext . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioContext o
toAudioContext :: IsAudioContext o => o -> AudioContext
toAudioContext = unsafeCastGObject . toGObject

instance IsAudioContext AudioContext
instance GObjectClass AudioContext where
  toGObject = GObject . castRef . unAudioContext
  unsafeCastGObject = AudioContext . castRef . unGObject

castToAudioContext :: GObjectClass obj => obj -> AudioContext
castToAudioContext = castTo gTypeAudioContext "AudioContext"

foreign import javascript unsafe "window[\"webkitAudioContext\"]" gTypeAudioContext' :: JSRef GType
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
  fromJSRef = return . fmap AudioDestinationNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsAudioDestinationNode o
toAudioDestinationNode :: IsAudioDestinationNode o => o -> AudioDestinationNode
toAudioDestinationNode = unsafeCastGObject . toGObject

instance IsAudioDestinationNode AudioDestinationNode
instance IsAudioNode AudioDestinationNode
instance IsEventTarget AudioDestinationNode
instance GObjectClass AudioDestinationNode where
  toGObject = GObject . castRef . unAudioDestinationNode
  unsafeCastGObject = AudioDestinationNode . castRef . unGObject

castToAudioDestinationNode :: GObjectClass obj => obj -> AudioDestinationNode
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
  fromJSRef = return . fmap AudioListener . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioListener o
toAudioListener :: IsAudioListener o => o -> AudioListener
toAudioListener = unsafeCastGObject . toGObject

instance IsAudioListener AudioListener
instance GObjectClass AudioListener where
  toGObject = GObject . castRef . unAudioListener
  unsafeCastGObject = AudioListener . castRef . unGObject

castToAudioListener :: GObjectClass obj => obj -> AudioListener
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
  fromJSRef = return . fmap AudioNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsAudioNode o
toAudioNode :: IsAudioNode o => o -> AudioNode
toAudioNode = unsafeCastGObject . toGObject

instance IsAudioNode AudioNode
instance IsEventTarget AudioNode
instance GObjectClass AudioNode where
  toGObject = GObject . castRef . unAudioNode
  unsafeCastGObject = AudioNode . castRef . unGObject

castToAudioNode :: GObjectClass obj => obj -> AudioNode
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
  fromJSRef = return . fmap AudioParam . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioParam o
toAudioParam :: IsAudioParam o => o -> AudioParam
toAudioParam = unsafeCastGObject . toGObject

instance IsAudioParam AudioParam
instance GObjectClass AudioParam where
  toGObject = GObject . castRef . unAudioParam
  unsafeCastGObject = AudioParam . castRef . unGObject

castToAudioParam :: GObjectClass obj => obj -> AudioParam
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
  fromJSRef = return . fmap AudioProcessingEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsAudioProcessingEvent o
toAudioProcessingEvent :: IsAudioProcessingEvent o => o -> AudioProcessingEvent
toAudioProcessingEvent = unsafeCastGObject . toGObject

instance IsAudioProcessingEvent AudioProcessingEvent
instance IsEvent AudioProcessingEvent
instance GObjectClass AudioProcessingEvent where
  toGObject = GObject . castRef . unAudioProcessingEvent
  unsafeCastGObject = AudioProcessingEvent . castRef . unGObject

castToAudioProcessingEvent :: GObjectClass obj => obj -> AudioProcessingEvent
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioStreamTrack Mozilla AudioStreamTrack documentation>
newtype AudioStreamTrack = AudioStreamTrack (JSRef AudioStreamTrack) deriving (Eq)

unAudioStreamTrack (AudioStreamTrack o) = o

instance ToJSRef AudioStreamTrack where
  toJSRef = return . unAudioStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef AudioStreamTrack where
  fromJSRef = return . fmap AudioStreamTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsMediaStreamTrack o => IsAudioStreamTrack o
toAudioStreamTrack :: IsAudioStreamTrack o => o -> AudioStreamTrack
toAudioStreamTrack = unsafeCastGObject . toGObject

instance IsAudioStreamTrack AudioStreamTrack
instance IsMediaStreamTrack AudioStreamTrack
instance GObjectClass AudioStreamTrack where
  toGObject = GObject . castRef . unAudioStreamTrack
  unsafeCastGObject = AudioStreamTrack . castRef . unGObject

castToAudioStreamTrack :: GObjectClass obj => obj -> AudioStreamTrack
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
  fromJSRef = return . fmap AudioTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioTrack o
toAudioTrack :: IsAudioTrack o => o -> AudioTrack
toAudioTrack = unsafeCastGObject . toGObject

instance IsAudioTrack AudioTrack
instance GObjectClass AudioTrack where
  toGObject = GObject . castRef . unAudioTrack
  unsafeCastGObject = AudioTrack . castRef . unGObject

castToAudioTrack :: GObjectClass obj => obj -> AudioTrack
castToAudioTrack = castTo gTypeAudioTrack "AudioTrack"

foreign import javascript unsafe "window[\"AudioTrack\"]" gTypeAudioTrack' :: JSRef GType
gTypeAudioTrack = GType gTypeAudioTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.AudioTrackList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList Mozilla AudioTrackList documentation>
newtype AudioTrackList = AudioTrackList (JSRef AudioTrackList) deriving (Eq)

unAudioTrackList (AudioTrackList o) = o

instance ToJSRef AudioTrackList where
  toJSRef = return . unAudioTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef AudioTrackList where
  fromJSRef = return . fmap AudioTrackList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsAudioTrackList o
toAudioTrackList :: IsAudioTrackList o => o -> AudioTrackList
toAudioTrackList = unsafeCastGObject . toGObject

instance IsAudioTrackList AudioTrackList
instance GObjectClass AudioTrackList where
  toGObject = GObject . castRef . unAudioTrackList
  unsafeCastGObject = AudioTrackList . castRef . unGObject

castToAudioTrackList :: GObjectClass obj => obj -> AudioTrackList
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
  fromJSRef = return . fmap AutocompleteErrorEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsAutocompleteErrorEvent o
toAutocompleteErrorEvent :: IsAutocompleteErrorEvent o => o -> AutocompleteErrorEvent
toAutocompleteErrorEvent = unsafeCastGObject . toGObject

instance IsAutocompleteErrorEvent AutocompleteErrorEvent
instance IsEvent AutocompleteErrorEvent
instance GObjectClass AutocompleteErrorEvent where
  toGObject = GObject . castRef . unAutocompleteErrorEvent
  unsafeCastGObject = AutocompleteErrorEvent . castRef . unGObject

castToAutocompleteErrorEvent :: GObjectClass obj => obj -> AutocompleteErrorEvent
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
type IsBarProp o = BarPropClass o
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.BatteryManager".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/BatteryManager Mozilla BatteryManager documentation>
newtype BatteryManager = BatteryManager (JSRef BatteryManager) deriving (Eq)

unBatteryManager (BatteryManager o) = o

instance ToJSRef BatteryManager where
  toJSRef = return . unBatteryManager
  {-# INLINE toJSRef #-}

instance FromJSRef BatteryManager where
  fromJSRef = return . fmap BatteryManager . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsBatteryManager o
toBatteryManager :: IsBatteryManager o => o -> BatteryManager
toBatteryManager = unsafeCastGObject . toGObject

instance IsBatteryManager BatteryManager
instance GObjectClass BatteryManager where
  toGObject = GObject . castRef . unBatteryManager
  unsafeCastGObject = BatteryManager . castRef . unGObject

castToBatteryManager :: GObjectClass obj => obj -> BatteryManager
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
  fromJSRef = return . fmap BeforeLoadEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsBeforeLoadEvent o
toBeforeLoadEvent :: IsBeforeLoadEvent o => o -> BeforeLoadEvent
toBeforeLoadEvent = unsafeCastGObject . toGObject

instance IsBeforeLoadEvent BeforeLoadEvent
instance IsEvent BeforeLoadEvent
instance GObjectClass BeforeLoadEvent where
  toGObject = GObject . castRef . unBeforeLoadEvent
  unsafeCastGObject = BeforeLoadEvent . castRef . unGObject

castToBeforeLoadEvent :: GObjectClass obj => obj -> BeforeLoadEvent
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
  fromJSRef = return . fmap BeforeUnloadEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsBeforeUnloadEvent o
toBeforeUnloadEvent :: IsBeforeUnloadEvent o => o -> BeforeUnloadEvent
toBeforeUnloadEvent = unsafeCastGObject . toGObject

instance IsBeforeUnloadEvent BeforeUnloadEvent
instance IsEvent BeforeUnloadEvent
instance GObjectClass BeforeUnloadEvent where
  toGObject = GObject . castRef . unBeforeUnloadEvent
  unsafeCastGObject = BeforeUnloadEvent . castRef . unGObject

castToBeforeUnloadEvent :: GObjectClass obj => obj -> BeforeUnloadEvent
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
  fromJSRef = return . fmap BiquadFilterNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsBiquadFilterNode o
toBiquadFilterNode :: IsBiquadFilterNode o => o -> BiquadFilterNode
toBiquadFilterNode = unsafeCastGObject . toGObject

instance IsBiquadFilterNode BiquadFilterNode
instance IsAudioNode BiquadFilterNode
instance IsEventTarget BiquadFilterNode
instance GObjectClass BiquadFilterNode where
  toGObject = GObject . castRef . unBiquadFilterNode
  unsafeCastGObject = BiquadFilterNode . castRef . unGObject

castToBiquadFilterNode :: GObjectClass obj => obj -> BiquadFilterNode
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
-- | Functions for this inteface are in "GHCJS.DOM.CDATASection".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Text"
--     * "GHCJS.DOM.CharacterData"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CDATASection Mozilla CDATASection documentation>
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
  fromJSRef = return . fmap CSSCharsetRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSCharsetRule o
toCSSCharsetRule :: IsCSSCharsetRule o => o -> CSSCharsetRule
toCSSCharsetRule = unsafeCastGObject . toGObject

instance IsCSSCharsetRule CSSCharsetRule
instance IsCSSRule CSSCharsetRule
instance GObjectClass CSSCharsetRule where
  toGObject = GObject . castRef . unCSSCharsetRule
  unsafeCastGObject = CSSCharsetRule . castRef . unGObject

castToCSSCharsetRule :: GObjectClass obj => obj -> CSSCharsetRule
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
  fromJSRef = return . fmap CSSFontFaceLoadEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsCSSFontFaceLoadEvent o
toCSSFontFaceLoadEvent :: IsCSSFontFaceLoadEvent o => o -> CSSFontFaceLoadEvent
toCSSFontFaceLoadEvent = unsafeCastGObject . toGObject

instance IsCSSFontFaceLoadEvent CSSFontFaceLoadEvent
instance IsEvent CSSFontFaceLoadEvent
instance GObjectClass CSSFontFaceLoadEvent where
  toGObject = GObject . castRef . unCSSFontFaceLoadEvent
  unsafeCastGObject = CSSFontFaceLoadEvent . castRef . unGObject

castToCSSFontFaceLoadEvent :: GObjectClass obj => obj -> CSSFontFaceLoadEvent
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
  fromJSRef = return . fmap CSSFontFaceRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSFontFaceRule o
toCSSFontFaceRule :: IsCSSFontFaceRule o => o -> CSSFontFaceRule
toCSSFontFaceRule = unsafeCastGObject . toGObject

instance IsCSSFontFaceRule CSSFontFaceRule
instance IsCSSRule CSSFontFaceRule
instance GObjectClass CSSFontFaceRule where
  toGObject = GObject . castRef . unCSSFontFaceRule
  unsafeCastGObject = CSSFontFaceRule . castRef . unGObject

castToCSSFontFaceRule :: GObjectClass obj => obj -> CSSFontFaceRule
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
  fromJSRef = return . fmap CSSImportRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSImportRule o
toCSSImportRule :: IsCSSImportRule o => o -> CSSImportRule
toCSSImportRule = unsafeCastGObject . toGObject

instance IsCSSImportRule CSSImportRule
instance IsCSSRule CSSImportRule
instance GObjectClass CSSImportRule where
  toGObject = GObject . castRef . unCSSImportRule
  unsafeCastGObject = CSSImportRule . castRef . unGObject

castToCSSImportRule :: GObjectClass obj => obj -> CSSImportRule
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
  fromJSRef = return . fmap CSSKeyframeRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSKeyframeRule o
toCSSKeyframeRule :: IsCSSKeyframeRule o => o -> CSSKeyframeRule
toCSSKeyframeRule = unsafeCastGObject . toGObject

instance IsCSSKeyframeRule CSSKeyframeRule
instance IsCSSRule CSSKeyframeRule
instance GObjectClass CSSKeyframeRule where
  toGObject = GObject . castRef . unCSSKeyframeRule
  unsafeCastGObject = CSSKeyframeRule . castRef . unGObject

castToCSSKeyframeRule :: GObjectClass obj => obj -> CSSKeyframeRule
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
  fromJSRef = return . fmap CSSKeyframesRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSKeyframesRule o
toCSSKeyframesRule :: IsCSSKeyframesRule o => o -> CSSKeyframesRule
toCSSKeyframesRule = unsafeCastGObject . toGObject

instance IsCSSKeyframesRule CSSKeyframesRule
instance IsCSSRule CSSKeyframesRule
instance GObjectClass CSSKeyframesRule where
  toGObject = GObject . castRef . unCSSKeyframesRule
  unsafeCastGObject = CSSKeyframesRule . castRef . unGObject

castToCSSKeyframesRule :: GObjectClass obj => obj -> CSSKeyframesRule
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
  fromJSRef = return . fmap CSSMediaRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSMediaRule o
toCSSMediaRule :: IsCSSMediaRule o => o -> CSSMediaRule
toCSSMediaRule = unsafeCastGObject . toGObject

instance IsCSSMediaRule CSSMediaRule
instance IsCSSRule CSSMediaRule
instance GObjectClass CSSMediaRule where
  toGObject = GObject . castRef . unCSSMediaRule
  unsafeCastGObject = CSSMediaRule . castRef . unGObject

castToCSSMediaRule :: GObjectClass obj => obj -> CSSMediaRule
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
  fromJSRef = return . fmap CSSPageRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSPageRule o
toCSSPageRule :: IsCSSPageRule o => o -> CSSPageRule
toCSSPageRule = unsafeCastGObject . toGObject

instance IsCSSPageRule CSSPageRule
instance IsCSSRule CSSPageRule
instance GObjectClass CSSPageRule where
  toGObject = GObject . castRef . unCSSPageRule
  unsafeCastGObject = CSSPageRule . castRef . unGObject

castToCSSPageRule :: GObjectClass obj => obj -> CSSPageRule
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
-- | Functions for this inteface are in "GHCJS.DOM.CSSRule".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRule Mozilla CSSRule documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.CSSRuleList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSRuleList Mozilla CSSRuleList documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.CSSStyleDeclaration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration Mozilla CSSStyleDeclaration documentation>
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
  fromJSRef = return . fmap CSSStyleRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSStyleRule o
toCSSStyleRule :: IsCSSStyleRule o => o -> CSSStyleRule
toCSSStyleRule = unsafeCastGObject . toGObject

instance IsCSSStyleRule CSSStyleRule
instance IsCSSRule CSSStyleRule
instance GObjectClass CSSStyleRule where
  toGObject = GObject . castRef . unCSSStyleRule
  unsafeCastGObject = CSSStyleRule . castRef . unGObject

castToCSSStyleRule :: GObjectClass obj => obj -> CSSStyleRule
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
  fromJSRef = return . fmap CSSSupportsRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSSupportsRule o
toCSSSupportsRule :: IsCSSSupportsRule o => o -> CSSSupportsRule
toCSSSupportsRule = unsafeCastGObject . toGObject

instance IsCSSSupportsRule CSSSupportsRule
instance IsCSSRule CSSSupportsRule
instance GObjectClass CSSSupportsRule where
  toGObject = GObject . castRef . unCSSSupportsRule
  unsafeCastGObject = CSSSupportsRule . castRef . unGObject

castToCSSSupportsRule :: GObjectClass obj => obj -> CSSSupportsRule
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
  fromJSRef = return . fmap CSSUnknownRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsCSSUnknownRule o
toCSSUnknownRule :: IsCSSUnknownRule o => o -> CSSUnknownRule
toCSSUnknownRule = unsafeCastGObject . toGObject

instance IsCSSUnknownRule CSSUnknownRule
instance IsCSSRule CSSUnknownRule
instance GObjectClass CSSUnknownRule where
  toGObject = GObject . castRef . unCSSUnknownRule
  unsafeCastGObject = CSSUnknownRule . castRef . unGObject

castToCSSUnknownRule :: GObjectClass obj => obj -> CSSUnknownRule
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
  fromJSRef = return . fmap CSSValueList . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSValue o => IsCSSValueList o
toCSSValueList :: IsCSSValueList o => o -> CSSValueList
toCSSValueList = unsafeCastGObject . toGObject

instance IsCSSValueList CSSValueList
instance IsCSSValue CSSValueList
instance GObjectClass CSSValueList where
  toGObject = GObject . castRef . unCSSValueList
  unsafeCastGObject = CSSValueList . castRef . unGObject

castToCSSValueList :: GObjectClass obj => obj -> CSSValueList
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
  fromJSRef = return . fmap CanvasGradient . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCanvasGradient o
toCanvasGradient :: IsCanvasGradient o => o -> CanvasGradient
toCanvasGradient = unsafeCastGObject . toGObject

instance IsCanvasGradient CanvasGradient
instance GObjectClass CanvasGradient where
  toGObject = GObject . castRef . unCanvasGradient
  unsafeCastGObject = CanvasGradient . castRef . unGObject

castToCanvasGradient :: GObjectClass obj => obj -> CanvasGradient
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
  fromJSRef = return . fmap CanvasPattern . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCanvasPattern o
toCanvasPattern :: IsCanvasPattern o => o -> CanvasPattern
toCanvasPattern = unsafeCastGObject . toGObject

instance IsCanvasPattern CanvasPattern
instance GObjectClass CanvasPattern where
  toGObject = GObject . castRef . unCanvasPattern
  unsafeCastGObject = CanvasPattern . castRef . unGObject

castToCanvasPattern :: GObjectClass obj => obj -> CanvasPattern
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
  fromJSRef = return . fmap CanvasProxy . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCanvasProxy o
toCanvasProxy :: IsCanvasProxy o => o -> CanvasProxy
toCanvasProxy = unsafeCastGObject . toGObject

instance IsCanvasProxy CanvasProxy
instance GObjectClass CanvasProxy where
  toGObject = GObject . castRef . unCanvasProxy
  unsafeCastGObject = CanvasProxy . castRef . unGObject

castToCanvasProxy :: GObjectClass obj => obj -> CanvasProxy
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
  fromJSRef = return . fmap CanvasRenderingContext . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCanvasRenderingContext o
toCanvasRenderingContext :: IsCanvasRenderingContext o => o -> CanvasRenderingContext
toCanvasRenderingContext = unsafeCastGObject . toGObject

instance IsCanvasRenderingContext CanvasRenderingContext
instance GObjectClass CanvasRenderingContext where
  toGObject = GObject . castRef . unCanvasRenderingContext
  unsafeCastGObject = CanvasRenderingContext . castRef . unGObject

castToCanvasRenderingContext :: GObjectClass obj => obj -> CanvasRenderingContext
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
  fromJSRef = return . fmap CanvasRenderingContext2D . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCanvasRenderingContext o => IsCanvasRenderingContext2D o
toCanvasRenderingContext2D :: IsCanvasRenderingContext2D o => o -> CanvasRenderingContext2D
toCanvasRenderingContext2D = unsafeCastGObject . toGObject

instance IsCanvasRenderingContext2D CanvasRenderingContext2D
instance IsCanvasRenderingContext CanvasRenderingContext2D
instance GObjectClass CanvasRenderingContext2D where
  toGObject = GObject . castRef . unCanvasRenderingContext2D
  unsafeCastGObject = CanvasRenderingContext2D . castRef . unGObject

castToCanvasRenderingContext2D :: GObjectClass obj => obj -> CanvasRenderingContext2D
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
  fromJSRef = return . fmap CapabilityRange . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCapabilityRange o
toCapabilityRange :: IsCapabilityRange o => o -> CapabilityRange
toCapabilityRange = unsafeCastGObject . toGObject

instance IsCapabilityRange CapabilityRange
instance GObjectClass CapabilityRange where
  toGObject = GObject . castRef . unCapabilityRange
  unsafeCastGObject = CapabilityRange . castRef . unGObject

castToCapabilityRange :: GObjectClass obj => obj -> CapabilityRange
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
  fromJSRef = return . fmap ChannelMergerNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsChannelMergerNode o
toChannelMergerNode :: IsChannelMergerNode o => o -> ChannelMergerNode
toChannelMergerNode = unsafeCastGObject . toGObject

instance IsChannelMergerNode ChannelMergerNode
instance IsAudioNode ChannelMergerNode
instance IsEventTarget ChannelMergerNode
instance GObjectClass ChannelMergerNode where
  toGObject = GObject . castRef . unChannelMergerNode
  unsafeCastGObject = ChannelMergerNode . castRef . unGObject

castToChannelMergerNode :: GObjectClass obj => obj -> ChannelMergerNode
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
  fromJSRef = return . fmap ChannelSplitterNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsChannelSplitterNode o
toChannelSplitterNode :: IsChannelSplitterNode o => o -> ChannelSplitterNode
toChannelSplitterNode = unsafeCastGObject . toGObject

instance IsChannelSplitterNode ChannelSplitterNode
instance IsAudioNode ChannelSplitterNode
instance IsEventTarget ChannelSplitterNode
instance GObjectClass ChannelSplitterNode where
  toGObject = GObject . castRef . unChannelSplitterNode
  unsafeCastGObject = ChannelSplitterNode . castRef . unGObject

castToChannelSplitterNode :: GObjectClass obj => obj -> ChannelSplitterNode
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData Mozilla CharacterData documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.ChildNode".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode Mozilla ChildNode documentation>
newtype ChildNode = ChildNode (JSRef ChildNode) deriving (Eq)

unChildNode (ChildNode o) = o

instance ToJSRef ChildNode where
  toJSRef = return . unChildNode
  {-# INLINE toJSRef #-}

instance FromJSRef ChildNode where
  fromJSRef = return . fmap ChildNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsChildNode o
toChildNode :: IsChildNode o => o -> ChildNode
toChildNode = unsafeCastGObject . toGObject

instance IsChildNode ChildNode
instance GObjectClass ChildNode where
  toGObject = GObject . castRef . unChildNode
  unsafeCastGObject = ChildNode . castRef . unGObject

castToChildNode :: GObjectClass obj => obj -> ChildNode
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
  fromJSRef = return . fmap ClientRect . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsClientRect o
toClientRect :: IsClientRect o => o -> ClientRect
toClientRect = unsafeCastGObject . toGObject

instance IsClientRect ClientRect
instance GObjectClass ClientRect where
  toGObject = GObject . castRef . unClientRect
  unsafeCastGObject = ClientRect . castRef . unGObject

castToClientRect :: GObjectClass obj => obj -> ClientRect
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
  fromJSRef = return . fmap ClientRectList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsClientRectList o
toClientRectList :: IsClientRectList o => o -> ClientRectList
toClientRectList = unsafeCastGObject . toGObject

instance IsClientRectList ClientRectList
instance GObjectClass ClientRectList where
  toGObject = GObject . castRef . unClientRectList
  unsafeCastGObject = ClientRectList . castRef . unGObject

castToClientRectList :: GObjectClass obj => obj -> ClientRectList
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
  fromJSRef = return . fmap CloseEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsCloseEvent o
toCloseEvent :: IsCloseEvent o => o -> CloseEvent
toCloseEvent = unsafeCastGObject . toGObject

instance IsCloseEvent CloseEvent
instance IsEvent CloseEvent
instance GObjectClass CloseEvent where
  toGObject = GObject . castRef . unCloseEvent
  unsafeCastGObject = CloseEvent . castRef . unGObject

castToCloseEvent :: GObjectClass obj => obj -> CloseEvent
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
  fromJSRef = return . fmap CommandLineAPIHost . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCommandLineAPIHost o
toCommandLineAPIHost :: IsCommandLineAPIHost o => o -> CommandLineAPIHost
toCommandLineAPIHost = unsafeCastGObject . toGObject

instance IsCommandLineAPIHost CommandLineAPIHost
instance GObjectClass CommandLineAPIHost where
  toGObject = GObject . castRef . unCommandLineAPIHost
  unsafeCastGObject = CommandLineAPIHost . castRef . unGObject

castToCommandLineAPIHost :: GObjectClass obj => obj -> CommandLineAPIHost
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Comment Mozilla Comment documentation>
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
  fromJSRef = return . fmap CompositionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsCompositionEvent o
toCompositionEvent :: IsCompositionEvent o => o -> CompositionEvent
toCompositionEvent = unsafeCastGObject . toGObject

instance IsCompositionEvent CompositionEvent
instance IsUIEvent CompositionEvent
instance IsEvent CompositionEvent
instance GObjectClass CompositionEvent where
  toGObject = GObject . castRef . unCompositionEvent
  unsafeCastGObject = CompositionEvent . castRef . unGObject

castToCompositionEvent :: GObjectClass obj => obj -> CompositionEvent
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
  fromJSRef = return . fmap ConvolverNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsConvolverNode o
toConvolverNode :: IsConvolverNode o => o -> ConvolverNode
toConvolverNode = unsafeCastGObject . toGObject

instance IsConvolverNode ConvolverNode
instance IsAudioNode ConvolverNode
instance IsEventTarget ConvolverNode
instance GObjectClass ConvolverNode where
  toGObject = GObject . castRef . unConvolverNode
  unsafeCastGObject = ConvolverNode . castRef . unGObject

castToConvolverNode :: GObjectClass obj => obj -> ConvolverNode
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
  fromJSRef = return . fmap Coordinates . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCoordinates o
toCoordinates :: IsCoordinates o => o -> Coordinates
toCoordinates = unsafeCastGObject . toGObject

instance IsCoordinates Coordinates
instance GObjectClass Coordinates where
  toGObject = GObject . castRef . unCoordinates
  unsafeCastGObject = Coordinates . castRef . unGObject

castToCoordinates :: GObjectClass obj => obj -> Coordinates
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
-- | Functions for this inteface are in "GHCJS.DOM.Crypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Crypto Mozilla Crypto documentation>
newtype Crypto = Crypto (JSRef Crypto) deriving (Eq)

unCrypto (Crypto o) = o

instance ToJSRef Crypto where
  toJSRef = return . unCrypto
  {-# INLINE toJSRef #-}

instance FromJSRef Crypto where
  fromJSRef = return . fmap Crypto . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCrypto o
toCrypto :: IsCrypto o => o -> Crypto
toCrypto = unsafeCastGObject . toGObject

instance IsCrypto Crypto
instance GObjectClass Crypto where
  toGObject = GObject . castRef . unCrypto
  unsafeCastGObject = Crypto . castRef . unGObject

castToCrypto :: GObjectClass obj => obj -> Crypto
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
  fromJSRef = return . fmap CryptoKey . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCryptoKey o
toCryptoKey :: IsCryptoKey o => o -> CryptoKey
toCryptoKey = unsafeCastGObject . toGObject

instance IsCryptoKey CryptoKey
instance GObjectClass CryptoKey where
  toGObject = GObject . castRef . unCryptoKey
  unsafeCastGObject = CryptoKey . castRef . unGObject

castToCryptoKey :: GObjectClass obj => obj -> CryptoKey
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
  fromJSRef = return . fmap CryptoKeyPair . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsCryptoKeyPair o
toCryptoKeyPair :: IsCryptoKeyPair o => o -> CryptoKeyPair
toCryptoKeyPair = unsafeCastGObject . toGObject

instance IsCryptoKeyPair CryptoKeyPair
instance GObjectClass CryptoKeyPair where
  toGObject = GObject . castRef . unCryptoKeyPair
  unsafeCastGObject = CryptoKeyPair . castRef . unGObject

castToCryptoKeyPair :: GObjectClass obj => obj -> CryptoKeyPair
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
  fromJSRef = return . fmap CustomEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsCustomEvent o
toCustomEvent :: IsCustomEvent o => o -> CustomEvent
toCustomEvent = unsafeCastGObject . toGObject

instance IsCustomEvent CustomEvent
instance IsEvent CustomEvent
instance GObjectClass CustomEvent where
  toGObject = GObject . castRef . unCustomEvent
  unsafeCastGObject = CustomEvent . castRef . unGObject

castToCustomEvent :: GObjectClass obj => obj -> CustomEvent
castToCustomEvent = castTo gTypeCustomEvent "CustomEvent"

foreign import javascript unsafe "window[\"CustomEvent\"]" gTypeCustomEvent' :: JSRef GType
gTypeCustomEvent = GType gTypeCustomEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMApplicationCache".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMApplicationCache Mozilla DOMApplicationCache documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.DOMError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMError Mozilla DOMError documentation>
newtype DOMError = DOMError (JSRef DOMError) deriving (Eq)

unDOMError (DOMError o) = o

instance ToJSRef DOMError where
  toJSRef = return . unDOMError
  {-# INLINE toJSRef #-}

instance FromJSRef DOMError where
  fromJSRef = return . fmap DOMError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMError o
toDOMError :: IsDOMError o => o -> DOMError
toDOMError = unsafeCastGObject . toGObject

instance IsDOMError DOMError
instance GObjectClass DOMError where
  toGObject = GObject . castRef . unDOMError
  unsafeCastGObject = DOMError . castRef . unGObject

castToDOMError :: GObjectClass obj => obj -> DOMError
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
  fromJSRef = return . fmap DOMFormData . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMFormData o
toDOMFormData :: IsDOMFormData o => o -> DOMFormData
toDOMFormData = unsafeCastGObject . toGObject

instance IsDOMFormData DOMFormData
instance GObjectClass DOMFormData where
  toGObject = GObject . castRef . unDOMFormData
  unsafeCastGObject = DOMFormData . castRef . unGObject

castToDOMFormData :: GObjectClass obj => obj -> DOMFormData
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
-- | Functions for this inteface are in "GHCJS.DOM.DOMMimeType".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MimeType Mozilla MimeType documentation>
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
  fromJSRef = return . fmap DOMParser . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMParser o
toDOMParser :: IsDOMParser o => o -> DOMParser
toDOMParser = unsafeCastGObject . toGObject

instance IsDOMParser DOMParser
instance GObjectClass DOMParser where
  toGObject = GObject . castRef . unDOMParser
  unsafeCastGObject = DOMParser . castRef . unGObject

castToDOMParser :: GObjectClass obj => obj -> DOMParser
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
  fromJSRef = return . fmap DOMPath . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMPath o
toDOMPath :: IsDOMPath o => o -> DOMPath
toDOMPath = unsafeCastGObject . toGObject

instance IsDOMPath DOMPath
instance GObjectClass DOMPath where
  toGObject = GObject . castRef . unDOMPath
  unsafeCastGObject = DOMPath . castRef . unGObject

castToDOMPath :: GObjectClass obj => obj -> DOMPath
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
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList Mozilla DOMStringList documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.DOMStringMap".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringMap Mozilla DOMStringMap documentation>
newtype DOMStringMap = DOMStringMap (JSRef DOMStringMap) deriving (Eq)

unDOMStringMap (DOMStringMap o) = o

instance ToJSRef DOMStringMap where
  toJSRef = return . unDOMStringMap
  {-# INLINE toJSRef #-}

instance FromJSRef DOMStringMap where
  fromJSRef = return . fmap DOMStringMap . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMStringMap o
toDOMStringMap :: IsDOMStringMap o => o -> DOMStringMap
toDOMStringMap = unsafeCastGObject . toGObject

instance IsDOMStringMap DOMStringMap
instance GObjectClass DOMStringMap where
  toGObject = GObject . castRef . unDOMStringMap
  unsafeCastGObject = DOMStringMap . castRef . unGObject

castToDOMStringMap :: GObjectClass obj => obj -> DOMStringMap
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
-- | Functions for this inteface are in "GHCJS.DOM.DOMURL".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation>
newtype DOMURL = DOMURL (JSRef DOMURL) deriving (Eq)

unDOMURL (DOMURL o) = o

instance ToJSRef DOMURL where
  toJSRef = return . unDOMURL
  {-# INLINE toJSRef #-}

instance FromJSRef DOMURL where
  fromJSRef = return . fmap DOMURL . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDOMURL o
toDOMURL :: IsDOMURL o => o -> DOMURL
toDOMURL = unsafeCastGObject . toGObject

instance IsDOMURL DOMURL
instance GObjectClass DOMURL where
  toGObject = GObject . castRef . unDOMURL
  unsafeCastGObject = DOMURL . castRef . unGObject

castToDOMURL :: GObjectClass obj => obj -> DOMURL
castToDOMURL = castTo gTypeDOMURL "DOMURL"

foreign import javascript unsafe "window[\"URL\"]" gTypeDOMURL' :: JSRef GType
gTypeDOMURL = GType gTypeDOMURL'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DOMWindow".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Window Mozilla Window documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation>
newtype DataCue = DataCue (JSRef DataCue) deriving (Eq)

unDataCue (DataCue o) = o

instance ToJSRef DataCue where
  toJSRef = return . unDataCue
  {-# INLINE toJSRef #-}

instance FromJSRef DataCue where
  fromJSRef = return . fmap DataCue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsTextTrackCue o => IsDataCue o
toDataCue :: IsDataCue o => o -> DataCue
toDataCue = unsafeCastGObject . toGObject

instance IsDataCue DataCue
instance IsTextTrackCue DataCue
instance GObjectClass DataCue where
  toGObject = GObject . castRef . unDataCue
  unsafeCastGObject = DataCue . castRef . unGObject

castToDataCue :: GObjectClass obj => obj -> DataCue
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
  fromJSRef = return . fmap DataTransfer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDataTransfer o
toDataTransfer :: IsDataTransfer o => o -> DataTransfer
toDataTransfer = unsafeCastGObject . toGObject

instance IsDataTransfer DataTransfer
instance GObjectClass DataTransfer where
  toGObject = GObject . castRef . unDataTransfer
  unsafeCastGObject = DataTransfer . castRef . unGObject

castToDataTransfer :: GObjectClass obj => obj -> DataTransfer
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
  fromJSRef = return . fmap DataTransferItem . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDataTransferItem o
toDataTransferItem :: IsDataTransferItem o => o -> DataTransferItem
toDataTransferItem = unsafeCastGObject . toGObject

instance IsDataTransferItem DataTransferItem
instance GObjectClass DataTransferItem where
  toGObject = GObject . castRef . unDataTransferItem
  unsafeCastGObject = DataTransferItem . castRef . unGObject

castToDataTransferItem :: GObjectClass obj => obj -> DataTransferItem
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
  fromJSRef = return . fmap DataTransferItemList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDataTransferItemList o
toDataTransferItemList :: IsDataTransferItemList o => o -> DataTransferItemList
toDataTransferItemList = unsafeCastGObject . toGObject

instance IsDataTransferItemList DataTransferItemList
instance GObjectClass DataTransferItemList where
  toGObject = GObject . castRef . unDataTransferItemList
  unsafeCastGObject = DataTransferItemList . castRef . unGObject

castToDataTransferItemList :: GObjectClass obj => obj -> DataTransferItemList
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
  fromJSRef = return . fmap Database . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDatabase o
toDatabase :: IsDatabase o => o -> Database
toDatabase = unsafeCastGObject . toGObject

instance IsDatabase Database
instance GObjectClass Database where
  toGObject = GObject . castRef . unDatabase
  unsafeCastGObject = Database . castRef . unGObject

castToDatabase :: GObjectClass obj => obj -> Database
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
  fromJSRef = return . fmap DatabaseCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDatabaseCallback o
toDatabaseCallback :: IsDatabaseCallback o => o -> DatabaseCallback
toDatabaseCallback = unsafeCastGObject . toGObject

instance IsDatabaseCallback DatabaseCallback
instance GObjectClass DatabaseCallback where
  toGObject = GObject . castRef . unDatabaseCallback
  unsafeCastGObject = DatabaseCallback . castRef . unGObject

castToDatabaseCallback :: GObjectClass obj => obj -> DatabaseCallback
castToDatabaseCallback = castTo gTypeDatabaseCallback "DatabaseCallback"

foreign import javascript unsafe "window[\"DatabaseCallback\"]" gTypeDatabaseCallback' :: JSRef GType
gTypeDatabaseCallback = GType gTypeDatabaseCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DatabaseSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseSync Mozilla DatabaseSync documentation>
newtype DatabaseSync = DatabaseSync (JSRef DatabaseSync) deriving (Eq)

unDatabaseSync (DatabaseSync o) = o

instance ToJSRef DatabaseSync where
  toJSRef = return . unDatabaseSync
  {-# INLINE toJSRef #-}

instance FromJSRef DatabaseSync where
  fromJSRef = return . fmap DatabaseSync . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsDatabaseSync o
toDatabaseSync :: IsDatabaseSync o => o -> DatabaseSync
toDatabaseSync = unsafeCastGObject . toGObject

instance IsDatabaseSync DatabaseSync
instance GObjectClass DatabaseSync where
  toGObject = GObject . castRef . unDatabaseSync
  unsafeCastGObject = DatabaseSync . castRef . unGObject

castToDatabaseSync :: GObjectClass obj => obj -> DatabaseSync
castToDatabaseSync = castTo gTypeDatabaseSync "DatabaseSync"

foreign import javascript unsafe "window[\"DatabaseSync\"]" gTypeDatabaseSync' :: JSRef GType
gTypeDatabaseSync = GType gTypeDatabaseSync'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.DedicatedWorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WorkerGlobalScope"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope Mozilla DedicatedWorkerGlobalScope documentation>
newtype DedicatedWorkerGlobalScope = DedicatedWorkerGlobalScope (JSRef DedicatedWorkerGlobalScope) deriving (Eq)

unDedicatedWorkerGlobalScope (DedicatedWorkerGlobalScope o) = o

instance ToJSRef DedicatedWorkerGlobalScope where
  toJSRef = return . unDedicatedWorkerGlobalScope
  {-# INLINE toJSRef #-}

instance FromJSRef DedicatedWorkerGlobalScope where
  fromJSRef = return . fmap DedicatedWorkerGlobalScope . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsWorkerGlobalScope o => IsDedicatedWorkerGlobalScope o
toDedicatedWorkerGlobalScope :: IsDedicatedWorkerGlobalScope o => o -> DedicatedWorkerGlobalScope
toDedicatedWorkerGlobalScope = unsafeCastGObject . toGObject

instance IsDedicatedWorkerGlobalScope DedicatedWorkerGlobalScope
instance IsWorkerGlobalScope DedicatedWorkerGlobalScope
instance GObjectClass DedicatedWorkerGlobalScope where
  toGObject = GObject . castRef . unDedicatedWorkerGlobalScope
  unsafeCastGObject = DedicatedWorkerGlobalScope . castRef . unGObject

castToDedicatedWorkerGlobalScope :: GObjectClass obj => obj -> DedicatedWorkerGlobalScope
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
  fromJSRef = return . fmap DelayNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsDelayNode o
toDelayNode :: IsDelayNode o => o -> DelayNode
toDelayNode = unsafeCastGObject . toGObject

instance IsDelayNode DelayNode
instance IsAudioNode DelayNode
instance IsEventTarget DelayNode
instance GObjectClass DelayNode where
  toGObject = GObject . castRef . unDelayNode
  unsafeCastGObject = DelayNode . castRef . unGObject

castToDelayNode :: GObjectClass obj => obj -> DelayNode
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
  fromJSRef = return . fmap DeviceMotionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsDeviceMotionEvent o
toDeviceMotionEvent :: IsDeviceMotionEvent o => o -> DeviceMotionEvent
toDeviceMotionEvent = unsafeCastGObject . toGObject

instance IsDeviceMotionEvent DeviceMotionEvent
instance IsEvent DeviceMotionEvent
instance GObjectClass DeviceMotionEvent where
  toGObject = GObject . castRef . unDeviceMotionEvent
  unsafeCastGObject = DeviceMotionEvent . castRef . unGObject

castToDeviceMotionEvent :: GObjectClass obj => obj -> DeviceMotionEvent
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
  fromJSRef = return . fmap DeviceOrientationEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsDeviceOrientationEvent o
toDeviceOrientationEvent :: IsDeviceOrientationEvent o => o -> DeviceOrientationEvent
toDeviceOrientationEvent = unsafeCastGObject . toGObject

instance IsDeviceOrientationEvent DeviceOrientationEvent
instance IsEvent DeviceOrientationEvent
instance GObjectClass DeviceOrientationEvent where
  toGObject = GObject . castRef . unDeviceOrientationEvent
  unsafeCastGObject = DeviceOrientationEvent . castRef . unGObject

castToDeviceOrientationEvent :: GObjectClass obj => obj -> DeviceOrientationEvent
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
  fromJSRef = return . fmap DeviceProximityEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsDeviceProximityEvent o
toDeviceProximityEvent :: IsDeviceProximityEvent o => o -> DeviceProximityEvent
toDeviceProximityEvent = unsafeCastGObject . toGObject

instance IsDeviceProximityEvent DeviceProximityEvent
instance IsEvent DeviceProximityEvent
instance GObjectClass DeviceProximityEvent where
  toGObject = GObject . castRef . unDeviceProximityEvent
  unsafeCastGObject = DeviceProximityEvent . castRef . unGObject

castToDeviceProximityEvent :: GObjectClass obj => obj -> DeviceProximityEvent
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.DocumentFragment".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.DocumentType".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType Mozilla DocumentType documentation>
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
  fromJSRef = return . fmap DynamicsCompressorNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsDynamicsCompressorNode o
toDynamicsCompressorNode :: IsDynamicsCompressorNode o => o -> DynamicsCompressorNode
toDynamicsCompressorNode = unsafeCastGObject . toGObject

instance IsDynamicsCompressorNode DynamicsCompressorNode
instance IsAudioNode DynamicsCompressorNode
instance IsEventTarget DynamicsCompressorNode
instance GObjectClass DynamicsCompressorNode where
  toGObject = GObject . castRef . unDynamicsCompressorNode
  unsafeCastGObject = DynamicsCompressorNode . castRef . unGObject

castToDynamicsCompressorNode :: GObjectClass obj => obj -> DynamicsCompressorNode
castToDynamicsCompressorNode = castTo gTypeDynamicsCompressorNode "DynamicsCompressorNode"

foreign import javascript unsafe "window[\"DynamicsCompressorNode\"]" gTypeDynamicsCompressorNode' :: JSRef GType
gTypeDynamicsCompressorNode = GType gTypeDynamicsCompressorNode'
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
  fromJSRef = return . fmap EXTShaderTextureLOD . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEXTShaderTextureLOD o
toEXTShaderTextureLOD :: IsEXTShaderTextureLOD o => o -> EXTShaderTextureLOD
toEXTShaderTextureLOD = unsafeCastGObject . toGObject

instance IsEXTShaderTextureLOD EXTShaderTextureLOD
instance GObjectClass EXTShaderTextureLOD where
  toGObject = GObject . castRef . unEXTShaderTextureLOD
  unsafeCastGObject = EXTShaderTextureLOD . castRef . unGObject

castToEXTShaderTextureLOD :: GObjectClass obj => obj -> EXTShaderTextureLOD
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
  fromJSRef = return . fmap EXTTextureFilterAnisotropic . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEXTTextureFilterAnisotropic o
toEXTTextureFilterAnisotropic :: IsEXTTextureFilterAnisotropic o => o -> EXTTextureFilterAnisotropic
toEXTTextureFilterAnisotropic = unsafeCastGObject . toGObject

instance IsEXTTextureFilterAnisotropic EXTTextureFilterAnisotropic
instance GObjectClass EXTTextureFilterAnisotropic where
  toGObject = GObject . castRef . unEXTTextureFilterAnisotropic
  unsafeCastGObject = EXTTextureFilterAnisotropic . castRef . unGObject

castToEXTTextureFilterAnisotropic :: GObjectClass obj => obj -> EXTTextureFilterAnisotropic
castToEXTTextureFilterAnisotropic = castTo gTypeEXTTextureFilterAnisotropic "EXTTextureFilterAnisotropic"

foreign import javascript unsafe "window[\"EXTTextureFilterAnisotropic\"]" gTypeEXTTextureFilterAnisotropic' :: JSRef GType
gTypeEXTTextureFilterAnisotropic = GType gTypeEXTTextureFilterAnisotropic'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Element".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Element Mozilla Element documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.Entity".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Entity Mozilla Entity documentation>
newtype Entity = Entity (JSRef Entity) deriving (Eq)

unEntity (Entity o) = o

instance ToJSRef Entity where
  toJSRef = return . unEntity
  {-# INLINE toJSRef #-}

instance FromJSRef Entity where
  fromJSRef = return . fmap Entity . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsNode o => IsEntity o
toEntity :: IsEntity o => o -> Entity
toEntity = unsafeCastGObject . toGObject

instance IsEntity Entity
instance IsNode Entity
instance GObjectClass Entity where
  toGObject = GObject . castRef . unEntity
  unsafeCastGObject = Entity . castRef . unGObject

castToEntity :: GObjectClass obj => obj -> Entity
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EntityReference Mozilla EntityReference documentation>
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
  fromJSRef = return . fmap ErrorEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsErrorEvent o
toErrorEvent :: IsErrorEvent o => o -> ErrorEvent
toErrorEvent = unsafeCastGObject . toGObject

instance IsErrorEvent ErrorEvent
instance IsEvent ErrorEvent
instance GObjectClass ErrorEvent where
  toGObject = GObject . castRef . unErrorEvent
  unsafeCastGObject = ErrorEvent . castRef . unGObject

castToErrorEvent :: GObjectClass obj => obj -> ErrorEvent
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
-- | Functions for this inteface are in "GHCJS.DOM.EventListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventListener Mozilla EventListener documentation>
newtype EventListener = EventListener (JSRef EventListener) deriving (Eq)

unEventListener (EventListener o) = o

instance ToJSRef EventListener where
  toJSRef = return . unEventListener
  {-# INLINE toJSRef #-}

instance FromJSRef EventListener where
  fromJSRef = return . fmap EventListener . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEventListener o
toEventListener :: IsEventListener o => o -> EventListener
toEventListener = unsafeCastGObject . toGObject

instance IsEventListener EventListener
instance GObjectClass EventListener where
  toGObject = GObject . castRef . unEventListener
  unsafeCastGObject = EventListener . castRef . unGObject

castToEventListener :: GObjectClass obj => obj -> EventListener
castToEventListener = castTo gTypeEventListener "EventListener"

foreign import javascript unsafe "window[\"EventListener\"]" gTypeEventListener' :: JSRef GType
gTypeEventListener = GType gTypeEventListener'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.EventSource".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation>
newtype EventSource = EventSource (JSRef EventSource) deriving (Eq)

unEventSource (EventSource o) = o

instance ToJSRef EventSource where
  toJSRef = return . unEventSource
  {-# INLINE toJSRef #-}

instance FromJSRef EventSource where
  fromJSRef = return . fmap EventSource . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsEventSource o
toEventSource :: IsEventSource o => o -> EventSource
toEventSource = unsafeCastGObject . toGObject

instance IsEventSource EventSource
instance GObjectClass EventSource where
  toGObject = GObject . castRef . unEventSource
  unsafeCastGObject = EventSource . castRef . unGObject

castToEventSource :: GObjectClass obj => obj -> EventSource
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
-- | Functions for this inteface are in "GHCJS.DOM.FileError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileError Mozilla FileError documentation>
newtype FileError = FileError (JSRef FileError) deriving (Eq)

unFileError (FileError o) = o

instance ToJSRef FileError where
  toJSRef = return . unFileError
  {-# INLINE toJSRef #-}

instance FromJSRef FileError where
  fromJSRef = return . fmap FileError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFileError o
toFileError :: IsFileError o => o -> FileError
toFileError = unsafeCastGObject . toGObject

instance IsFileError FileError
instance GObjectClass FileError where
  toGObject = GObject . castRef . unFileError
  unsafeCastGObject = FileError . castRef . unGObject

castToFileError :: GObjectClass obj => obj -> FileError
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
-- | Functions for this inteface are in "GHCJS.DOM.FileReader".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation>
newtype FileReader = FileReader (JSRef FileReader) deriving (Eq)

unFileReader (FileReader o) = o

instance ToJSRef FileReader where
  toJSRef = return . unFileReader
  {-# INLINE toJSRef #-}

instance FromJSRef FileReader where
  fromJSRef = return . fmap FileReader . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFileReader o
toFileReader :: IsFileReader o => o -> FileReader
toFileReader = unsafeCastGObject . toGObject

instance IsFileReader FileReader
instance GObjectClass FileReader where
  toGObject = GObject . castRef . unFileReader
  unsafeCastGObject = FileReader . castRef . unGObject

castToFileReader :: GObjectClass obj => obj -> FileReader
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
  fromJSRef = return . fmap FileReaderSync . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFileReaderSync o
toFileReaderSync :: IsFileReaderSync o => o -> FileReaderSync
toFileReaderSync = unsafeCastGObject . toGObject

instance IsFileReaderSync FileReaderSync
instance GObjectClass FileReaderSync where
  toGObject = GObject . castRef . unFileReaderSync
  unsafeCastGObject = FileReaderSync . castRef . unGObject

castToFileReaderSync :: GObjectClass obj => obj -> FileReaderSync
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
  fromJSRef = return . fmap FocusEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsFocusEvent o
toFocusEvent :: IsFocusEvent o => o -> FocusEvent
toFocusEvent = unsafeCastGObject . toGObject

instance IsFocusEvent FocusEvent
instance IsUIEvent FocusEvent
instance IsEvent FocusEvent
instance GObjectClass FocusEvent where
  toGObject = GObject . castRef . unFocusEvent
  unsafeCastGObject = FocusEvent . castRef . unGObject

castToFocusEvent :: GObjectClass obj => obj -> FocusEvent
castToFocusEvent = castTo gTypeFocusEvent "FocusEvent"

foreign import javascript unsafe "window[\"FocusEvent\"]" gTypeFocusEvent' :: JSRef GType
gTypeFocusEvent = GType gTypeFocusEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.FontLoader".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader Mozilla FontLoader documentation>
newtype FontLoader = FontLoader (JSRef FontLoader) deriving (Eq)

unFontLoader (FontLoader o) = o

instance ToJSRef FontLoader where
  toJSRef = return . unFontLoader
  {-# INLINE toJSRef #-}

instance FromJSRef FontLoader where
  fromJSRef = return . fmap FontLoader . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsFontLoader o
toFontLoader :: IsFontLoader o => o -> FontLoader
toFontLoader = unsafeCastGObject . toGObject

instance IsFontLoader FontLoader
instance GObjectClass FontLoader where
  toGObject = GObject . castRef . unFontLoader
  unsafeCastGObject = FontLoader . castRef . unGObject

castToFontLoader :: GObjectClass obj => obj -> FontLoader
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
  fromJSRef = return . fmap GainNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsGainNode o
toGainNode :: IsGainNode o => o -> GainNode
toGainNode = unsafeCastGObject . toGObject

instance IsGainNode GainNode
instance IsAudioNode GainNode
instance IsEventTarget GainNode
instance GObjectClass GainNode where
  toGObject = GObject . castRef . unGainNode
  unsafeCastGObject = GainNode . castRef . unGObject

castToGainNode :: GObjectClass obj => obj -> GainNode
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
  fromJSRef = return . fmap Gamepad . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsGamepad o
toGamepad :: IsGamepad o => o -> Gamepad
toGamepad = unsafeCastGObject . toGObject

instance IsGamepad Gamepad
instance GObjectClass Gamepad where
  toGObject = GObject . castRef . unGamepad
  unsafeCastGObject = Gamepad . castRef . unGObject

castToGamepad :: GObjectClass obj => obj -> Gamepad
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
  fromJSRef = return . fmap GamepadButton . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsGamepadButton o
toGamepadButton :: IsGamepadButton o => o -> GamepadButton
toGamepadButton = unsafeCastGObject . toGObject

instance IsGamepadButton GamepadButton
instance GObjectClass GamepadButton where
  toGObject = GObject . castRef . unGamepadButton
  unsafeCastGObject = GamepadButton . castRef . unGObject

castToGamepadButton :: GObjectClass obj => obj -> GamepadButton
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
  fromJSRef = return . fmap GamepadEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsGamepadEvent o
toGamepadEvent :: IsGamepadEvent o => o -> GamepadEvent
toGamepadEvent = unsafeCastGObject . toGObject

instance IsGamepadEvent GamepadEvent
instance IsEvent GamepadEvent
instance GObjectClass GamepadEvent where
  toGObject = GObject . castRef . unGamepadEvent
  unsafeCastGObject = GamepadEvent . castRef . unGObject

castToGamepadEvent :: GObjectClass obj => obj -> GamepadEvent
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
-- | Functions for this inteface are in "GHCJS.DOM.Geoposition".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition Mozilla Geoposition documentation>
newtype Geoposition = Geoposition (JSRef Geoposition) deriving (Eq)

unGeoposition (Geoposition o) = o

instance ToJSRef Geoposition where
  toJSRef = return . unGeoposition
  {-# INLINE toJSRef #-}

instance FromJSRef Geoposition where
  fromJSRef = return . fmap Geoposition . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsGeoposition o
toGeoposition :: IsGeoposition o => o -> Geoposition
toGeoposition = unsafeCastGObject . toGObject

instance IsGeoposition Geoposition
instance GObjectClass Geoposition where
  toGObject = GObject . castRef . unGeoposition
  unsafeCastGObject = Geoposition . castRef . unGObject

castToGeoposition :: GObjectClass obj => obj -> Geoposition
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
  fromJSRef = return . fmap HTMLAllCollection . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsHTMLAllCollection o
toHTMLAllCollection :: IsHTMLAllCollection o => o -> HTMLAllCollection
toHTMLAllCollection = unsafeCastGObject . toGObject

instance IsHTMLAllCollection HTMLAllCollection
instance GObjectClass HTMLAllCollection where
  toGObject = GObject . castRef . unHTMLAllCollection
  unsafeCastGObject = HTMLAllCollection . castRef . unGObject

castToHTMLAllCollection :: GObjectClass obj => obj -> HTMLAllCollection
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement Mozilla HTMLAnchorElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAppletElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement Mozilla HTMLAppletElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLAreaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement Mozilla HTMLAreaElement documentation>
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
  fromJSRef = return . fmap HTMLAudioElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLMediaElement o => IsHTMLAudioElement o
toHTMLAudioElement :: IsHTMLAudioElement o => o -> HTMLAudioElement
toHTMLAudioElement = unsafeCastGObject . toGObject

instance IsHTMLAudioElement HTMLAudioElement
instance IsHTMLMediaElement HTMLAudioElement
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement Mozilla HTMLBRElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBaseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement Mozilla HTMLBaseElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBaseFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement Mozilla HTMLBaseFontElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLBodyElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement Mozilla HTMLBodyElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLButtonElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement Mozilla HTMLButtonElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLCanvasElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement Mozilla HTMLCanvasElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLCollection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection Mozilla HTMLCollection documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement Mozilla HTMLDListElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDataListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement Mozilla HTMLDataListElement documentation>
newtype HTMLDataListElement = HTMLDataListElement (JSRef HTMLDataListElement) deriving (Eq)

unHTMLDataListElement (HTMLDataListElement o) = o

instance ToJSRef HTMLDataListElement where
  toJSRef = return . unHTMLDataListElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLDataListElement where
  fromJSRef = return . fmap HTMLDataListElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLDataListElement o
toHTMLDataListElement :: IsHTMLDataListElement o => o -> HTMLDataListElement
toHTMLDataListElement = unsafeCastGObject . toGObject

instance IsHTMLDataListElement HTMLDataListElement
instance IsHTMLElement HTMLDataListElement
instance IsElement HTMLDataListElement
instance IsNode HTMLDataListElement
instance GObjectClass HTMLDataListElement where
  toGObject = GObject . castRef . unHTMLDataListElement
  unsafeCastGObject = HTMLDataListElement . castRef . unGObject

castToHTMLDataListElement :: GObjectClass obj => obj -> HTMLDataListElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement Mozilla HTMLDetailsElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDirectoryElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement Mozilla HTMLDirectoryElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDivElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement Mozilla HTMLDivElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLDocument".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Document"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument Mozilla HTMLDocument documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement Mozilla HTMLElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLEmbedElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement Mozilla HTMLEmbedElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFieldSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement Mozilla HTMLFieldSetElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement Mozilla HTMLFontElement documentation>
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
  fromJSRef = return . fmap HTMLFormControlsCollection . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLCollection o => IsHTMLFormControlsCollection o
toHTMLFormControlsCollection :: IsHTMLFormControlsCollection o => o -> HTMLFormControlsCollection
toHTMLFormControlsCollection = unsafeCastGObject . toGObject

instance IsHTMLFormControlsCollection HTMLFormControlsCollection
instance IsHTMLCollection HTMLFormControlsCollection
instance GObjectClass HTMLFormControlsCollection where
  toGObject = GObject . castRef . unHTMLFormControlsCollection
  unsafeCastGObject = HTMLFormControlsCollection . castRef . unGObject

castToHTMLFormControlsCollection :: GObjectClass obj => obj -> HTMLFormControlsCollection
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement Mozilla HTMLFormElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFrameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement Mozilla HTMLFrameElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLFrameSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement Mozilla HTMLFrameSetElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement Mozilla HTMLHRElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHeadElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement Mozilla HTMLHeadElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHeadingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement Mozilla HTMLHeadingElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLHtmlElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement Mozilla HTMLHtmlElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLIFrameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement Mozilla HTMLIFrameElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement Mozilla HTMLImageElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLInputElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement Mozilla HTMLInputElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLKeygenElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement Mozilla HTMLKeygenElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLIElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement Mozilla HTMLLIElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLabelElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement Mozilla HTMLLabelElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLegendElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement Mozilla HTMLLegendElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLLinkElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement Mozilla HTMLLinkElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMapElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement Mozilla HTMLMapElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMarqueeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement Mozilla HTMLMarqueeElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMediaElement".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement Mozilla HTMLMediaElement documentation>
newtype HTMLMediaElement = HTMLMediaElement (JSRef HTMLMediaElement) deriving (Eq)

unHTMLMediaElement (HTMLMediaElement o) = o

instance ToJSRef HTMLMediaElement where
  toJSRef = return . unHTMLMediaElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMediaElement where
  fromJSRef = return . fmap HTMLMediaElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsHTMLMediaElement o
toHTMLMediaElement :: IsHTMLMediaElement o => o -> HTMLMediaElement
toHTMLMediaElement = unsafeCastGObject . toGObject

instance IsHTMLMediaElement HTMLMediaElement
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMenuElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement Mozilla HTMLMenuElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMetaElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement Mozilla HTMLMetaElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLMeterElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement Mozilla HTMLMeterElement documentation>
newtype HTMLMeterElement = HTMLMeterElement (JSRef HTMLMeterElement) deriving (Eq)

unHTMLMeterElement (HTMLMeterElement o) = o

instance ToJSRef HTMLMeterElement where
  toJSRef = return . unHTMLMeterElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLMeterElement where
  fromJSRef = return . fmap HTMLMeterElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLMeterElement o
toHTMLMeterElement :: IsHTMLMeterElement o => o -> HTMLMeterElement
toHTMLMeterElement = unsafeCastGObject . toGObject

instance IsHTMLMeterElement HTMLMeterElement
instance IsHTMLElement HTMLMeterElement
instance IsElement HTMLMeterElement
instance IsNode HTMLMeterElement
instance GObjectClass HTMLMeterElement where
  toGObject = GObject . castRef . unHTMLMeterElement
  unsafeCastGObject = HTMLMeterElement . castRef . unGObject

castToHTMLMeterElement :: GObjectClass obj => obj -> HTMLMeterElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement Mozilla HTMLModElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOListElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement Mozilla HTMLOListElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLObjectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement Mozilla HTMLObjectElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOptGroupElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement Mozilla HTMLOptGroupElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOptionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement Mozilla HTMLOptionElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLOutputElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement Mozilla HTMLOutputElement documentation>
newtype HTMLOutputElement = HTMLOutputElement (JSRef HTMLOutputElement) deriving (Eq)

unHTMLOutputElement (HTMLOutputElement o) = o

instance ToJSRef HTMLOutputElement where
  toJSRef = return . unHTMLOutputElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLOutputElement where
  fromJSRef = return . fmap HTMLOutputElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLOutputElement o
toHTMLOutputElement :: IsHTMLOutputElement o => o -> HTMLOutputElement
toHTMLOutputElement = unsafeCastGObject . toGObject

instance IsHTMLOutputElement HTMLOutputElement
instance IsHTMLElement HTMLOutputElement
instance IsElement HTMLOutputElement
instance IsNode HTMLOutputElement
instance GObjectClass HTMLOutputElement where
  toGObject = GObject . castRef . unHTMLOutputElement
  unsafeCastGObject = HTMLOutputElement . castRef . unGObject

castToHTMLOutputElement :: GObjectClass obj => obj -> HTMLOutputElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement Mozilla HTMLParagraphElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLParamElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement Mozilla HTMLParamElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLPreElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement Mozilla HTMLPreElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLProgressElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement Mozilla HTMLProgressElement documentation>
newtype HTMLProgressElement = HTMLProgressElement (JSRef HTMLProgressElement) deriving (Eq)

unHTMLProgressElement (HTMLProgressElement o) = o

instance ToJSRef HTMLProgressElement where
  toJSRef = return . unHTMLProgressElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLProgressElement where
  fromJSRef = return . fmap HTMLProgressElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLProgressElement o
toHTMLProgressElement :: IsHTMLProgressElement o => o -> HTMLProgressElement
toHTMLProgressElement = unsafeCastGObject . toGObject

instance IsHTMLProgressElement HTMLProgressElement
instance IsHTMLElement HTMLProgressElement
instance IsElement HTMLProgressElement
instance IsNode HTMLProgressElement
instance GObjectClass HTMLProgressElement where
  toGObject = GObject . castRef . unHTMLProgressElement
  unsafeCastGObject = HTMLProgressElement . castRef . unGObject

castToHTMLProgressElement :: GObjectClass obj => obj -> HTMLProgressElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement Mozilla HTMLQuoteElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLScriptElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement Mozilla HTMLScriptElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLSelectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement Mozilla HTMLSelectElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLSourceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement Mozilla HTMLSourceElement documentation>
newtype HTMLSourceElement = HTMLSourceElement (JSRef HTMLSourceElement) deriving (Eq)

unHTMLSourceElement (HTMLSourceElement o) = o

instance ToJSRef HTMLSourceElement where
  toJSRef = return . unHTMLSourceElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSourceElement where
  fromJSRef = return . fmap HTMLSourceElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLSourceElement o
toHTMLSourceElement :: IsHTMLSourceElement o => o -> HTMLSourceElement
toHTMLSourceElement = unsafeCastGObject . toGObject

instance IsHTMLSourceElement HTMLSourceElement
instance IsHTMLElement HTMLSourceElement
instance IsElement HTMLSourceElement
instance IsNode HTMLSourceElement
instance GObjectClass HTMLSourceElement where
  toGObject = GObject . castRef . unHTMLSourceElement
  unsafeCastGObject = HTMLSourceElement . castRef . unGObject

castToHTMLSourceElement :: GObjectClass obj => obj -> HTMLSourceElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement Mozilla HTMLSpanElement documentation>
newtype HTMLSpanElement = HTMLSpanElement (JSRef HTMLSpanElement) deriving (Eq)

unHTMLSpanElement (HTMLSpanElement o) = o

instance ToJSRef HTMLSpanElement where
  toJSRef = return . unHTMLSpanElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLSpanElement where
  fromJSRef = return . fmap HTMLSpanElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLSpanElement o
toHTMLSpanElement :: IsHTMLSpanElement o => o -> HTMLSpanElement
toHTMLSpanElement = unsafeCastGObject . toGObject

instance IsHTMLSpanElement HTMLSpanElement
instance IsHTMLElement HTMLSpanElement
instance IsElement HTMLSpanElement
instance IsNode HTMLSpanElement
instance GObjectClass HTMLSpanElement where
  toGObject = GObject . castRef . unHTMLSpanElement
  unsafeCastGObject = HTMLSpanElement . castRef . unGObject

castToHTMLSpanElement :: GObjectClass obj => obj -> HTMLSpanElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement Mozilla HTMLStyleElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableCaptionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement Mozilla HTMLTableCaptionElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableCellElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement Mozilla HTMLTableCellElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableColElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement Mozilla HTMLTableColElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement Mozilla HTMLTableElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableRowElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement Mozilla HTMLTableRowElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTableSectionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement Mozilla HTMLTableSectionElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTemplateElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement Mozilla HTMLTemplateElement documentation>
newtype HTMLTemplateElement = HTMLTemplateElement (JSRef HTMLTemplateElement) deriving (Eq)

unHTMLTemplateElement (HTMLTemplateElement o) = o

instance ToJSRef HTMLTemplateElement where
  toJSRef = return . unHTMLTemplateElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTemplateElement where
  fromJSRef = return . fmap HTMLTemplateElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLTemplateElement o
toHTMLTemplateElement :: IsHTMLTemplateElement o => o -> HTMLTemplateElement
toHTMLTemplateElement = unsafeCastGObject . toGObject

instance IsHTMLTemplateElement HTMLTemplateElement
instance IsHTMLElement HTMLTemplateElement
instance IsElement HTMLTemplateElement
instance IsNode HTMLTemplateElement
instance GObjectClass HTMLTemplateElement where
  toGObject = GObject . castRef . unHTMLTemplateElement
  unsafeCastGObject = HTMLTemplateElement . castRef . unGObject

castToHTMLTemplateElement :: GObjectClass obj => obj -> HTMLTemplateElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement Mozilla HTMLTextAreaElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTitleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement Mozilla HTMLTitleElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLTrackElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement Mozilla HTMLTrackElement documentation>
newtype HTMLTrackElement = HTMLTrackElement (JSRef HTMLTrackElement) deriving (Eq)

unHTMLTrackElement (HTMLTrackElement o) = o

instance ToJSRef HTMLTrackElement where
  toJSRef = return . unHTMLTrackElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLTrackElement where
  fromJSRef = return . fmap HTMLTrackElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLTrackElement o
toHTMLTrackElement :: IsHTMLTrackElement o => o -> HTMLTrackElement
toHTMLTrackElement = unsafeCastGObject . toGObject

instance IsHTMLTrackElement HTMLTrackElement
instance IsHTMLElement HTMLTrackElement
instance IsElement HTMLTrackElement
instance IsNode HTMLTrackElement
instance GObjectClass HTMLTrackElement where
  toGObject = GObject . castRef . unHTMLTrackElement
  unsafeCastGObject = HTMLTrackElement . castRef . unGObject

castToHTMLTrackElement :: GObjectClass obj => obj -> HTMLTrackElement
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement Mozilla HTMLUListElement documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.HTMLUnknownElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.HTMLElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement Mozilla HTMLUnknownElement documentation>
newtype HTMLUnknownElement = HTMLUnknownElement (JSRef HTMLUnknownElement) deriving (Eq)

unHTMLUnknownElement (HTMLUnknownElement o) = o

instance ToJSRef HTMLUnknownElement where
  toJSRef = return . unHTMLUnknownElement
  {-# INLINE toJSRef #-}

instance FromJSRef HTMLUnknownElement where
  fromJSRef = return . fmap HTMLUnknownElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLElement o => IsHTMLUnknownElement o
toHTMLUnknownElement :: IsHTMLUnknownElement o => o -> HTMLUnknownElement
toHTMLUnknownElement = unsafeCastGObject . toGObject

instance IsHTMLUnknownElement HTMLUnknownElement
instance IsHTMLElement HTMLUnknownElement
instance IsElement HTMLUnknownElement
instance IsNode HTMLUnknownElement
instance GObjectClass HTMLUnknownElement where
  toGObject = GObject . castRef . unHTMLUnknownElement
  unsafeCastGObject = HTMLUnknownElement . castRef . unGObject

castToHTMLUnknownElement :: GObjectClass obj => obj -> HTMLUnknownElement
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
  fromJSRef = return . fmap HTMLVideoElement . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsHTMLMediaElement o => IsHTMLVideoElement o
toHTMLVideoElement :: IsHTMLVideoElement o => o -> HTMLVideoElement
toHTMLVideoElement = unsafeCastGObject . toGObject

instance IsHTMLVideoElement HTMLVideoElement
instance IsHTMLMediaElement HTMLVideoElement
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
  fromJSRef = return . fmap HashChangeEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsHashChangeEvent o
toHashChangeEvent :: IsHashChangeEvent o => o -> HashChangeEvent
toHashChangeEvent = unsafeCastGObject . toGObject

instance IsHashChangeEvent HashChangeEvent
instance IsEvent HashChangeEvent
instance GObjectClass HashChangeEvent where
  toGObject = GObject . castRef . unHashChangeEvent
  unsafeCastGObject = HashChangeEvent . castRef . unGObject

castToHashChangeEvent :: GObjectClass obj => obj -> HashChangeEvent
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
-- | Functions for this inteface are in "GHCJS.DOM.IDBAny".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/IDBAny Mozilla IDBAny documentation>
newtype IDBAny = IDBAny (JSRef IDBAny) deriving (Eq)

unIDBAny (IDBAny o) = o

instance ToJSRef IDBAny where
  toJSRef = return . unIDBAny
  {-# INLINE toJSRef #-}

instance FromJSRef IDBAny where
  fromJSRef = return . fmap IDBAny . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBAny o
toIDBAny :: IsIDBAny o => o -> IDBAny
toIDBAny = unsafeCastGObject . toGObject

instance IsIDBAny IDBAny
instance GObjectClass IDBAny where
  toGObject = GObject . castRef . unIDBAny
  unsafeCastGObject = IDBAny . castRef . unGObject

castToIDBAny :: GObjectClass obj => obj -> IDBAny
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
  fromJSRef = return . fmap IDBCursor . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBCursor o
toIDBCursor :: IsIDBCursor o => o -> IDBCursor
toIDBCursor = unsafeCastGObject . toGObject

instance IsIDBCursor IDBCursor
instance GObjectClass IDBCursor where
  toGObject = GObject . castRef . unIDBCursor
  unsafeCastGObject = IDBCursor . castRef . unGObject

castToIDBCursor :: GObjectClass obj => obj -> IDBCursor
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
  fromJSRef = return . fmap IDBCursorWithValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsIDBCursor o => IsIDBCursorWithValue o
toIDBCursorWithValue :: IsIDBCursorWithValue o => o -> IDBCursorWithValue
toIDBCursorWithValue = unsafeCastGObject . toGObject

instance IsIDBCursorWithValue IDBCursorWithValue
instance IsIDBCursor IDBCursorWithValue
instance GObjectClass IDBCursorWithValue where
  toGObject = GObject . castRef . unIDBCursorWithValue
  unsafeCastGObject = IDBCursorWithValue . castRef . unGObject

castToIDBCursorWithValue :: GObjectClass obj => obj -> IDBCursorWithValue
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
  fromJSRef = return . fmap IDBDatabase . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsIDBDatabase o
toIDBDatabase :: IsIDBDatabase o => o -> IDBDatabase
toIDBDatabase = unsafeCastGObject . toGObject

instance IsIDBDatabase IDBDatabase
instance IsEventTarget IDBDatabase
instance GObjectClass IDBDatabase where
  toGObject = GObject . castRef . unIDBDatabase
  unsafeCastGObject = IDBDatabase . castRef . unGObject

castToIDBDatabase :: GObjectClass obj => obj -> IDBDatabase
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
  fromJSRef = return . fmap IDBFactory . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBFactory o
toIDBFactory :: IsIDBFactory o => o -> IDBFactory
toIDBFactory = unsafeCastGObject . toGObject

instance IsIDBFactory IDBFactory
instance GObjectClass IDBFactory where
  toGObject = GObject . castRef . unIDBFactory
  unsafeCastGObject = IDBFactory . castRef . unGObject

castToIDBFactory :: GObjectClass obj => obj -> IDBFactory
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
  fromJSRef = return . fmap IDBIndex . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBIndex o
toIDBIndex :: IsIDBIndex o => o -> IDBIndex
toIDBIndex = unsafeCastGObject . toGObject

instance IsIDBIndex IDBIndex
instance GObjectClass IDBIndex where
  toGObject = GObject . castRef . unIDBIndex
  unsafeCastGObject = IDBIndex . castRef . unGObject

castToIDBIndex :: GObjectClass obj => obj -> IDBIndex
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
  fromJSRef = return . fmap IDBKeyRange . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBKeyRange o
toIDBKeyRange :: IsIDBKeyRange o => o -> IDBKeyRange
toIDBKeyRange = unsafeCastGObject . toGObject

instance IsIDBKeyRange IDBKeyRange
instance GObjectClass IDBKeyRange where
  toGObject = GObject . castRef . unIDBKeyRange
  unsafeCastGObject = IDBKeyRange . castRef . unGObject

castToIDBKeyRange :: GObjectClass obj => obj -> IDBKeyRange
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
  fromJSRef = return . fmap IDBObjectStore . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsIDBObjectStore o
toIDBObjectStore :: IsIDBObjectStore o => o -> IDBObjectStore
toIDBObjectStore = unsafeCastGObject . toGObject

instance IsIDBObjectStore IDBObjectStore
instance GObjectClass IDBObjectStore where
  toGObject = GObject . castRef . unIDBObjectStore
  unsafeCastGObject = IDBObjectStore . castRef . unGObject

castToIDBObjectStore :: GObjectClass obj => obj -> IDBObjectStore
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
  fromJSRef = return . fmap IDBOpenDBRequest . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsIDBRequest o => IsIDBOpenDBRequest o
toIDBOpenDBRequest :: IsIDBOpenDBRequest o => o -> IDBOpenDBRequest
toIDBOpenDBRequest = unsafeCastGObject . toGObject

instance IsIDBOpenDBRequest IDBOpenDBRequest
instance IsIDBRequest IDBOpenDBRequest
instance IsEventTarget IDBOpenDBRequest
instance GObjectClass IDBOpenDBRequest where
  toGObject = GObject . castRef . unIDBOpenDBRequest
  unsafeCastGObject = IDBOpenDBRequest . castRef . unGObject

castToIDBOpenDBRequest :: GObjectClass obj => obj -> IDBOpenDBRequest
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
  fromJSRef = return . fmap IDBRequest . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsIDBRequest o
toIDBRequest :: IsIDBRequest o => o -> IDBRequest
toIDBRequest = unsafeCastGObject . toGObject

instance IsIDBRequest IDBRequest
instance IsEventTarget IDBRequest
instance GObjectClass IDBRequest where
  toGObject = GObject . castRef . unIDBRequest
  unsafeCastGObject = IDBRequest . castRef . unGObject

castToIDBRequest :: GObjectClass obj => obj -> IDBRequest
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
  fromJSRef = return . fmap IDBTransaction . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsIDBTransaction o
toIDBTransaction :: IsIDBTransaction o => o -> IDBTransaction
toIDBTransaction = unsafeCastGObject . toGObject

instance IsIDBTransaction IDBTransaction
instance IsEventTarget IDBTransaction
instance GObjectClass IDBTransaction where
  toGObject = GObject . castRef . unIDBTransaction
  unsafeCastGObject = IDBTransaction . castRef . unGObject

castToIDBTransaction :: GObjectClass obj => obj -> IDBTransaction
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
  fromJSRef = return . fmap IDBVersionChangeEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsIDBVersionChangeEvent o
toIDBVersionChangeEvent :: IsIDBVersionChangeEvent o => o -> IDBVersionChangeEvent
toIDBVersionChangeEvent = unsafeCastGObject . toGObject

instance IsIDBVersionChangeEvent IDBVersionChangeEvent
instance IsEvent IDBVersionChangeEvent
instance GObjectClass IDBVersionChangeEvent where
  toGObject = GObject . castRef . unIDBVersionChangeEvent
  unsafeCastGObject = IDBVersionChangeEvent . castRef . unGObject

castToIDBVersionChangeEvent :: GObjectClass obj => obj -> IDBVersionChangeEvent
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
  fromJSRef = return . fmap ImageData . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsImageData o
toImageData :: IsImageData o => o -> ImageData
toImageData = unsafeCastGObject . toGObject

instance IsImageData ImageData
instance GObjectClass ImageData where
  toGObject = GObject . castRef . unImageData
  unsafeCastGObject = ImageData . castRef . unGObject

castToImageData :: GObjectClass obj => obj -> ImageData
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
  fromJSRef = return . fmap InspectorFrontendHost . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsInspectorFrontendHost o
toInspectorFrontendHost :: IsInspectorFrontendHost o => o -> InspectorFrontendHost
toInspectorFrontendHost = unsafeCastGObject . toGObject

instance IsInspectorFrontendHost InspectorFrontendHost
instance GObjectClass InspectorFrontendHost where
  toGObject = GObject . castRef . unInspectorFrontendHost
  unsafeCastGObject = InspectorFrontendHost . castRef . unGObject

castToInspectorFrontendHost :: GObjectClass obj => obj -> InspectorFrontendHost
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
  fromJSRef = return . fmap InternalSettings . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsInternalSettings o
toInternalSettings :: IsInternalSettings o => o -> InternalSettings
toInternalSettings = unsafeCastGObject . toGObject

instance IsInternalSettings InternalSettings
instance GObjectClass InternalSettings where
  toGObject = GObject . castRef . unInternalSettings
  unsafeCastGObject = InternalSettings . castRef . unGObject

castToInternalSettings :: GObjectClass obj => obj -> InternalSettings
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
  fromJSRef = return . fmap Internals . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsInternals o
toInternals :: IsInternals o => o -> Internals
toInternals = unsafeCastGObject . toGObject

instance IsInternals Internals
instance GObjectClass Internals where
  toGObject = GObject . castRef . unInternals
  unsafeCastGObject = Internals . castRef . unGObject

castToInternals :: GObjectClass obj => obj -> Internals
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
-- | Functions for this inteface are in "GHCJS.DOM.MallocStatistics".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MallocStatistics Mozilla MallocStatistics documentation>
newtype MallocStatistics = MallocStatistics (JSRef MallocStatistics) deriving (Eq)

unMallocStatistics (MallocStatistics o) = o

instance ToJSRef MallocStatistics where
  toJSRef = return . unMallocStatistics
  {-# INLINE toJSRef #-}

instance FromJSRef MallocStatistics where
  fromJSRef = return . fmap MallocStatistics . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMallocStatistics o
toMallocStatistics :: IsMallocStatistics o => o -> MallocStatistics
toMallocStatistics = unsafeCastGObject . toGObject

instance IsMallocStatistics MallocStatistics
instance GObjectClass MallocStatistics where
  toGObject = GObject . castRef . unMallocStatistics
  unsafeCastGObject = MallocStatistics . castRef . unGObject

castToMallocStatistics :: GObjectClass obj => obj -> MallocStatistics
castToMallocStatistics = castTo gTypeMallocStatistics "MallocStatistics"

foreign import javascript unsafe "window[\"MallocStatistics\"]" gTypeMallocStatistics' :: JSRef GType
gTypeMallocStatistics = GType gTypeMallocStatistics'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaController".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation>
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
  fromJSRef = return . fmap MediaControlsHost . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaControlsHost o
toMediaControlsHost :: IsMediaControlsHost o => o -> MediaControlsHost
toMediaControlsHost = unsafeCastGObject . toGObject

instance IsMediaControlsHost MediaControlsHost
instance GObjectClass MediaControlsHost where
  toGObject = GObject . castRef . unMediaControlsHost
  unsafeCastGObject = MediaControlsHost . castRef . unGObject

castToMediaControlsHost :: GObjectClass obj => obj -> MediaControlsHost
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
  fromJSRef = return . fmap MediaElementAudioSourceNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsMediaElementAudioSourceNode o
toMediaElementAudioSourceNode :: IsMediaElementAudioSourceNode o => o -> MediaElementAudioSourceNode
toMediaElementAudioSourceNode = unsafeCastGObject . toGObject

instance IsMediaElementAudioSourceNode MediaElementAudioSourceNode
instance IsAudioNode MediaElementAudioSourceNode
instance IsEventTarget MediaElementAudioSourceNode
instance GObjectClass MediaElementAudioSourceNode where
  toGObject = GObject . castRef . unMediaElementAudioSourceNode
  unsafeCastGObject = MediaElementAudioSourceNode . castRef . unGObject

castToMediaElementAudioSourceNode :: GObjectClass obj => obj -> MediaElementAudioSourceNode
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
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeyError".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyError Mozilla WebKitMediaKeyError documentation>
newtype MediaKeyError = MediaKeyError (JSRef MediaKeyError) deriving (Eq)

unMediaKeyError (MediaKeyError o) = o

instance ToJSRef MediaKeyError where
  toJSRef = return . unMediaKeyError
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeyError where
  fromJSRef = return . fmap MediaKeyError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaKeyError o
toMediaKeyError :: IsMediaKeyError o => o -> MediaKeyError
toMediaKeyError = unsafeCastGObject . toGObject

instance IsMediaKeyError MediaKeyError
instance GObjectClass MediaKeyError where
  toGObject = GObject . castRef . unMediaKeyError
  unsafeCastGObject = MediaKeyError . castRef . unGObject

castToMediaKeyError :: GObjectClass obj => obj -> MediaKeyError
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
  fromJSRef = return . fmap MediaKeyEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMediaKeyEvent o
toMediaKeyEvent :: IsMediaKeyEvent o => o -> MediaKeyEvent
toMediaKeyEvent = unsafeCastGObject . toGObject

instance IsMediaKeyEvent MediaKeyEvent
instance IsEvent MediaKeyEvent
instance GObjectClass MediaKeyEvent where
  toGObject = GObject . castRef . unMediaKeyEvent
  unsafeCastGObject = MediaKeyEvent . castRef . unGObject

castToMediaKeyEvent :: GObjectClass obj => obj -> MediaKeyEvent
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
  fromJSRef = return . fmap MediaKeyMessageEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMediaKeyMessageEvent o
toMediaKeyMessageEvent :: IsMediaKeyMessageEvent o => o -> MediaKeyMessageEvent
toMediaKeyMessageEvent = unsafeCastGObject . toGObject

instance IsMediaKeyMessageEvent MediaKeyMessageEvent
instance IsEvent MediaKeyMessageEvent
instance GObjectClass MediaKeyMessageEvent where
  toGObject = GObject . castRef . unMediaKeyMessageEvent
  unsafeCastGObject = MediaKeyMessageEvent . castRef . unGObject

castToMediaKeyMessageEvent :: GObjectClass obj => obj -> MediaKeyMessageEvent
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
  fromJSRef = return . fmap MediaKeyNeededEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMediaKeyNeededEvent o
toMediaKeyNeededEvent :: IsMediaKeyNeededEvent o => o -> MediaKeyNeededEvent
toMediaKeyNeededEvent = unsafeCastGObject . toGObject

instance IsMediaKeyNeededEvent MediaKeyNeededEvent
instance IsEvent MediaKeyNeededEvent
instance GObjectClass MediaKeyNeededEvent where
  toGObject = GObject . castRef . unMediaKeyNeededEvent
  unsafeCastGObject = MediaKeyNeededEvent . castRef . unGObject

castToMediaKeyNeededEvent :: GObjectClass obj => obj -> MediaKeyNeededEvent
castToMediaKeyNeededEvent = castTo gTypeMediaKeyNeededEvent "MediaKeyNeededEvent"

foreign import javascript unsafe "window[\"MediaKeyNeededEvent\"]" gTypeMediaKeyNeededEvent' :: JSRef GType
gTypeMediaKeyNeededEvent = GType gTypeMediaKeyNeededEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaKeySession".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession Mozilla WebKitMediaKeySession documentation>
newtype MediaKeySession = MediaKeySession (JSRef MediaKeySession) deriving (Eq)

unMediaKeySession (MediaKeySession o) = o

instance ToJSRef MediaKeySession where
  toJSRef = return . unMediaKeySession
  {-# INLINE toJSRef #-}

instance FromJSRef MediaKeySession where
  fromJSRef = return . fmap MediaKeySession . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaKeySession o
toMediaKeySession :: IsMediaKeySession o => o -> MediaKeySession
toMediaKeySession = unsafeCastGObject . toGObject

instance IsMediaKeySession MediaKeySession
instance GObjectClass MediaKeySession where
  toGObject = GObject . castRef . unMediaKeySession
  unsafeCastGObject = MediaKeySession . castRef . unGObject

castToMediaKeySession :: GObjectClass obj => obj -> MediaKeySession
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
  fromJSRef = return . fmap MediaKeys . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaKeys o
toMediaKeys :: IsMediaKeys o => o -> MediaKeys
toMediaKeys = unsafeCastGObject . toGObject

instance IsMediaKeys MediaKeys
instance GObjectClass MediaKeys where
  toGObject = GObject . castRef . unMediaKeys
  unsafeCastGObject = MediaKeys . castRef . unGObject

castToMediaKeys :: GObjectClass obj => obj -> MediaKeys
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
-- | Functions for this inteface are in "GHCJS.DOM.MediaQueryList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList Mozilla MediaQueryList documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.MediaQueryListListener".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation>
newtype MediaQueryListListener = MediaQueryListListener (JSRef MediaQueryListListener) deriving (Eq)

unMediaQueryListListener (MediaQueryListListener o) = o

instance ToJSRef MediaQueryListListener where
  toJSRef = return . unMediaQueryListListener
  {-# INLINE toJSRef #-}

instance FromJSRef MediaQueryListListener where
  fromJSRef = return . fmap MediaQueryListListener . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaQueryListListener o
toMediaQueryListListener :: IsMediaQueryListListener o => o -> MediaQueryListListener
toMediaQueryListListener = unsafeCastGObject . toGObject

instance IsMediaQueryListListener MediaQueryListListener
instance GObjectClass MediaQueryListListener where
  toGObject = GObject . castRef . unMediaQueryListListener
  unsafeCastGObject = MediaQueryListListener . castRef . unGObject

castToMediaQueryListListener :: GObjectClass obj => obj -> MediaQueryListListener
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
  fromJSRef = return . fmap MediaSource . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsMediaSource o
toMediaSource :: IsMediaSource o => o -> MediaSource
toMediaSource = unsafeCastGObject . toGObject

instance IsMediaSource MediaSource
instance IsEventTarget MediaSource
instance GObjectClass MediaSource where
  toGObject = GObject . castRef . unMediaSource
  unsafeCastGObject = MediaSource . castRef . unGObject

castToMediaSource :: GObjectClass obj => obj -> MediaSource
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
  fromJSRef = return . fmap MediaSourceStates . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaSourceStates o
toMediaSourceStates :: IsMediaSourceStates o => o -> MediaSourceStates
toMediaSourceStates = unsafeCastGObject . toGObject

instance IsMediaSourceStates MediaSourceStates
instance GObjectClass MediaSourceStates where
  toGObject = GObject . castRef . unMediaSourceStates
  unsafeCastGObject = MediaSourceStates . castRef . unGObject

castToMediaSourceStates :: GObjectClass obj => obj -> MediaSourceStates
castToMediaSourceStates = castTo gTypeMediaSourceStates "MediaSourceStates"

foreign import javascript unsafe "window[\"MediaSourceStates\"]" gTypeMediaSourceStates' :: JSRef GType
gTypeMediaSourceStates = GType gTypeMediaSourceStates'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStream".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation>
newtype MediaStream = MediaStream (JSRef MediaStream) deriving (Eq)

unMediaStream (MediaStream o) = o

instance ToJSRef MediaStream where
  toJSRef = return . unMediaStream
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStream where
  fromJSRef = return . fmap MediaStream . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaStream o
toMediaStream :: IsMediaStream o => o -> MediaStream
toMediaStream = unsafeCastGObject . toGObject

instance IsMediaStream MediaStream
instance GObjectClass MediaStream where
  toGObject = GObject . castRef . unMediaStream
  unsafeCastGObject = MediaStream . castRef . unGObject

castToMediaStream :: GObjectClass obj => obj -> MediaStream
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
  fromJSRef = return . fmap MediaStreamAudioDestinationNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsMediaStreamAudioDestinationNode o
toMediaStreamAudioDestinationNode :: IsMediaStreamAudioDestinationNode o => o -> MediaStreamAudioDestinationNode
toMediaStreamAudioDestinationNode = unsafeCastGObject . toGObject

instance IsMediaStreamAudioDestinationNode MediaStreamAudioDestinationNode
instance IsAudioNode MediaStreamAudioDestinationNode
instance IsEventTarget MediaStreamAudioDestinationNode
instance GObjectClass MediaStreamAudioDestinationNode where
  toGObject = GObject . castRef . unMediaStreamAudioDestinationNode
  unsafeCastGObject = MediaStreamAudioDestinationNode . castRef . unGObject

castToMediaStreamAudioDestinationNode :: GObjectClass obj => obj -> MediaStreamAudioDestinationNode
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
  fromJSRef = return . fmap MediaStreamAudioSourceNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsMediaStreamAudioSourceNode o
toMediaStreamAudioSourceNode :: IsMediaStreamAudioSourceNode o => o -> MediaStreamAudioSourceNode
toMediaStreamAudioSourceNode = unsafeCastGObject . toGObject

instance IsMediaStreamAudioSourceNode MediaStreamAudioSourceNode
instance IsAudioNode MediaStreamAudioSourceNode
instance IsEventTarget MediaStreamAudioSourceNode
instance GObjectClass MediaStreamAudioSourceNode where
  toGObject = GObject . castRef . unMediaStreamAudioSourceNode
  unsafeCastGObject = MediaStreamAudioSourceNode . castRef . unGObject

castToMediaStreamAudioSourceNode :: GObjectClass obj => obj -> MediaStreamAudioSourceNode
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
  fromJSRef = return . fmap MediaStreamCapabilities . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaStreamCapabilities o
toMediaStreamCapabilities :: IsMediaStreamCapabilities o => o -> MediaStreamCapabilities
toMediaStreamCapabilities = unsafeCastGObject . toGObject

instance IsMediaStreamCapabilities MediaStreamCapabilities
instance GObjectClass MediaStreamCapabilities where
  toGObject = GObject . castRef . unMediaStreamCapabilities
  unsafeCastGObject = MediaStreamCapabilities . castRef . unGObject

castToMediaStreamCapabilities :: GObjectClass obj => obj -> MediaStreamCapabilities
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
  fromJSRef = return . fmap MediaStreamEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMediaStreamEvent o
toMediaStreamEvent :: IsMediaStreamEvent o => o -> MediaStreamEvent
toMediaStreamEvent = unsafeCastGObject . toGObject

instance IsMediaStreamEvent MediaStreamEvent
instance IsEvent MediaStreamEvent
instance GObjectClass MediaStreamEvent where
  toGObject = GObject . castRef . unMediaStreamEvent
  unsafeCastGObject = MediaStreamEvent . castRef . unGObject

castToMediaStreamEvent :: GObjectClass obj => obj -> MediaStreamEvent
castToMediaStreamEvent = castTo gTypeMediaStreamEvent "MediaStreamEvent"

foreign import javascript unsafe "window[\"MediaStreamEvent\"]" gTypeMediaStreamEvent' :: JSRef GType
gTypeMediaStreamEvent = GType gTypeMediaStreamEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MediaStreamTrack".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack Mozilla MediaStreamTrack documentation>
newtype MediaStreamTrack = MediaStreamTrack (JSRef MediaStreamTrack) deriving (Eq)

unMediaStreamTrack (MediaStreamTrack o) = o

instance ToJSRef MediaStreamTrack where
  toJSRef = return . unMediaStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef MediaStreamTrack where
  fromJSRef = return . fmap MediaStreamTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaStreamTrack o
toMediaStreamTrack :: IsMediaStreamTrack o => o -> MediaStreamTrack
toMediaStreamTrack = unsafeCastGObject . toGObject

instance IsMediaStreamTrack MediaStreamTrack
instance GObjectClass MediaStreamTrack where
  toGObject = GObject . castRef . unMediaStreamTrack
  unsafeCastGObject = MediaStreamTrack . castRef . unGObject

castToMediaStreamTrack :: GObjectClass obj => obj -> MediaStreamTrack
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
  fromJSRef = return . fmap MediaStreamTrackEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMediaStreamTrackEvent o
toMediaStreamTrackEvent :: IsMediaStreamTrackEvent o => o -> MediaStreamTrackEvent
toMediaStreamTrackEvent = unsafeCastGObject . toGObject

instance IsMediaStreamTrackEvent MediaStreamTrackEvent
instance IsEvent MediaStreamTrackEvent
instance GObjectClass MediaStreamTrackEvent where
  toGObject = GObject . castRef . unMediaStreamTrackEvent
  unsafeCastGObject = MediaStreamTrackEvent . castRef . unGObject

castToMediaStreamTrackEvent :: GObjectClass obj => obj -> MediaStreamTrackEvent
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
  fromJSRef = return . fmap MediaStreamTrackSourcesCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaStreamTrackSourcesCallback o
toMediaStreamTrackSourcesCallback :: IsMediaStreamTrackSourcesCallback o => o -> MediaStreamTrackSourcesCallback
toMediaStreamTrackSourcesCallback = unsafeCastGObject . toGObject

instance IsMediaStreamTrackSourcesCallback MediaStreamTrackSourcesCallback
instance GObjectClass MediaStreamTrackSourcesCallback where
  toGObject = GObject . castRef . unMediaStreamTrackSourcesCallback
  unsafeCastGObject = MediaStreamTrackSourcesCallback . castRef . unGObject

castToMediaStreamTrackSourcesCallback :: GObjectClass obj => obj -> MediaStreamTrackSourcesCallback
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
  fromJSRef = return . fmap MediaTrackConstraint . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaTrackConstraint o
toMediaTrackConstraint :: IsMediaTrackConstraint o => o -> MediaTrackConstraint
toMediaTrackConstraint = unsafeCastGObject . toGObject

instance IsMediaTrackConstraint MediaTrackConstraint
instance GObjectClass MediaTrackConstraint where
  toGObject = GObject . castRef . unMediaTrackConstraint
  unsafeCastGObject = MediaTrackConstraint . castRef . unGObject

castToMediaTrackConstraint :: GObjectClass obj => obj -> MediaTrackConstraint
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
  fromJSRef = return . fmap MediaTrackConstraintSet . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaTrackConstraintSet o
toMediaTrackConstraintSet :: IsMediaTrackConstraintSet o => o -> MediaTrackConstraintSet
toMediaTrackConstraintSet = unsafeCastGObject . toGObject

instance IsMediaTrackConstraintSet MediaTrackConstraintSet
instance GObjectClass MediaTrackConstraintSet where
  toGObject = GObject . castRef . unMediaTrackConstraintSet
  unsafeCastGObject = MediaTrackConstraintSet . castRef . unGObject

castToMediaTrackConstraintSet :: GObjectClass obj => obj -> MediaTrackConstraintSet
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
  fromJSRef = return . fmap MediaTrackConstraints . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMediaTrackConstraints o
toMediaTrackConstraints :: IsMediaTrackConstraints o => o -> MediaTrackConstraints
toMediaTrackConstraints = unsafeCastGObject . toGObject

instance IsMediaTrackConstraints MediaTrackConstraints
instance GObjectClass MediaTrackConstraints where
  toGObject = GObject . castRef . unMediaTrackConstraints
  unsafeCastGObject = MediaTrackConstraints . castRef . unGObject

castToMediaTrackConstraints :: GObjectClass obj => obj -> MediaTrackConstraints
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
  fromJSRef = return . fmap MemoryInfo . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMemoryInfo o
toMemoryInfo :: IsMemoryInfo o => o -> MemoryInfo
toMemoryInfo = unsafeCastGObject . toGObject

instance IsMemoryInfo MemoryInfo
instance GObjectClass MemoryInfo where
  toGObject = GObject . castRef . unMemoryInfo
  unsafeCastGObject = MemoryInfo . castRef . unGObject

castToMemoryInfo :: GObjectClass obj => obj -> MemoryInfo
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
  fromJSRef = return . fmap MessageChannel . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMessageChannel o
toMessageChannel :: IsMessageChannel o => o -> MessageChannel
toMessageChannel = unsafeCastGObject . toGObject

instance IsMessageChannel MessageChannel
instance GObjectClass MessageChannel where
  toGObject = GObject . castRef . unMessageChannel
  unsafeCastGObject = MessageChannel . castRef . unGObject

castToMessageChannel :: GObjectClass obj => obj -> MessageChannel
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
  fromJSRef = return . fmap MessageEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsMessageEvent o
toMessageEvent :: IsMessageEvent o => o -> MessageEvent
toMessageEvent = unsafeCastGObject . toGObject

instance IsMessageEvent MessageEvent
instance IsEvent MessageEvent
instance GObjectClass MessageEvent where
  toGObject = GObject . castRef . unMessageEvent
  unsafeCastGObject = MessageEvent . castRef . unGObject

castToMessageEvent :: GObjectClass obj => obj -> MessageEvent
castToMessageEvent = castTo gTypeMessageEvent "MessageEvent"

foreign import javascript unsafe "window[\"MessageEvent\"]" gTypeMessageEvent' :: JSRef GType
gTypeMessageEvent = GType gTypeMessageEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.MessagePort".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort Mozilla MessagePort documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.MutationObserver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation>
newtype MutationObserver = MutationObserver (JSRef MutationObserver) deriving (Eq)

unMutationObserver (MutationObserver o) = o

instance ToJSRef MutationObserver where
  toJSRef = return . unMutationObserver
  {-# INLINE toJSRef #-}

instance FromJSRef MutationObserver where
  fromJSRef = return . fmap MutationObserver . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMutationObserver o
toMutationObserver :: IsMutationObserver o => o -> MutationObserver
toMutationObserver = unsafeCastGObject . toGObject

instance IsMutationObserver MutationObserver
instance GObjectClass MutationObserver where
  toGObject = GObject . castRef . unMutationObserver
  unsafeCastGObject = MutationObserver . castRef . unGObject

castToMutationObserver :: GObjectClass obj => obj -> MutationObserver
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
  fromJSRef = return . fmap MutationRecord . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsMutationRecord o
toMutationRecord :: IsMutationRecord o => o -> MutationRecord
toMutationRecord = unsafeCastGObject . toGObject

instance IsMutationRecord MutationRecord
instance GObjectClass MutationRecord where
  toGObject = GObject . castRef . unMutationRecord
  unsafeCastGObject = MutationRecord . castRef . unGObject

castToMutationRecord :: GObjectClass obj => obj -> MutationRecord
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
-- | Functions for this inteface are in "GHCJS.DOM.Navigator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Navigator Mozilla Navigator documentation>
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
  fromJSRef = return . fmap NavigatorUserMediaError . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsDOMError o => IsNavigatorUserMediaError o
toNavigatorUserMediaError :: IsNavigatorUserMediaError o => o -> NavigatorUserMediaError
toNavigatorUserMediaError = unsafeCastGObject . toGObject

instance IsNavigatorUserMediaError NavigatorUserMediaError
instance IsDOMError NavigatorUserMediaError
instance GObjectClass NavigatorUserMediaError where
  toGObject = GObject . castRef . unNavigatorUserMediaError
  unsafeCastGObject = NavigatorUserMediaError . castRef . unGObject

castToNavigatorUserMediaError :: GObjectClass obj => obj -> NavigatorUserMediaError
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
  fromJSRef = return . fmap NavigatorUserMediaErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNavigatorUserMediaErrorCallback o
toNavigatorUserMediaErrorCallback :: IsNavigatorUserMediaErrorCallback o => o -> NavigatorUserMediaErrorCallback
toNavigatorUserMediaErrorCallback = unsafeCastGObject . toGObject

instance IsNavigatorUserMediaErrorCallback NavigatorUserMediaErrorCallback
instance GObjectClass NavigatorUserMediaErrorCallback where
  toGObject = GObject . castRef . unNavigatorUserMediaErrorCallback
  unsafeCastGObject = NavigatorUserMediaErrorCallback . castRef . unGObject

castToNavigatorUserMediaErrorCallback :: GObjectClass obj => obj -> NavigatorUserMediaErrorCallback
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
  fromJSRef = return . fmap NavigatorUserMediaSuccessCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNavigatorUserMediaSuccessCallback o
toNavigatorUserMediaSuccessCallback :: IsNavigatorUserMediaSuccessCallback o => o -> NavigatorUserMediaSuccessCallback
toNavigatorUserMediaSuccessCallback = unsafeCastGObject . toGObject

instance IsNavigatorUserMediaSuccessCallback NavigatorUserMediaSuccessCallback
instance GObjectClass NavigatorUserMediaSuccessCallback where
  toGObject = GObject . castRef . unNavigatorUserMediaSuccessCallback
  unsafeCastGObject = NavigatorUserMediaSuccessCallback . castRef . unGObject

castToNavigatorUserMediaSuccessCallback :: GObjectClass obj => obj -> NavigatorUserMediaSuccessCallback
castToNavigatorUserMediaSuccessCallback = castTo gTypeNavigatorUserMediaSuccessCallback "NavigatorUserMediaSuccessCallback"

foreign import javascript unsafe "window[\"NavigatorUserMediaSuccessCallback\"]" gTypeNavigatorUserMediaSuccessCallback' :: JSRef GType
gTypeNavigatorUserMediaSuccessCallback = GType gTypeNavigatorUserMediaSuccessCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Node".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Node Mozilla Node documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.NodeFilter".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.NodeIterator".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator Mozilla NodeIterator documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.NodeList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/NodeList Mozilla NodeList documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.Notation".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Notation Mozilla Notation documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.Notification".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Notification Mozilla Notification documentation>
newtype Notification = Notification (JSRef Notification) deriving (Eq)

unNotification (Notification o) = o

instance ToJSRef Notification where
  toJSRef = return . unNotification
  {-# INLINE toJSRef #-}

instance FromJSRef Notification where
  fromJSRef = return . fmap Notification . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNotification o
toNotification :: IsNotification o => o -> Notification
toNotification = unsafeCastGObject . toGObject

instance IsNotification Notification
instance GObjectClass Notification where
  toGObject = GObject . castRef . unNotification
  unsafeCastGObject = Notification . castRef . unGObject

castToNotification :: GObjectClass obj => obj -> Notification
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
  fromJSRef = return . fmap NotificationCenter . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNotificationCenter o
toNotificationCenter :: IsNotificationCenter o => o -> NotificationCenter
toNotificationCenter = unsafeCastGObject . toGObject

instance IsNotificationCenter NotificationCenter
instance GObjectClass NotificationCenter where
  toGObject = GObject . castRef . unNotificationCenter
  unsafeCastGObject = NotificationCenter . castRef . unGObject

castToNotificationCenter :: GObjectClass obj => obj -> NotificationCenter
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
  fromJSRef = return . fmap NotificationPermissionCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsNotificationPermissionCallback o
toNotificationPermissionCallback :: IsNotificationPermissionCallback o => o -> NotificationPermissionCallback
toNotificationPermissionCallback = unsafeCastGObject . toGObject

instance IsNotificationPermissionCallback NotificationPermissionCallback
instance GObjectClass NotificationPermissionCallback where
  toGObject = GObject . castRef . unNotificationPermissionCallback
  unsafeCastGObject = NotificationPermissionCallback . castRef . unGObject

castToNotificationPermissionCallback :: GObjectClass obj => obj -> NotificationPermissionCallback
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
  fromJSRef = return . fmap OESElementIndexUint . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESElementIndexUint o
toOESElementIndexUint :: IsOESElementIndexUint o => o -> OESElementIndexUint
toOESElementIndexUint = unsafeCastGObject . toGObject

instance IsOESElementIndexUint OESElementIndexUint
instance GObjectClass OESElementIndexUint where
  toGObject = GObject . castRef . unOESElementIndexUint
  unsafeCastGObject = OESElementIndexUint . castRef . unGObject

castToOESElementIndexUint :: GObjectClass obj => obj -> OESElementIndexUint
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
  fromJSRef = return . fmap OESStandardDerivatives . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESStandardDerivatives o
toOESStandardDerivatives :: IsOESStandardDerivatives o => o -> OESStandardDerivatives
toOESStandardDerivatives = unsafeCastGObject . toGObject

instance IsOESStandardDerivatives OESStandardDerivatives
instance GObjectClass OESStandardDerivatives where
  toGObject = GObject . castRef . unOESStandardDerivatives
  unsafeCastGObject = OESStandardDerivatives . castRef . unGObject

castToOESStandardDerivatives :: GObjectClass obj => obj -> OESStandardDerivatives
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
  fromJSRef = return . fmap OESTextureFloat . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESTextureFloat o
toOESTextureFloat :: IsOESTextureFloat o => o -> OESTextureFloat
toOESTextureFloat = unsafeCastGObject . toGObject

instance IsOESTextureFloat OESTextureFloat
instance GObjectClass OESTextureFloat where
  toGObject = GObject . castRef . unOESTextureFloat
  unsafeCastGObject = OESTextureFloat . castRef . unGObject

castToOESTextureFloat :: GObjectClass obj => obj -> OESTextureFloat
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
  fromJSRef = return . fmap OESTextureFloatLinear . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESTextureFloatLinear o
toOESTextureFloatLinear :: IsOESTextureFloatLinear o => o -> OESTextureFloatLinear
toOESTextureFloatLinear = unsafeCastGObject . toGObject

instance IsOESTextureFloatLinear OESTextureFloatLinear
instance GObjectClass OESTextureFloatLinear where
  toGObject = GObject . castRef . unOESTextureFloatLinear
  unsafeCastGObject = OESTextureFloatLinear . castRef . unGObject

castToOESTextureFloatLinear :: GObjectClass obj => obj -> OESTextureFloatLinear
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
  fromJSRef = return . fmap OESTextureHalfFloat . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESTextureHalfFloat o
toOESTextureHalfFloat :: IsOESTextureHalfFloat o => o -> OESTextureHalfFloat
toOESTextureHalfFloat = unsafeCastGObject . toGObject

instance IsOESTextureHalfFloat OESTextureHalfFloat
instance GObjectClass OESTextureHalfFloat where
  toGObject = GObject . castRef . unOESTextureHalfFloat
  unsafeCastGObject = OESTextureHalfFloat . castRef . unGObject

castToOESTextureHalfFloat :: GObjectClass obj => obj -> OESTextureHalfFloat
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
  fromJSRef = return . fmap OESTextureHalfFloatLinear . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESTextureHalfFloatLinear o
toOESTextureHalfFloatLinear :: IsOESTextureHalfFloatLinear o => o -> OESTextureHalfFloatLinear
toOESTextureHalfFloatLinear = unsafeCastGObject . toGObject

instance IsOESTextureHalfFloatLinear OESTextureHalfFloatLinear
instance GObjectClass OESTextureHalfFloatLinear where
  toGObject = GObject . castRef . unOESTextureHalfFloatLinear
  unsafeCastGObject = OESTextureHalfFloatLinear . castRef . unGObject

castToOESTextureHalfFloatLinear :: GObjectClass obj => obj -> OESTextureHalfFloatLinear
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
  fromJSRef = return . fmap OESVertexArrayObject . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsOESVertexArrayObject o
toOESVertexArrayObject :: IsOESVertexArrayObject o => o -> OESVertexArrayObject
toOESVertexArrayObject = unsafeCastGObject . toGObject

instance IsOESVertexArrayObject OESVertexArrayObject
instance GObjectClass OESVertexArrayObject where
  toGObject = GObject . castRef . unOESVertexArrayObject
  unsafeCastGObject = OESVertexArrayObject . castRef . unGObject

castToOESVertexArrayObject :: GObjectClass obj => obj -> OESVertexArrayObject
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
  fromJSRef = return . fmap OfflineAudioCompletionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsOfflineAudioCompletionEvent o
toOfflineAudioCompletionEvent :: IsOfflineAudioCompletionEvent o => o -> OfflineAudioCompletionEvent
toOfflineAudioCompletionEvent = unsafeCastGObject . toGObject

instance IsOfflineAudioCompletionEvent OfflineAudioCompletionEvent
instance IsEvent OfflineAudioCompletionEvent
instance GObjectClass OfflineAudioCompletionEvent where
  toGObject = GObject . castRef . unOfflineAudioCompletionEvent
  unsafeCastGObject = OfflineAudioCompletionEvent . castRef . unGObject

castToOfflineAudioCompletionEvent :: GObjectClass obj => obj -> OfflineAudioCompletionEvent
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitOfflineAudioContext Mozilla webkitOfflineAudioContext documentation>
newtype OfflineAudioContext = OfflineAudioContext (JSRef OfflineAudioContext) deriving (Eq)

unOfflineAudioContext (OfflineAudioContext o) = o

instance ToJSRef OfflineAudioContext where
  toJSRef = return . unOfflineAudioContext
  {-# INLINE toJSRef #-}

instance FromJSRef OfflineAudioContext where
  fromJSRef = return . fmap OfflineAudioContext . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioContext o => IsOfflineAudioContext o
toOfflineAudioContext :: IsOfflineAudioContext o => o -> OfflineAudioContext
toOfflineAudioContext = unsafeCastGObject . toGObject

instance IsOfflineAudioContext OfflineAudioContext
instance IsAudioContext OfflineAudioContext
instance GObjectClass OfflineAudioContext where
  toGObject = GObject . castRef . unOfflineAudioContext
  unsafeCastGObject = OfflineAudioContext . castRef . unGObject

castToOfflineAudioContext :: GObjectClass obj => obj -> OfflineAudioContext
castToOfflineAudioContext = castTo gTypeOfflineAudioContext "OfflineAudioContext"

foreign import javascript unsafe "window[\"webkitOfflineAudioContext\"]" gTypeOfflineAudioContext' :: JSRef GType
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
  fromJSRef = return . fmap OscillatorNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsOscillatorNode o
toOscillatorNode :: IsOscillatorNode o => o -> OscillatorNode
toOscillatorNode = unsafeCastGObject . toGObject

instance IsOscillatorNode OscillatorNode
instance IsAudioNode OscillatorNode
instance IsEventTarget OscillatorNode
instance GObjectClass OscillatorNode where
  toGObject = GObject . castRef . unOscillatorNode
  unsafeCastGObject = OscillatorNode . castRef . unGObject

castToOscillatorNode :: GObjectClass obj => obj -> OscillatorNode
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
  fromJSRef = return . fmap OverflowEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsOverflowEvent o
toOverflowEvent :: IsOverflowEvent o => o -> OverflowEvent
toOverflowEvent = unsafeCastGObject . toGObject

instance IsOverflowEvent OverflowEvent
instance IsEvent OverflowEvent
instance GObjectClass OverflowEvent where
  toGObject = GObject . castRef . unOverflowEvent
  unsafeCastGObject = OverflowEvent . castRef . unGObject

castToOverflowEvent :: GObjectClass obj => obj -> OverflowEvent
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
  fromJSRef = return . fmap PageTransitionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsPageTransitionEvent o
toPageTransitionEvent :: IsPageTransitionEvent o => o -> PageTransitionEvent
toPageTransitionEvent = unsafeCastGObject . toGObject

instance IsPageTransitionEvent PageTransitionEvent
instance IsEvent PageTransitionEvent
instance GObjectClass PageTransitionEvent where
  toGObject = GObject . castRef . unPageTransitionEvent
  unsafeCastGObject = PageTransitionEvent . castRef . unGObject

castToPageTransitionEvent :: GObjectClass obj => obj -> PageTransitionEvent
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
  fromJSRef = return . fmap PannerNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsPannerNode o
toPannerNode :: IsPannerNode o => o -> PannerNode
toPannerNode = unsafeCastGObject . toGObject

instance IsPannerNode PannerNode
instance IsAudioNode PannerNode
instance IsEventTarget PannerNode
instance GObjectClass PannerNode where
  toGObject = GObject . castRef . unPannerNode
  unsafeCastGObject = PannerNode . castRef . unGObject

castToPannerNode :: GObjectClass obj => obj -> PannerNode
castToPannerNode = castTo gTypePannerNode "PannerNode"

foreign import javascript unsafe "window[\"webkitAudioPannerNode\"]" gTypePannerNode' :: JSRef GType
gTypePannerNode = GType gTypePannerNode'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.Performance".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Performance Mozilla Performance documentation>
newtype Performance = Performance (JSRef Performance) deriving (Eq)

unPerformance (Performance o) = o

instance ToJSRef Performance where
  toJSRef = return . unPerformance
  {-# INLINE toJSRef #-}

instance FromJSRef Performance where
  fromJSRef = return . fmap Performance . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPerformance o
toPerformance :: IsPerformance o => o -> Performance
toPerformance = unsafeCastGObject . toGObject

instance IsPerformance Performance
instance GObjectClass Performance where
  toGObject = GObject . castRef . unPerformance
  unsafeCastGObject = Performance . castRef . unGObject

castToPerformance :: GObjectClass obj => obj -> Performance
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
  fromJSRef = return . fmap PerformanceEntry . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPerformanceEntry o
toPerformanceEntry :: IsPerformanceEntry o => o -> PerformanceEntry
toPerformanceEntry = unsafeCastGObject . toGObject

instance IsPerformanceEntry PerformanceEntry
instance GObjectClass PerformanceEntry where
  toGObject = GObject . castRef . unPerformanceEntry
  unsafeCastGObject = PerformanceEntry . castRef . unGObject

castToPerformanceEntry :: GObjectClass obj => obj -> PerformanceEntry
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
  fromJSRef = return . fmap PerformanceEntryList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPerformanceEntryList o
toPerformanceEntryList :: IsPerformanceEntryList o => o -> PerformanceEntryList
toPerformanceEntryList = unsafeCastGObject . toGObject

instance IsPerformanceEntryList PerformanceEntryList
instance GObjectClass PerformanceEntryList where
  toGObject = GObject . castRef . unPerformanceEntryList
  unsafeCastGObject = PerformanceEntryList . castRef . unGObject

castToPerformanceEntryList :: GObjectClass obj => obj -> PerformanceEntryList
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
  fromJSRef = return . fmap PerformanceMark . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsPerformanceEntry o => IsPerformanceMark o
toPerformanceMark :: IsPerformanceMark o => o -> PerformanceMark
toPerformanceMark = unsafeCastGObject . toGObject

instance IsPerformanceMark PerformanceMark
instance IsPerformanceEntry PerformanceMark
instance GObjectClass PerformanceMark where
  toGObject = GObject . castRef . unPerformanceMark
  unsafeCastGObject = PerformanceMark . castRef . unGObject

castToPerformanceMark :: GObjectClass obj => obj -> PerformanceMark
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
  fromJSRef = return . fmap PerformanceMeasure . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsPerformanceEntry o => IsPerformanceMeasure o
toPerformanceMeasure :: IsPerformanceMeasure o => o -> PerformanceMeasure
toPerformanceMeasure = unsafeCastGObject . toGObject

instance IsPerformanceMeasure PerformanceMeasure
instance IsPerformanceEntry PerformanceMeasure
instance GObjectClass PerformanceMeasure where
  toGObject = GObject . castRef . unPerformanceMeasure
  unsafeCastGObject = PerformanceMeasure . castRef . unGObject

castToPerformanceMeasure :: GObjectClass obj => obj -> PerformanceMeasure
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
  fromJSRef = return . fmap PerformanceNavigation . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPerformanceNavigation o
toPerformanceNavigation :: IsPerformanceNavigation o => o -> PerformanceNavigation
toPerformanceNavigation = unsafeCastGObject . toGObject

instance IsPerformanceNavigation PerformanceNavigation
instance GObjectClass PerformanceNavigation where
  toGObject = GObject . castRef . unPerformanceNavigation
  unsafeCastGObject = PerformanceNavigation . castRef . unGObject

castToPerformanceNavigation :: GObjectClass obj => obj -> PerformanceNavigation
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
  fromJSRef = return . fmap PerformanceResourceTiming . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsPerformanceEntry o => IsPerformanceResourceTiming o
toPerformanceResourceTiming :: IsPerformanceResourceTiming o => o -> PerformanceResourceTiming
toPerformanceResourceTiming = unsafeCastGObject . toGObject

instance IsPerformanceResourceTiming PerformanceResourceTiming
instance IsPerformanceEntry PerformanceResourceTiming
instance GObjectClass PerformanceResourceTiming where
  toGObject = GObject . castRef . unPerformanceResourceTiming
  unsafeCastGObject = PerformanceResourceTiming . castRef . unGObject

castToPerformanceResourceTiming :: GObjectClass obj => obj -> PerformanceResourceTiming
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
  fromJSRef = return . fmap PerformanceTiming . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPerformanceTiming o
toPerformanceTiming :: IsPerformanceTiming o => o -> PerformanceTiming
toPerformanceTiming = unsafeCastGObject . toGObject

instance IsPerformanceTiming PerformanceTiming
instance GObjectClass PerformanceTiming where
  toGObject = GObject . castRef . unPerformanceTiming
  unsafeCastGObject = PerformanceTiming . castRef . unGObject

castToPerformanceTiming :: GObjectClass obj => obj -> PerformanceTiming
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
  fromJSRef = return . fmap PeriodicWave . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPeriodicWave o
toPeriodicWave :: IsPeriodicWave o => o -> PeriodicWave
toPeriodicWave = unsafeCastGObject . toGObject

instance IsPeriodicWave PeriodicWave
instance GObjectClass PeriodicWave where
  toGObject = GObject . castRef . unPeriodicWave
  unsafeCastGObject = PeriodicWave . castRef . unGObject

castToPeriodicWave :: GObjectClass obj => obj -> PeriodicWave
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
  fromJSRef = return . fmap PopStateEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsPopStateEvent o
toPopStateEvent :: IsPopStateEvent o => o -> PopStateEvent
toPopStateEvent = unsafeCastGObject . toGObject

instance IsPopStateEvent PopStateEvent
instance IsEvent PopStateEvent
instance GObjectClass PopStateEvent where
  toGObject = GObject . castRef . unPopStateEvent
  unsafeCastGObject = PopStateEvent . castRef . unGObject

castToPopStateEvent :: GObjectClass obj => obj -> PopStateEvent
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
  fromJSRef = return . fmap PositionCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionCallback o
toPositionCallback :: IsPositionCallback o => o -> PositionCallback
toPositionCallback = unsafeCastGObject . toGObject

instance IsPositionCallback PositionCallback
instance GObjectClass PositionCallback where
  toGObject = GObject . castRef . unPositionCallback
  unsafeCastGObject = PositionCallback . castRef . unGObject

castToPositionCallback :: GObjectClass obj => obj -> PositionCallback
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
  fromJSRef = return . fmap PositionErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsPositionErrorCallback o
toPositionErrorCallback :: IsPositionErrorCallback o => o -> PositionErrorCallback
toPositionErrorCallback = unsafeCastGObject . toGObject

instance IsPositionErrorCallback PositionErrorCallback
instance GObjectClass PositionErrorCallback where
  toGObject = GObject . castRef . unPositionErrorCallback
  unsafeCastGObject = PositionErrorCallback . castRef . unGObject

castToPositionErrorCallback :: GObjectClass obj => obj -> PositionErrorCallback
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction Mozilla ProcessingInstruction documentation>
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
  fromJSRef = return . fmap ProgressEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsProgressEvent o
toProgressEvent :: IsProgressEvent o => o -> ProgressEvent
toProgressEvent = unsafeCastGObject . toGObject

instance IsProgressEvent ProgressEvent
instance IsEvent ProgressEvent
instance GObjectClass ProgressEvent where
  toGObject = GObject . castRef . unProgressEvent
  unsafeCastGObject = ProgressEvent . castRef . unGObject

castToProgressEvent :: GObjectClass obj => obj -> ProgressEvent
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
  fromJSRef = return . fmap QuickTimePluginReplacement . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsQuickTimePluginReplacement o
toQuickTimePluginReplacement :: IsQuickTimePluginReplacement o => o -> QuickTimePluginReplacement
toQuickTimePluginReplacement = unsafeCastGObject . toGObject

instance IsQuickTimePluginReplacement QuickTimePluginReplacement
instance GObjectClass QuickTimePluginReplacement where
  toGObject = GObject . castRef . unQuickTimePluginReplacement
  unsafeCastGObject = QuickTimePluginReplacement . castRef . unGObject

castToQuickTimePluginReplacement :: GObjectClass obj => obj -> QuickTimePluginReplacement
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
-- | Functions for this inteface are in "GHCJS.DOM.RTCConfiguration".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration Mozilla RTCConfiguration documentation>
newtype RTCConfiguration = RTCConfiguration (JSRef RTCConfiguration) deriving (Eq)

unRTCConfiguration (RTCConfiguration o) = o

instance ToJSRef RTCConfiguration where
  toJSRef = return . unRTCConfiguration
  {-# INLINE toJSRef #-}

instance FromJSRef RTCConfiguration where
  fromJSRef = return . fmap RTCConfiguration . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCConfiguration o
toRTCConfiguration :: IsRTCConfiguration o => o -> RTCConfiguration
toRTCConfiguration = unsafeCastGObject . toGObject

instance IsRTCConfiguration RTCConfiguration
instance GObjectClass RTCConfiguration where
  toGObject = GObject . castRef . unRTCConfiguration
  unsafeCastGObject = RTCConfiguration . castRef . unGObject

castToRTCConfiguration :: GObjectClass obj => obj -> RTCConfiguration
castToRTCConfiguration = castTo gTypeRTCConfiguration "RTCConfiguration"

foreign import javascript unsafe "window[\"RTCConfiguration\"]" gTypeRTCConfiguration' :: JSRef GType
gTypeRTCConfiguration = GType gTypeRTCConfiguration'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDTMFSender".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender Mozilla RTCDTMFSender documentation>
newtype RTCDTMFSender = RTCDTMFSender (JSRef RTCDTMFSender) deriving (Eq)

unRTCDTMFSender (RTCDTMFSender o) = o

instance ToJSRef RTCDTMFSender where
  toJSRef = return . unRTCDTMFSender
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDTMFSender where
  fromJSRef = return . fmap RTCDTMFSender . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCDTMFSender o
toRTCDTMFSender :: IsRTCDTMFSender o => o -> RTCDTMFSender
toRTCDTMFSender = unsafeCastGObject . toGObject

instance IsRTCDTMFSender RTCDTMFSender
instance GObjectClass RTCDTMFSender where
  toGObject = GObject . castRef . unRTCDTMFSender
  unsafeCastGObject = RTCDTMFSender . castRef . unGObject

castToRTCDTMFSender :: GObjectClass obj => obj -> RTCDTMFSender
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
  fromJSRef = return . fmap RTCDTMFToneChangeEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsRTCDTMFToneChangeEvent o
toRTCDTMFToneChangeEvent :: IsRTCDTMFToneChangeEvent o => o -> RTCDTMFToneChangeEvent
toRTCDTMFToneChangeEvent = unsafeCastGObject . toGObject

instance IsRTCDTMFToneChangeEvent RTCDTMFToneChangeEvent
instance IsEvent RTCDTMFToneChangeEvent
instance GObjectClass RTCDTMFToneChangeEvent where
  toGObject = GObject . castRef . unRTCDTMFToneChangeEvent
  unsafeCastGObject = RTCDTMFToneChangeEvent . castRef . unGObject

castToRTCDTMFToneChangeEvent :: GObjectClass obj => obj -> RTCDTMFToneChangeEvent
castToRTCDTMFToneChangeEvent = castTo gTypeRTCDTMFToneChangeEvent "RTCDTMFToneChangeEvent"

foreign import javascript unsafe "window[\"RTCDTMFToneChangeEvent\"]" gTypeRTCDTMFToneChangeEvent' :: JSRef GType
gTypeRTCDTMFToneChangeEvent = GType gTypeRTCDTMFToneChangeEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCDataChannel".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel Mozilla RTCDataChannel documentation>
newtype RTCDataChannel = RTCDataChannel (JSRef RTCDataChannel) deriving (Eq)

unRTCDataChannel (RTCDataChannel o) = o

instance ToJSRef RTCDataChannel where
  toJSRef = return . unRTCDataChannel
  {-# INLINE toJSRef #-}

instance FromJSRef RTCDataChannel where
  fromJSRef = return . fmap RTCDataChannel . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCDataChannel o
toRTCDataChannel :: IsRTCDataChannel o => o -> RTCDataChannel
toRTCDataChannel = unsafeCastGObject . toGObject

instance IsRTCDataChannel RTCDataChannel
instance GObjectClass RTCDataChannel where
  toGObject = GObject . castRef . unRTCDataChannel
  unsafeCastGObject = RTCDataChannel . castRef . unGObject

castToRTCDataChannel :: GObjectClass obj => obj -> RTCDataChannel
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
  fromJSRef = return . fmap RTCDataChannelEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsRTCDataChannelEvent o
toRTCDataChannelEvent :: IsRTCDataChannelEvent o => o -> RTCDataChannelEvent
toRTCDataChannelEvent = unsafeCastGObject . toGObject

instance IsRTCDataChannelEvent RTCDataChannelEvent
instance IsEvent RTCDataChannelEvent
instance GObjectClass RTCDataChannelEvent where
  toGObject = GObject . castRef . unRTCDataChannelEvent
  unsafeCastGObject = RTCDataChannelEvent . castRef . unGObject

castToRTCDataChannelEvent :: GObjectClass obj => obj -> RTCDataChannelEvent
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
  fromJSRef = return . fmap RTCIceCandidate . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCIceCandidate o
toRTCIceCandidate :: IsRTCIceCandidate o => o -> RTCIceCandidate
toRTCIceCandidate = unsafeCastGObject . toGObject

instance IsRTCIceCandidate RTCIceCandidate
instance GObjectClass RTCIceCandidate where
  toGObject = GObject . castRef . unRTCIceCandidate
  unsafeCastGObject = RTCIceCandidate . castRef . unGObject

castToRTCIceCandidate :: GObjectClass obj => obj -> RTCIceCandidate
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
  fromJSRef = return . fmap RTCIceCandidateEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsRTCIceCandidateEvent o
toRTCIceCandidateEvent :: IsRTCIceCandidateEvent o => o -> RTCIceCandidateEvent
toRTCIceCandidateEvent = unsafeCastGObject . toGObject

instance IsRTCIceCandidateEvent RTCIceCandidateEvent
instance IsEvent RTCIceCandidateEvent
instance GObjectClass RTCIceCandidateEvent where
  toGObject = GObject . castRef . unRTCIceCandidateEvent
  unsafeCastGObject = RTCIceCandidateEvent . castRef . unGObject

castToRTCIceCandidateEvent :: GObjectClass obj => obj -> RTCIceCandidateEvent
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
  fromJSRef = return . fmap RTCIceServer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCIceServer o
toRTCIceServer :: IsRTCIceServer o => o -> RTCIceServer
toRTCIceServer = unsafeCastGObject . toGObject

instance IsRTCIceServer RTCIceServer
instance GObjectClass RTCIceServer where
  toGObject = GObject . castRef . unRTCIceServer
  unsafeCastGObject = RTCIceServer . castRef . unGObject

castToRTCIceServer :: GObjectClass obj => obj -> RTCIceServer
castToRTCIceServer = castTo gTypeRTCIceServer "RTCIceServer"

foreign import javascript unsafe "window[\"RTCIceServer\"]" gTypeRTCIceServer' :: JSRef GType
gTypeRTCIceServer = GType gTypeRTCIceServer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.RTCPeerConnection".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation>
newtype RTCPeerConnection = RTCPeerConnection (JSRef RTCPeerConnection) deriving (Eq)

unRTCPeerConnection (RTCPeerConnection o) = o

instance ToJSRef RTCPeerConnection where
  toJSRef = return . unRTCPeerConnection
  {-# INLINE toJSRef #-}

instance FromJSRef RTCPeerConnection where
  fromJSRef = return . fmap RTCPeerConnection . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCPeerConnection o
toRTCPeerConnection :: IsRTCPeerConnection o => o -> RTCPeerConnection
toRTCPeerConnection = unsafeCastGObject . toGObject

instance IsRTCPeerConnection RTCPeerConnection
instance GObjectClass RTCPeerConnection where
  toGObject = GObject . castRef . unRTCPeerConnection
  unsafeCastGObject = RTCPeerConnection . castRef . unGObject

castToRTCPeerConnection :: GObjectClass obj => obj -> RTCPeerConnection
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
  fromJSRef = return . fmap RTCPeerConnectionErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCPeerConnectionErrorCallback o
toRTCPeerConnectionErrorCallback :: IsRTCPeerConnectionErrorCallback o => o -> RTCPeerConnectionErrorCallback
toRTCPeerConnectionErrorCallback = unsafeCastGObject . toGObject

instance IsRTCPeerConnectionErrorCallback RTCPeerConnectionErrorCallback
instance GObjectClass RTCPeerConnectionErrorCallback where
  toGObject = GObject . castRef . unRTCPeerConnectionErrorCallback
  unsafeCastGObject = RTCPeerConnectionErrorCallback . castRef . unGObject

castToRTCPeerConnectionErrorCallback :: GObjectClass obj => obj -> RTCPeerConnectionErrorCallback
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
  fromJSRef = return . fmap RTCSessionDescription . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCSessionDescription o
toRTCSessionDescription :: IsRTCSessionDescription o => o -> RTCSessionDescription
toRTCSessionDescription = unsafeCastGObject . toGObject

instance IsRTCSessionDescription RTCSessionDescription
instance GObjectClass RTCSessionDescription where
  toGObject = GObject . castRef . unRTCSessionDescription
  unsafeCastGObject = RTCSessionDescription . castRef . unGObject

castToRTCSessionDescription :: GObjectClass obj => obj -> RTCSessionDescription
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
  fromJSRef = return . fmap RTCSessionDescriptionCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCSessionDescriptionCallback o
toRTCSessionDescriptionCallback :: IsRTCSessionDescriptionCallback o => o -> RTCSessionDescriptionCallback
toRTCSessionDescriptionCallback = unsafeCastGObject . toGObject

instance IsRTCSessionDescriptionCallback RTCSessionDescriptionCallback
instance GObjectClass RTCSessionDescriptionCallback where
  toGObject = GObject . castRef . unRTCSessionDescriptionCallback
  unsafeCastGObject = RTCSessionDescriptionCallback . castRef . unGObject

castToRTCSessionDescriptionCallback :: GObjectClass obj => obj -> RTCSessionDescriptionCallback
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
  fromJSRef = return . fmap RTCStatsCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCStatsCallback o
toRTCStatsCallback :: IsRTCStatsCallback o => o -> RTCStatsCallback
toRTCStatsCallback = unsafeCastGObject . toGObject

instance IsRTCStatsCallback RTCStatsCallback
instance GObjectClass RTCStatsCallback where
  toGObject = GObject . castRef . unRTCStatsCallback
  unsafeCastGObject = RTCStatsCallback . castRef . unGObject

castToRTCStatsCallback :: GObjectClass obj => obj -> RTCStatsCallback
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
  fromJSRef = return . fmap RTCStatsReport . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCStatsReport o
toRTCStatsReport :: IsRTCStatsReport o => o -> RTCStatsReport
toRTCStatsReport = unsafeCastGObject . toGObject

instance IsRTCStatsReport RTCStatsReport
instance GObjectClass RTCStatsReport where
  toGObject = GObject . castRef . unRTCStatsReport
  unsafeCastGObject = RTCStatsReport . castRef . unGObject

castToRTCStatsReport :: GObjectClass obj => obj -> RTCStatsReport
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
  fromJSRef = return . fmap RTCStatsResponse . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRTCStatsResponse o
toRTCStatsResponse :: IsRTCStatsResponse o => o -> RTCStatsResponse
toRTCStatsResponse = unsafeCastGObject . toGObject

instance IsRTCStatsResponse RTCStatsResponse
instance GObjectClass RTCStatsResponse where
  toGObject = GObject . castRef . unRTCStatsResponse
  unsafeCastGObject = RTCStatsResponse . castRef . unGObject

castToRTCStatsResponse :: GObjectClass obj => obj -> RTCStatsResponse
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
  fromJSRef = return . fmap RadioNodeList . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsNodeList o => IsRadioNodeList o
toRadioNodeList :: IsRadioNodeList o => o -> RadioNodeList
toRadioNodeList = unsafeCastGObject . toGObject

instance IsRadioNodeList RadioNodeList
instance IsNodeList RadioNodeList
instance GObjectClass RadioNodeList where
  toGObject = GObject . castRef . unRadioNodeList
  unsafeCastGObject = RadioNodeList . castRef . unGObject

castToRadioNodeList :: GObjectClass obj => obj -> RadioNodeList
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
-- | Functions for this inteface are in "GHCJS.DOM.Rect".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Rect Mozilla Rect documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.RequestAnimationFrameCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation>
newtype RequestAnimationFrameCallback = RequestAnimationFrameCallback (JSRef RequestAnimationFrameCallback) deriving (Eq)

unRequestAnimationFrameCallback (RequestAnimationFrameCallback o) = o

instance ToJSRef RequestAnimationFrameCallback where
  toJSRef = return . unRequestAnimationFrameCallback
  {-# INLINE toJSRef #-}

instance FromJSRef RequestAnimationFrameCallback where
  fromJSRef = return . fmap RequestAnimationFrameCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsRequestAnimationFrameCallback o
toRequestAnimationFrameCallback :: IsRequestAnimationFrameCallback o => o -> RequestAnimationFrameCallback
toRequestAnimationFrameCallback = unsafeCastGObject . toGObject

instance IsRequestAnimationFrameCallback RequestAnimationFrameCallback
instance GObjectClass RequestAnimationFrameCallback where
  toGObject = GObject . castRef . unRequestAnimationFrameCallback
  unsafeCastGObject = RequestAnimationFrameCallback . castRef . unGObject

castToRequestAnimationFrameCallback :: GObjectClass obj => obj -> RequestAnimationFrameCallback
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
  fromJSRef = return . fmap SQLError . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLError o
toSQLError :: IsSQLError o => o -> SQLError
toSQLError = unsafeCastGObject . toGObject

instance IsSQLError SQLError
instance GObjectClass SQLError where
  toGObject = GObject . castRef . unSQLError
  unsafeCastGObject = SQLError . castRef . unGObject

castToSQLError :: GObjectClass obj => obj -> SQLError
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
  fromJSRef = return . fmap SQLResultSet . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLResultSet o
toSQLResultSet :: IsSQLResultSet o => o -> SQLResultSet
toSQLResultSet = unsafeCastGObject . toGObject

instance IsSQLResultSet SQLResultSet
instance GObjectClass SQLResultSet where
  toGObject = GObject . castRef . unSQLResultSet
  unsafeCastGObject = SQLResultSet . castRef . unGObject

castToSQLResultSet :: GObjectClass obj => obj -> SQLResultSet
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
  fromJSRef = return . fmap SQLResultSetRowList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLResultSetRowList o
toSQLResultSetRowList :: IsSQLResultSetRowList o => o -> SQLResultSetRowList
toSQLResultSetRowList = unsafeCastGObject . toGObject

instance IsSQLResultSetRowList SQLResultSetRowList
instance GObjectClass SQLResultSetRowList where
  toGObject = GObject . castRef . unSQLResultSetRowList
  unsafeCastGObject = SQLResultSetRowList . castRef . unGObject

castToSQLResultSetRowList :: GObjectClass obj => obj -> SQLResultSetRowList
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
  fromJSRef = return . fmap SQLStatementCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLStatementCallback o
toSQLStatementCallback :: IsSQLStatementCallback o => o -> SQLStatementCallback
toSQLStatementCallback = unsafeCastGObject . toGObject

instance IsSQLStatementCallback SQLStatementCallback
instance GObjectClass SQLStatementCallback where
  toGObject = GObject . castRef . unSQLStatementCallback
  unsafeCastGObject = SQLStatementCallback . castRef . unGObject

castToSQLStatementCallback :: GObjectClass obj => obj -> SQLStatementCallback
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
  fromJSRef = return . fmap SQLStatementErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLStatementErrorCallback o
toSQLStatementErrorCallback :: IsSQLStatementErrorCallback o => o -> SQLStatementErrorCallback
toSQLStatementErrorCallback = unsafeCastGObject . toGObject

instance IsSQLStatementErrorCallback SQLStatementErrorCallback
instance GObjectClass SQLStatementErrorCallback where
  toGObject = GObject . castRef . unSQLStatementErrorCallback
  unsafeCastGObject = SQLStatementErrorCallback . castRef . unGObject

castToSQLStatementErrorCallback :: GObjectClass obj => obj -> SQLStatementErrorCallback
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
  fromJSRef = return . fmap SQLTransaction . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLTransaction o
toSQLTransaction :: IsSQLTransaction o => o -> SQLTransaction
toSQLTransaction = unsafeCastGObject . toGObject

instance IsSQLTransaction SQLTransaction
instance GObjectClass SQLTransaction where
  toGObject = GObject . castRef . unSQLTransaction
  unsafeCastGObject = SQLTransaction . castRef . unGObject

castToSQLTransaction :: GObjectClass obj => obj -> SQLTransaction
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
  fromJSRef = return . fmap SQLTransactionCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLTransactionCallback o
toSQLTransactionCallback :: IsSQLTransactionCallback o => o -> SQLTransactionCallback
toSQLTransactionCallback = unsafeCastGObject . toGObject

instance IsSQLTransactionCallback SQLTransactionCallback
instance GObjectClass SQLTransactionCallback where
  toGObject = GObject . castRef . unSQLTransactionCallback
  unsafeCastGObject = SQLTransactionCallback . castRef . unGObject

castToSQLTransactionCallback :: GObjectClass obj => obj -> SQLTransactionCallback
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
  fromJSRef = return . fmap SQLTransactionErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLTransactionErrorCallback o
toSQLTransactionErrorCallback :: IsSQLTransactionErrorCallback o => o -> SQLTransactionErrorCallback
toSQLTransactionErrorCallback = unsafeCastGObject . toGObject

instance IsSQLTransactionErrorCallback SQLTransactionErrorCallback
instance GObjectClass SQLTransactionErrorCallback where
  toGObject = GObject . castRef . unSQLTransactionErrorCallback
  unsafeCastGObject = SQLTransactionErrorCallback . castRef . unGObject

castToSQLTransactionErrorCallback :: GObjectClass obj => obj -> SQLTransactionErrorCallback
castToSQLTransactionErrorCallback = castTo gTypeSQLTransactionErrorCallback "SQLTransactionErrorCallback"

foreign import javascript unsafe "window[\"SQLTransactionErrorCallback\"]" gTypeSQLTransactionErrorCallback' :: JSRef GType
gTypeSQLTransactionErrorCallback = GType gTypeSQLTransactionErrorCallback'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransactionSync".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSync Mozilla SQLTransactionSync documentation>
newtype SQLTransactionSync = SQLTransactionSync (JSRef SQLTransactionSync) deriving (Eq)

unSQLTransactionSync (SQLTransactionSync o) = o

instance ToJSRef SQLTransactionSync where
  toJSRef = return . unSQLTransactionSync
  {-# INLINE toJSRef #-}

instance FromJSRef SQLTransactionSync where
  fromJSRef = return . fmap SQLTransactionSync . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLTransactionSync o
toSQLTransactionSync :: IsSQLTransactionSync o => o -> SQLTransactionSync
toSQLTransactionSync = unsafeCastGObject . toGObject

instance IsSQLTransactionSync SQLTransactionSync
instance GObjectClass SQLTransactionSync where
  toGObject = GObject . castRef . unSQLTransactionSync
  unsafeCastGObject = SQLTransactionSync . castRef . unGObject

castToSQLTransactionSync :: GObjectClass obj => obj -> SQLTransactionSync
castToSQLTransactionSync = castTo gTypeSQLTransactionSync "SQLTransactionSync"

foreign import javascript unsafe "window[\"SQLTransactionSync\"]" gTypeSQLTransactionSync' :: JSRef GType
gTypeSQLTransactionSync = GType gTypeSQLTransactionSync'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SQLTransactionSyncCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionSyncCallback Mozilla SQLTransactionSyncCallback documentation>
newtype SQLTransactionSyncCallback = SQLTransactionSyncCallback (JSRef SQLTransactionSyncCallback) deriving (Eq)

unSQLTransactionSyncCallback (SQLTransactionSyncCallback o) = o

instance ToJSRef SQLTransactionSyncCallback where
  toJSRef = return . unSQLTransactionSyncCallback
  {-# INLINE toJSRef #-}

instance FromJSRef SQLTransactionSyncCallback where
  fromJSRef = return . fmap SQLTransactionSyncCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSQLTransactionSyncCallback o
toSQLTransactionSyncCallback :: IsSQLTransactionSyncCallback o => o -> SQLTransactionSyncCallback
toSQLTransactionSyncCallback = unsafeCastGObject . toGObject

instance IsSQLTransactionSyncCallback SQLTransactionSyncCallback
instance GObjectClass SQLTransactionSyncCallback where
  toGObject = GObject . castRef . unSQLTransactionSyncCallback
  unsafeCastGObject = SQLTransactionSyncCallback . castRef . unGObject

castToSQLTransactionSyncCallback :: GObjectClass obj => obj -> SQLTransactionSyncCallback
castToSQLTransactionSyncCallback = castTo gTypeSQLTransactionSyncCallback "SQLTransactionSyncCallback"

foreign import javascript unsafe "window[\"SQLTransactionSyncCallback\"]" gTypeSQLTransactionSyncCallback' :: JSRef GType
gTypeSQLTransactionSyncCallback = GType gTypeSQLTransactionSyncCallback'
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement Mozilla SVGAElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAltGlyphDefElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphDefElement Mozilla SVGAltGlyphDefElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement Mozilla SVGAltGlyphElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAltGlyphItemElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphItemElement Mozilla SVGAltGlyphItemElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateColorElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateColorElement Mozilla SVGAnimateColorElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateElement Mozilla SVGAnimateElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateMotionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateMotionElement Mozilla SVGAnimateMotionElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimateTransformElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimateTransformElement Mozilla SVGAnimateTransformElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGAnimationElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement Mozilla SVGAnimationElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGCircleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement Mozilla SVGCircleElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGClipPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement Mozilla SVGClipPathElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGComponentTransferFunctionElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement Mozilla SVGComponentTransferFunctionElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGCursorElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement Mozilla SVGCursorElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDefsElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement Mozilla SVGDefsElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDescElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement Mozilla SVGDescElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGDocument".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Document"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument Mozilla SVGDocument documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement Mozilla SVGElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGElementInstance".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstance Mozilla SVGElementInstance documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGElementInstanceList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstanceList Mozilla SVGElementInstanceList documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGEllipseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement Mozilla SVGEllipseElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEBlendElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement Mozilla SVGFEBlendElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEColorMatrixElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement Mozilla SVGFEColorMatrixElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEComponentTransferElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement Mozilla SVGFEComponentTransferElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFECompositeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement Mozilla SVGFECompositeElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEConvolveMatrixElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement Mozilla SVGFEConvolveMatrixElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDiffuseLightingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement Mozilla SVGFEDiffuseLightingElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDisplacementMapElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement Mozilla SVGFEDisplacementMapElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDistantLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement Mozilla SVGFEDistantLightElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEDropShadowElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement Mozilla SVGFEDropShadowElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFloodElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFloodElement Mozilla SVGFEFloodElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncAElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncAElement Mozilla SVGFEFuncAElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncBElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncBElement Mozilla SVGFEFuncBElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncGElement Mozilla SVGFEFuncGElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEFuncRElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGComponentTransferFunctionElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncRElement Mozilla SVGFEFuncRElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEGaussianBlurElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement Mozilla SVGFEGaussianBlurElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement Mozilla SVGFEImageElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMergeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeElement Mozilla SVGFEMergeElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMergeNodeElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeNodeElement Mozilla SVGFEMergeNodeElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEMorphologyElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement Mozilla SVGFEMorphologyElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEOffsetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement Mozilla SVGFEOffsetElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFEPointLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement Mozilla SVGFEPointLightElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFESpecularLightingElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement Mozilla SVGFESpecularLightingElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFESpotLightElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement Mozilla SVGFESpotLightElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFETileElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETileElement Mozilla SVGFETileElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFETurbulenceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement Mozilla SVGFETurbulenceElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFilterElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement Mozilla SVGFilterElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontElement Mozilla SVGFontElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceElement Mozilla SVGFontFaceElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceFormatElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceFormatElement Mozilla SVGFontFaceFormatElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceNameElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceNameElement Mozilla SVGFontFaceNameElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceSrcElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceSrcElement Mozilla SVGFontFaceSrcElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGFontFaceUriElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGFontFaceUriElement Mozilla SVGFontFaceUriElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGForeignObjectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement Mozilla SVGForeignObjectElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement Mozilla SVGGElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGlyphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphElement Mozilla SVGGlyphElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGlyphRefElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement Mozilla SVGGlyphRefElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement Mozilla SVGGradientElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGGraphicsElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement Mozilla SVGGraphicsElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGHKernElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGHKernElement Mozilla SVGHKernElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGImageElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement Mozilla SVGImageElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLineElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement Mozilla SVGLineElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGLinearGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGradientElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGLinearGradientElement Mozilla SVGLinearGradientElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMPathElement Mozilla SVGMPathElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMarkerElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement Mozilla SVGMarkerElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMaskElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement Mozilla SVGMaskElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMetadataElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement Mozilla SVGMetadataElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGMissingGlyphElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGMissingGlyphElement Mozilla SVGMissingGlyphElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPathElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement Mozilla SVGPathElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPatternElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement Mozilla SVGPatternElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPolygonElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement Mozilla SVGPolygonElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGPolylineElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement Mozilla SVGPolylineElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRadialGradientElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGradientElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement Mozilla SVGRadialGradientElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGRectElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement Mozilla SVGRectElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSVGElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement Mozilla SVGSVGElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGScriptElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement Mozilla SVGScriptElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSetElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGAnimationElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSetElement Mozilla SVGSetElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStopElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement Mozilla SVGStopElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGStyleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement Mozilla SVGStyleElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSwitchElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement Mozilla SVGSwitchElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGSymbolElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement Mozilla SVGSymbolElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTRefElement Mozilla SVGTRefElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement Mozilla SVGTSpanElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTextContentElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement Mozilla SVGTextContentElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement Mozilla SVGTextElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement Mozilla SVGTextPathElement documentation>
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement Mozilla SVGTextPositioningElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGTitleElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement Mozilla SVGTitleElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGUseElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGGraphicsElement"
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement Mozilla SVGUseElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGVKernElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGVKernElement Mozilla SVGVKernElement documentation>
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
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SVGViewElement".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.SVGElement"
--     * "GHCJS.DOM.Element"
--     * "GHCJS.DOM.Node"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement Mozilla SVGViewElement documentation>
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
  fromJSRef = return . fmap ScriptProcessorNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsScriptProcessorNode o
toScriptProcessorNode :: IsScriptProcessorNode o => o -> ScriptProcessorNode
toScriptProcessorNode = unsafeCastGObject . toGObject

instance IsScriptProcessorNode ScriptProcessorNode
instance IsAudioNode ScriptProcessorNode
instance IsEventTarget ScriptProcessorNode
instance GObjectClass ScriptProcessorNode where
  toGObject = GObject . castRef . unScriptProcessorNode
  unsafeCastGObject = ScriptProcessorNode . castRef . unGObject

castToScriptProcessorNode :: GObjectClass obj => obj -> ScriptProcessorNode
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
  fromJSRef = return . fmap ScriptProfile . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsScriptProfile o
toScriptProfile :: IsScriptProfile o => o -> ScriptProfile
toScriptProfile = unsafeCastGObject . toGObject

instance IsScriptProfile ScriptProfile
instance GObjectClass ScriptProfile where
  toGObject = GObject . castRef . unScriptProfile
  unsafeCastGObject = ScriptProfile . castRef . unGObject

castToScriptProfile :: GObjectClass obj => obj -> ScriptProfile
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
  fromJSRef = return . fmap ScriptProfileNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsScriptProfileNode o
toScriptProfileNode :: IsScriptProfileNode o => o -> ScriptProfileNode
toScriptProfileNode = unsafeCastGObject . toGObject

instance IsScriptProfileNode ScriptProfileNode
instance GObjectClass ScriptProfileNode where
  toGObject = GObject . castRef . unScriptProfileNode
  unsafeCastGObject = ScriptProfileNode . castRef . unGObject

castToScriptProfileNode :: GObjectClass obj => obj -> ScriptProfileNode
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
  fromJSRef = return . fmap SecurityPolicyViolationEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsSecurityPolicyViolationEvent o
toSecurityPolicyViolationEvent :: IsSecurityPolicyViolationEvent o => o -> SecurityPolicyViolationEvent
toSecurityPolicyViolationEvent = unsafeCastGObject . toGObject

instance IsSecurityPolicyViolationEvent SecurityPolicyViolationEvent
instance IsEvent SecurityPolicyViolationEvent
instance GObjectClass SecurityPolicyViolationEvent where
  toGObject = GObject . castRef . unSecurityPolicyViolationEvent
  unsafeCastGObject = SecurityPolicyViolationEvent . castRef . unGObject

castToSecurityPolicyViolationEvent :: GObjectClass obj => obj -> SecurityPolicyViolationEvent
castToSecurityPolicyViolationEvent = castTo gTypeSecurityPolicyViolationEvent "SecurityPolicyViolationEvent"

foreign import javascript unsafe "window[\"SecurityPolicyViolationEvent\"]" gTypeSecurityPolicyViolationEvent' :: JSRef GType
gTypeSecurityPolicyViolationEvent = GType gTypeSecurityPolicyViolationEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SharedWorker".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.EventTarget"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker Mozilla SharedWorker documentation>
newtype SharedWorker = SharedWorker (JSRef SharedWorker) deriving (Eq)

unSharedWorker (SharedWorker o) = o

instance ToJSRef SharedWorker where
  toJSRef = return . unSharedWorker
  {-# INLINE toJSRef #-}

instance FromJSRef SharedWorker where
  fromJSRef = return . fmap SharedWorker . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsSharedWorker o
toSharedWorker :: IsSharedWorker o => o -> SharedWorker
toSharedWorker = unsafeCastGObject . toGObject

instance IsSharedWorker SharedWorker
instance IsEventTarget SharedWorker
instance GObjectClass SharedWorker where
  toGObject = GObject . castRef . unSharedWorker
  unsafeCastGObject = SharedWorker . castRef . unGObject

castToSharedWorker :: GObjectClass obj => obj -> SharedWorker
castToSharedWorker = castTo gTypeSharedWorker "SharedWorker"

foreign import javascript unsafe "window[\"SharedWorker\"]" gTypeSharedWorker' :: JSRef GType
gTypeSharedWorker = GType gTypeSharedWorker'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SharedWorkerGlobalScope".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.WorkerGlobalScope"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope Mozilla SharedWorkerGlobalScope documentation>
newtype SharedWorkerGlobalScope = SharedWorkerGlobalScope (JSRef SharedWorkerGlobalScope) deriving (Eq)

unSharedWorkerGlobalScope (SharedWorkerGlobalScope o) = o

instance ToJSRef SharedWorkerGlobalScope where
  toJSRef = return . unSharedWorkerGlobalScope
  {-# INLINE toJSRef #-}

instance FromJSRef SharedWorkerGlobalScope where
  fromJSRef = return . fmap SharedWorkerGlobalScope . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsWorkerGlobalScope o => IsSharedWorkerGlobalScope o
toSharedWorkerGlobalScope :: IsSharedWorkerGlobalScope o => o -> SharedWorkerGlobalScope
toSharedWorkerGlobalScope = unsafeCastGObject . toGObject

instance IsSharedWorkerGlobalScope SharedWorkerGlobalScope
instance IsWorkerGlobalScope SharedWorkerGlobalScope
instance GObjectClass SharedWorkerGlobalScope where
  toGObject = GObject . castRef . unSharedWorkerGlobalScope
  unsafeCastGObject = SharedWorkerGlobalScope . castRef . unGObject

castToSharedWorkerGlobalScope :: GObjectClass obj => obj -> SharedWorkerGlobalScope
castToSharedWorkerGlobalScope = castTo gTypeSharedWorkerGlobalScope "SharedWorkerGlobalScope"

foreign import javascript unsafe "window[\"SharedWorkerGlobalScope\"]" gTypeSharedWorkerGlobalScope' :: JSRef GType
gTypeSharedWorkerGlobalScope = GType gTypeSharedWorkerGlobalScope'
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
  fromJSRef = return . fmap SourceBuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsSourceBuffer o
toSourceBuffer :: IsSourceBuffer o => o -> SourceBuffer
toSourceBuffer = unsafeCastGObject . toGObject

instance IsSourceBuffer SourceBuffer
instance IsEventTarget SourceBuffer
instance GObjectClass SourceBuffer where
  toGObject = GObject . castRef . unSourceBuffer
  unsafeCastGObject = SourceBuffer . castRef . unGObject

castToSourceBuffer :: GObjectClass obj => obj -> SourceBuffer
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
  fromJSRef = return . fmap SourceBufferList . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsSourceBufferList o
toSourceBufferList :: IsSourceBufferList o => o -> SourceBufferList
toSourceBufferList = unsafeCastGObject . toGObject

instance IsSourceBufferList SourceBufferList
instance IsEventTarget SourceBufferList
instance GObjectClass SourceBufferList where
  toGObject = GObject . castRef . unSourceBufferList
  unsafeCastGObject = SourceBufferList . castRef . unGObject

castToSourceBufferList :: GObjectClass obj => obj -> SourceBufferList
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
  fromJSRef = return . fmap SourceInfo . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSourceInfo o
toSourceInfo :: IsSourceInfo o => o -> SourceInfo
toSourceInfo = unsafeCastGObject . toGObject

instance IsSourceInfo SourceInfo
instance GObjectClass SourceInfo where
  toGObject = GObject . castRef . unSourceInfo
  unsafeCastGObject = SourceInfo . castRef . unGObject

castToSourceInfo :: GObjectClass obj => obj -> SourceInfo
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
  fromJSRef = return . fmap SpeechSynthesis . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSpeechSynthesis o
toSpeechSynthesis :: IsSpeechSynthesis o => o -> SpeechSynthesis
toSpeechSynthesis = unsafeCastGObject . toGObject

instance IsSpeechSynthesis SpeechSynthesis
instance GObjectClass SpeechSynthesis where
  toGObject = GObject . castRef . unSpeechSynthesis
  unsafeCastGObject = SpeechSynthesis . castRef . unGObject

castToSpeechSynthesis :: GObjectClass obj => obj -> SpeechSynthesis
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
  fromJSRef = return . fmap SpeechSynthesisEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsSpeechSynthesisEvent o
toSpeechSynthesisEvent :: IsSpeechSynthesisEvent o => o -> SpeechSynthesisEvent
toSpeechSynthesisEvent = unsafeCastGObject . toGObject

instance IsSpeechSynthesisEvent SpeechSynthesisEvent
instance IsEvent SpeechSynthesisEvent
instance GObjectClass SpeechSynthesisEvent where
  toGObject = GObject . castRef . unSpeechSynthesisEvent
  unsafeCastGObject = SpeechSynthesisEvent . castRef . unGObject

castToSpeechSynthesisEvent :: GObjectClass obj => obj -> SpeechSynthesisEvent
castToSpeechSynthesisEvent = castTo gTypeSpeechSynthesisEvent "SpeechSynthesisEvent"

foreign import javascript unsafe "window[\"SpeechSynthesisEvent\"]" gTypeSpeechSynthesisEvent' :: JSRef GType
gTypeSpeechSynthesisEvent = GType gTypeSpeechSynthesisEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.SpeechSynthesisUtterance".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance Mozilla SpeechSynthesisUtterance documentation>
newtype SpeechSynthesisUtterance = SpeechSynthesisUtterance (JSRef SpeechSynthesisUtterance) deriving (Eq)

unSpeechSynthesisUtterance (SpeechSynthesisUtterance o) = o

instance ToJSRef SpeechSynthesisUtterance where
  toJSRef = return . unSpeechSynthesisUtterance
  {-# INLINE toJSRef #-}

instance FromJSRef SpeechSynthesisUtterance where
  fromJSRef = return . fmap SpeechSynthesisUtterance . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSpeechSynthesisUtterance o
toSpeechSynthesisUtterance :: IsSpeechSynthesisUtterance o => o -> SpeechSynthesisUtterance
toSpeechSynthesisUtterance = unsafeCastGObject . toGObject

instance IsSpeechSynthesisUtterance SpeechSynthesisUtterance
instance GObjectClass SpeechSynthesisUtterance where
  toGObject = GObject . castRef . unSpeechSynthesisUtterance
  unsafeCastGObject = SpeechSynthesisUtterance . castRef . unGObject

castToSpeechSynthesisUtterance :: GObjectClass obj => obj -> SpeechSynthesisUtterance
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
  fromJSRef = return . fmap SpeechSynthesisVoice . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSpeechSynthesisVoice o
toSpeechSynthesisVoice :: IsSpeechSynthesisVoice o => o -> SpeechSynthesisVoice
toSpeechSynthesisVoice = unsafeCastGObject . toGObject

instance IsSpeechSynthesisVoice SpeechSynthesisVoice
instance GObjectClass SpeechSynthesisVoice where
  toGObject = GObject . castRef . unSpeechSynthesisVoice
  unsafeCastGObject = SpeechSynthesisVoice . castRef . unGObject

castToSpeechSynthesisVoice :: GObjectClass obj => obj -> SpeechSynthesisVoice
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
-- | Functions for this inteface are in "GHCJS.DOM.StorageErrorCallback".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation>
newtype StorageErrorCallback = StorageErrorCallback (JSRef StorageErrorCallback) deriving (Eq)

unStorageErrorCallback (StorageErrorCallback o) = o

instance ToJSRef StorageErrorCallback where
  toJSRef = return . unStorageErrorCallback
  {-# INLINE toJSRef #-}

instance FromJSRef StorageErrorCallback where
  fromJSRef = return . fmap StorageErrorCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorageErrorCallback o
toStorageErrorCallback :: IsStorageErrorCallback o => o -> StorageErrorCallback
toStorageErrorCallback = unsafeCastGObject . toGObject

instance IsStorageErrorCallback StorageErrorCallback
instance GObjectClass StorageErrorCallback where
  toGObject = GObject . castRef . unStorageErrorCallback
  unsafeCastGObject = StorageErrorCallback . castRef . unGObject

castToStorageErrorCallback :: GObjectClass obj => obj -> StorageErrorCallback
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
  fromJSRef = return . fmap StorageEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsStorageEvent o
toStorageEvent :: IsStorageEvent o => o -> StorageEvent
toStorageEvent = unsafeCastGObject . toGObject

instance IsStorageEvent StorageEvent
instance IsEvent StorageEvent
instance GObjectClass StorageEvent where
  toGObject = GObject . castRef . unStorageEvent
  unsafeCastGObject = StorageEvent . castRef . unGObject

castToStorageEvent :: GObjectClass obj => obj -> StorageEvent
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
  fromJSRef = return . fmap StorageQuota . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorageQuota o
toStorageQuota :: IsStorageQuota o => o -> StorageQuota
toStorageQuota = unsafeCastGObject . toGObject

instance IsStorageQuota StorageQuota
instance GObjectClass StorageQuota where
  toGObject = GObject . castRef . unStorageQuota
  unsafeCastGObject = StorageQuota . castRef . unGObject

castToStorageQuota :: GObjectClass obj => obj -> StorageQuota
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
  fromJSRef = return . fmap StorageQuotaCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorageQuotaCallback o
toStorageQuotaCallback :: IsStorageQuotaCallback o => o -> StorageQuotaCallback
toStorageQuotaCallback = unsafeCastGObject . toGObject

instance IsStorageQuotaCallback StorageQuotaCallback
instance GObjectClass StorageQuotaCallback where
  toGObject = GObject . castRef . unStorageQuotaCallback
  unsafeCastGObject = StorageQuotaCallback . castRef . unGObject

castToStorageQuotaCallback :: GObjectClass obj => obj -> StorageQuotaCallback
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
  fromJSRef = return . fmap StorageUsageCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStorageUsageCallback o
toStorageUsageCallback :: IsStorageUsageCallback o => o -> StorageUsageCallback
toStorageUsageCallback = unsafeCastGObject . toGObject

instance IsStorageUsageCallback StorageUsageCallback
instance GObjectClass StorageUsageCallback where
  toGObject = GObject . castRef . unStorageUsageCallback
  unsafeCastGObject = StorageUsageCallback . castRef . unGObject

castToStorageUsageCallback :: GObjectClass obj => obj -> StorageUsageCallback
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
  fromJSRef = return . fmap StringCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsStringCallback o
toStringCallback :: IsStringCallback o => o -> StringCallback
toStringCallback = unsafeCastGObject . toGObject

instance IsStringCallback StringCallback
instance GObjectClass StringCallback where
  toGObject = GObject . castRef . unStringCallback
  unsafeCastGObject = StringCallback . castRef . unGObject

castToStringCallback :: GObjectClass obj => obj -> StringCallback
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
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheet".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet Mozilla StyleSheet documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.StyleSheetList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList Mozilla StyleSheetList documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.SubtleCrypto".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto Mozilla WebKitSubtleCrypto documentation>
newtype SubtleCrypto = SubtleCrypto (JSRef SubtleCrypto) deriving (Eq)

unSubtleCrypto (SubtleCrypto o) = o

instance ToJSRef SubtleCrypto where
  toJSRef = return . unSubtleCrypto
  {-# INLINE toJSRef #-}

instance FromJSRef SubtleCrypto where
  fromJSRef = return . fmap SubtleCrypto . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsSubtleCrypto o
toSubtleCrypto :: IsSubtleCrypto o => o -> SubtleCrypto
toSubtleCrypto = unsafeCastGObject . toGObject

instance IsSubtleCrypto SubtleCrypto
instance GObjectClass SubtleCrypto where
  toGObject = GObject . castRef . unSubtleCrypto
  unsafeCastGObject = SubtleCrypto . castRef . unGObject

castToSubtleCrypto :: GObjectClass obj => obj -> SubtleCrypto
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation>
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
  fromJSRef = return . fmap TextEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsTextEvent o
toTextEvent :: IsTextEvent o => o -> TextEvent
toTextEvent = unsafeCastGObject . toGObject

instance IsTextEvent TextEvent
instance IsUIEvent TextEvent
instance IsEvent TextEvent
instance GObjectClass TextEvent where
  toGObject = GObject . castRef . unTextEvent
  unsafeCastGObject = TextEvent . castRef . unGObject

castToTextEvent :: GObjectClass obj => obj -> TextEvent
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
  fromJSRef = return . fmap TextMetrics . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTextMetrics o
toTextMetrics :: IsTextMetrics o => o -> TextMetrics
toTextMetrics = unsafeCastGObject . toGObject

instance IsTextMetrics TextMetrics
instance GObjectClass TextMetrics where
  toGObject = GObject . castRef . unTextMetrics
  unsafeCastGObject = TextMetrics . castRef . unGObject

castToTextMetrics :: GObjectClass obj => obj -> TextMetrics
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
  fromJSRef = return . fmap TextTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTextTrack o
toTextTrack :: IsTextTrack o => o -> TextTrack
toTextTrack = unsafeCastGObject . toGObject

instance IsTextTrack TextTrack
instance GObjectClass TextTrack where
  toGObject = GObject . castRef . unTextTrack
  unsafeCastGObject = TextTrack . castRef . unGObject

castToTextTrack :: GObjectClass obj => obj -> TextTrack
castToTextTrack = castTo gTypeTextTrack "TextTrack"

foreign import javascript unsafe "window[\"TextTrack\"]" gTypeTextTrack' :: JSRef GType
gTypeTextTrack = GType gTypeTextTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackCue".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue Mozilla TextTrackCue documentation>
newtype TextTrackCue = TextTrackCue (JSRef TextTrackCue) deriving (Eq)

unTextTrackCue (TextTrackCue o) = o

instance ToJSRef TextTrackCue where
  toJSRef = return . unTextTrackCue
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrackCue where
  fromJSRef = return . fmap TextTrackCue . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTextTrackCue o
toTextTrackCue :: IsTextTrackCue o => o -> TextTrackCue
toTextTrackCue = unsafeCastGObject . toGObject

instance IsTextTrackCue TextTrackCue
instance GObjectClass TextTrackCue where
  toGObject = GObject . castRef . unTextTrackCue
  unsafeCastGObject = TextTrackCue . castRef . unGObject

castToTextTrackCue :: GObjectClass obj => obj -> TextTrackCue
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
  fromJSRef = return . fmap TextTrackCueList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTextTrackCueList o
toTextTrackCueList :: IsTextTrackCueList o => o -> TextTrackCueList
toTextTrackCueList = unsafeCastGObject . toGObject

instance IsTextTrackCueList TextTrackCueList
instance GObjectClass TextTrackCueList where
  toGObject = GObject . castRef . unTextTrackCueList
  unsafeCastGObject = TextTrackCueList . castRef . unGObject

castToTextTrackCueList :: GObjectClass obj => obj -> TextTrackCueList
castToTextTrackCueList = castTo gTypeTextTrackCueList "TextTrackCueList"

foreign import javascript unsafe "window[\"TextTrackCueList\"]" gTypeTextTrackCueList' :: JSRef GType
gTypeTextTrackCueList = GType gTypeTextTrackCueList'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.TextTrackList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList Mozilla TextTrackList documentation>
newtype TextTrackList = TextTrackList (JSRef TextTrackList) deriving (Eq)

unTextTrackList (TextTrackList o) = o

instance ToJSRef TextTrackList where
  toJSRef = return . unTextTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef TextTrackList where
  fromJSRef = return . fmap TextTrackList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTextTrackList o
toTextTrackList :: IsTextTrackList o => o -> TextTrackList
toTextTrackList = unsafeCastGObject . toGObject

instance IsTextTrackList TextTrackList
instance GObjectClass TextTrackList where
  toGObject = GObject . castRef . unTextTrackList
  unsafeCastGObject = TextTrackList . castRef . unGObject

castToTextTrackList :: GObjectClass obj => obj -> TextTrackList
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
-- | Functions for this inteface are in "GHCJS.DOM.Touch".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/Touch Mozilla Touch documentation>
newtype Touch = Touch (JSRef Touch) deriving (Eq)

unTouch (Touch o) = o

instance ToJSRef Touch where
  toJSRef = return . unTouch
  {-# INLINE toJSRef #-}

instance FromJSRef Touch where
  fromJSRef = return . fmap Touch . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTouch o
toTouch :: IsTouch o => o -> Touch
toTouch = unsafeCastGObject . toGObject

instance IsTouch Touch
instance GObjectClass Touch where
  toGObject = GObject . castRef . unTouch
  unsafeCastGObject = Touch . castRef . unGObject

castToTouch :: GObjectClass obj => obj -> Touch
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
  fromJSRef = return . fmap TouchEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsTouchEvent o
toTouchEvent :: IsTouchEvent o => o -> TouchEvent
toTouchEvent = unsafeCastGObject . toGObject

instance IsTouchEvent TouchEvent
instance IsUIEvent TouchEvent
instance IsEvent TouchEvent
instance GObjectClass TouchEvent where
  toGObject = GObject . castRef . unTouchEvent
  unsafeCastGObject = TouchEvent . castRef . unGObject

castToTouchEvent :: GObjectClass obj => obj -> TouchEvent
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
  fromJSRef = return . fmap TouchList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTouchList o
toTouchList :: IsTouchList o => o -> TouchList
toTouchList = unsafeCastGObject . toGObject

instance IsTouchList TouchList
instance GObjectClass TouchList where
  toGObject = GObject . castRef . unTouchList
  unsafeCastGObject = TouchList . castRef . unGObject

castToTouchList :: GObjectClass obj => obj -> TouchList
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
  fromJSRef = return . fmap TrackEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsTrackEvent o
toTrackEvent :: IsTrackEvent o => o -> TrackEvent
toTrackEvent = unsafeCastGObject . toGObject

instance IsTrackEvent TrackEvent
instance IsEvent TrackEvent
instance GObjectClass TrackEvent where
  toGObject = GObject . castRef . unTrackEvent
  unsafeCastGObject = TrackEvent . castRef . unGObject

castToTrackEvent :: GObjectClass obj => obj -> TrackEvent
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
  fromJSRef = return . fmap TransitionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsTransitionEvent o
toTransitionEvent :: IsTransitionEvent o => o -> TransitionEvent
toTransitionEvent = unsafeCastGObject . toGObject

instance IsTransitionEvent TransitionEvent
instance IsEvent TransitionEvent
instance GObjectClass TransitionEvent where
  toGObject = GObject . castRef . unTransitionEvent
  unsafeCastGObject = TransitionEvent . castRef . unGObject

castToTransitionEvent :: GObjectClass obj => obj -> TransitionEvent
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
-- | Functions for this inteface are in "GHCJS.DOM.TypeConversions".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions Mozilla TypeConversions documentation>
newtype TypeConversions = TypeConversions (JSRef TypeConversions) deriving (Eq)

unTypeConversions (TypeConversions o) = o

instance ToJSRef TypeConversions where
  toJSRef = return . unTypeConversions
  {-# INLINE toJSRef #-}

instance FromJSRef TypeConversions where
  fromJSRef = return . fmap TypeConversions . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsTypeConversions o
toTypeConversions :: IsTypeConversions o => o -> TypeConversions
toTypeConversions = unsafeCastGObject . toGObject

instance IsTypeConversions TypeConversions
instance GObjectClass TypeConversions where
  toGObject = GObject . castRef . unTypeConversions
  unsafeCastGObject = TypeConversions . castRef . unGObject

castToTypeConversions :: GObjectClass obj => obj -> TypeConversions
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
  fromJSRef = return . fmap UIRequestEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsUIEvent o => IsUIRequestEvent o
toUIRequestEvent :: IsUIRequestEvent o => o -> UIRequestEvent
toUIRequestEvent = unsafeCastGObject . toGObject

instance IsUIRequestEvent UIRequestEvent
instance IsUIEvent UIRequestEvent
instance IsEvent UIRequestEvent
instance GObjectClass UIRequestEvent where
  toGObject = GObject . castRef . unUIRequestEvent
  unsafeCastGObject = UIRequestEvent . castRef . unGObject

castToUIRequestEvent :: GObjectClass obj => obj -> UIRequestEvent
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
  fromJSRef = return . fmap URLUtils . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsURLUtils o
toURLUtils :: IsURLUtils o => o -> URLUtils
toURLUtils = unsafeCastGObject . toGObject

instance IsURLUtils URLUtils
instance GObjectClass URLUtils where
  toGObject = GObject . castRef . unURLUtils
  unsafeCastGObject = URLUtils . castRef . unGObject

castToURLUtils :: GObjectClass obj => obj -> URLUtils
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
  fromJSRef = return . fmap UserMessageHandler . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsUserMessageHandler o
toUserMessageHandler :: IsUserMessageHandler o => o -> UserMessageHandler
toUserMessageHandler = unsafeCastGObject . toGObject

instance IsUserMessageHandler UserMessageHandler
instance GObjectClass UserMessageHandler where
  toGObject = GObject . castRef . unUserMessageHandler
  unsafeCastGObject = UserMessageHandler . castRef . unGObject

castToUserMessageHandler :: GObjectClass obj => obj -> UserMessageHandler
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
  fromJSRef = return . fmap UserMessageHandlersNamespace . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsUserMessageHandlersNamespace o
toUserMessageHandlersNamespace :: IsUserMessageHandlersNamespace o => o -> UserMessageHandlersNamespace
toUserMessageHandlersNamespace = unsafeCastGObject . toGObject

instance IsUserMessageHandlersNamespace UserMessageHandlersNamespace
instance GObjectClass UserMessageHandlersNamespace where
  toGObject = GObject . castRef . unUserMessageHandlersNamespace
  unsafeCastGObject = UserMessageHandlersNamespace . castRef . unGObject

castToUserMessageHandlersNamespace :: GObjectClass obj => obj -> UserMessageHandlersNamespace
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation>
newtype VTTCue = VTTCue (JSRef VTTCue) deriving (Eq)

unVTTCue (VTTCue o) = o

instance ToJSRef VTTCue where
  toJSRef = return . unVTTCue
  {-# INLINE toJSRef #-}

instance FromJSRef VTTCue where
  fromJSRef = return . fmap VTTCue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsTextTrackCue o => IsVTTCue o
toVTTCue :: IsVTTCue o => o -> VTTCue
toVTTCue = unsafeCastGObject . toGObject

instance IsVTTCue VTTCue
instance IsTextTrackCue VTTCue
instance GObjectClass VTTCue where
  toGObject = GObject . castRef . unVTTCue
  unsafeCastGObject = VTTCue . castRef . unGObject

castToVTTCue :: GObjectClass obj => obj -> VTTCue
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
  fromJSRef = return . fmap VTTRegion . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVTTRegion o
toVTTRegion :: IsVTTRegion o => o -> VTTRegion
toVTTRegion = unsafeCastGObject . toGObject

instance IsVTTRegion VTTRegion
instance GObjectClass VTTRegion where
  toGObject = GObject . castRef . unVTTRegion
  unsafeCastGObject = VTTRegion . castRef . unGObject

castToVTTRegion :: GObjectClass obj => obj -> VTTRegion
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
  fromJSRef = return . fmap VTTRegionList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVTTRegionList o
toVTTRegionList :: IsVTTRegionList o => o -> VTTRegionList
toVTTRegionList = unsafeCastGObject . toGObject

instance IsVTTRegionList VTTRegionList
instance GObjectClass VTTRegionList where
  toGObject = GObject . castRef . unVTTRegionList
  unsafeCastGObject = VTTRegionList . castRef . unGObject

castToVTTRegionList :: GObjectClass obj => obj -> VTTRegionList
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
-- | Functions for this inteface are in "GHCJS.DOM.VideoPlaybackQuality".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality Mozilla VideoPlaybackQuality documentation>
newtype VideoPlaybackQuality = VideoPlaybackQuality (JSRef VideoPlaybackQuality) deriving (Eq)

unVideoPlaybackQuality (VideoPlaybackQuality o) = o

instance ToJSRef VideoPlaybackQuality where
  toJSRef = return . unVideoPlaybackQuality
  {-# INLINE toJSRef #-}

instance FromJSRef VideoPlaybackQuality where
  fromJSRef = return . fmap VideoPlaybackQuality . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVideoPlaybackQuality o
toVideoPlaybackQuality :: IsVideoPlaybackQuality o => o -> VideoPlaybackQuality
toVideoPlaybackQuality = unsafeCastGObject . toGObject

instance IsVideoPlaybackQuality VideoPlaybackQuality
instance GObjectClass VideoPlaybackQuality where
  toGObject = GObject . castRef . unVideoPlaybackQuality
  unsafeCastGObject = VideoPlaybackQuality . castRef . unGObject

castToVideoPlaybackQuality :: GObjectClass obj => obj -> VideoPlaybackQuality
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
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoStreamTrack Mozilla VideoStreamTrack documentation>
newtype VideoStreamTrack = VideoStreamTrack (JSRef VideoStreamTrack) deriving (Eq)

unVideoStreamTrack (VideoStreamTrack o) = o

instance ToJSRef VideoStreamTrack where
  toJSRef = return . unVideoStreamTrack
  {-# INLINE toJSRef #-}

instance FromJSRef VideoStreamTrack where
  fromJSRef = return . fmap VideoStreamTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsMediaStreamTrack o => IsVideoStreamTrack o
toVideoStreamTrack :: IsVideoStreamTrack o => o -> VideoStreamTrack
toVideoStreamTrack = unsafeCastGObject . toGObject

instance IsVideoStreamTrack VideoStreamTrack
instance IsMediaStreamTrack VideoStreamTrack
instance GObjectClass VideoStreamTrack where
  toGObject = GObject . castRef . unVideoStreamTrack
  unsafeCastGObject = VideoStreamTrack . castRef . unGObject

castToVideoStreamTrack :: GObjectClass obj => obj -> VideoStreamTrack
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
  fromJSRef = return . fmap VideoTrack . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVideoTrack o
toVideoTrack :: IsVideoTrack o => o -> VideoTrack
toVideoTrack = unsafeCastGObject . toGObject

instance IsVideoTrack VideoTrack
instance GObjectClass VideoTrack where
  toGObject = GObject . castRef . unVideoTrack
  unsafeCastGObject = VideoTrack . castRef . unGObject

castToVideoTrack :: GObjectClass obj => obj -> VideoTrack
castToVideoTrack = castTo gTypeVideoTrack "VideoTrack"

foreign import javascript unsafe "window[\"VideoTrack\"]" gTypeVideoTrack' :: JSRef GType
gTypeVideoTrack = GType gTypeVideoTrack'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.VideoTrackList".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList Mozilla VideoTrackList documentation>
newtype VideoTrackList = VideoTrackList (JSRef VideoTrackList) deriving (Eq)

unVideoTrackList (VideoTrackList o) = o

instance ToJSRef VideoTrackList where
  toJSRef = return . unVideoTrackList
  {-# INLINE toJSRef #-}

instance FromJSRef VideoTrackList where
  fromJSRef = return . fmap VideoTrackList . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVideoTrackList o
toVideoTrackList :: IsVideoTrackList o => o -> VideoTrackList
toVideoTrackList = unsafeCastGObject . toGObject

instance IsVideoTrackList VideoTrackList
instance GObjectClass VideoTrackList where
  toGObject = GObject . castRef . unVideoTrackList
  unsafeCastGObject = VideoTrackList . castRef . unGObject

castToVideoTrackList :: GObjectClass obj => obj -> VideoTrackList
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
  fromJSRef = return . fmap VoidCallback . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsVoidCallback o
toVoidCallback :: IsVoidCallback o => o -> VoidCallback
toVoidCallback = unsafeCastGObject . toGObject

instance IsVoidCallback VoidCallback
instance GObjectClass VoidCallback where
  toGObject = GObject . castRef . unVoidCallback
  unsafeCastGObject = VoidCallback . castRef . unGObject

castToVoidCallback :: GObjectClass obj => obj -> VoidCallback
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
  fromJSRef = return . fmap WaveShaperNode . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsAudioNode o => IsWaveShaperNode o
toWaveShaperNode :: IsWaveShaperNode o => o -> WaveShaperNode
toWaveShaperNode = unsafeCastGObject . toGObject

instance IsWaveShaperNode WaveShaperNode
instance IsAudioNode WaveShaperNode
instance IsEventTarget WaveShaperNode
instance GObjectClass WaveShaperNode where
  toGObject = GObject . castRef . unWaveShaperNode
  unsafeCastGObject = WaveShaperNode . castRef . unGObject

castToWaveShaperNode :: GObjectClass obj => obj -> WaveShaperNode
castToWaveShaperNode = castTo gTypeWaveShaperNode "WaveShaperNode"

foreign import javascript unsafe "window[\"WaveShaperNode\"]" gTypeWaveShaperNode' :: JSRef GType
gTypeWaveShaperNode = GType gTypeWaveShaperNode'
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
  fromJSRef = return . fmap WebGLActiveInfo . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLActiveInfo o
toWebGLActiveInfo :: IsWebGLActiveInfo o => o -> WebGLActiveInfo
toWebGLActiveInfo = unsafeCastGObject . toGObject

instance IsWebGLActiveInfo WebGLActiveInfo
instance GObjectClass WebGLActiveInfo where
  toGObject = GObject . castRef . unWebGLActiveInfo
  unsafeCastGObject = WebGLActiveInfo . castRef . unGObject

castToWebGLActiveInfo :: GObjectClass obj => obj -> WebGLActiveInfo
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
  fromJSRef = return . fmap WebGLBuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLBuffer o
toWebGLBuffer :: IsWebGLBuffer o => o -> WebGLBuffer
toWebGLBuffer = unsafeCastGObject . toGObject

instance IsWebGLBuffer WebGLBuffer
instance GObjectClass WebGLBuffer where
  toGObject = GObject . castRef . unWebGLBuffer
  unsafeCastGObject = WebGLBuffer . castRef . unGObject

castToWebGLBuffer :: GObjectClass obj => obj -> WebGLBuffer
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
  fromJSRef = return . fmap WebGLCompressedTextureATC . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLCompressedTextureATC o
toWebGLCompressedTextureATC :: IsWebGLCompressedTextureATC o => o -> WebGLCompressedTextureATC
toWebGLCompressedTextureATC = unsafeCastGObject . toGObject

instance IsWebGLCompressedTextureATC WebGLCompressedTextureATC
instance GObjectClass WebGLCompressedTextureATC where
  toGObject = GObject . castRef . unWebGLCompressedTextureATC
  unsafeCastGObject = WebGLCompressedTextureATC . castRef . unGObject

castToWebGLCompressedTextureATC :: GObjectClass obj => obj -> WebGLCompressedTextureATC
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
  fromJSRef = return . fmap WebGLCompressedTexturePVRTC . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLCompressedTexturePVRTC o
toWebGLCompressedTexturePVRTC :: IsWebGLCompressedTexturePVRTC o => o -> WebGLCompressedTexturePVRTC
toWebGLCompressedTexturePVRTC = unsafeCastGObject . toGObject

instance IsWebGLCompressedTexturePVRTC WebGLCompressedTexturePVRTC
instance GObjectClass WebGLCompressedTexturePVRTC where
  toGObject = GObject . castRef . unWebGLCompressedTexturePVRTC
  unsafeCastGObject = WebGLCompressedTexturePVRTC . castRef . unGObject

castToWebGLCompressedTexturePVRTC :: GObjectClass obj => obj -> WebGLCompressedTexturePVRTC
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
  fromJSRef = return . fmap WebGLCompressedTextureS3TC . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLCompressedTextureS3TC o
toWebGLCompressedTextureS3TC :: IsWebGLCompressedTextureS3TC o => o -> WebGLCompressedTextureS3TC
toWebGLCompressedTextureS3TC = unsafeCastGObject . toGObject

instance IsWebGLCompressedTextureS3TC WebGLCompressedTextureS3TC
instance GObjectClass WebGLCompressedTextureS3TC where
  toGObject = GObject . castRef . unWebGLCompressedTextureS3TC
  unsafeCastGObject = WebGLCompressedTextureS3TC . castRef . unGObject

castToWebGLCompressedTextureS3TC :: GObjectClass obj => obj -> WebGLCompressedTextureS3TC
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
  fromJSRef = return . fmap WebGLContextAttributes . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLContextAttributes o
toWebGLContextAttributes :: IsWebGLContextAttributes o => o -> WebGLContextAttributes
toWebGLContextAttributes = unsafeCastGObject . toGObject

instance IsWebGLContextAttributes WebGLContextAttributes
instance GObjectClass WebGLContextAttributes where
  toGObject = GObject . castRef . unWebGLContextAttributes
  unsafeCastGObject = WebGLContextAttributes . castRef . unGObject

castToWebGLContextAttributes :: GObjectClass obj => obj -> WebGLContextAttributes
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
  fromJSRef = return . fmap WebGLContextEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsWebGLContextEvent o
toWebGLContextEvent :: IsWebGLContextEvent o => o -> WebGLContextEvent
toWebGLContextEvent = unsafeCastGObject . toGObject

instance IsWebGLContextEvent WebGLContextEvent
instance IsEvent WebGLContextEvent
instance GObjectClass WebGLContextEvent where
  toGObject = GObject . castRef . unWebGLContextEvent
  unsafeCastGObject = WebGLContextEvent . castRef . unGObject

castToWebGLContextEvent :: GObjectClass obj => obj -> WebGLContextEvent
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
  fromJSRef = return . fmap WebGLDebugRendererInfo . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLDebugRendererInfo o
toWebGLDebugRendererInfo :: IsWebGLDebugRendererInfo o => o -> WebGLDebugRendererInfo
toWebGLDebugRendererInfo = unsafeCastGObject . toGObject

instance IsWebGLDebugRendererInfo WebGLDebugRendererInfo
instance GObjectClass WebGLDebugRendererInfo where
  toGObject = GObject . castRef . unWebGLDebugRendererInfo
  unsafeCastGObject = WebGLDebugRendererInfo . castRef . unGObject

castToWebGLDebugRendererInfo :: GObjectClass obj => obj -> WebGLDebugRendererInfo
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
  fromJSRef = return . fmap WebGLDebugShaders . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLDebugShaders o
toWebGLDebugShaders :: IsWebGLDebugShaders o => o -> WebGLDebugShaders
toWebGLDebugShaders = unsafeCastGObject . toGObject

instance IsWebGLDebugShaders WebGLDebugShaders
instance GObjectClass WebGLDebugShaders where
  toGObject = GObject . castRef . unWebGLDebugShaders
  unsafeCastGObject = WebGLDebugShaders . castRef . unGObject

castToWebGLDebugShaders :: GObjectClass obj => obj -> WebGLDebugShaders
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
  fromJSRef = return . fmap WebGLDepthTexture . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLDepthTexture o
toWebGLDepthTexture :: IsWebGLDepthTexture o => o -> WebGLDepthTexture
toWebGLDepthTexture = unsafeCastGObject . toGObject

instance IsWebGLDepthTexture WebGLDepthTexture
instance GObjectClass WebGLDepthTexture where
  toGObject = GObject . castRef . unWebGLDepthTexture
  unsafeCastGObject = WebGLDepthTexture . castRef . unGObject

castToWebGLDepthTexture :: GObjectClass obj => obj -> WebGLDepthTexture
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
  fromJSRef = return . fmap WebGLDrawBuffers . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLDrawBuffers o
toWebGLDrawBuffers :: IsWebGLDrawBuffers o => o -> WebGLDrawBuffers
toWebGLDrawBuffers = unsafeCastGObject . toGObject

instance IsWebGLDrawBuffers WebGLDrawBuffers
instance GObjectClass WebGLDrawBuffers where
  toGObject = GObject . castRef . unWebGLDrawBuffers
  unsafeCastGObject = WebGLDrawBuffers . castRef . unGObject

castToWebGLDrawBuffers :: GObjectClass obj => obj -> WebGLDrawBuffers
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
  fromJSRef = return . fmap WebGLFramebuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLFramebuffer o
toWebGLFramebuffer :: IsWebGLFramebuffer o => o -> WebGLFramebuffer
toWebGLFramebuffer = unsafeCastGObject . toGObject

instance IsWebGLFramebuffer WebGLFramebuffer
instance GObjectClass WebGLFramebuffer where
  toGObject = GObject . castRef . unWebGLFramebuffer
  unsafeCastGObject = WebGLFramebuffer . castRef . unGObject

castToWebGLFramebuffer :: GObjectClass obj => obj -> WebGLFramebuffer
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
  fromJSRef = return . fmap WebGLLoseContext . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLLoseContext o
toWebGLLoseContext :: IsWebGLLoseContext o => o -> WebGLLoseContext
toWebGLLoseContext = unsafeCastGObject . toGObject

instance IsWebGLLoseContext WebGLLoseContext
instance GObjectClass WebGLLoseContext where
  toGObject = GObject . castRef . unWebGLLoseContext
  unsafeCastGObject = WebGLLoseContext . castRef . unGObject

castToWebGLLoseContext :: GObjectClass obj => obj -> WebGLLoseContext
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
  fromJSRef = return . fmap WebGLProgram . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLProgram o
toWebGLProgram :: IsWebGLProgram o => o -> WebGLProgram
toWebGLProgram = unsafeCastGObject . toGObject

instance IsWebGLProgram WebGLProgram
instance GObjectClass WebGLProgram where
  toGObject = GObject . castRef . unWebGLProgram
  unsafeCastGObject = WebGLProgram . castRef . unGObject

castToWebGLProgram :: GObjectClass obj => obj -> WebGLProgram
castToWebGLProgram = castTo gTypeWebGLProgram "WebGLProgram"

foreign import javascript unsafe "window[\"WebGLProgram\"]" gTypeWebGLProgram' :: JSRef GType
gTypeWebGLProgram = GType gTypeWebGLProgram'
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
  fromJSRef = return . fmap WebGLRenderbuffer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLRenderbuffer o
toWebGLRenderbuffer :: IsWebGLRenderbuffer o => o -> WebGLRenderbuffer
toWebGLRenderbuffer = unsafeCastGObject . toGObject

instance IsWebGLRenderbuffer WebGLRenderbuffer
instance GObjectClass WebGLRenderbuffer where
  toGObject = GObject . castRef . unWebGLRenderbuffer
  unsafeCastGObject = WebGLRenderbuffer . castRef . unGObject

castToWebGLRenderbuffer :: GObjectClass obj => obj -> WebGLRenderbuffer
castToWebGLRenderbuffer = castTo gTypeWebGLRenderbuffer "WebGLRenderbuffer"

foreign import javascript unsafe "window[\"WebGLRenderbuffer\"]" gTypeWebGLRenderbuffer' :: JSRef GType
gTypeWebGLRenderbuffer = GType gTypeWebGLRenderbuffer'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebGLRenderingContext".
-- Base interface functions are in:
--
--     * "GHCJS.DOM.CanvasRenderingContext"
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext Mozilla WebGLRenderingContext documentation>
newtype WebGLRenderingContext = WebGLRenderingContext (JSRef WebGLRenderingContext) deriving (Eq)

unWebGLRenderingContext (WebGLRenderingContext o) = o

instance ToJSRef WebGLRenderingContext where
  toJSRef = return . unWebGLRenderingContext
  {-# INLINE toJSRef #-}

instance FromJSRef WebGLRenderingContext where
  fromJSRef = return . fmap WebGLRenderingContext . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCanvasRenderingContext o => IsWebGLRenderingContext o
toWebGLRenderingContext :: IsWebGLRenderingContext o => o -> WebGLRenderingContext
toWebGLRenderingContext = unsafeCastGObject . toGObject

instance IsWebGLRenderingContext WebGLRenderingContext
instance IsCanvasRenderingContext WebGLRenderingContext
instance GObjectClass WebGLRenderingContext where
  toGObject = GObject . castRef . unWebGLRenderingContext
  unsafeCastGObject = WebGLRenderingContext . castRef . unGObject

castToWebGLRenderingContext :: GObjectClass obj => obj -> WebGLRenderingContext
castToWebGLRenderingContext = castTo gTypeWebGLRenderingContext "WebGLRenderingContext"

foreign import javascript unsafe "window[\"WebGLRenderingContext\"]" gTypeWebGLRenderingContext' :: JSRef GType
gTypeWebGLRenderingContext = GType gTypeWebGLRenderingContext'
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
  fromJSRef = return . fmap WebGLShader . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLShader o
toWebGLShader :: IsWebGLShader o => o -> WebGLShader
toWebGLShader = unsafeCastGObject . toGObject

instance IsWebGLShader WebGLShader
instance GObjectClass WebGLShader where
  toGObject = GObject . castRef . unWebGLShader
  unsafeCastGObject = WebGLShader . castRef . unGObject

castToWebGLShader :: GObjectClass obj => obj -> WebGLShader
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
  fromJSRef = return . fmap WebGLShaderPrecisionFormat . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLShaderPrecisionFormat o
toWebGLShaderPrecisionFormat :: IsWebGLShaderPrecisionFormat o => o -> WebGLShaderPrecisionFormat
toWebGLShaderPrecisionFormat = unsafeCastGObject . toGObject

instance IsWebGLShaderPrecisionFormat WebGLShaderPrecisionFormat
instance GObjectClass WebGLShaderPrecisionFormat where
  toGObject = GObject . castRef . unWebGLShaderPrecisionFormat
  unsafeCastGObject = WebGLShaderPrecisionFormat . castRef . unGObject

castToWebGLShaderPrecisionFormat :: GObjectClass obj => obj -> WebGLShaderPrecisionFormat
castToWebGLShaderPrecisionFormat = castTo gTypeWebGLShaderPrecisionFormat "WebGLShaderPrecisionFormat"

foreign import javascript unsafe "window[\"WebGLShaderPrecisionFormat\"]" gTypeWebGLShaderPrecisionFormat' :: JSRef GType
gTypeWebGLShaderPrecisionFormat = GType gTypeWebGLShaderPrecisionFormat'
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
  fromJSRef = return . fmap WebGLTexture . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLTexture o
toWebGLTexture :: IsWebGLTexture o => o -> WebGLTexture
toWebGLTexture = unsafeCastGObject . toGObject

instance IsWebGLTexture WebGLTexture
instance GObjectClass WebGLTexture where
  toGObject = GObject . castRef . unWebGLTexture
  unsafeCastGObject = WebGLTexture . castRef . unGObject

castToWebGLTexture :: GObjectClass obj => obj -> WebGLTexture
castToWebGLTexture = castTo gTypeWebGLTexture "WebGLTexture"

foreign import javascript unsafe "window[\"WebGLTexture\"]" gTypeWebGLTexture' :: JSRef GType
gTypeWebGLTexture = GType gTypeWebGLTexture'
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
  fromJSRef = return . fmap WebGLUniformLocation . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLUniformLocation o
toWebGLUniformLocation :: IsWebGLUniformLocation o => o -> WebGLUniformLocation
toWebGLUniformLocation = unsafeCastGObject . toGObject

instance IsWebGLUniformLocation WebGLUniformLocation
instance GObjectClass WebGLUniformLocation where
  toGObject = GObject . castRef . unWebGLUniformLocation
  unsafeCastGObject = WebGLUniformLocation . castRef . unGObject

castToWebGLUniformLocation :: GObjectClass obj => obj -> WebGLUniformLocation
castToWebGLUniformLocation = castTo gTypeWebGLUniformLocation "WebGLUniformLocation"

foreign import javascript unsafe "window[\"WebGLUniformLocation\"]" gTypeWebGLUniformLocation' :: JSRef GType
gTypeWebGLUniformLocation = GType gTypeWebGLUniformLocation'
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
  fromJSRef = return . fmap WebGLVertexArrayObjectOES . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebGLVertexArrayObjectOES o
toWebGLVertexArrayObjectOES :: IsWebGLVertexArrayObjectOES o => o -> WebGLVertexArrayObjectOES
toWebGLVertexArrayObjectOES = unsafeCastGObject . toGObject

instance IsWebGLVertexArrayObjectOES WebGLVertexArrayObjectOES
instance GObjectClass WebGLVertexArrayObjectOES where
  toGObject = GObject . castRef . unWebGLVertexArrayObjectOES
  unsafeCastGObject = WebGLVertexArrayObjectOES . castRef . unGObject

castToWebGLVertexArrayObjectOES :: GObjectClass obj => obj -> WebGLVertexArrayObjectOES
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
  fromJSRef = return . fmap WebKitAnimationEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsWebKitAnimationEvent o
toWebKitAnimationEvent :: IsWebKitAnimationEvent o => o -> WebKitAnimationEvent
toWebKitAnimationEvent = unsafeCastGObject . toGObject

instance IsWebKitAnimationEvent WebKitAnimationEvent
instance IsEvent WebKitAnimationEvent
instance GObjectClass WebKitAnimationEvent where
  toGObject = GObject . castRef . unWebKitAnimationEvent
  unsafeCastGObject = WebKitAnimationEvent . castRef . unGObject

castToWebKitAnimationEvent :: GObjectClass obj => obj -> WebKitAnimationEvent
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
  fromJSRef = return . fmap WebKitCSSFilterValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSValueList o => IsWebKitCSSFilterValue o
toWebKitCSSFilterValue :: IsWebKitCSSFilterValue o => o -> WebKitCSSFilterValue
toWebKitCSSFilterValue = unsafeCastGObject . toGObject

instance IsWebKitCSSFilterValue WebKitCSSFilterValue
instance IsCSSValueList WebKitCSSFilterValue
instance IsCSSValue WebKitCSSFilterValue
instance GObjectClass WebKitCSSFilterValue where
  toGObject = GObject . castRef . unWebKitCSSFilterValue
  unsafeCastGObject = WebKitCSSFilterValue . castRef . unGObject

castToWebKitCSSFilterValue :: GObjectClass obj => obj -> WebKitCSSFilterValue
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
  fromJSRef = return . fmap WebKitCSSMatrix . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebKitCSSMatrix o
toWebKitCSSMatrix :: IsWebKitCSSMatrix o => o -> WebKitCSSMatrix
toWebKitCSSMatrix = unsafeCastGObject . toGObject

instance IsWebKitCSSMatrix WebKitCSSMatrix
instance GObjectClass WebKitCSSMatrix where
  toGObject = GObject . castRef . unWebKitCSSMatrix
  unsafeCastGObject = WebKitCSSMatrix . castRef . unGObject

castToWebKitCSSMatrix :: GObjectClass obj => obj -> WebKitCSSMatrix
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
  fromJSRef = return . fmap WebKitCSSRegionRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsWebKitCSSRegionRule o
toWebKitCSSRegionRule :: IsWebKitCSSRegionRule o => o -> WebKitCSSRegionRule
toWebKitCSSRegionRule = unsafeCastGObject . toGObject

instance IsWebKitCSSRegionRule WebKitCSSRegionRule
instance IsCSSRule WebKitCSSRegionRule
instance GObjectClass WebKitCSSRegionRule where
  toGObject = GObject . castRef . unWebKitCSSRegionRule
  unsafeCastGObject = WebKitCSSRegionRule . castRef . unGObject

castToWebKitCSSRegionRule :: GObjectClass obj => obj -> WebKitCSSRegionRule
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
  fromJSRef = return . fmap WebKitCSSTransformValue . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSValueList o => IsWebKitCSSTransformValue o
toWebKitCSSTransformValue :: IsWebKitCSSTransformValue o => o -> WebKitCSSTransformValue
toWebKitCSSTransformValue = unsafeCastGObject . toGObject

instance IsWebKitCSSTransformValue WebKitCSSTransformValue
instance IsCSSValueList WebKitCSSTransformValue
instance IsCSSValue WebKitCSSTransformValue
instance GObjectClass WebKitCSSTransformValue where
  toGObject = GObject . castRef . unWebKitCSSTransformValue
  unsafeCastGObject = WebKitCSSTransformValue . castRef . unGObject

castToWebKitCSSTransformValue :: GObjectClass obj => obj -> WebKitCSSTransformValue
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
  fromJSRef = return . fmap WebKitCSSViewportRule . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsCSSRule o => IsWebKitCSSViewportRule o
toWebKitCSSViewportRule :: IsWebKitCSSViewportRule o => o -> WebKitCSSViewportRule
toWebKitCSSViewportRule = unsafeCastGObject . toGObject

instance IsWebKitCSSViewportRule WebKitCSSViewportRule
instance IsCSSRule WebKitCSSViewportRule
instance GObjectClass WebKitCSSViewportRule where
  toGObject = GObject . castRef . unWebKitCSSViewportRule
  unsafeCastGObject = WebKitCSSViewportRule . castRef . unGObject

castToWebKitCSSViewportRule :: GObjectClass obj => obj -> WebKitCSSViewportRule
castToWebKitCSSViewportRule = castTo gTypeWebKitCSSViewportRule "WebKitCSSViewportRule"

foreign import javascript unsafe "window[\"WebKitCSSViewportRule\"]" gTypeWebKitCSSViewportRule' :: JSRef GType
gTypeWebKitCSSViewportRule = GType gTypeWebKitCSSViewportRule'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamedFlow".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow Mozilla WebKitNamedFlow documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.WebKitNamespace".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace Mozilla WebKitNamespace documentation>
newtype WebKitNamespace = WebKitNamespace (JSRef WebKitNamespace) deriving (Eq)

unWebKitNamespace (WebKitNamespace o) = o

instance ToJSRef WebKitNamespace where
  toJSRef = return . unWebKitNamespace
  {-# INLINE toJSRef #-}

instance FromJSRef WebKitNamespace where
  fromJSRef = return . fmap WebKitNamespace . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebKitNamespace o
toWebKitNamespace :: IsWebKitNamespace o => o -> WebKitNamespace
toWebKitNamespace = unsafeCastGObject . toGObject

instance IsWebKitNamespace WebKitNamespace
instance GObjectClass WebKitNamespace where
  toGObject = GObject . castRef . unWebKitNamespace
  unsafeCastGObject = WebKitNamespace . castRef . unGObject

castToWebKitNamespace :: GObjectClass obj => obj -> WebKitNamespace
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
  fromJSRef = return . fmap WebKitPlaybackTargetAvailabilityEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsWebKitPlaybackTargetAvailabilityEvent o
toWebKitPlaybackTargetAvailabilityEvent :: IsWebKitPlaybackTargetAvailabilityEvent o => o -> WebKitPlaybackTargetAvailabilityEvent
toWebKitPlaybackTargetAvailabilityEvent = unsafeCastGObject . toGObject

instance IsWebKitPlaybackTargetAvailabilityEvent WebKitPlaybackTargetAvailabilityEvent
instance IsEvent WebKitPlaybackTargetAvailabilityEvent
instance GObjectClass WebKitPlaybackTargetAvailabilityEvent where
  toGObject = GObject . castRef . unWebKitPlaybackTargetAvailabilityEvent
  unsafeCastGObject = WebKitPlaybackTargetAvailabilityEvent . castRef . unGObject

castToWebKitPlaybackTargetAvailabilityEvent :: GObjectClass obj => obj -> WebKitPlaybackTargetAvailabilityEvent
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
  fromJSRef = return . fmap WebKitTransitionEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEvent o => IsWebKitTransitionEvent o
toWebKitTransitionEvent :: IsWebKitTransitionEvent o => o -> WebKitTransitionEvent
toWebKitTransitionEvent = unsafeCastGObject . toGObject

instance IsWebKitTransitionEvent WebKitTransitionEvent
instance IsEvent WebKitTransitionEvent
instance GObjectClass WebKitTransitionEvent where
  toGObject = GObject . castRef . unWebKitTransitionEvent
  unsafeCastGObject = WebKitTransitionEvent . castRef . unGObject

castToWebKitTransitionEvent :: GObjectClass obj => obj -> WebKitTransitionEvent
castToWebKitTransitionEvent = castTo gTypeWebKitTransitionEvent "WebKitTransitionEvent"

foreign import javascript unsafe "window[\"WebKitTransitionEvent\"]" gTypeWebKitTransitionEvent' :: JSRef GType
gTypeWebKitTransitionEvent = GType gTypeWebKitTransitionEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WebSocket".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation>
newtype WebSocket = WebSocket (JSRef WebSocket) deriving (Eq)

unWebSocket (WebSocket o) = o

instance ToJSRef WebSocket where
  toJSRef = return . unWebSocket
  {-# INLINE toJSRef #-}

instance FromJSRef WebSocket where
  fromJSRef = return . fmap WebSocket . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWebSocket o
toWebSocket :: IsWebSocket o => o -> WebSocket
toWebSocket = unsafeCastGObject . toGObject

instance IsWebSocket WebSocket
instance GObjectClass WebSocket where
  toGObject = GObject . castRef . unWebSocket
  unsafeCastGObject = WebSocket . castRef . unGObject

castToWebSocket :: GObjectClass obj => obj -> WebSocket
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
  fromJSRef = return . fmap WheelEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsMouseEvent o => IsWheelEvent o
toWheelEvent :: IsWheelEvent o => o -> WheelEvent
toWheelEvent = unsafeCastGObject . toGObject

instance IsWheelEvent WheelEvent
instance IsMouseEvent WheelEvent
instance IsUIEvent WheelEvent
instance IsEvent WheelEvent
instance GObjectClass WheelEvent where
  toGObject = GObject . castRef . unWheelEvent
  unsafeCastGObject = WheelEvent . castRef . unGObject

castToWheelEvent :: GObjectClass obj => obj -> WheelEvent
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
  fromJSRef = return . fmap WindowBase64 . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWindowBase64 o
toWindowBase64 :: IsWindowBase64 o => o -> WindowBase64
toWindowBase64 = unsafeCastGObject . toGObject

instance IsWindowBase64 WindowBase64
instance GObjectClass WindowBase64 where
  toGObject = GObject . castRef . unWindowBase64
  unsafeCastGObject = WindowBase64 . castRef . unGObject

castToWindowBase64 :: GObjectClass obj => obj -> WindowBase64
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
  fromJSRef = return . fmap WindowTimers . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWindowTimers o
toWindowTimers :: IsWindowTimers o => o -> WindowTimers
toWindowTimers = unsafeCastGObject . toGObject

instance IsWindowTimers WindowTimers
instance GObjectClass WindowTimers where
  toGObject = GObject . castRef . unWindowTimers
  unsafeCastGObject = WindowTimers . castRef . unGObject

castToWindowTimers :: GObjectClass obj => obj -> WindowTimers
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
  fromJSRef = return . fmap Worker . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsEventTarget o => IsWorker o
toWorker :: IsWorker o => o -> Worker
toWorker = unsafeCastGObject . toGObject

instance IsWorker Worker
instance IsEventTarget Worker
instance GObjectClass Worker where
  toGObject = GObject . castRef . unWorker
  unsafeCastGObject = Worker . castRef . unGObject

castToWorker :: GObjectClass obj => obj -> Worker
castToWorker = castTo gTypeWorker "Worker"

foreign import javascript unsafe "window[\"Worker\"]" gTypeWorker' :: JSRef GType
gTypeWorker = GType gTypeWorker'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.WorkerGlobalScope".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope Mozilla WorkerGlobalScope documentation>
newtype WorkerGlobalScope = WorkerGlobalScope (JSRef WorkerGlobalScope) deriving (Eq)

unWorkerGlobalScope (WorkerGlobalScope o) = o

instance ToJSRef WorkerGlobalScope where
  toJSRef = return . unWorkerGlobalScope
  {-# INLINE toJSRef #-}

instance FromJSRef WorkerGlobalScope where
  fromJSRef = return . fmap WorkerGlobalScope . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWorkerGlobalScope o
toWorkerGlobalScope :: IsWorkerGlobalScope o => o -> WorkerGlobalScope
toWorkerGlobalScope = unsafeCastGObject . toGObject

instance IsWorkerGlobalScope WorkerGlobalScope
instance GObjectClass WorkerGlobalScope where
  toGObject = GObject . castRef . unWorkerGlobalScope
  unsafeCastGObject = WorkerGlobalScope . castRef . unGObject

castToWorkerGlobalScope :: GObjectClass obj => obj -> WorkerGlobalScope
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
  fromJSRef = return . fmap WorkerLocation . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWorkerLocation o
toWorkerLocation :: IsWorkerLocation o => o -> WorkerLocation
toWorkerLocation = unsafeCastGObject . toGObject

instance IsWorkerLocation WorkerLocation
instance GObjectClass WorkerLocation where
  toGObject = GObject . castRef . unWorkerLocation
  unsafeCastGObject = WorkerLocation . castRef . unGObject

castToWorkerLocation :: GObjectClass obj => obj -> WorkerLocation
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
  fromJSRef = return . fmap WorkerNavigator . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsWorkerNavigator o
toWorkerNavigator :: IsWorkerNavigator o => o -> WorkerNavigator
toWorkerNavigator = unsafeCastGObject . toGObject

instance IsWorkerNavigator WorkerNavigator
instance GObjectClass WorkerNavigator where
  toGObject = GObject . castRef . unWorkerNavigator
  unsafeCastGObject = WorkerNavigator . castRef . unGObject

castToWorkerNavigator :: GObjectClass obj => obj -> WorkerNavigator
castToWorkerNavigator = castTo gTypeWorkerNavigator "WorkerNavigator"

foreign import javascript unsafe "window[\"WorkerNavigator\"]" gTypeWorkerNavigator' :: JSRef GType
gTypeWorkerNavigator = GType gTypeWorkerNavigator'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequest".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest Mozilla XMLHttpRequest documentation>
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
  fromJSRef = return . fmap XMLHttpRequestProgressEvent . maybeJSNull
  {-# INLINE fromJSRef #-}

class IsProgressEvent o => IsXMLHttpRequestProgressEvent o
toXMLHttpRequestProgressEvent :: IsXMLHttpRequestProgressEvent o => o -> XMLHttpRequestProgressEvent
toXMLHttpRequestProgressEvent = unsafeCastGObject . toGObject

instance IsXMLHttpRequestProgressEvent XMLHttpRequestProgressEvent
instance IsProgressEvent XMLHttpRequestProgressEvent
instance IsEvent XMLHttpRequestProgressEvent
instance GObjectClass XMLHttpRequestProgressEvent where
  toGObject = GObject . castRef . unXMLHttpRequestProgressEvent
  unsafeCastGObject = XMLHttpRequestProgressEvent . castRef . unGObject

castToXMLHttpRequestProgressEvent :: GObjectClass obj => obj -> XMLHttpRequestProgressEvent
castToXMLHttpRequestProgressEvent = castTo gTypeXMLHttpRequestProgressEvent "XMLHttpRequestProgressEvent"

foreign import javascript unsafe "window[\"XMLHttpRequestProgressEvent\"]" gTypeXMLHttpRequestProgressEvent' :: JSRef GType
gTypeXMLHttpRequestProgressEvent = GType gTypeXMLHttpRequestProgressEvent'
#else
#endif


#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
-- | Functions for this inteface are in "GHCJS.DOM.XMLHttpRequestUpload".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload Mozilla XMLHttpRequestUpload documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.XMLSerializer".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation>
newtype XMLSerializer = XMLSerializer (JSRef XMLSerializer) deriving (Eq)

unXMLSerializer (XMLSerializer o) = o

instance ToJSRef XMLSerializer where
  toJSRef = return . unXMLSerializer
  {-# INLINE toJSRef #-}

instance FromJSRef XMLSerializer where
  fromJSRef = return . fmap XMLSerializer . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXMLSerializer o
toXMLSerializer :: IsXMLSerializer o => o -> XMLSerializer
toXMLSerializer = unsafeCastGObject . toGObject

instance IsXMLSerializer XMLSerializer
instance GObjectClass XMLSerializer where
  toGObject = GObject . castRef . unXMLSerializer
  unsafeCastGObject = XMLSerializer . castRef . unGObject

castToXMLSerializer :: GObjectClass obj => obj -> XMLSerializer
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
  fromJSRef = return . fmap XPathEvaluator . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXPathEvaluator o
toXPathEvaluator :: IsXPathEvaluator o => o -> XPathEvaluator
toXPathEvaluator = unsafeCastGObject . toGObject

instance IsXPathEvaluator XPathEvaluator
instance GObjectClass XPathEvaluator where
  toGObject = GObject . castRef . unXPathEvaluator
  unsafeCastGObject = XPathEvaluator . castRef . unGObject

castToXPathEvaluator :: GObjectClass obj => obj -> XPathEvaluator
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
-- | Functions for this inteface are in "GHCJS.DOM.XPathNSResolver".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver Mozilla XPathNSResolver documentation>
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
-- | Functions for this inteface are in "GHCJS.DOM.XPathResult".
--
-- <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult Mozilla XPathResult documentation>
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
  fromJSRef = return . fmap XSLTProcessor . maybeJSNull
  {-# INLINE fromJSRef #-}

class GObjectClass o => IsXSLTProcessor o
toXSLTProcessor :: IsXSLTProcessor o => o -> XSLTProcessor
toXSLTProcessor = unsafeCastGObject . toGObject

instance IsXSLTProcessor XSLTProcessor
instance GObjectClass XSLTProcessor where
  toGObject = GObject . castRef . unXSLTProcessor
  unsafeCastGObject = XSLTProcessor . castRef . unGObject

castToXSLTProcessor :: GObjectClass obj => obj -> XSLTProcessor
castToXSLTProcessor = castTo gTypeXSLTProcessor "XSLTProcessor"

foreign import javascript unsafe "window[\"XSLTProcessor\"]" gTypeXSLTProcessor' :: JSRef GType
gTypeXSLTProcessor = GType gTypeXSLTProcessor'
#else
#endif


