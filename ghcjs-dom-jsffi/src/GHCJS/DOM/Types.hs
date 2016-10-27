{-# LANGUAGE CPP, JavaScriptFFI, ForeignFunctionInterface, ConstraintKinds, FlexibleInstances, RankNTypes, FlexibleContexts, ScopedTypeVariables #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, KindSignatures #-}
module GHCJS.DOM.Types (

  -- * JavaScript Context and Monad
    JSContextRef(..), JSM, askJSM, runJSM, MonadJSM(..), liftJSM

  -- * DOM Context and Monad
  , DOMContext(..), DOM, askDOM, runDOM, MonadDOM(..), liftDOM

  -- * JavaScript Value
  , JSVal(..), ToJSVal(..), FromJSVal(..), PToJSVal(..), PFromJSVal(..)

  -- * JavaScript String
  , JSString(..), ToJSString(..), FromJSString(..)
  , toJSString, fromJSString, toMaybeJSString, fromMaybeJSString

  -- * Nullable
  , Nullable(..), nullableToMaybe, maybeToNullable

  -- * DOM String
  , DOMString(..), ToDOMString(..), FromDOMString(..), IsDOMString

  -- * Object
  , maybeJSNullOrUndefined, GType(..)
  , GObject(..), IsGObject, toGObject, gTypeGObject, isA, objectToString
  , castTo, unsafeCastTo, uncheckedCastTo
  , js_eq, strictEqual

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
  , Promise(Promise), unPromise, IsPromise, toPromise, gTypePromise

  -- * Date
  , Date(Date), unDate, IsDate, toDate, gTypeDate

  -- * Arrays
  , Array(Array), unArray, IsArray, toArray, gTypeArray
  , ObjectArray(ObjectArray), unObjectArray, IsObjectArray, toObjectArray
  , ArrayBuffer(ArrayBuffer), unArrayBuffer, IsArrayBuffer, toArrayBuffer, gTypeArrayBuffer
  , ArrayBufferView(ArrayBufferView), unArrayBufferView, IsArrayBufferView, toArrayBufferView
  , Float32Array(Float32Array), unFloat32Array, IsFloat32Array, toFloat32Array, gTypeFloat32Array
  , Float64Array(Float64Array), unFloat64Array, IsFloat64Array, toFloat64Array, gTypeFloat64Array
  , Uint8Array(Uint8Array), unUint8Array, IsUint8Array, toUint8Array, gTypeUint8Array
  , Uint8ClampedArray(Uint8ClampedArray), unUint8ClampedArray, IsUint8ClampedArray, toUint8ClampedArray, gTypeUint8ClampedArray
  , Uint16Array(Uint16Array), unUint16Array, IsUint16Array, toUint16Array, gTypeUint16Array
  , Uint32Array(Uint32Array), unUint32Array, IsUint32Array, toUint32Array, gTypeUint32Array
  , Int8Array(Int8Array), unInt8Array, IsInt8Array, toInt8Array, gTypeInt8Array
  , Int16Array(Int16Array), unInt16Array, IsInt16Array, toInt16Array, gTypeInt16Array
  , Int32Array(Int32Array), unInt32Array, IsInt32Array, toInt32Array, gTypeInt32Array

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

  -- * Used for better error messages
  , HasCallStack

  -- * Interface types from IDL files

-- AUTO GENERATION STARTS HERE
  , ANGLEInstancedArrays(ANGLEInstancedArrays), unANGLEInstancedArrays, gTypeANGLEInstancedArrays
  , AbstractView(AbstractView), unAbstractView, gTypeAbstractView
  , AbstractWorker(AbstractWorker), unAbstractWorker, gTypeAbstractWorker
  , AllAudioCapabilities(AllAudioCapabilities), unAllAudioCapabilities, gTypeAllAudioCapabilities
  , AllVideoCapabilities(AllVideoCapabilities), unAllVideoCapabilities, gTypeAllVideoCapabilities
  , AnalyserNode(AnalyserNode), unAnalyserNode, gTypeAnalyserNode
  , AnimationEvent(AnimationEvent), unAnimationEvent, gTypeAnimationEvent
  , ApplicationCache(ApplicationCache), unApplicationCache, gTypeApplicationCache
  , Attr(Attr), unAttr, gTypeAttr
  , AudioBuffer(AudioBuffer), unAudioBuffer, gTypeAudioBuffer
  , AudioBufferSourceNode(AudioBufferSourceNode), unAudioBufferSourceNode, gTypeAudioBufferSourceNode
  , AudioContext(AudioContext), unAudioContext, IsAudioContext, toAudioContext, gTypeAudioContext
  , AudioDestinationNode(AudioDestinationNode), unAudioDestinationNode, gTypeAudioDestinationNode
  , AudioListener(AudioListener), unAudioListener, gTypeAudioListener
  , AudioNode(AudioNode), unAudioNode, IsAudioNode, toAudioNode, gTypeAudioNode
  , AudioParam(AudioParam), unAudioParam, gTypeAudioParam
  , AudioProcessingEvent(AudioProcessingEvent), unAudioProcessingEvent, gTypeAudioProcessingEvent
  , AudioStreamTrack(AudioStreamTrack), unAudioStreamTrack, gTypeAudioStreamTrack
  , AudioTrack(AudioTrack), unAudioTrack, gTypeAudioTrack
  , AudioTrackList(AudioTrackList), unAudioTrackList, gTypeAudioTrackList
  , AutocompleteErrorEvent(AutocompleteErrorEvent), unAutocompleteErrorEvent, gTypeAutocompleteErrorEvent
  , BarProp(BarProp), unBarProp, gTypeBarProp
  , BatteryManager(BatteryManager), unBatteryManager, gTypeBatteryManager
  , BeforeLoadEvent(BeforeLoadEvent), unBeforeLoadEvent, gTypeBeforeLoadEvent
  , BeforeUnloadEvent(BeforeUnloadEvent), unBeforeUnloadEvent, gTypeBeforeUnloadEvent
  , BiquadFilterNode(BiquadFilterNode), unBiquadFilterNode, gTypeBiquadFilterNode
  , Blob(Blob), unBlob, IsBlob, toBlob, gTypeBlob
  , CDATASection(CDATASection), unCDATASection, gTypeCDATASection
  , CSS(CSS), unCSS, gTypeCSS
  , CSSCharsetRule(CSSCharsetRule), unCSSCharsetRule, gTypeCSSCharsetRule
  , CSSFontFaceLoadEvent(CSSFontFaceLoadEvent), unCSSFontFaceLoadEvent, gTypeCSSFontFaceLoadEvent
  , CSSFontFaceRule(CSSFontFaceRule), unCSSFontFaceRule, gTypeCSSFontFaceRule
  , CSSImportRule(CSSImportRule), unCSSImportRule, gTypeCSSImportRule
  , CSSKeyframeRule(CSSKeyframeRule), unCSSKeyframeRule, gTypeCSSKeyframeRule
  , CSSKeyframesRule(CSSKeyframesRule), unCSSKeyframesRule, gTypeCSSKeyframesRule
  , CSSMediaRule(CSSMediaRule), unCSSMediaRule, gTypeCSSMediaRule
  , CSSPageRule(CSSPageRule), unCSSPageRule, gTypeCSSPageRule
  , CSSPrimitiveValue(CSSPrimitiveValue), unCSSPrimitiveValue, gTypeCSSPrimitiveValue
  , CSSRule(CSSRule), unCSSRule, IsCSSRule, toCSSRule, gTypeCSSRule
  , CSSRuleList(CSSRuleList), unCSSRuleList, gTypeCSSRuleList
  , CSSStyleDeclaration(CSSStyleDeclaration), unCSSStyleDeclaration, gTypeCSSStyleDeclaration
  , CSSStyleRule(CSSStyleRule), unCSSStyleRule, gTypeCSSStyleRule
  , CSSStyleSheet(CSSStyleSheet), unCSSStyleSheet, gTypeCSSStyleSheet
  , CSSSupportsRule(CSSSupportsRule), unCSSSupportsRule, gTypeCSSSupportsRule
  , CSSUnknownRule(CSSUnknownRule), unCSSUnknownRule, gTypeCSSUnknownRule
  , CSSValue(CSSValue), unCSSValue, IsCSSValue, toCSSValue, gTypeCSSValue
  , CSSValueList(CSSValueList), unCSSValueList, IsCSSValueList, toCSSValueList, gTypeCSSValueList
  , CanvasGradient(CanvasGradient), unCanvasGradient, gTypeCanvasGradient
  , CanvasPattern(CanvasPattern), unCanvasPattern, gTypeCanvasPattern
  , CanvasProxy(CanvasProxy), unCanvasProxy, gTypeCanvasProxy
  , CanvasRenderingContext(CanvasRenderingContext), unCanvasRenderingContext, IsCanvasRenderingContext, toCanvasRenderingContext, gTypeCanvasRenderingContext
  , CanvasRenderingContext2D(CanvasRenderingContext2D), unCanvasRenderingContext2D, gTypeCanvasRenderingContext2D
  , CapabilityRange(CapabilityRange), unCapabilityRange, gTypeCapabilityRange
  , ChannelMergerNode(ChannelMergerNode), unChannelMergerNode, gTypeChannelMergerNode
  , ChannelSplitterNode(ChannelSplitterNode), unChannelSplitterNode, gTypeChannelSplitterNode
  , CharacterData(CharacterData), unCharacterData, IsCharacterData, toCharacterData, gTypeCharacterData
  , ChildNode(ChildNode), unChildNode, gTypeChildNode
  , ClientRect(ClientRect), unClientRect, gTypeClientRect
  , ClientRectList(ClientRectList), unClientRectList, gTypeClientRectList
  , CloseEvent(CloseEvent), unCloseEvent, gTypeCloseEvent
  , CommandLineAPIHost(CommandLineAPIHost), unCommandLineAPIHost, gTypeCommandLineAPIHost
  , Comment(Comment), unComment, gTypeComment
  , CompositionEvent(CompositionEvent), unCompositionEvent, gTypeCompositionEvent
  , ConvolverNode(ConvolverNode), unConvolverNode, gTypeConvolverNode
  , Coordinates(Coordinates), unCoordinates, gTypeCoordinates
  , Counter(Counter), unCounter, gTypeCounter
  , Crypto(Crypto), unCrypto, gTypeCrypto
  , CryptoKey(CryptoKey), unCryptoKey, gTypeCryptoKey
  , CryptoKeyPair(CryptoKeyPair), unCryptoKeyPair, gTypeCryptoKeyPair
  , CustomEvent(CustomEvent), unCustomEvent, gTypeCustomEvent
  , DOMError(DOMError), unDOMError, IsDOMError, toDOMError, gTypeDOMError
  , DOMImplementation(DOMImplementation), unDOMImplementation, gTypeDOMImplementation
  , DOMNamedFlowCollection(DOMNamedFlowCollection), unDOMNamedFlowCollection, gTypeDOMNamedFlowCollection
  , DOMParser(DOMParser), unDOMParser, gTypeDOMParser
  , DOMSettableTokenList(DOMSettableTokenList), unDOMSettableTokenList, gTypeDOMSettableTokenList
  , DOMStringList(DOMStringList), unDOMStringList, gTypeDOMStringList
  , DOMStringMap(DOMStringMap), unDOMStringMap, gTypeDOMStringMap
  , DOMTokenList(DOMTokenList), unDOMTokenList, IsDOMTokenList, toDOMTokenList, gTypeDOMTokenList
  , DataCue(DataCue), unDataCue, gTypeDataCue
  , DataTransfer(DataTransfer), unDataTransfer, gTypeDataTransfer
  , DataTransferItem(DataTransferItem), unDataTransferItem, gTypeDataTransferItem
  , DataTransferItemList(DataTransferItemList), unDataTransferItemList, gTypeDataTransferItemList
  , Database(Database), unDatabase, gTypeDatabase
  , DedicatedWorkerGlobalScope(DedicatedWorkerGlobalScope), unDedicatedWorkerGlobalScope, gTypeDedicatedWorkerGlobalScope
  , DelayNode(DelayNode), unDelayNode, gTypeDelayNode
  , DeviceMotionEvent(DeviceMotionEvent), unDeviceMotionEvent, gTypeDeviceMotionEvent
  , DeviceOrientationEvent(DeviceOrientationEvent), unDeviceOrientationEvent, gTypeDeviceOrientationEvent
  , DeviceProximityEvent(DeviceProximityEvent), unDeviceProximityEvent, gTypeDeviceProximityEvent
  , Document(Document), unDocument, IsDocument, toDocument, gTypeDocument
  , DocumentFragment(DocumentFragment), unDocumentFragment, gTypeDocumentFragment
  , DocumentType(DocumentType), unDocumentType, gTypeDocumentType
  , DynamicsCompressorNode(DynamicsCompressorNode), unDynamicsCompressorNode, gTypeDynamicsCompressorNode
  , EXTBlendMinMax(EXTBlendMinMax), unEXTBlendMinMax, gTypeEXTBlendMinMax
  , EXTFragDepth(EXTFragDepth), unEXTFragDepth, gTypeEXTFragDepth
  , EXTShaderTextureLOD(EXTShaderTextureLOD), unEXTShaderTextureLOD, gTypeEXTShaderTextureLOD
  , EXTTextureFilterAnisotropic(EXTTextureFilterAnisotropic), unEXTTextureFilterAnisotropic, gTypeEXTTextureFilterAnisotropic
  , EXTsRGB(EXTsRGB), unEXTsRGB, gTypeEXTsRGB
  , Element(Element), unElement, IsElement, toElement, gTypeElement
  , Entity(Entity), unEntity, gTypeEntity
  , EntityReference(EntityReference), unEntityReference, gTypeEntityReference
  , ErrorEvent(ErrorEvent), unErrorEvent, gTypeErrorEvent
  , Event(Event), unEvent, IsEvent, toEvent, gTypeEvent
  , EventListener(EventListener), unEventListener, gTypeEventListener
  , EventSource(EventSource), unEventSource, gTypeEventSource
  , EventTarget(EventTarget), unEventTarget, IsEventTarget, toEventTarget, gTypeEventTarget
  , File(File), unFile, gTypeFile
  , FileError(FileError), unFileError, gTypeFileError
  , FileList(FileList), unFileList, gTypeFileList
  , FileReader(FileReader), unFileReader, gTypeFileReader
  , FileReaderSync(FileReaderSync), unFileReaderSync, gTypeFileReaderSync
  , FocusEvent(FocusEvent), unFocusEvent, gTypeFocusEvent
  , FontLoader(FontLoader), unFontLoader, gTypeFontLoader
  , FormData(FormData), unFormData, gTypeFormData
  , GainNode(GainNode), unGainNode, gTypeGainNode
  , Gamepad(Gamepad), unGamepad, gTypeGamepad
  , GamepadButton(GamepadButton), unGamepadButton, gTypeGamepadButton
  , GamepadEvent(GamepadEvent), unGamepadEvent, gTypeGamepadEvent
  , Geolocation(Geolocation), unGeolocation, gTypeGeolocation
  , Geoposition(Geoposition), unGeoposition, gTypeGeoposition
  , HTMLAllCollection(HTMLAllCollection), unHTMLAllCollection, gTypeHTMLAllCollection
  , HTMLAnchorElement(HTMLAnchorElement), unHTMLAnchorElement, gTypeHTMLAnchorElement
  , HTMLAppletElement(HTMLAppletElement), unHTMLAppletElement, gTypeHTMLAppletElement
  , HTMLAreaElement(HTMLAreaElement), unHTMLAreaElement, gTypeHTMLAreaElement
  , HTMLAudioElement(HTMLAudioElement), unHTMLAudioElement, gTypeHTMLAudioElement
  , HTMLBRElement(HTMLBRElement), unHTMLBRElement, gTypeHTMLBRElement
  , HTMLBaseElement(HTMLBaseElement), unHTMLBaseElement, gTypeHTMLBaseElement
  , HTMLBaseFontElement(HTMLBaseFontElement), unHTMLBaseFontElement, gTypeHTMLBaseFontElement
  , HTMLBodyElement(HTMLBodyElement), unHTMLBodyElement, gTypeHTMLBodyElement
  , HTMLButtonElement(HTMLButtonElement), unHTMLButtonElement, gTypeHTMLButtonElement
  , HTMLCanvasElement(HTMLCanvasElement), unHTMLCanvasElement, gTypeHTMLCanvasElement
  , HTMLCollection(HTMLCollection), unHTMLCollection, IsHTMLCollection, toHTMLCollection, gTypeHTMLCollection
  , HTMLDListElement(HTMLDListElement), unHTMLDListElement, gTypeHTMLDListElement
  , HTMLDataListElement(HTMLDataListElement), unHTMLDataListElement, gTypeHTMLDataListElement
  , HTMLDetailsElement(HTMLDetailsElement), unHTMLDetailsElement, gTypeHTMLDetailsElement
  , HTMLDirectoryElement(HTMLDirectoryElement), unHTMLDirectoryElement, gTypeHTMLDirectoryElement
  , HTMLDivElement(HTMLDivElement), unHTMLDivElement, gTypeHTMLDivElement
  , HTMLDocument(HTMLDocument), unHTMLDocument, gTypeHTMLDocument
  , HTMLElement(HTMLElement), unHTMLElement, IsHTMLElement, toHTMLElement, gTypeHTMLElement
  , HTMLEmbedElement(HTMLEmbedElement), unHTMLEmbedElement, gTypeHTMLEmbedElement
  , HTMLFieldSetElement(HTMLFieldSetElement), unHTMLFieldSetElement, gTypeHTMLFieldSetElement
  , HTMLFontElement(HTMLFontElement), unHTMLFontElement, gTypeHTMLFontElement
  , HTMLFormControlsCollection(HTMLFormControlsCollection), unHTMLFormControlsCollection, gTypeHTMLFormControlsCollection
  , HTMLFormElement(HTMLFormElement), unHTMLFormElement, gTypeHTMLFormElement
  , HTMLFrameElement(HTMLFrameElement), unHTMLFrameElement, gTypeHTMLFrameElement
  , HTMLFrameSetElement(HTMLFrameSetElement), unHTMLFrameSetElement, gTypeHTMLFrameSetElement
  , HTMLHRElement(HTMLHRElement), unHTMLHRElement, gTypeHTMLHRElement
  , HTMLHeadElement(HTMLHeadElement), unHTMLHeadElement, gTypeHTMLHeadElement
  , HTMLHeadingElement(HTMLHeadingElement), unHTMLHeadingElement, gTypeHTMLHeadingElement
  , HTMLHtmlElement(HTMLHtmlElement), unHTMLHtmlElement, gTypeHTMLHtmlElement
  , HTMLIFrameElement(HTMLIFrameElement), unHTMLIFrameElement, gTypeHTMLIFrameElement
  , HTMLImageElement(HTMLImageElement), unHTMLImageElement, gTypeHTMLImageElement
  , HTMLInputElement(HTMLInputElement), unHTMLInputElement, gTypeHTMLInputElement
  , HTMLKeygenElement(HTMLKeygenElement), unHTMLKeygenElement, gTypeHTMLKeygenElement
  , HTMLLIElement(HTMLLIElement), unHTMLLIElement, gTypeHTMLLIElement
  , HTMLLabelElement(HTMLLabelElement), unHTMLLabelElement, gTypeHTMLLabelElement
  , HTMLLegendElement(HTMLLegendElement), unHTMLLegendElement, gTypeHTMLLegendElement
  , HTMLLinkElement(HTMLLinkElement), unHTMLLinkElement, gTypeHTMLLinkElement
  , HTMLMapElement(HTMLMapElement), unHTMLMapElement, gTypeHTMLMapElement
  , HTMLMarqueeElement(HTMLMarqueeElement), unHTMLMarqueeElement, gTypeHTMLMarqueeElement
  , HTMLMediaElement(HTMLMediaElement), unHTMLMediaElement, IsHTMLMediaElement, toHTMLMediaElement, gTypeHTMLMediaElement
  , HTMLMenuElement(HTMLMenuElement), unHTMLMenuElement, gTypeHTMLMenuElement
  , HTMLMetaElement(HTMLMetaElement), unHTMLMetaElement, gTypeHTMLMetaElement
  , HTMLMeterElement(HTMLMeterElement), unHTMLMeterElement, gTypeHTMLMeterElement
  , HTMLModElement(HTMLModElement), unHTMLModElement, gTypeHTMLModElement
  , HTMLOListElement(HTMLOListElement), unHTMLOListElement, gTypeHTMLOListElement
  , HTMLObjectElement(HTMLObjectElement), unHTMLObjectElement, gTypeHTMLObjectElement
  , HTMLOptGroupElement(HTMLOptGroupElement), unHTMLOptGroupElement, gTypeHTMLOptGroupElement
  , HTMLOptionElement(HTMLOptionElement), unHTMLOptionElement, gTypeHTMLOptionElement
  , HTMLOptionsCollection(HTMLOptionsCollection), unHTMLOptionsCollection, gTypeHTMLOptionsCollection
  , HTMLOutputElement(HTMLOutputElement), unHTMLOutputElement, gTypeHTMLOutputElement
  , HTMLParagraphElement(HTMLParagraphElement), unHTMLParagraphElement, gTypeHTMLParagraphElement
  , HTMLParamElement(HTMLParamElement), unHTMLParamElement, gTypeHTMLParamElement
  , HTMLPreElement(HTMLPreElement), unHTMLPreElement, gTypeHTMLPreElement
  , HTMLProgressElement(HTMLProgressElement), unHTMLProgressElement, gTypeHTMLProgressElement
  , HTMLQuoteElement(HTMLQuoteElement), unHTMLQuoteElement, gTypeHTMLQuoteElement
  , HTMLScriptElement(HTMLScriptElement), unHTMLScriptElement, gTypeHTMLScriptElement
  , HTMLSelectElement(HTMLSelectElement), unHTMLSelectElement, gTypeHTMLSelectElement
  , HTMLSourceElement(HTMLSourceElement), unHTMLSourceElement, gTypeHTMLSourceElement
  , HTMLSpanElement(HTMLSpanElement), unHTMLSpanElement, gTypeHTMLSpanElement
  , HTMLStyleElement(HTMLStyleElement), unHTMLStyleElement, gTypeHTMLStyleElement
  , HTMLTableCaptionElement(HTMLTableCaptionElement), unHTMLTableCaptionElement, gTypeHTMLTableCaptionElement
  , HTMLTableCellElement(HTMLTableCellElement), unHTMLTableCellElement, gTypeHTMLTableCellElement
  , HTMLTableColElement(HTMLTableColElement), unHTMLTableColElement, gTypeHTMLTableColElement
  , HTMLTableElement(HTMLTableElement), unHTMLTableElement, gTypeHTMLTableElement
  , HTMLTableRowElement(HTMLTableRowElement), unHTMLTableRowElement, gTypeHTMLTableRowElement
  , HTMLTableSectionElement(HTMLTableSectionElement), unHTMLTableSectionElement, gTypeHTMLTableSectionElement
  , HTMLTemplateElement(HTMLTemplateElement), unHTMLTemplateElement, gTypeHTMLTemplateElement
  , HTMLTextAreaElement(HTMLTextAreaElement), unHTMLTextAreaElement, gTypeHTMLTextAreaElement
  , HTMLTitleElement(HTMLTitleElement), unHTMLTitleElement, gTypeHTMLTitleElement
  , HTMLTrackElement(HTMLTrackElement), unHTMLTrackElement, gTypeHTMLTrackElement
  , HTMLUListElement(HTMLUListElement), unHTMLUListElement, gTypeHTMLUListElement
  , HTMLUnknownElement(HTMLUnknownElement), unHTMLUnknownElement, gTypeHTMLUnknownElement
  , HTMLVideoElement(HTMLVideoElement), unHTMLVideoElement, gTypeHTMLVideoElement
  , HashChangeEvent(HashChangeEvent), unHashChangeEvent, gTypeHashChangeEvent
  , History(History), unHistory, gTypeHistory
  , IDBAny(IDBAny), unIDBAny, gTypeIDBAny
  , IDBCursor(IDBCursor), unIDBCursor, IsIDBCursor, toIDBCursor, gTypeIDBCursor
  , IDBCursorWithValue(IDBCursorWithValue), unIDBCursorWithValue, gTypeIDBCursorWithValue
  , IDBDatabase(IDBDatabase), unIDBDatabase, gTypeIDBDatabase
  , IDBFactory(IDBFactory), unIDBFactory, gTypeIDBFactory
  , IDBIndex(IDBIndex), unIDBIndex, gTypeIDBIndex
  , IDBKeyRange(IDBKeyRange), unIDBKeyRange, gTypeIDBKeyRange
  , IDBObjectStore(IDBObjectStore), unIDBObjectStore, gTypeIDBObjectStore
  , IDBOpenDBRequest(IDBOpenDBRequest), unIDBOpenDBRequest, gTypeIDBOpenDBRequest
  , IDBRequest(IDBRequest), unIDBRequest, IsIDBRequest, toIDBRequest, gTypeIDBRequest
  , IDBTransaction(IDBTransaction), unIDBTransaction, gTypeIDBTransaction
  , IDBVersionChangeEvent(IDBVersionChangeEvent), unIDBVersionChangeEvent, gTypeIDBVersionChangeEvent
  , ImageData(ImageData), unImageData, gTypeImageData
  , InspectorFrontendHost(InspectorFrontendHost), unInspectorFrontendHost, gTypeInspectorFrontendHost
  , InternalSettings(InternalSettings), unInternalSettings, gTypeInternalSettings
  , Internals(Internals), unInternals, gTypeInternals
  , KeyboardEvent(KeyboardEvent), unKeyboardEvent, gTypeKeyboardEvent
  , Location(Location), unLocation, gTypeLocation
  , MallocStatistics(MallocStatistics), unMallocStatistics, gTypeMallocStatistics
  , MediaController(MediaController), unMediaController, gTypeMediaController
  , MediaControlsHost(MediaControlsHost), unMediaControlsHost, gTypeMediaControlsHost
  , MediaElementAudioSourceNode(MediaElementAudioSourceNode), unMediaElementAudioSourceNode, gTypeMediaElementAudioSourceNode
  , MediaError(MediaError), unMediaError, gTypeMediaError
  , MediaKeyError(MediaKeyError), unMediaKeyError, gTypeMediaKeyError
  , MediaKeyEvent(MediaKeyEvent), unMediaKeyEvent, gTypeMediaKeyEvent
  , MediaKeyMessageEvent(MediaKeyMessageEvent), unMediaKeyMessageEvent, gTypeMediaKeyMessageEvent
  , MediaKeyNeededEvent(MediaKeyNeededEvent), unMediaKeyNeededEvent, gTypeMediaKeyNeededEvent
  , MediaKeySession(MediaKeySession), unMediaKeySession, gTypeMediaKeySession
  , MediaKeys(MediaKeys), unMediaKeys, gTypeMediaKeys
  , MediaList(MediaList), unMediaList, gTypeMediaList
  , MediaQueryList(MediaQueryList), unMediaQueryList, gTypeMediaQueryList
  , MediaSource(MediaSource), unMediaSource, gTypeMediaSource
  , MediaSourceStates(MediaSourceStates), unMediaSourceStates, gTypeMediaSourceStates
  , MediaStream(MediaStream), unMediaStream, gTypeMediaStream
  , MediaStreamAudioDestinationNode(MediaStreamAudioDestinationNode), unMediaStreamAudioDestinationNode, gTypeMediaStreamAudioDestinationNode
  , MediaStreamAudioSourceNode(MediaStreamAudioSourceNode), unMediaStreamAudioSourceNode, gTypeMediaStreamAudioSourceNode
  , MediaStreamCapabilities(MediaStreamCapabilities), unMediaStreamCapabilities, IsMediaStreamCapabilities, toMediaStreamCapabilities, gTypeMediaStreamCapabilities
  , MediaStreamEvent(MediaStreamEvent), unMediaStreamEvent, gTypeMediaStreamEvent
  , MediaStreamTrack(MediaStreamTrack), unMediaStreamTrack, IsMediaStreamTrack, toMediaStreamTrack, gTypeMediaStreamTrack
  , MediaStreamTrackEvent(MediaStreamTrackEvent), unMediaStreamTrackEvent, gTypeMediaStreamTrackEvent
  , MediaTrackConstraint(MediaTrackConstraint), unMediaTrackConstraint, gTypeMediaTrackConstraint
  , MediaTrackConstraintSet(MediaTrackConstraintSet), unMediaTrackConstraintSet, gTypeMediaTrackConstraintSet
  , MediaTrackConstraints(MediaTrackConstraints), unMediaTrackConstraints, gTypeMediaTrackConstraints
  , MemoryInfo(MemoryInfo), unMemoryInfo, gTypeMemoryInfo
  , MessageChannel(MessageChannel), unMessageChannel, gTypeMessageChannel
  , MessageEvent(MessageEvent), unMessageEvent, gTypeMessageEvent
  , MessagePort(MessagePort), unMessagePort, gTypeMessagePort
  , MimeType(MimeType), unMimeType, gTypeMimeType
  , MimeTypeArray(MimeTypeArray), unMimeTypeArray, gTypeMimeTypeArray
  , MouseEvent(MouseEvent), unMouseEvent, IsMouseEvent, toMouseEvent, gTypeMouseEvent
  , MutationEvent(MutationEvent), unMutationEvent, gTypeMutationEvent
  , MutationObserver(MutationObserver), unMutationObserver, gTypeMutationObserver
  , MutationRecord(MutationRecord), unMutationRecord, gTypeMutationRecord
  , NamedNodeMap(NamedNodeMap), unNamedNodeMap, gTypeNamedNodeMap
  , Navigator(Navigator), unNavigator, gTypeNavigator
  , NavigatorUserMediaError(NavigatorUserMediaError), unNavigatorUserMediaError, gTypeNavigatorUserMediaError
  , Node(Node), unNode, IsNode, toNode, gTypeNode
  , NodeFilter(NodeFilter), unNodeFilter, gTypeNodeFilter
  , NodeIterator(NodeIterator), unNodeIterator, gTypeNodeIterator
  , NodeList(NodeList), unNodeList, IsNodeList, toNodeList, gTypeNodeList
  , Notification(Notification), unNotification, gTypeNotification
  , NotificationCenter(NotificationCenter), unNotificationCenter, gTypeNotificationCenter
  , OESElementIndexUint(OESElementIndexUint), unOESElementIndexUint, gTypeOESElementIndexUint
  , OESStandardDerivatives(OESStandardDerivatives), unOESStandardDerivatives, gTypeOESStandardDerivatives
  , OESTextureFloat(OESTextureFloat), unOESTextureFloat, gTypeOESTextureFloat
  , OESTextureFloatLinear(OESTextureFloatLinear), unOESTextureFloatLinear, gTypeOESTextureFloatLinear
  , OESTextureHalfFloat(OESTextureHalfFloat), unOESTextureHalfFloat, gTypeOESTextureHalfFloat
  , OESTextureHalfFloatLinear(OESTextureHalfFloatLinear), unOESTextureHalfFloatLinear, gTypeOESTextureHalfFloatLinear
  , OESVertexArrayObject(OESVertexArrayObject), unOESVertexArrayObject, gTypeOESVertexArrayObject
  , OfflineAudioCompletionEvent(OfflineAudioCompletionEvent), unOfflineAudioCompletionEvent, gTypeOfflineAudioCompletionEvent
  , OfflineAudioContext(OfflineAudioContext), unOfflineAudioContext, gTypeOfflineAudioContext
  , OscillatorNode(OscillatorNode), unOscillatorNode, gTypeOscillatorNode
  , OverflowEvent(OverflowEvent), unOverflowEvent, gTypeOverflowEvent
  , PageTransitionEvent(PageTransitionEvent), unPageTransitionEvent, gTypePageTransitionEvent
  , PannerNode(PannerNode), unPannerNode, gTypePannerNode
  , Path2D(Path2D), unPath2D, gTypePath2D
  , Performance(Performance), unPerformance, gTypePerformance
  , PerformanceEntry(PerformanceEntry), unPerformanceEntry, IsPerformanceEntry, toPerformanceEntry, gTypePerformanceEntry
  , PerformanceEntryList(PerformanceEntryList), unPerformanceEntryList, gTypePerformanceEntryList
  , PerformanceMark(PerformanceMark), unPerformanceMark, gTypePerformanceMark
  , PerformanceMeasure(PerformanceMeasure), unPerformanceMeasure, gTypePerformanceMeasure
  , PerformanceNavigation(PerformanceNavigation), unPerformanceNavigation, gTypePerformanceNavigation
  , PerformanceResourceTiming(PerformanceResourceTiming), unPerformanceResourceTiming, gTypePerformanceResourceTiming
  , PerformanceTiming(PerformanceTiming), unPerformanceTiming, gTypePerformanceTiming
  , PeriodicWave(PeriodicWave), unPeriodicWave, gTypePeriodicWave
  , Plugin(Plugin), unPlugin, gTypePlugin
  , PluginArray(PluginArray), unPluginArray, gTypePluginArray
  , PopStateEvent(PopStateEvent), unPopStateEvent, gTypePopStateEvent
  , PositionError(PositionError), unPositionError, gTypePositionError
  , ProcessingInstruction(ProcessingInstruction), unProcessingInstruction, gTypeProcessingInstruction
  , ProgressEvent(ProgressEvent), unProgressEvent, IsProgressEvent, toProgressEvent, gTypeProgressEvent
  , QuickTimePluginReplacement(QuickTimePluginReplacement), unQuickTimePluginReplacement, gTypeQuickTimePluginReplacement
  , RGBColor(RGBColor), unRGBColor, gTypeRGBColor
  , RTCConfiguration(RTCConfiguration), unRTCConfiguration, gTypeRTCConfiguration
  , RTCDTMFSender(RTCDTMFSender), unRTCDTMFSender, gTypeRTCDTMFSender
  , RTCDTMFToneChangeEvent(RTCDTMFToneChangeEvent), unRTCDTMFToneChangeEvent, gTypeRTCDTMFToneChangeEvent
  , RTCDataChannel(RTCDataChannel), unRTCDataChannel, gTypeRTCDataChannel
  , RTCDataChannelEvent(RTCDataChannelEvent), unRTCDataChannelEvent, gTypeRTCDataChannelEvent
  , RTCIceCandidate(RTCIceCandidate), unRTCIceCandidate, gTypeRTCIceCandidate
  , RTCIceCandidateEvent(RTCIceCandidateEvent), unRTCIceCandidateEvent, gTypeRTCIceCandidateEvent
  , RTCIceServer(RTCIceServer), unRTCIceServer, gTypeRTCIceServer
  , RTCPeerConnection(RTCPeerConnection), unRTCPeerConnection, gTypeRTCPeerConnection
  , RTCSessionDescription(RTCSessionDescription), unRTCSessionDescription, gTypeRTCSessionDescription
  , RTCStatsReport(RTCStatsReport), unRTCStatsReport, gTypeRTCStatsReport
  , RTCStatsResponse(RTCStatsResponse), unRTCStatsResponse, gTypeRTCStatsResponse
  , RadioNodeList(RadioNodeList), unRadioNodeList, gTypeRadioNodeList
  , Range(Range), unRange, gTypeRange
  , ReadableStream(ReadableStream), unReadableStream, gTypeReadableStream
  , Rect(Rect), unRect, gTypeRect
  , SQLError(SQLError), unSQLError, gTypeSQLError
  , SQLResultSet(SQLResultSet), unSQLResultSet, gTypeSQLResultSet
  , SQLResultSetRowList(SQLResultSetRowList), unSQLResultSetRowList, gTypeSQLResultSetRowList
  , SQLTransaction(SQLTransaction), unSQLTransaction, gTypeSQLTransaction
  , SVGAElement(SVGAElement), unSVGAElement, gTypeSVGAElement
  , SVGAltGlyphDefElement(SVGAltGlyphDefElement), unSVGAltGlyphDefElement, gTypeSVGAltGlyphDefElement
  , SVGAltGlyphElement(SVGAltGlyphElement), unSVGAltGlyphElement, gTypeSVGAltGlyphElement
  , SVGAltGlyphItemElement(SVGAltGlyphItemElement), unSVGAltGlyphItemElement, gTypeSVGAltGlyphItemElement
  , SVGAngle(SVGAngle), unSVGAngle, gTypeSVGAngle
  , SVGAnimateColorElement(SVGAnimateColorElement), unSVGAnimateColorElement, gTypeSVGAnimateColorElement
  , SVGAnimateElement(SVGAnimateElement), unSVGAnimateElement, gTypeSVGAnimateElement
  , SVGAnimateMotionElement(SVGAnimateMotionElement), unSVGAnimateMotionElement, gTypeSVGAnimateMotionElement
  , SVGAnimateTransformElement(SVGAnimateTransformElement), unSVGAnimateTransformElement, gTypeSVGAnimateTransformElement
  , SVGAnimatedAngle(SVGAnimatedAngle), unSVGAnimatedAngle, gTypeSVGAnimatedAngle
  , SVGAnimatedBoolean(SVGAnimatedBoolean), unSVGAnimatedBoolean, gTypeSVGAnimatedBoolean
  , SVGAnimatedEnumeration(SVGAnimatedEnumeration), unSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration
  , SVGAnimatedInteger(SVGAnimatedInteger), unSVGAnimatedInteger, gTypeSVGAnimatedInteger
  , SVGAnimatedLength(SVGAnimatedLength), unSVGAnimatedLength, gTypeSVGAnimatedLength
  , SVGAnimatedLengthList(SVGAnimatedLengthList), unSVGAnimatedLengthList, gTypeSVGAnimatedLengthList
  , SVGAnimatedNumber(SVGAnimatedNumber), unSVGAnimatedNumber, gTypeSVGAnimatedNumber
  , SVGAnimatedNumberList(SVGAnimatedNumberList), unSVGAnimatedNumberList, gTypeSVGAnimatedNumberList
  , SVGAnimatedPreserveAspectRatio(SVGAnimatedPreserveAspectRatio), unSVGAnimatedPreserveAspectRatio, gTypeSVGAnimatedPreserveAspectRatio
  , SVGAnimatedRect(SVGAnimatedRect), unSVGAnimatedRect, gTypeSVGAnimatedRect
  , SVGAnimatedString(SVGAnimatedString), unSVGAnimatedString, gTypeSVGAnimatedString
  , SVGAnimatedTransformList(SVGAnimatedTransformList), unSVGAnimatedTransformList, gTypeSVGAnimatedTransformList
  , SVGAnimationElement(SVGAnimationElement), unSVGAnimationElement, IsSVGAnimationElement, toSVGAnimationElement, gTypeSVGAnimationElement
  , SVGCircleElement(SVGCircleElement), unSVGCircleElement, gTypeSVGCircleElement
  , SVGClipPathElement(SVGClipPathElement), unSVGClipPathElement, gTypeSVGClipPathElement
  , SVGColor(SVGColor), unSVGColor, IsSVGColor, toSVGColor, gTypeSVGColor
  , SVGComponentTransferFunctionElement(SVGComponentTransferFunctionElement), unSVGComponentTransferFunctionElement, IsSVGComponentTransferFunctionElement, toSVGComponentTransferFunctionElement, gTypeSVGComponentTransferFunctionElement
  , SVGCursorElement(SVGCursorElement), unSVGCursorElement, gTypeSVGCursorElement
  , SVGDefsElement(SVGDefsElement), unSVGDefsElement, gTypeSVGDefsElement
  , SVGDescElement(SVGDescElement), unSVGDescElement, gTypeSVGDescElement
  , SVGDocument(SVGDocument), unSVGDocument, gTypeSVGDocument
  , SVGElement(SVGElement), unSVGElement, IsSVGElement, toSVGElement, gTypeSVGElement
  , SVGEllipseElement(SVGEllipseElement), unSVGEllipseElement, gTypeSVGEllipseElement
  , SVGExternalResourcesRequired(SVGExternalResourcesRequired), unSVGExternalResourcesRequired, gTypeSVGExternalResourcesRequired
  , SVGFEBlendElement(SVGFEBlendElement), unSVGFEBlendElement, gTypeSVGFEBlendElement
  , SVGFEColorMatrixElement(SVGFEColorMatrixElement), unSVGFEColorMatrixElement, gTypeSVGFEColorMatrixElement
  , SVGFEComponentTransferElement(SVGFEComponentTransferElement), unSVGFEComponentTransferElement, gTypeSVGFEComponentTransferElement
  , SVGFECompositeElement(SVGFECompositeElement), unSVGFECompositeElement, gTypeSVGFECompositeElement
  , SVGFEConvolveMatrixElement(SVGFEConvolveMatrixElement), unSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement
  , SVGFEDiffuseLightingElement(SVGFEDiffuseLightingElement), unSVGFEDiffuseLightingElement, gTypeSVGFEDiffuseLightingElement
  , SVGFEDisplacementMapElement(SVGFEDisplacementMapElement), unSVGFEDisplacementMapElement, gTypeSVGFEDisplacementMapElement
  , SVGFEDistantLightElement(SVGFEDistantLightElement), unSVGFEDistantLightElement, gTypeSVGFEDistantLightElement
  , SVGFEDropShadowElement(SVGFEDropShadowElement), unSVGFEDropShadowElement, gTypeSVGFEDropShadowElement
  , SVGFEFloodElement(SVGFEFloodElement), unSVGFEFloodElement, gTypeSVGFEFloodElement
  , SVGFEFuncAElement(SVGFEFuncAElement), unSVGFEFuncAElement, gTypeSVGFEFuncAElement
  , SVGFEFuncBElement(SVGFEFuncBElement), unSVGFEFuncBElement, gTypeSVGFEFuncBElement
  , SVGFEFuncGElement(SVGFEFuncGElement), unSVGFEFuncGElement, gTypeSVGFEFuncGElement
  , SVGFEFuncRElement(SVGFEFuncRElement), unSVGFEFuncRElement, gTypeSVGFEFuncRElement
  , SVGFEGaussianBlurElement(SVGFEGaussianBlurElement), unSVGFEGaussianBlurElement, gTypeSVGFEGaussianBlurElement
  , SVGFEImageElement(SVGFEImageElement), unSVGFEImageElement, gTypeSVGFEImageElement
  , SVGFEMergeElement(SVGFEMergeElement), unSVGFEMergeElement, gTypeSVGFEMergeElement
  , SVGFEMergeNodeElement(SVGFEMergeNodeElement), unSVGFEMergeNodeElement, gTypeSVGFEMergeNodeElement
  , SVGFEMorphologyElement(SVGFEMorphologyElement), unSVGFEMorphologyElement, gTypeSVGFEMorphologyElement
  , SVGFEOffsetElement(SVGFEOffsetElement), unSVGFEOffsetElement, gTypeSVGFEOffsetElement
  , SVGFEPointLightElement(SVGFEPointLightElement), unSVGFEPointLightElement, gTypeSVGFEPointLightElement
  , SVGFESpecularLightingElement(SVGFESpecularLightingElement), unSVGFESpecularLightingElement, gTypeSVGFESpecularLightingElement
  , SVGFESpotLightElement(SVGFESpotLightElement), unSVGFESpotLightElement, gTypeSVGFESpotLightElement
  , SVGFETileElement(SVGFETileElement), unSVGFETileElement, gTypeSVGFETileElement
  , SVGFETurbulenceElement(SVGFETurbulenceElement), unSVGFETurbulenceElement, gTypeSVGFETurbulenceElement
  , SVGFilterElement(SVGFilterElement), unSVGFilterElement, gTypeSVGFilterElement
  , SVGFilterPrimitiveStandardAttributes(SVGFilterPrimitiveStandardAttributes), unSVGFilterPrimitiveStandardAttributes, gTypeSVGFilterPrimitiveStandardAttributes
  , SVGFitToViewBox(SVGFitToViewBox), unSVGFitToViewBox, gTypeSVGFitToViewBox
  , SVGFontElement(SVGFontElement), unSVGFontElement, gTypeSVGFontElement
  , SVGFontFaceElement(SVGFontFaceElement), unSVGFontFaceElement, gTypeSVGFontFaceElement
  , SVGFontFaceFormatElement(SVGFontFaceFormatElement), unSVGFontFaceFormatElement, gTypeSVGFontFaceFormatElement
  , SVGFontFaceNameElement(SVGFontFaceNameElement), unSVGFontFaceNameElement, gTypeSVGFontFaceNameElement
  , SVGFontFaceSrcElement(SVGFontFaceSrcElement), unSVGFontFaceSrcElement, gTypeSVGFontFaceSrcElement
  , SVGFontFaceUriElement(SVGFontFaceUriElement), unSVGFontFaceUriElement, gTypeSVGFontFaceUriElement
  , SVGForeignObjectElement(SVGForeignObjectElement), unSVGForeignObjectElement, gTypeSVGForeignObjectElement
  , SVGGElement(SVGGElement), unSVGGElement, gTypeSVGGElement
  , SVGGlyphElement(SVGGlyphElement), unSVGGlyphElement, gTypeSVGGlyphElement
  , SVGGlyphRefElement(SVGGlyphRefElement), unSVGGlyphRefElement, gTypeSVGGlyphRefElement
  , SVGGradientElement(SVGGradientElement), unSVGGradientElement, IsSVGGradientElement, toSVGGradientElement, gTypeSVGGradientElement
  , SVGGraphicsElement(SVGGraphicsElement), unSVGGraphicsElement, IsSVGGraphicsElement, toSVGGraphicsElement, gTypeSVGGraphicsElement
  , SVGHKernElement(SVGHKernElement), unSVGHKernElement, gTypeSVGHKernElement
  , SVGImageElement(SVGImageElement), unSVGImageElement, gTypeSVGImageElement
  , SVGLength(SVGLength), unSVGLength, gTypeSVGLength
  , SVGLengthList(SVGLengthList), unSVGLengthList, gTypeSVGLengthList
  , SVGLineElement(SVGLineElement), unSVGLineElement, gTypeSVGLineElement
  , SVGLinearGradientElement(SVGLinearGradientElement), unSVGLinearGradientElement, gTypeSVGLinearGradientElement
  , SVGMPathElement(SVGMPathElement), unSVGMPathElement, gTypeSVGMPathElement
  , SVGMarkerElement(SVGMarkerElement), unSVGMarkerElement, gTypeSVGMarkerElement
  , SVGMaskElement(SVGMaskElement), unSVGMaskElement, gTypeSVGMaskElement
  , SVGMatrix(SVGMatrix), unSVGMatrix, gTypeSVGMatrix
  , SVGMetadataElement(SVGMetadataElement), unSVGMetadataElement, gTypeSVGMetadataElement
  , SVGMissingGlyphElement(SVGMissingGlyphElement), unSVGMissingGlyphElement, gTypeSVGMissingGlyphElement
  , SVGNumber(SVGNumber), unSVGNumber, gTypeSVGNumber
  , SVGNumberList(SVGNumberList), unSVGNumberList, gTypeSVGNumberList
  , SVGPaint(SVGPaint), unSVGPaint, gTypeSVGPaint
  , SVGPathElement(SVGPathElement), unSVGPathElement, gTypeSVGPathElement
  , SVGPathSeg(SVGPathSeg), unSVGPathSeg, IsSVGPathSeg, toSVGPathSeg, gTypeSVGPathSeg
  , SVGPathSegArcAbs(SVGPathSegArcAbs), unSVGPathSegArcAbs, gTypeSVGPathSegArcAbs
  , SVGPathSegArcRel(SVGPathSegArcRel), unSVGPathSegArcRel, gTypeSVGPathSegArcRel
  , SVGPathSegClosePath(SVGPathSegClosePath), unSVGPathSegClosePath, gTypeSVGPathSegClosePath
  , SVGPathSegCurvetoCubicAbs(SVGPathSegCurvetoCubicAbs), unSVGPathSegCurvetoCubicAbs, gTypeSVGPathSegCurvetoCubicAbs
  , SVGPathSegCurvetoCubicRel(SVGPathSegCurvetoCubicRel), unSVGPathSegCurvetoCubicRel, gTypeSVGPathSegCurvetoCubicRel
  , SVGPathSegCurvetoCubicSmoothAbs(SVGPathSegCurvetoCubicSmoothAbs), unSVGPathSegCurvetoCubicSmoothAbs, gTypeSVGPathSegCurvetoCubicSmoothAbs
  , SVGPathSegCurvetoCubicSmoothRel(SVGPathSegCurvetoCubicSmoothRel), unSVGPathSegCurvetoCubicSmoothRel, gTypeSVGPathSegCurvetoCubicSmoothRel
  , SVGPathSegCurvetoQuadraticAbs(SVGPathSegCurvetoQuadraticAbs), unSVGPathSegCurvetoQuadraticAbs, gTypeSVGPathSegCurvetoQuadraticAbs
  , SVGPathSegCurvetoQuadraticRel(SVGPathSegCurvetoQuadraticRel), unSVGPathSegCurvetoQuadraticRel, gTypeSVGPathSegCurvetoQuadraticRel
  , SVGPathSegCurvetoQuadraticSmoothAbs(SVGPathSegCurvetoQuadraticSmoothAbs), unSVGPathSegCurvetoQuadraticSmoothAbs, gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  , SVGPathSegCurvetoQuadraticSmoothRel(SVGPathSegCurvetoQuadraticSmoothRel), unSVGPathSegCurvetoQuadraticSmoothRel, gTypeSVGPathSegCurvetoQuadraticSmoothRel
  , SVGPathSegLinetoAbs(SVGPathSegLinetoAbs), unSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs
  , SVGPathSegLinetoHorizontalAbs(SVGPathSegLinetoHorizontalAbs), unSVGPathSegLinetoHorizontalAbs, gTypeSVGPathSegLinetoHorizontalAbs
  , SVGPathSegLinetoHorizontalRel(SVGPathSegLinetoHorizontalRel), unSVGPathSegLinetoHorizontalRel, gTypeSVGPathSegLinetoHorizontalRel
  , SVGPathSegLinetoRel(SVGPathSegLinetoRel), unSVGPathSegLinetoRel, gTypeSVGPathSegLinetoRel
  , SVGPathSegLinetoVerticalAbs(SVGPathSegLinetoVerticalAbs), unSVGPathSegLinetoVerticalAbs, gTypeSVGPathSegLinetoVerticalAbs
  , SVGPathSegLinetoVerticalRel(SVGPathSegLinetoVerticalRel), unSVGPathSegLinetoVerticalRel, gTypeSVGPathSegLinetoVerticalRel
  , SVGPathSegList(SVGPathSegList), unSVGPathSegList, gTypeSVGPathSegList
  , SVGPathSegMovetoAbs(SVGPathSegMovetoAbs), unSVGPathSegMovetoAbs, gTypeSVGPathSegMovetoAbs
  , SVGPathSegMovetoRel(SVGPathSegMovetoRel), unSVGPathSegMovetoRel, gTypeSVGPathSegMovetoRel
  , SVGPatternElement(SVGPatternElement), unSVGPatternElement, gTypeSVGPatternElement
  , SVGPoint(SVGPoint), unSVGPoint, gTypeSVGPoint
  , SVGPointList(SVGPointList), unSVGPointList, gTypeSVGPointList
  , SVGPolygonElement(SVGPolygonElement), unSVGPolygonElement, gTypeSVGPolygonElement
  , SVGPolylineElement(SVGPolylineElement), unSVGPolylineElement, gTypeSVGPolylineElement
  , SVGPreserveAspectRatio(SVGPreserveAspectRatio), unSVGPreserveAspectRatio, gTypeSVGPreserveAspectRatio
  , SVGRadialGradientElement(SVGRadialGradientElement), unSVGRadialGradientElement, gTypeSVGRadialGradientElement
  , SVGRect(SVGRect), unSVGRect, gTypeSVGRect
  , SVGRectElement(SVGRectElement), unSVGRectElement, gTypeSVGRectElement
  , SVGRenderingIntent(SVGRenderingIntent), unSVGRenderingIntent, gTypeSVGRenderingIntent
  , SVGSVGElement(SVGSVGElement), unSVGSVGElement, gTypeSVGSVGElement
  , SVGScriptElement(SVGScriptElement), unSVGScriptElement, gTypeSVGScriptElement
  , SVGSetElement(SVGSetElement), unSVGSetElement, gTypeSVGSetElement
  , SVGStopElement(SVGStopElement), unSVGStopElement, gTypeSVGStopElement
  , SVGStringList(SVGStringList), unSVGStringList, gTypeSVGStringList
  , SVGStyleElement(SVGStyleElement), unSVGStyleElement, gTypeSVGStyleElement
  , SVGSwitchElement(SVGSwitchElement), unSVGSwitchElement, gTypeSVGSwitchElement
  , SVGSymbolElement(SVGSymbolElement), unSVGSymbolElement, gTypeSVGSymbolElement
  , SVGTRefElement(SVGTRefElement), unSVGTRefElement, gTypeSVGTRefElement
  , SVGTSpanElement(SVGTSpanElement), unSVGTSpanElement, gTypeSVGTSpanElement
  , SVGTests(SVGTests), unSVGTests, gTypeSVGTests
  , SVGTextContentElement(SVGTextContentElement), unSVGTextContentElement, IsSVGTextContentElement, toSVGTextContentElement, gTypeSVGTextContentElement
  , SVGTextElement(SVGTextElement), unSVGTextElement, gTypeSVGTextElement
  , SVGTextPathElement(SVGTextPathElement), unSVGTextPathElement, gTypeSVGTextPathElement
  , SVGTextPositioningElement(SVGTextPositioningElement), unSVGTextPositioningElement, IsSVGTextPositioningElement, toSVGTextPositioningElement, gTypeSVGTextPositioningElement
  , SVGTitleElement(SVGTitleElement), unSVGTitleElement, gTypeSVGTitleElement
  , SVGTransform(SVGTransform), unSVGTransform, gTypeSVGTransform
  , SVGTransformList(SVGTransformList), unSVGTransformList, gTypeSVGTransformList
  , SVGURIReference(SVGURIReference), unSVGURIReference, gTypeSVGURIReference
  , SVGUnitTypes(SVGUnitTypes), unSVGUnitTypes, gTypeSVGUnitTypes
  , SVGUseElement(SVGUseElement), unSVGUseElement, gTypeSVGUseElement
  , SVGVKernElement(SVGVKernElement), unSVGVKernElement, gTypeSVGVKernElement
  , SVGViewElement(SVGViewElement), unSVGViewElement, gTypeSVGViewElement
  , SVGViewSpec(SVGViewSpec), unSVGViewSpec, gTypeSVGViewSpec
  , SVGZoomAndPan(SVGZoomAndPan), unSVGZoomAndPan, gTypeSVGZoomAndPan
  , SVGZoomEvent(SVGZoomEvent), unSVGZoomEvent, gTypeSVGZoomEvent
  , Screen(Screen), unScreen, gTypeScreen
  , ScriptProcessorNode(ScriptProcessorNode), unScriptProcessorNode, gTypeScriptProcessorNode
  , ScriptProfile(ScriptProfile), unScriptProfile, gTypeScriptProfile
  , ScriptProfileNode(ScriptProfileNode), unScriptProfileNode, gTypeScriptProfileNode
  , SecurityPolicy(SecurityPolicy), unSecurityPolicy, gTypeSecurityPolicy
  , SecurityPolicyViolationEvent(SecurityPolicyViolationEvent), unSecurityPolicyViolationEvent, gTypeSecurityPolicyViolationEvent
  , Selection(Selection), unSelection, gTypeSelection
  , SourceBuffer(SourceBuffer), unSourceBuffer, gTypeSourceBuffer
  , SourceBufferList(SourceBufferList), unSourceBufferList, gTypeSourceBufferList
  , SourceInfo(SourceInfo), unSourceInfo, gTypeSourceInfo
  , SpeechSynthesis(SpeechSynthesis), unSpeechSynthesis, gTypeSpeechSynthesis
  , SpeechSynthesisEvent(SpeechSynthesisEvent), unSpeechSynthesisEvent, gTypeSpeechSynthesisEvent
  , SpeechSynthesisUtterance(SpeechSynthesisUtterance), unSpeechSynthesisUtterance, gTypeSpeechSynthesisUtterance
  , SpeechSynthesisVoice(SpeechSynthesisVoice), unSpeechSynthesisVoice, gTypeSpeechSynthesisVoice
  , Storage(Storage), unStorage, gTypeStorage
  , StorageEvent(StorageEvent), unStorageEvent, gTypeStorageEvent
  , StorageInfo(StorageInfo), unStorageInfo, gTypeStorageInfo
  , StorageQuota(StorageQuota), unStorageQuota, gTypeStorageQuota
  , StyleMedia(StyleMedia), unStyleMedia, gTypeStyleMedia
  , StyleSheet(StyleSheet), unStyleSheet, IsStyleSheet, toStyleSheet, gTypeStyleSheet
  , StyleSheetList(StyleSheetList), unStyleSheetList, gTypeStyleSheetList
  , SubtleCrypto(SubtleCrypto), unSubtleCrypto, gTypeSubtleCrypto
  , Text(Text), unText, IsText, toText, gTypeText
  , TextEvent(TextEvent), unTextEvent, gTypeTextEvent
  , TextMetrics(TextMetrics), unTextMetrics, gTypeTextMetrics
  , TextTrack(TextTrack), unTextTrack, gTypeTextTrack
  , TextTrackCue(TextTrackCue), unTextTrackCue, IsTextTrackCue, toTextTrackCue, gTypeTextTrackCue
  , TextTrackCueList(TextTrackCueList), unTextTrackCueList, gTypeTextTrackCueList
  , TextTrackList(TextTrackList), unTextTrackList, gTypeTextTrackList
  , TimeRanges(TimeRanges), unTimeRanges, gTypeTimeRanges
  , Touch(Touch), unTouch, gTypeTouch
  , TouchEvent(TouchEvent), unTouchEvent, gTypeTouchEvent
  , TouchList(TouchList), unTouchList, gTypeTouchList
  , TrackEvent(TrackEvent), unTrackEvent, gTypeTrackEvent
  , TransitionEvent(TransitionEvent), unTransitionEvent, gTypeTransitionEvent
  , TreeWalker(TreeWalker), unTreeWalker, gTypeTreeWalker
  , TypeConversions(TypeConversions), unTypeConversions, gTypeTypeConversions
  , UIEvent(UIEvent), unUIEvent, IsUIEvent, toUIEvent, gTypeUIEvent
  , UIRequestEvent(UIRequestEvent), unUIRequestEvent, gTypeUIRequestEvent
  , URL(URL), unURL, gTypeURL
  , URLUtils(URLUtils), unURLUtils, gTypeURLUtils
  , UserMessageHandler(UserMessageHandler), unUserMessageHandler, gTypeUserMessageHandler
  , UserMessageHandlersNamespace(UserMessageHandlersNamespace), unUserMessageHandlersNamespace, gTypeUserMessageHandlersNamespace
  , VTTCue(VTTCue), unVTTCue, gTypeVTTCue
  , VTTRegion(VTTRegion), unVTTRegion, gTypeVTTRegion
  , VTTRegionList(VTTRegionList), unVTTRegionList, gTypeVTTRegionList
  , ValidityState(ValidityState), unValidityState, gTypeValidityState
  , VideoPlaybackQuality(VideoPlaybackQuality), unVideoPlaybackQuality, gTypeVideoPlaybackQuality
  , VideoStreamTrack(VideoStreamTrack), unVideoStreamTrack, gTypeVideoStreamTrack
  , VideoTrack(VideoTrack), unVideoTrack, gTypeVideoTrack
  , VideoTrackList(VideoTrackList), unVideoTrackList, gTypeVideoTrackList
  , WaveShaperNode(WaveShaperNode), unWaveShaperNode, gTypeWaveShaperNode
  , WebGL2RenderingContext(WebGL2RenderingContext), unWebGL2RenderingContext, gTypeWebGL2RenderingContext
  , WebGLActiveInfo(WebGLActiveInfo), unWebGLActiveInfo, gTypeWebGLActiveInfo
  , WebGLBuffer(WebGLBuffer), unWebGLBuffer, gTypeWebGLBuffer
  , WebGLCompressedTextureATC(WebGLCompressedTextureATC), unWebGLCompressedTextureATC, gTypeWebGLCompressedTextureATC
  , WebGLCompressedTexturePVRTC(WebGLCompressedTexturePVRTC), unWebGLCompressedTexturePVRTC, gTypeWebGLCompressedTexturePVRTC
  , WebGLCompressedTextureS3TC(WebGLCompressedTextureS3TC), unWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC
  , WebGLContextAttributes(WebGLContextAttributes), unWebGLContextAttributes, gTypeWebGLContextAttributes
  , WebGLContextEvent(WebGLContextEvent), unWebGLContextEvent, gTypeWebGLContextEvent
  , WebGLDebugRendererInfo(WebGLDebugRendererInfo), unWebGLDebugRendererInfo, gTypeWebGLDebugRendererInfo
  , WebGLDebugShaders(WebGLDebugShaders), unWebGLDebugShaders, gTypeWebGLDebugShaders
  , WebGLDepthTexture(WebGLDepthTexture), unWebGLDepthTexture, gTypeWebGLDepthTexture
  , WebGLDrawBuffers(WebGLDrawBuffers), unWebGLDrawBuffers, gTypeWebGLDrawBuffers
  , WebGLFramebuffer(WebGLFramebuffer), unWebGLFramebuffer, gTypeWebGLFramebuffer
  , WebGLLoseContext(WebGLLoseContext), unWebGLLoseContext, gTypeWebGLLoseContext
  , WebGLProgram(WebGLProgram), unWebGLProgram, gTypeWebGLProgram
  , WebGLQuery(WebGLQuery), unWebGLQuery, gTypeWebGLQuery
  , WebGLRenderbuffer(WebGLRenderbuffer), unWebGLRenderbuffer, gTypeWebGLRenderbuffer
  , WebGLRenderingContext(WebGLRenderingContext), unWebGLRenderingContext, gTypeWebGLRenderingContext
  , WebGLRenderingContextBase(WebGLRenderingContextBase), unWebGLRenderingContextBase, IsWebGLRenderingContextBase, toWebGLRenderingContextBase, gTypeWebGLRenderingContextBase
  , WebGLSampler(WebGLSampler), unWebGLSampler, gTypeWebGLSampler
  , WebGLShader(WebGLShader), unWebGLShader, gTypeWebGLShader
  , WebGLShaderPrecisionFormat(WebGLShaderPrecisionFormat), unWebGLShaderPrecisionFormat, gTypeWebGLShaderPrecisionFormat
  , WebGLSync(WebGLSync), unWebGLSync, gTypeWebGLSync
  , WebGLTexture(WebGLTexture), unWebGLTexture, gTypeWebGLTexture
  , WebGLTransformFeedback(WebGLTransformFeedback), unWebGLTransformFeedback, gTypeWebGLTransformFeedback
  , WebGLUniformLocation(WebGLUniformLocation), unWebGLUniformLocation, gTypeWebGLUniformLocation
  , WebGLVertexArrayObject(WebGLVertexArrayObject), unWebGLVertexArrayObject, gTypeWebGLVertexArrayObject
  , WebGLVertexArrayObjectOES(WebGLVertexArrayObjectOES), unWebGLVertexArrayObjectOES, gTypeWebGLVertexArrayObjectOES
  , WebKitAnimationEvent(WebKitAnimationEvent), unWebKitAnimationEvent, gTypeWebKitAnimationEvent
  , WebKitCSSFilterValue(WebKitCSSFilterValue), unWebKitCSSFilterValue, gTypeWebKitCSSFilterValue
  , WebKitCSSMatrix(WebKitCSSMatrix), unWebKitCSSMatrix, gTypeWebKitCSSMatrix
  , WebKitCSSRegionRule(WebKitCSSRegionRule), unWebKitCSSRegionRule, gTypeWebKitCSSRegionRule
  , WebKitCSSTransformValue(WebKitCSSTransformValue), unWebKitCSSTransformValue, gTypeWebKitCSSTransformValue
  , WebKitCSSViewportRule(WebKitCSSViewportRule), unWebKitCSSViewportRule, gTypeWebKitCSSViewportRule
  , WebKitNamedFlow(WebKitNamedFlow), unWebKitNamedFlow, gTypeWebKitNamedFlow
  , WebKitNamespace(WebKitNamespace), unWebKitNamespace, gTypeWebKitNamespace
  , WebKitPlaybackTargetAvailabilityEvent(WebKitPlaybackTargetAvailabilityEvent), unWebKitPlaybackTargetAvailabilityEvent, gTypeWebKitPlaybackTargetAvailabilityEvent
  , WebKitPoint(WebKitPoint), unWebKitPoint, gTypeWebKitPoint
  , WebKitTransitionEvent(WebKitTransitionEvent), unWebKitTransitionEvent, gTypeWebKitTransitionEvent
  , WebSocket(WebSocket), unWebSocket, gTypeWebSocket
  , WheelEvent(WheelEvent), unWheelEvent, gTypeWheelEvent
  , Window(Window), unWindow, gTypeWindow
  , WindowBase64(WindowBase64), unWindowBase64, gTypeWindowBase64
  , WindowTimers(WindowTimers), unWindowTimers, gTypeWindowTimers
  , Worker(Worker), unWorker, gTypeWorker
  , WorkerGlobalScope(WorkerGlobalScope), unWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope, gTypeWorkerGlobalScope
  , WorkerLocation(WorkerLocation), unWorkerLocation, gTypeWorkerLocation
  , WorkerNavigator(WorkerNavigator), unWorkerNavigator, gTypeWorkerNavigator
  , XMLHttpRequest(XMLHttpRequest), unXMLHttpRequest, gTypeXMLHttpRequest
  , XMLHttpRequestProgressEvent(XMLHttpRequestProgressEvent), unXMLHttpRequestProgressEvent, gTypeXMLHttpRequestProgressEvent
  , XMLHttpRequestUpload(XMLHttpRequestUpload), unXMLHttpRequestUpload, gTypeXMLHttpRequestUpload
  , XMLSerializer(XMLSerializer), unXMLSerializer, gTypeXMLSerializer
  , XPathEvaluator(XPathEvaluator), unXPathEvaluator, gTypeXPathEvaluator
  , XPathExpression(XPathExpression), unXPathExpression, gTypeXPathExpression
  , XPathNSResolver(XPathNSResolver), unXPathNSResolver, gTypeXPathNSResolver
  , XPathResult(XPathResult), unXPathResult, gTypeXPathResult
  , XSLTProcessor(XSLTProcessor), unXSLTProcessor, gTypeXSLTProcessor
-- AUTO GENERATION ENDS HERE
  ) where

import Control.Applicative ((<$>))
import qualified Data.Text as T (unpack, Text)
import qualified Data.Text.Lazy as LT (Text)
import Data.JSString (pack, unpack)
import Data.JSString.Text (textToJSString, textFromJSString, lazyTextToJSString, lazyTextFromJSString)
import GHCJS.Types (JSVal(..), nullRef, isNull, isUndefined, JSString(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import GHCJS.Nullable (Nullable(..), nullableToMaybe, maybeToNullable)
import GHCJS.Foreign.Callback.Internal (Callback(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int8, Int16, Int32, Int64)
import Data.Word (Word8, Word16, Word32, Word64)
import Data.Coerce (coerce, Coercible)
import Data.Monoid ((<>))
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | Identifies a JavaScript execution context.
--   When using GHCJS this is just '()' since their is only one context.
--   When using GHC it includes the functions JSaddle needs to communicate
--   with the JavaScript context.
type JSContextRef = ()

-- | This is the same as 'JSContextRef' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type DOMContext = ()

-- | The 'JSM' monad keeps track of the JavaScript execution context.
--
--   When using GHCJS it is `IO`.
--
--   Given a 'JSM' function and a 'JSContextRef' you can run the
--   function like this...
--
-- > runJSM jsmFunction javaScriptContext
type JSM = IO

-- | This is the same as 'JSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type DOM = IO

-- | The 'MonadJSM' is to 'JSM' what 'MonadIO' is to 'IO'.
--   When using GHCJS it is 'MonadIO'.
type MonadJSM = MonadIO

-- | This is the same as 'MonadJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
type MonadDOM = MonadIO

-- | The 'liftJSM' is to 'JSM' what 'liftIO' is to 'IO'.
--   When using GHCJS it is 'liftIO'.
liftJSM :: MonadJSM m => JSM a -> m a
liftJSM = liftIO

-- | This is the same as 'liftJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
liftDOM :: MonadDOM m => DOM a -> m a
liftDOM = liftIO

-- | Gets the JavaScript context from the monad
askJSM :: MonadJSM m => m JSContextRef
askJSM = return ()

-- | This is the same as 'askJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
askDOM :: MonadDOM m => m DOMContext
askDOM = return ()

-- | Runs a 'JSM' JavaScript function in a given JavaScript context.
runJSM :: MonadIO m => JSM a -> JSContextRef -> m a
runJSM f = liftIO . const f

-- | This is the same as 'runJSM' except when using ghcjs-dom-webkit with GHC (instead of ghcjs-dom-jsaddle)
runDOM :: MonadIO m => DOM a -> DOMContext -> m a
runDOM f = liftIO . const f

maybeJSNullOrUndefined :: JSVal -> Maybe JSVal
maybeJSNullOrUndefined r | isNull r || isUndefined r = Nothing
maybeJSNullOrUndefined r = Just r

propagateGError = id

newtype GType = GType JSVal

foreign import javascript unsafe "$r = $1.name;" gTypeToString :: GType -> JSString

foreign import javascript unsafe
  "$1===$2" js_eq :: JSVal -> JSVal -> Bool

strictEqual :: (ToJSVal a, ToJSVal b) => a -> b -> JSM Bool
strictEqual a b = do
    aval <- toJSVal a
    bval <- toJSVal b
    return $ js_eq aval bval

foreign import javascript unsafe "h$isInstanceOf $1 $2"
    typeInstanceIsA' :: JSVal -> JSVal -> Bool

typeInstanceIsA o (GType t) = typeInstanceIsA' o t

-- | Safe but slow way to cast
--
-- > castTo Element x >>= \case
-- >     Nothing      -> error "Was not an element"
-- >     Just element -> ...
castTo :: forall obj obj' m. (IsGObject obj, IsGObject obj', MonadJSM m) => (JSVal -> obj') -> obj -> m (Maybe obj')
castTo constructor obj = liftJSM $ do
  let gtype = typeGType (undefined :: obj')
      jsval = coerce obj
  if typeInstanceIsA jsval gtype
    then return . Just $ constructor jsval
    else return Nothing

-- | Unsafe way to cast.  Slow but if it fails an error message will
--   result and the message should be clear (uses HasCallStack).
--
-- > element <- unsafeCastTo Element x
unsafeCastTo :: forall obj obj' m. (HasCallStack, IsGObject obj, IsGObject obj', MonadJSM m) => (JSVal -> obj') -> obj -> m obj'
unsafeCastTo constructor obj = liftJSM $ do
  let gtype = typeGType (undefined :: obj')
      jsval = coerce obj
  if typeInstanceIsA jsval gtype
    then return $ constructor jsval
    else do
      let srcType  = textFromJSString . gTypeToString $ typeGType obj
          destType = textFromJSString . gTypeToString $ typeGType (undefined :: obj')
      error $ "unsafeCastTo :: invalid conversion from " <> T.unpack srcType <> " to "
        <> T.unpack destType <> " requested."

-- | Unsafe way to cast, super fast but if it fails you program
--   will probably crash later on in some unpredictable way.
--
-- > element <- uncheckedCastTo Element x
uncheckedCastTo :: (IsGObject obj, IsGObject obj') => (JSVal -> obj') -> obj -> obj'
uncheckedCastTo constructor = constructor . coerce

-- | Determine if this is an instance of a particular type
--
isA :: IsGObject o => o -> GType -> Bool
isA obj = typeInstanceIsA (unGObject $ toGObject obj)

newtype GObject = GObject { unGObject :: JSVal }

class (ToJSVal o, FromJSVal o, Coercible o JSVal) => IsGObject o where
  -- | Given object get the GType of the type.  The actual argument
  --   passed in is ignored.
  typeGType :: o -> GType

-- | Safe upcast.
toGObject :: IsGObject o => o -> GObject
toGObject = GObject . coerce

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
  typeGType _ = gTypeGObject
  {-# INLINE typeGType #-}

castToGObject :: IsGObject obj => obj -> IO obj
castToGObject = return

foreign import javascript unsafe "Object" gTypeGObject :: GType

foreign import javascript unsafe "$1[\"toString\"]()" js_objectToString :: GObject -> IO JSString

objectToString :: (MonadIO m, IsGObject self, FromJSString result) => self -> m result
objectToString self = liftIO (fromJSString <$> js_objectToString (toGObject self))

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
type IsDOMString s = (ToDOMString s, FromDOMString s)

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

-- Custom types
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
toSerializedScriptValue = SerializedScriptValue . coerce

instance IsSerializedScriptValue SerializedScriptValue
instance IsGObject SerializedScriptValue where
  typeGType _ = error "Unable to get the JavaScript type of SerializedScriptValue"

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
toPositionOptions = PositionOptions . coerce

instance IsPositionOptions PositionOptions
instance IsGObject PositionOptions where
  typeGType _ = error "Unable to get the JavaScript type of PositionOptions"

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
toDictionary = Dictionary . coerce

instance IsDictionary Dictionary
instance IsGObject Dictionary where
  typeGType _ = error "Unable to get the JavaScript type of Dictionary"

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
toBlobPropertyBag = BlobPropertyBag . coerce

instance IsBlobPropertyBag BlobPropertyBag
instance IsGObject BlobPropertyBag where
  typeGType _ = error "Unable to get the JavaScript type of BlobPropertyBag"

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
toMutationCallback = MutationCallback . coerce

instance IsMutationCallback MutationCallback
instance IsGObject MutationCallback where
  typeGType _ = error "Unable to get the JavaScript type of MutationCallback"

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
toPromise = Promise . coerce

instance IsPromise Promise
instance IsGObject Promise where
  typeGType _ = gTypePromise

foreign import javascript unsafe "window[\"Promise\"]" gTypePromise :: GType

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
toArrayBuffer = ArrayBuffer . coerce

instance IsArrayBuffer ArrayBuffer
instance IsGObject ArrayBuffer where
  typeGType _ = gTypeArrayBuffer

foreign import javascript unsafe "window[\"ArrayBuffer\"]" gTypeArrayBuffer :: GType

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
toFloat32Array = Float32Array . coerce

instance IsFloat32Array Float32Array
instance IsGObject Float32Array where
  typeGType _ = gTypeFloat32Array

foreign import javascript unsafe "window[\"Float32Array\"]" gTypeFloat32Array :: GType

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
toFloat64Array = Float64Array . coerce

instance IsFloat64Array Float64Array
instance IsGObject Float64Array where
  typeGType _ = gTypeFloat64Array

foreign import javascript unsafe "window[\"Float64Array\"]" gTypeFloat64Array :: GType

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
toUint8Array = Uint8Array . coerce

instance IsUint8Array Uint8Array
instance IsGObject Uint8Array where
  typeGType _ = gTypeUint8Array

foreign import javascript unsafe "window[\"Uint8Array\"]" gTypeUint8Array :: GType

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
toUint8ClampedArray = Uint8ClampedArray . coerce

instance IsUint8ClampedArray Uint8ClampedArray
instance IsGObject Uint8ClampedArray where
  typeGType _ = gTypeUint8ClampedArray

foreign import javascript unsafe "window[\"Uint8ClampedArray\"]" gTypeUint8ClampedArray :: GType

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
toUint16Array = Uint16Array . coerce

instance IsUint16Array Uint16Array
instance IsGObject Uint16Array where
  typeGType _ = gTypeUint16Array

foreign import javascript unsafe "window[\"Uint16Array\"]" gTypeUint16Array :: GType

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
toUint32Array = Uint32Array . coerce

instance IsUint32Array Uint32Array
instance IsGObject Uint32Array where
  typeGType _ = gTypeUint32Array

foreign import javascript unsafe "window[\"Uint32Array\"]" gTypeUint32Array :: GType

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
toInt8Array = Int8Array . coerce

instance IsInt8Array Int8Array
instance IsGObject Int8Array where
  typeGType _ = gTypeInt8Array

foreign import javascript unsafe "window[\"Int8Array\"]" gTypeInt8Array :: GType

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
toInt16Array = Int16Array . coerce

instance IsInt16Array Int16Array
instance IsGObject Int16Array where
  typeGType _ = gTypeInt16Array

foreign import javascript unsafe "window[\"Int16Array\"]" gTypeInt16Array :: GType

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
toInt32Array = Int32Array . coerce

instance IsInt32Array Int32Array
instance IsGObject Int32Array where
  typeGType _ = gTypeInt32Array

foreign import javascript unsafe "window[\"Int32Array\"]" gTypeInt32Array :: GType

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
toObjectArray = ObjectArray . coerce

instance IsObjectArray ObjectArray
instance IsGObject ObjectArray where
  typeGType _ = error "Unable to get the JavaScript type of ObjectArray"

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
toArrayBufferView = ArrayBufferView . coerce

instance IsArrayBufferView ArrayBufferView
instance IsGObject ArrayBufferView where
  typeGType _ = error "Unable to get the JavaScript type of ArrayBufferView"

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
toArray = Array . coerce

instance IsArray Array
instance IsGObject Array where
  typeGType _ = gTypeArray

foreign import javascript unsafe "window[\"Array\"]" gTypeArray :: GType

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
toDate = Date . coerce

instance IsDate Date
instance IsGObject Date where
  typeGType _ = gTypeDate

foreign import javascript unsafe "window[\"Date\"]" gTypeDate :: GType

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
toAcceleration = Acceleration . coerce

instance IsAcceleration Acceleration
instance IsGObject Acceleration where
  typeGType _ = error "Unable to get the JavaScript type of Acceleration"

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
toRotationRate = RotationRate . coerce

instance IsRotationRate RotationRate
instance IsGObject RotationRate where
  typeGType _ = error "Unable to get the JavaScript type of RotationRate"

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
toAlgorithm = Algorithm . coerce

instance IsAlgorithm Algorithm
instance IsGObject Algorithm where
  typeGType _ = error "Unable to get the JavaScript type of Algorithm"

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
toCryptoOperationData = CryptoOperationData . coerce

instance IsCryptoOperationData CryptoOperationData
instance IsGObject CryptoOperationData where
  typeGType _ = error "Unable to get the JavaScript type of CryptoOperationData"
instance IsCryptoOperationData ArrayBuffer
instance IsCryptoOperationData ArrayBufferView

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
toCanvasStyle = CanvasStyle . coerce

instance IsCanvasStyle CanvasStyle
instance IsGObject CanvasStyle where
  typeGType _ = error "Unable to get the JavaScript type of CanvasStyle"
instance IsCanvasStyle CanvasGradient
instance IsCanvasStyle CanvasPattern

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
toDOMException = DOMException . coerce

instance IsDOMException DOMException
instance IsGObject DOMException where
  typeGType _ = error "Unable to get the JavaScript type of DOMException"

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
  typeGType _ = gTypeANGLEInstancedArrays
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ANGLEInstancedArrays\"]" gTypeANGLEInstancedArrays :: GType

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
  typeGType _ = gTypeAbstractView
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AbstractView\"]" gTypeAbstractView :: GType

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
  typeGType _ = gTypeAbstractWorker
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AbstractWorker\"]" gTypeAbstractWorker :: GType

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
  typeGType _ = gTypeAllAudioCapabilities
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AllAudioCapabilities\"]" gTypeAllAudioCapabilities :: GType

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
  typeGType _ = gTypeAllVideoCapabilities
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AllVideoCapabilities\"]" gTypeAllVideoCapabilities :: GType

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
  typeGType _ = gTypeAnalyserNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AnalyserNode\"]" gTypeAnalyserNode :: GType

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
  typeGType _ = gTypeAnimationEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AnimationEvent\"]" gTypeAnimationEvent :: GType

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
  typeGType _ = gTypeApplicationCache
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ApplicationCache\"]" gTypeApplicationCache :: GType

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
  typeGType _ = gTypeAttr
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Attr\"]" gTypeAttr :: GType

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
  typeGType _ = gTypeAudioBuffer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioBuffer\"]" gTypeAudioBuffer :: GType

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
  typeGType _ = gTypeAudioBufferSourceNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioBufferSourceNode\"]" gTypeAudioBufferSourceNode :: GType

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
toAudioContext = AudioContext . coerce

instance IsAudioContext AudioContext
instance IsEventTarget AudioContext
instance IsGObject AudioContext where
  typeGType _ = gTypeAudioContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioContext\"]" gTypeAudioContext :: GType

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
  typeGType _ = gTypeAudioDestinationNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioDestinationNode\"]" gTypeAudioDestinationNode :: GType

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
  typeGType _ = gTypeAudioListener
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioListener\"]" gTypeAudioListener :: GType

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
toAudioNode = AudioNode . coerce

instance IsAudioNode AudioNode
instance IsEventTarget AudioNode
instance IsGObject AudioNode where
  typeGType _ = gTypeAudioNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioNode\"]" gTypeAudioNode :: GType

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
  typeGType _ = gTypeAudioParam
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioParam\"]" gTypeAudioParam :: GType

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
  typeGType _ = gTypeAudioProcessingEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioProcessingEvent\"]" gTypeAudioProcessingEvent :: GType

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
  typeGType _ = gTypeAudioStreamTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioStreamTrack\"]" gTypeAudioStreamTrack :: GType

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
  typeGType _ = gTypeAudioTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioTrack\"]" gTypeAudioTrack :: GType

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
  typeGType _ = gTypeAudioTrackList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AudioTrackList\"]" gTypeAudioTrackList :: GType

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
  typeGType _ = gTypeAutocompleteErrorEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"AutocompleteErrorEvent\"]" gTypeAutocompleteErrorEvent :: GType

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
  typeGType _ = gTypeBarProp
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"BarProp\"]" gTypeBarProp :: GType

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
  typeGType _ = gTypeBatteryManager
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"BatteryManager\"]" gTypeBatteryManager :: GType

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
  typeGType _ = gTypeBeforeLoadEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"BeforeLoadEvent\"]" gTypeBeforeLoadEvent :: GType

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
  typeGType _ = gTypeBeforeUnloadEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"BeforeUnloadEvent\"]" gTypeBeforeUnloadEvent :: GType

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
  typeGType _ = gTypeBiquadFilterNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"BiquadFilterNode\"]" gTypeBiquadFilterNode :: GType

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
toBlob = Blob . coerce

instance IsBlob Blob
instance IsGObject Blob where
  typeGType _ = gTypeBlob
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Blob\"]" gTypeBlob :: GType

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
  typeGType _ = gTypeCDATASection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CDATASection\"]" gTypeCDATASection :: GType

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
  typeGType _ = gTypeCSS
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSS\"]" gTypeCSS :: GType

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
  typeGType _ = gTypeCSSCharsetRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSCharsetRule\"]" gTypeCSSCharsetRule :: GType

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
  typeGType _ = gTypeCSSFontFaceLoadEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSFontFaceLoadEvent\"]" gTypeCSSFontFaceLoadEvent :: GType

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
  typeGType _ = gTypeCSSFontFaceRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSFontFaceRule\"]" gTypeCSSFontFaceRule :: GType

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
  typeGType _ = gTypeCSSImportRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSImportRule\"]" gTypeCSSImportRule :: GType

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
  typeGType _ = gTypeCSSKeyframeRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSKeyframeRule\"]" gTypeCSSKeyframeRule :: GType

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
  typeGType _ = gTypeCSSKeyframesRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSKeyframesRule\"]" gTypeCSSKeyframesRule :: GType

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
  typeGType _ = gTypeCSSMediaRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSMediaRule\"]" gTypeCSSMediaRule :: GType

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
  typeGType _ = gTypeCSSPageRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSPageRule\"]" gTypeCSSPageRule :: GType

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
  typeGType _ = gTypeCSSPrimitiveValue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSPrimitiveValue\"]" gTypeCSSPrimitiveValue :: GType

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
toCSSRule = CSSRule . coerce

instance IsCSSRule CSSRule
instance IsGObject CSSRule where
  typeGType _ = gTypeCSSRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSRule\"]" gTypeCSSRule :: GType

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
  typeGType _ = gTypeCSSRuleList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSRuleList\"]" gTypeCSSRuleList :: GType

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
  typeGType _ = gTypeCSSStyleDeclaration
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSStyleDeclaration\"]" gTypeCSSStyleDeclaration :: GType

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
  typeGType _ = gTypeCSSStyleRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSStyleRule\"]" gTypeCSSStyleRule :: GType

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
  typeGType _ = gTypeCSSStyleSheet
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSStyleSheet\"]" gTypeCSSStyleSheet :: GType

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
  typeGType _ = gTypeCSSSupportsRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSSupportsRule\"]" gTypeCSSSupportsRule :: GType

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
  typeGType _ = gTypeCSSUnknownRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSUnknownRule\"]" gTypeCSSUnknownRule :: GType

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
toCSSValue = CSSValue . coerce

instance IsCSSValue CSSValue
instance IsGObject CSSValue where
  typeGType _ = gTypeCSSValue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSValue\"]" gTypeCSSValue :: GType

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
toCSSValueList = CSSValueList . coerce

instance IsCSSValueList CSSValueList
instance IsCSSValue CSSValueList
instance IsGObject CSSValueList where
  typeGType _ = gTypeCSSValueList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CSSValueList\"]" gTypeCSSValueList :: GType

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
  typeGType _ = gTypeCanvasGradient
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CanvasGradient\"]" gTypeCanvasGradient :: GType

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
  typeGType _ = gTypeCanvasPattern
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CanvasPattern\"]" gTypeCanvasPattern :: GType

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
  typeGType _ = gTypeCanvasProxy
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CanvasProxy\"]" gTypeCanvasProxy :: GType

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
toCanvasRenderingContext = CanvasRenderingContext . coerce

instance IsCanvasRenderingContext CanvasRenderingContext
instance IsGObject CanvasRenderingContext where
  typeGType _ = gTypeCanvasRenderingContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CanvasRenderingContext\"]" gTypeCanvasRenderingContext :: GType

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
  typeGType _ = gTypeCanvasRenderingContext2D
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CanvasRenderingContext2D\"]" gTypeCanvasRenderingContext2D :: GType

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
  typeGType _ = gTypeCapabilityRange
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CapabilityRange\"]" gTypeCapabilityRange :: GType

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
  typeGType _ = gTypeChannelMergerNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ChannelMergerNode\"]" gTypeChannelMergerNode :: GType

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
  typeGType _ = gTypeChannelSplitterNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ChannelSplitterNode\"]" gTypeChannelSplitterNode :: GType

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
toCharacterData = CharacterData . coerce

instance IsCharacterData CharacterData
instance IsNode CharacterData
instance IsEventTarget CharacterData
instance IsGObject CharacterData where
  typeGType _ = gTypeCharacterData
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CharacterData\"]" gTypeCharacterData :: GType

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
  typeGType _ = gTypeChildNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ChildNode\"]" gTypeChildNode :: GType

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
  typeGType _ = gTypeClientRect
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ClientRect\"]" gTypeClientRect :: GType

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
  typeGType _ = gTypeClientRectList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ClientRectList\"]" gTypeClientRectList :: GType

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
  typeGType _ = gTypeCloseEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CloseEvent\"]" gTypeCloseEvent :: GType

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
  typeGType _ = gTypeCommandLineAPIHost
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CommandLineAPIHost\"]" gTypeCommandLineAPIHost :: GType

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
  typeGType _ = gTypeComment
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Comment\"]" gTypeComment :: GType

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
  typeGType _ = gTypeCompositionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CompositionEvent\"]" gTypeCompositionEvent :: GType

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
  typeGType _ = gTypeConvolverNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ConvolverNode\"]" gTypeConvolverNode :: GType

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
  typeGType _ = gTypeCoordinates
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Coordinates\"]" gTypeCoordinates :: GType

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
  typeGType _ = gTypeCounter
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Counter\"]" gTypeCounter :: GType

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
  typeGType _ = gTypeCrypto
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Crypto\"]" gTypeCrypto :: GType

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
  typeGType _ = gTypeCryptoKey
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CryptoKey\"]" gTypeCryptoKey :: GType

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
  typeGType _ = gTypeCryptoKeyPair
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CryptoKeyPair\"]" gTypeCryptoKeyPair :: GType

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
  typeGType _ = gTypeCustomEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"CustomEvent\"]" gTypeCustomEvent :: GType

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
toDOMError = DOMError . coerce

instance IsDOMError DOMError
instance IsGObject DOMError where
  typeGType _ = gTypeDOMError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMError\"]" gTypeDOMError :: GType

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
  typeGType _ = gTypeDOMImplementation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMImplementation\"]" gTypeDOMImplementation :: GType

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
  typeGType _ = gTypeDOMNamedFlowCollection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitNamedFlowCollection\"]" gTypeDOMNamedFlowCollection :: GType

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
  typeGType _ = gTypeDOMParser
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMParser\"]" gTypeDOMParser :: GType

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
  typeGType _ = gTypeDOMSettableTokenList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMSettableTokenList\"]" gTypeDOMSettableTokenList :: GType

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
  typeGType _ = gTypeDOMStringList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMStringList\"]" gTypeDOMStringList :: GType

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
  typeGType _ = gTypeDOMStringMap
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMStringMap\"]" gTypeDOMStringMap :: GType

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
toDOMTokenList = DOMTokenList . coerce

instance IsDOMTokenList DOMTokenList
instance IsGObject DOMTokenList where
  typeGType _ = gTypeDOMTokenList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DOMTokenList\"]" gTypeDOMTokenList :: GType

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
  typeGType _ = gTypeDataCue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitDataCue\"]" gTypeDataCue :: GType

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
  typeGType _ = gTypeDataTransfer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DataTransfer\"]" gTypeDataTransfer :: GType

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
  typeGType _ = gTypeDataTransferItem
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DataTransferItem\"]" gTypeDataTransferItem :: GType

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
  typeGType _ = gTypeDataTransferItemList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DataTransferItemList\"]" gTypeDataTransferItemList :: GType

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
  typeGType _ = gTypeDatabase
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Database\"]" gTypeDatabase :: GType

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
  typeGType _ = gTypeDedicatedWorkerGlobalScope
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DedicatedWorkerGlobalScope\"]" gTypeDedicatedWorkerGlobalScope :: GType

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
  typeGType _ = gTypeDelayNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DelayNode\"]" gTypeDelayNode :: GType

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
  typeGType _ = gTypeDeviceMotionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DeviceMotionEvent\"]" gTypeDeviceMotionEvent :: GType

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
  typeGType _ = gTypeDeviceOrientationEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DeviceOrientationEvent\"]" gTypeDeviceOrientationEvent :: GType

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
  typeGType _ = gTypeDeviceProximityEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DeviceProximityEvent\"]" gTypeDeviceProximityEvent :: GType

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
toDocument = Document . coerce

instance IsDocument Document
instance IsNode Document
instance IsEventTarget Document
instance IsGObject Document where
  typeGType _ = gTypeDocument
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Document\"]" gTypeDocument :: GType

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
  typeGType _ = gTypeDocumentFragment
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DocumentFragment\"]" gTypeDocumentFragment :: GType

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
  typeGType _ = gTypeDocumentType
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DocumentType\"]" gTypeDocumentType :: GType

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
  typeGType _ = gTypeDynamicsCompressorNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"DynamicsCompressorNode\"]" gTypeDynamicsCompressorNode :: GType

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
  typeGType _ = gTypeEXTBlendMinMax
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EXTBlendMinMax\"]" gTypeEXTBlendMinMax :: GType

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
  typeGType _ = gTypeEXTFragDepth
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EXTFragDepth\"]" gTypeEXTFragDepth :: GType

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
  typeGType _ = gTypeEXTShaderTextureLOD
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EXTShaderTextureLOD\"]" gTypeEXTShaderTextureLOD :: GType

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
  typeGType _ = gTypeEXTTextureFilterAnisotropic
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EXTTextureFilterAnisotropic\"]" gTypeEXTTextureFilterAnisotropic :: GType

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
  typeGType _ = gTypeEXTsRGB
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EXTsRGB\"]" gTypeEXTsRGB :: GType

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
toElement = Element . coerce

instance IsElement Element
instance IsNode Element
instance IsEventTarget Element
instance IsGObject Element where
  typeGType _ = gTypeElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Element\"]" gTypeElement :: GType

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
  typeGType _ = gTypeEntity
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Entity\"]" gTypeEntity :: GType

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
  typeGType _ = gTypeEntityReference
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EntityReference\"]" gTypeEntityReference :: GType

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
  typeGType _ = gTypeErrorEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ErrorEvent\"]" gTypeErrorEvent :: GType

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
toEvent = Event . coerce

instance IsEvent Event
instance IsGObject Event where
  typeGType _ = gTypeEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Event\"]" gTypeEvent :: GType

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
  typeGType _ = gTypeEventListener
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EventListener\"]" gTypeEventListener :: GType

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
  typeGType _ = gTypeEventSource
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EventSource\"]" gTypeEventSource :: GType

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
toEventTarget = EventTarget . coerce

instance IsEventTarget EventTarget
instance IsGObject EventTarget where
  typeGType _ = gTypeEventTarget
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"EventTarget\"]" gTypeEventTarget :: GType

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
  typeGType _ = gTypeFile
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"File\"]" gTypeFile :: GType

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
  typeGType _ = gTypeFileError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FileError\"]" gTypeFileError :: GType

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
  typeGType _ = gTypeFileList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FileList\"]" gTypeFileList :: GType

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
  typeGType _ = gTypeFileReader
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FileReader\"]" gTypeFileReader :: GType

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
  typeGType _ = gTypeFileReaderSync
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FileReaderSync\"]" gTypeFileReaderSync :: GType

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
  typeGType _ = gTypeFocusEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FocusEvent\"]" gTypeFocusEvent :: GType

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
  typeGType _ = gTypeFontLoader
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FontLoader\"]" gTypeFontLoader :: GType

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
  typeGType _ = gTypeFormData
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"FormData\"]" gTypeFormData :: GType

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
  typeGType _ = gTypeGainNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"GainNode\"]" gTypeGainNode :: GType

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
  typeGType _ = gTypeGamepad
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Gamepad\"]" gTypeGamepad :: GType

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
  typeGType _ = gTypeGamepadButton
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"GamepadButton\"]" gTypeGamepadButton :: GType

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
  typeGType _ = gTypeGamepadEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"GamepadEvent\"]" gTypeGamepadEvent :: GType

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
  typeGType _ = gTypeGeolocation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Geolocation\"]" gTypeGeolocation :: GType

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
  typeGType _ = gTypeGeoposition
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Geoposition\"]" gTypeGeoposition :: GType

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
  typeGType _ = gTypeHTMLAllCollection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLAllCollection\"]" gTypeHTMLAllCollection :: GType

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
  typeGType _ = gTypeHTMLAnchorElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLAnchorElement\"]" gTypeHTMLAnchorElement :: GType

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
  typeGType _ = gTypeHTMLAppletElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLAppletElement\"]" gTypeHTMLAppletElement :: GType

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
  typeGType _ = gTypeHTMLAreaElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLAreaElement\"]" gTypeHTMLAreaElement :: GType

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
  typeGType _ = gTypeHTMLAudioElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLAudioElement\"]" gTypeHTMLAudioElement :: GType

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
  typeGType _ = gTypeHTMLBRElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLBRElement\"]" gTypeHTMLBRElement :: GType

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
  typeGType _ = gTypeHTMLBaseElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLBaseElement\"]" gTypeHTMLBaseElement :: GType

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
  typeGType _ = gTypeHTMLBaseFontElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLBaseFontElement\"]" gTypeHTMLBaseFontElement :: GType

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
  typeGType _ = gTypeHTMLBodyElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLBodyElement\"]" gTypeHTMLBodyElement :: GType

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
  typeGType _ = gTypeHTMLButtonElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLButtonElement\"]" gTypeHTMLButtonElement :: GType

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
  typeGType _ = gTypeHTMLCanvasElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLCanvasElement\"]" gTypeHTMLCanvasElement :: GType

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
toHTMLCollection = HTMLCollection . coerce

instance IsHTMLCollection HTMLCollection
instance IsGObject HTMLCollection where
  typeGType _ = gTypeHTMLCollection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLCollection\"]" gTypeHTMLCollection :: GType

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
  typeGType _ = gTypeHTMLDListElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDListElement\"]" gTypeHTMLDListElement :: GType

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
  typeGType _ = gTypeHTMLDataListElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDataListElement\"]" gTypeHTMLDataListElement :: GType

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
  typeGType _ = gTypeHTMLDetailsElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDetailsElement\"]" gTypeHTMLDetailsElement :: GType

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
  typeGType _ = gTypeHTMLDirectoryElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDirectoryElement\"]" gTypeHTMLDirectoryElement :: GType

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
  typeGType _ = gTypeHTMLDivElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDivElement\"]" gTypeHTMLDivElement :: GType

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
  typeGType _ = gTypeHTMLDocument
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLDocument\"]" gTypeHTMLDocument :: GType

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
toHTMLElement = HTMLElement . coerce

instance IsHTMLElement HTMLElement
instance IsElement HTMLElement
instance IsNode HTMLElement
instance IsEventTarget HTMLElement
instance IsGObject HTMLElement where
  typeGType _ = gTypeHTMLElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLElement\"]" gTypeHTMLElement :: GType

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
  typeGType _ = gTypeHTMLEmbedElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLEmbedElement\"]" gTypeHTMLEmbedElement :: GType

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
  typeGType _ = gTypeHTMLFieldSetElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFieldSetElement\"]" gTypeHTMLFieldSetElement :: GType

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
  typeGType _ = gTypeHTMLFontElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFontElement\"]" gTypeHTMLFontElement :: GType

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
  typeGType _ = gTypeHTMLFormControlsCollection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFormControlsCollection\"]" gTypeHTMLFormControlsCollection :: GType

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
  typeGType _ = gTypeHTMLFormElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFormElement\"]" gTypeHTMLFormElement :: GType

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
  typeGType _ = gTypeHTMLFrameElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFrameElement\"]" gTypeHTMLFrameElement :: GType

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
  typeGType _ = gTypeHTMLFrameSetElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLFrameSetElement\"]" gTypeHTMLFrameSetElement :: GType

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
  typeGType _ = gTypeHTMLHRElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLHRElement\"]" gTypeHTMLHRElement :: GType

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
  typeGType _ = gTypeHTMLHeadElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLHeadElement\"]" gTypeHTMLHeadElement :: GType

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
  typeGType _ = gTypeHTMLHeadingElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLHeadingElement\"]" gTypeHTMLHeadingElement :: GType

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
  typeGType _ = gTypeHTMLHtmlElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLHtmlElement\"]" gTypeHTMLHtmlElement :: GType

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
  typeGType _ = gTypeHTMLIFrameElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLIFrameElement\"]" gTypeHTMLIFrameElement :: GType

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
  typeGType _ = gTypeHTMLImageElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLImageElement\"]" gTypeHTMLImageElement :: GType

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
  typeGType _ = gTypeHTMLInputElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLInputElement\"]" gTypeHTMLInputElement :: GType

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
  typeGType _ = gTypeHTMLKeygenElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLKeygenElement\"]" gTypeHTMLKeygenElement :: GType

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
  typeGType _ = gTypeHTMLLIElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLLIElement\"]" gTypeHTMLLIElement :: GType

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
  typeGType _ = gTypeHTMLLabelElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLLabelElement\"]" gTypeHTMLLabelElement :: GType

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
  typeGType _ = gTypeHTMLLegendElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLLegendElement\"]" gTypeHTMLLegendElement :: GType

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
  typeGType _ = gTypeHTMLLinkElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLLinkElement\"]" gTypeHTMLLinkElement :: GType

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
  typeGType _ = gTypeHTMLMapElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMapElement\"]" gTypeHTMLMapElement :: GType

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
  typeGType _ = gTypeHTMLMarqueeElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMarqueeElement\"]" gTypeHTMLMarqueeElement :: GType

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
toHTMLMediaElement = HTMLMediaElement . coerce

instance IsHTMLMediaElement HTMLMediaElement
instance IsHTMLElement HTMLMediaElement
instance IsElement HTMLMediaElement
instance IsNode HTMLMediaElement
instance IsEventTarget HTMLMediaElement
instance IsGObject HTMLMediaElement where
  typeGType _ = gTypeHTMLMediaElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMediaElement\"]" gTypeHTMLMediaElement :: GType

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
  typeGType _ = gTypeHTMLMenuElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMenuElement\"]" gTypeHTMLMenuElement :: GType

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
  typeGType _ = gTypeHTMLMetaElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMetaElement\"]" gTypeHTMLMetaElement :: GType

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
  typeGType _ = gTypeHTMLMeterElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLMeterElement\"]" gTypeHTMLMeterElement :: GType

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
  typeGType _ = gTypeHTMLModElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLModElement\"]" gTypeHTMLModElement :: GType

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
  typeGType _ = gTypeHTMLOListElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLOListElement\"]" gTypeHTMLOListElement :: GType

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
  typeGType _ = gTypeHTMLObjectElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLObjectElement\"]" gTypeHTMLObjectElement :: GType

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
  typeGType _ = gTypeHTMLOptGroupElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLOptGroupElement\"]" gTypeHTMLOptGroupElement :: GType

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
  typeGType _ = gTypeHTMLOptionElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLOptionElement\"]" gTypeHTMLOptionElement :: GType

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
  typeGType _ = gTypeHTMLOptionsCollection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLOptionsCollection\"]" gTypeHTMLOptionsCollection :: GType

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
  typeGType _ = gTypeHTMLOutputElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLOutputElement\"]" gTypeHTMLOutputElement :: GType

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
  typeGType _ = gTypeHTMLParagraphElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLParagraphElement\"]" gTypeHTMLParagraphElement :: GType

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
  typeGType _ = gTypeHTMLParamElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLParamElement\"]" gTypeHTMLParamElement :: GType

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
  typeGType _ = gTypeHTMLPreElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLPreElement\"]" gTypeHTMLPreElement :: GType

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
  typeGType _ = gTypeHTMLProgressElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLProgressElement\"]" gTypeHTMLProgressElement :: GType

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
  typeGType _ = gTypeHTMLQuoteElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLQuoteElement\"]" gTypeHTMLQuoteElement :: GType

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
  typeGType _ = gTypeHTMLScriptElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLScriptElement\"]" gTypeHTMLScriptElement :: GType

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
  typeGType _ = gTypeHTMLSelectElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLSelectElement\"]" gTypeHTMLSelectElement :: GType

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
  typeGType _ = gTypeHTMLSourceElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLSourceElement\"]" gTypeHTMLSourceElement :: GType

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
  typeGType _ = gTypeHTMLSpanElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLSpanElement\"]" gTypeHTMLSpanElement :: GType

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
  typeGType _ = gTypeHTMLStyleElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLStyleElement\"]" gTypeHTMLStyleElement :: GType

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
  typeGType _ = gTypeHTMLTableCaptionElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableCaptionElement\"]" gTypeHTMLTableCaptionElement :: GType

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
  typeGType _ = gTypeHTMLTableCellElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableCellElement\"]" gTypeHTMLTableCellElement :: GType

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
  typeGType _ = gTypeHTMLTableColElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableColElement\"]" gTypeHTMLTableColElement :: GType

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
  typeGType _ = gTypeHTMLTableElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableElement\"]" gTypeHTMLTableElement :: GType

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
  typeGType _ = gTypeHTMLTableRowElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableRowElement\"]" gTypeHTMLTableRowElement :: GType

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
  typeGType _ = gTypeHTMLTableSectionElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTableSectionElement\"]" gTypeHTMLTableSectionElement :: GType

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
  typeGType _ = gTypeHTMLTemplateElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTemplateElement\"]" gTypeHTMLTemplateElement :: GType

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
  typeGType _ = gTypeHTMLTextAreaElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTextAreaElement\"]" gTypeHTMLTextAreaElement :: GType

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
  typeGType _ = gTypeHTMLTitleElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTitleElement\"]" gTypeHTMLTitleElement :: GType

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
  typeGType _ = gTypeHTMLTrackElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLTrackElement\"]" gTypeHTMLTrackElement :: GType

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
  typeGType _ = gTypeHTMLUListElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLUListElement\"]" gTypeHTMLUListElement :: GType

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
  typeGType _ = gTypeHTMLUnknownElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLUnknownElement\"]" gTypeHTMLUnknownElement :: GType

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
  typeGType _ = gTypeHTMLVideoElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HTMLVideoElement\"]" gTypeHTMLVideoElement :: GType

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
  typeGType _ = gTypeHashChangeEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"HashChangeEvent\"]" gTypeHashChangeEvent :: GType

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
  typeGType _ = gTypeHistory
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"History\"]" gTypeHistory :: GType

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
  typeGType _ = gTypeIDBAny
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBAny\"]" gTypeIDBAny :: GType

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
toIDBCursor = IDBCursor . coerce

instance IsIDBCursor IDBCursor
instance IsGObject IDBCursor where
  typeGType _ = gTypeIDBCursor
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBCursor\"]" gTypeIDBCursor :: GType

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
  typeGType _ = gTypeIDBCursorWithValue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBCursorWithValue\"]" gTypeIDBCursorWithValue :: GType

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
  typeGType _ = gTypeIDBDatabase
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBDatabase\"]" gTypeIDBDatabase :: GType

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
  typeGType _ = gTypeIDBFactory
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBFactory\"]" gTypeIDBFactory :: GType

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
  typeGType _ = gTypeIDBIndex
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBIndex\"]" gTypeIDBIndex :: GType

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
  typeGType _ = gTypeIDBKeyRange
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBKeyRange\"]" gTypeIDBKeyRange :: GType

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
  typeGType _ = gTypeIDBObjectStore
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBObjectStore\"]" gTypeIDBObjectStore :: GType

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
  typeGType _ = gTypeIDBOpenDBRequest
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBOpenDBRequest\"]" gTypeIDBOpenDBRequest :: GType

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
toIDBRequest = IDBRequest . coerce

instance IsIDBRequest IDBRequest
instance IsEventTarget IDBRequest
instance IsGObject IDBRequest where
  typeGType _ = gTypeIDBRequest
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBRequest\"]" gTypeIDBRequest :: GType

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
  typeGType _ = gTypeIDBTransaction
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBTransaction\"]" gTypeIDBTransaction :: GType

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
  typeGType _ = gTypeIDBVersionChangeEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"IDBVersionChangeEvent\"]" gTypeIDBVersionChangeEvent :: GType

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
  typeGType _ = gTypeImageData
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ImageData\"]" gTypeImageData :: GType

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
  typeGType _ = gTypeInspectorFrontendHost
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"InspectorFrontendHost\"]" gTypeInspectorFrontendHost :: GType

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
  typeGType _ = gTypeInternalSettings
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"InternalSettings\"]" gTypeInternalSettings :: GType

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
  typeGType _ = gTypeInternals
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Internals\"]" gTypeInternals :: GType

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
  typeGType _ = gTypeKeyboardEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"KeyboardEvent\"]" gTypeKeyboardEvent :: GType

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
  typeGType _ = gTypeLocation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Location\"]" gTypeLocation :: GType

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
  typeGType _ = gTypeMallocStatistics
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MallocStatistics\"]" gTypeMallocStatistics :: GType

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
  typeGType _ = gTypeMediaController
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaController\"]" gTypeMediaController :: GType

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
  typeGType _ = gTypeMediaControlsHost
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaControlsHost\"]" gTypeMediaControlsHost :: GType

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
  typeGType _ = gTypeMediaElementAudioSourceNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaElementAudioSourceNode\"]" gTypeMediaElementAudioSourceNode :: GType

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
  typeGType _ = gTypeMediaError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaError\"]" gTypeMediaError :: GType

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
  typeGType _ = gTypeMediaKeyError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitMediaKeyError\"]" gTypeMediaKeyError :: GType

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
  typeGType _ = gTypeMediaKeyEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaKeyEvent\"]" gTypeMediaKeyEvent :: GType

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
  typeGType _ = gTypeMediaKeyMessageEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitMediaKeyMessageEvent\"]" gTypeMediaKeyMessageEvent :: GType

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
  typeGType _ = gTypeMediaKeyNeededEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaKeyNeededEvent\"]" gTypeMediaKeyNeededEvent :: GType

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
  typeGType _ = gTypeMediaKeySession
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitMediaKeySession\"]" gTypeMediaKeySession :: GType

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
  typeGType _ = gTypeMediaKeys
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitMediaKeys\"]" gTypeMediaKeys :: GType

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
  typeGType _ = gTypeMediaList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaList\"]" gTypeMediaList :: GType

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
  typeGType _ = gTypeMediaQueryList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaQueryList\"]" gTypeMediaQueryList :: GType

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
  typeGType _ = gTypeMediaSource
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaSource\"]" gTypeMediaSource :: GType

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
  typeGType _ = gTypeMediaSourceStates
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaSourceStates\"]" gTypeMediaSourceStates :: GType

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
  typeGType _ = gTypeMediaStream
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"webkitMediaStream\"]" gTypeMediaStream :: GType

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
  typeGType _ = gTypeMediaStreamAudioDestinationNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamAudioDestinationNode\"]" gTypeMediaStreamAudioDestinationNode :: GType

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
  typeGType _ = gTypeMediaStreamAudioSourceNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamAudioSourceNode\"]" gTypeMediaStreamAudioSourceNode :: GType

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
toMediaStreamCapabilities = MediaStreamCapabilities . coerce

instance IsMediaStreamCapabilities MediaStreamCapabilities
instance IsGObject MediaStreamCapabilities where
  typeGType _ = gTypeMediaStreamCapabilities
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamCapabilities\"]" gTypeMediaStreamCapabilities :: GType

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
  typeGType _ = gTypeMediaStreamEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamEvent\"]" gTypeMediaStreamEvent :: GType

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
toMediaStreamTrack = MediaStreamTrack . coerce

instance IsMediaStreamTrack MediaStreamTrack
instance IsEventTarget MediaStreamTrack
instance IsGObject MediaStreamTrack where
  typeGType _ = gTypeMediaStreamTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamTrack\"]" gTypeMediaStreamTrack :: GType

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
  typeGType _ = gTypeMediaStreamTrackEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaStreamTrackEvent\"]" gTypeMediaStreamTrackEvent :: GType

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
  typeGType _ = gTypeMediaTrackConstraint
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaTrackConstraint\"]" gTypeMediaTrackConstraint :: GType

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
  typeGType _ = gTypeMediaTrackConstraintSet
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaTrackConstraintSet\"]" gTypeMediaTrackConstraintSet :: GType

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
  typeGType _ = gTypeMediaTrackConstraints
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MediaTrackConstraints\"]" gTypeMediaTrackConstraints :: GType

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
  typeGType _ = gTypeMemoryInfo
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MemoryInfo\"]" gTypeMemoryInfo :: GType

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
  typeGType _ = gTypeMessageChannel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MessageChannel\"]" gTypeMessageChannel :: GType

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
  typeGType _ = gTypeMessageEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MessageEvent\"]" gTypeMessageEvent :: GType

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
  typeGType _ = gTypeMessagePort
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MessagePort\"]" gTypeMessagePort :: GType

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
  typeGType _ = gTypeMimeType
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MimeType\"]" gTypeMimeType :: GType

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
  typeGType _ = gTypeMimeTypeArray
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MimeTypeArray\"]" gTypeMimeTypeArray :: GType

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
toMouseEvent = MouseEvent . coerce

instance IsMouseEvent MouseEvent
instance IsUIEvent MouseEvent
instance IsEvent MouseEvent
instance IsGObject MouseEvent where
  typeGType _ = gTypeMouseEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MouseEvent\"]" gTypeMouseEvent :: GType

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
  typeGType _ = gTypeMutationEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MutationEvent\"]" gTypeMutationEvent :: GType

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
  typeGType _ = gTypeMutationObserver
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MutationObserver\"]" gTypeMutationObserver :: GType

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
  typeGType _ = gTypeMutationRecord
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"MutationRecord\"]" gTypeMutationRecord :: GType

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
  typeGType _ = gTypeNamedNodeMap
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NamedNodeMap\"]" gTypeNamedNodeMap :: GType

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
  typeGType _ = gTypeNavigator
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Navigator\"]" gTypeNavigator :: GType

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
  typeGType _ = gTypeNavigatorUserMediaError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NavigatorUserMediaError\"]" gTypeNavigatorUserMediaError :: GType

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
toNode = Node . coerce

instance IsNode Node
instance IsEventTarget Node
instance IsGObject Node where
  typeGType _ = gTypeNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Node\"]" gTypeNode :: GType

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
  typeGType _ = gTypeNodeFilter
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NodeFilter\"]" gTypeNodeFilter :: GType

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
  typeGType _ = gTypeNodeIterator
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NodeIterator\"]" gTypeNodeIterator :: GType

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
toNodeList = NodeList . coerce

instance IsNodeList NodeList
instance IsGObject NodeList where
  typeGType _ = gTypeNodeList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NodeList\"]" gTypeNodeList :: GType

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
  typeGType _ = gTypeNotification
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Notification\"]" gTypeNotification :: GType

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
  typeGType _ = gTypeNotificationCenter
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"NotificationCenter\"]" gTypeNotificationCenter :: GType

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
  typeGType _ = gTypeOESElementIndexUint
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESElementIndexUint\"]" gTypeOESElementIndexUint :: GType

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
  typeGType _ = gTypeOESStandardDerivatives
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESStandardDerivatives\"]" gTypeOESStandardDerivatives :: GType

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
  typeGType _ = gTypeOESTextureFloat
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESTextureFloat\"]" gTypeOESTextureFloat :: GType

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
  typeGType _ = gTypeOESTextureFloatLinear
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESTextureFloatLinear\"]" gTypeOESTextureFloatLinear :: GType

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
  typeGType _ = gTypeOESTextureHalfFloat
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESTextureHalfFloat\"]" gTypeOESTextureHalfFloat :: GType

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
  typeGType _ = gTypeOESTextureHalfFloatLinear
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESTextureHalfFloatLinear\"]" gTypeOESTextureHalfFloatLinear :: GType

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
  typeGType _ = gTypeOESVertexArrayObject
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OESVertexArrayObject\"]" gTypeOESVertexArrayObject :: GType

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
  typeGType _ = gTypeOfflineAudioCompletionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OfflineAudioCompletionEvent\"]" gTypeOfflineAudioCompletionEvent :: GType

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
  typeGType _ = gTypeOfflineAudioContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OfflineAudioContext\"]" gTypeOfflineAudioContext :: GType

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
  typeGType _ = gTypeOscillatorNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OscillatorNode\"]" gTypeOscillatorNode :: GType

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
  typeGType _ = gTypeOverflowEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"OverflowEvent\"]" gTypeOverflowEvent :: GType

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
  typeGType _ = gTypePageTransitionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PageTransitionEvent\"]" gTypePageTransitionEvent :: GType

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
  typeGType _ = gTypePannerNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"webkitAudioPannerNode\"]" gTypePannerNode :: GType

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
  typeGType _ = gTypePath2D
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Path2D\"]" gTypePath2D :: GType

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
  typeGType _ = gTypePerformance
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Performance\"]" gTypePerformance :: GType

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
toPerformanceEntry = PerformanceEntry . coerce

instance IsPerformanceEntry PerformanceEntry
instance IsGObject PerformanceEntry where
  typeGType _ = gTypePerformanceEntry
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceEntry\"]" gTypePerformanceEntry :: GType

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
  typeGType _ = gTypePerformanceEntryList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceEntryList\"]" gTypePerformanceEntryList :: GType

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
  typeGType _ = gTypePerformanceMark
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceMark\"]" gTypePerformanceMark :: GType

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
  typeGType _ = gTypePerformanceMeasure
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceMeasure\"]" gTypePerformanceMeasure :: GType

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
  typeGType _ = gTypePerformanceNavigation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceNavigation\"]" gTypePerformanceNavigation :: GType

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
  typeGType _ = gTypePerformanceResourceTiming
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceResourceTiming\"]" gTypePerformanceResourceTiming :: GType

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
  typeGType _ = gTypePerformanceTiming
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PerformanceTiming\"]" gTypePerformanceTiming :: GType

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
  typeGType _ = gTypePeriodicWave
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PeriodicWave\"]" gTypePeriodicWave :: GType

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
  typeGType _ = gTypePlugin
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Plugin\"]" gTypePlugin :: GType

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
  typeGType _ = gTypePluginArray
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PluginArray\"]" gTypePluginArray :: GType

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
  typeGType _ = gTypePopStateEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PopStateEvent\"]" gTypePopStateEvent :: GType

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
  typeGType _ = gTypePositionError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"PositionError\"]" gTypePositionError :: GType

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
  typeGType _ = gTypeProcessingInstruction
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ProcessingInstruction\"]" gTypeProcessingInstruction :: GType

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
toProgressEvent = ProgressEvent . coerce

instance IsProgressEvent ProgressEvent
instance IsEvent ProgressEvent
instance IsGObject ProgressEvent where
  typeGType _ = gTypeProgressEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ProgressEvent\"]" gTypeProgressEvent :: GType

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
  typeGType _ = gTypeQuickTimePluginReplacement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"QuickTimePluginReplacement\"]" gTypeQuickTimePluginReplacement :: GType

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
  typeGType _ = gTypeRGBColor
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RGBColor\"]" gTypeRGBColor :: GType

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
  typeGType _ = gTypeRTCConfiguration
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCConfiguration\"]" gTypeRTCConfiguration :: GType

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
  typeGType _ = gTypeRTCDTMFSender
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCDTMFSender\"]" gTypeRTCDTMFSender :: GType

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
  typeGType _ = gTypeRTCDTMFToneChangeEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCDTMFToneChangeEvent\"]" gTypeRTCDTMFToneChangeEvent :: GType

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
  typeGType _ = gTypeRTCDataChannel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCDataChannel\"]" gTypeRTCDataChannel :: GType

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
  typeGType _ = gTypeRTCDataChannelEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCDataChannelEvent\"]" gTypeRTCDataChannelEvent :: GType

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
  typeGType _ = gTypeRTCIceCandidate
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCIceCandidate\"]" gTypeRTCIceCandidate :: GType

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
  typeGType _ = gTypeRTCIceCandidateEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCIceCandidateEvent\"]" gTypeRTCIceCandidateEvent :: GType

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
  typeGType _ = gTypeRTCIceServer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCIceServer\"]" gTypeRTCIceServer :: GType

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
  typeGType _ = gTypeRTCPeerConnection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"webkitRTCPeerConnection\"]" gTypeRTCPeerConnection :: GType

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
  typeGType _ = gTypeRTCSessionDescription
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCSessionDescription\"]" gTypeRTCSessionDescription :: GType

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
  typeGType _ = gTypeRTCStatsReport
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCStatsReport\"]" gTypeRTCStatsReport :: GType

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
  typeGType _ = gTypeRTCStatsResponse
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RTCStatsResponse\"]" gTypeRTCStatsResponse :: GType

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
  typeGType _ = gTypeRadioNodeList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"RadioNodeList\"]" gTypeRadioNodeList :: GType

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
  typeGType _ = gTypeRange
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Range\"]" gTypeRange :: GType

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
  typeGType _ = gTypeReadableStream
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ReadableStream\"]" gTypeReadableStream :: GType

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
  typeGType _ = gTypeRect
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Rect\"]" gTypeRect :: GType

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
  typeGType _ = gTypeSQLError
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SQLError\"]" gTypeSQLError :: GType

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
  typeGType _ = gTypeSQLResultSet
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SQLResultSet\"]" gTypeSQLResultSet :: GType

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
  typeGType _ = gTypeSQLResultSetRowList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SQLResultSetRowList\"]" gTypeSQLResultSetRowList :: GType

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
  typeGType _ = gTypeSQLTransaction
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SQLTransaction\"]" gTypeSQLTransaction :: GType

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
  typeGType _ = gTypeSVGAElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAElement\"]" gTypeSVGAElement :: GType

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
  typeGType _ = gTypeSVGAltGlyphDefElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAltGlyphDefElement\"]" gTypeSVGAltGlyphDefElement :: GType

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
  typeGType _ = gTypeSVGAltGlyphElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAltGlyphElement\"]" gTypeSVGAltGlyphElement :: GType

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
  typeGType _ = gTypeSVGAltGlyphItemElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAltGlyphItemElement\"]" gTypeSVGAltGlyphItemElement :: GType

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
  typeGType _ = gTypeSVGAngle
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAngle\"]" gTypeSVGAngle :: GType

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
  typeGType _ = gTypeSVGAnimateColorElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimateColorElement\"]" gTypeSVGAnimateColorElement :: GType

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
  typeGType _ = gTypeSVGAnimateElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimateElement\"]" gTypeSVGAnimateElement :: GType

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
  typeGType _ = gTypeSVGAnimateMotionElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimateMotionElement\"]" gTypeSVGAnimateMotionElement :: GType

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
  typeGType _ = gTypeSVGAnimateTransformElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimateTransformElement\"]" gTypeSVGAnimateTransformElement :: GType

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
  typeGType _ = gTypeSVGAnimatedAngle
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedAngle\"]" gTypeSVGAnimatedAngle :: GType

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
  typeGType _ = gTypeSVGAnimatedBoolean
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedBoolean\"]" gTypeSVGAnimatedBoolean :: GType

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
  typeGType _ = gTypeSVGAnimatedEnumeration
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedEnumeration\"]" gTypeSVGAnimatedEnumeration :: GType

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
  typeGType _ = gTypeSVGAnimatedInteger
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedInteger\"]" gTypeSVGAnimatedInteger :: GType

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
  typeGType _ = gTypeSVGAnimatedLength
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedLength\"]" gTypeSVGAnimatedLength :: GType

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
  typeGType _ = gTypeSVGAnimatedLengthList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedLengthList\"]" gTypeSVGAnimatedLengthList :: GType

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
  typeGType _ = gTypeSVGAnimatedNumber
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedNumber\"]" gTypeSVGAnimatedNumber :: GType

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
  typeGType _ = gTypeSVGAnimatedNumberList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedNumberList\"]" gTypeSVGAnimatedNumberList :: GType

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
  typeGType _ = gTypeSVGAnimatedPreserveAspectRatio
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedPreserveAspectRatio\"]" gTypeSVGAnimatedPreserveAspectRatio :: GType

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
  typeGType _ = gTypeSVGAnimatedRect
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedRect\"]" gTypeSVGAnimatedRect :: GType

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
  typeGType _ = gTypeSVGAnimatedString
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedString\"]" gTypeSVGAnimatedString :: GType

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
  typeGType _ = gTypeSVGAnimatedTransformList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimatedTransformList\"]" gTypeSVGAnimatedTransformList :: GType

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
toSVGAnimationElement = SVGAnimationElement . coerce

instance IsSVGAnimationElement SVGAnimationElement
instance IsSVGElement SVGAnimationElement
instance IsElement SVGAnimationElement
instance IsNode SVGAnimationElement
instance IsEventTarget SVGAnimationElement
instance IsGObject SVGAnimationElement where
  typeGType _ = gTypeSVGAnimationElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGAnimationElement\"]" gTypeSVGAnimationElement :: GType

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
  typeGType _ = gTypeSVGCircleElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGCircleElement\"]" gTypeSVGCircleElement :: GType

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
  typeGType _ = gTypeSVGClipPathElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGClipPathElement\"]" gTypeSVGClipPathElement :: GType

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
toSVGColor = SVGColor . coerce

instance IsSVGColor SVGColor
instance IsCSSValue SVGColor
instance IsGObject SVGColor where
  typeGType _ = gTypeSVGColor
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGColor\"]" gTypeSVGColor :: GType

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
toSVGComponentTransferFunctionElement = SVGComponentTransferFunctionElement . coerce

instance IsSVGComponentTransferFunctionElement SVGComponentTransferFunctionElement
instance IsSVGElement SVGComponentTransferFunctionElement
instance IsElement SVGComponentTransferFunctionElement
instance IsNode SVGComponentTransferFunctionElement
instance IsEventTarget SVGComponentTransferFunctionElement
instance IsGObject SVGComponentTransferFunctionElement where
  typeGType _ = gTypeSVGComponentTransferFunctionElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGComponentTransferFunctionElement\"]" gTypeSVGComponentTransferFunctionElement :: GType

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
  typeGType _ = gTypeSVGCursorElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGCursorElement\"]" gTypeSVGCursorElement :: GType

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
  typeGType _ = gTypeSVGDefsElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGDefsElement\"]" gTypeSVGDefsElement :: GType

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
  typeGType _ = gTypeSVGDescElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGDescElement\"]" gTypeSVGDescElement :: GType

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
  typeGType _ = gTypeSVGDocument
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGDocument\"]" gTypeSVGDocument :: GType

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
toSVGElement = SVGElement . coerce

instance IsSVGElement SVGElement
instance IsElement SVGElement
instance IsNode SVGElement
instance IsEventTarget SVGElement
instance IsGObject SVGElement where
  typeGType _ = gTypeSVGElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGElement\"]" gTypeSVGElement :: GType

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
  typeGType _ = gTypeSVGEllipseElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGEllipseElement\"]" gTypeSVGEllipseElement :: GType

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
  typeGType _ = gTypeSVGExternalResourcesRequired
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGExternalResourcesRequired\"]" gTypeSVGExternalResourcesRequired :: GType

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
  typeGType _ = gTypeSVGFEBlendElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEBlendElement\"]" gTypeSVGFEBlendElement :: GType

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
  typeGType _ = gTypeSVGFEColorMatrixElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEColorMatrixElement\"]" gTypeSVGFEColorMatrixElement :: GType

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
  typeGType _ = gTypeSVGFEComponentTransferElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEComponentTransferElement\"]" gTypeSVGFEComponentTransferElement :: GType

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
  typeGType _ = gTypeSVGFECompositeElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFECompositeElement\"]" gTypeSVGFECompositeElement :: GType

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
  typeGType _ = gTypeSVGFEConvolveMatrixElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEConvolveMatrixElement\"]" gTypeSVGFEConvolveMatrixElement :: GType

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
  typeGType _ = gTypeSVGFEDiffuseLightingElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEDiffuseLightingElement\"]" gTypeSVGFEDiffuseLightingElement :: GType

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
  typeGType _ = gTypeSVGFEDisplacementMapElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEDisplacementMapElement\"]" gTypeSVGFEDisplacementMapElement :: GType

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
  typeGType _ = gTypeSVGFEDistantLightElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEDistantLightElement\"]" gTypeSVGFEDistantLightElement :: GType

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
  typeGType _ = gTypeSVGFEDropShadowElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEDropShadowElement\"]" gTypeSVGFEDropShadowElement :: GType

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
  typeGType _ = gTypeSVGFEFloodElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEFloodElement\"]" gTypeSVGFEFloodElement :: GType

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
  typeGType _ = gTypeSVGFEFuncAElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEFuncAElement\"]" gTypeSVGFEFuncAElement :: GType

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
  typeGType _ = gTypeSVGFEFuncBElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEFuncBElement\"]" gTypeSVGFEFuncBElement :: GType

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
  typeGType _ = gTypeSVGFEFuncGElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEFuncGElement\"]" gTypeSVGFEFuncGElement :: GType

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
  typeGType _ = gTypeSVGFEFuncRElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEFuncRElement\"]" gTypeSVGFEFuncRElement :: GType

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
  typeGType _ = gTypeSVGFEGaussianBlurElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEGaussianBlurElement\"]" gTypeSVGFEGaussianBlurElement :: GType

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
  typeGType _ = gTypeSVGFEImageElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEImageElement\"]" gTypeSVGFEImageElement :: GType

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
  typeGType _ = gTypeSVGFEMergeElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEMergeElement\"]" gTypeSVGFEMergeElement :: GType

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
  typeGType _ = gTypeSVGFEMergeNodeElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEMergeNodeElement\"]" gTypeSVGFEMergeNodeElement :: GType

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
  typeGType _ = gTypeSVGFEMorphologyElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEMorphologyElement\"]" gTypeSVGFEMorphologyElement :: GType

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
  typeGType _ = gTypeSVGFEOffsetElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEOffsetElement\"]" gTypeSVGFEOffsetElement :: GType

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
  typeGType _ = gTypeSVGFEPointLightElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFEPointLightElement\"]" gTypeSVGFEPointLightElement :: GType

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
  typeGType _ = gTypeSVGFESpecularLightingElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFESpecularLightingElement\"]" gTypeSVGFESpecularLightingElement :: GType

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
  typeGType _ = gTypeSVGFESpotLightElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFESpotLightElement\"]" gTypeSVGFESpotLightElement :: GType

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
  typeGType _ = gTypeSVGFETileElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFETileElement\"]" gTypeSVGFETileElement :: GType

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
  typeGType _ = gTypeSVGFETurbulenceElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFETurbulenceElement\"]" gTypeSVGFETurbulenceElement :: GType

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
  typeGType _ = gTypeSVGFilterElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFilterElement\"]" gTypeSVGFilterElement :: GType

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
  typeGType _ = gTypeSVGFilterPrimitiveStandardAttributes
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFilterPrimitiveStandardAttributes\"]" gTypeSVGFilterPrimitiveStandardAttributes :: GType

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
  typeGType _ = gTypeSVGFitToViewBox
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFitToViewBox\"]" gTypeSVGFitToViewBox :: GType

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
  typeGType _ = gTypeSVGFontElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontElement\"]" gTypeSVGFontElement :: GType

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
  typeGType _ = gTypeSVGFontFaceElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontFaceElement\"]" gTypeSVGFontFaceElement :: GType

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
  typeGType _ = gTypeSVGFontFaceFormatElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontFaceFormatElement\"]" gTypeSVGFontFaceFormatElement :: GType

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
  typeGType _ = gTypeSVGFontFaceNameElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontFaceNameElement\"]" gTypeSVGFontFaceNameElement :: GType

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
  typeGType _ = gTypeSVGFontFaceSrcElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontFaceSrcElement\"]" gTypeSVGFontFaceSrcElement :: GType

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
  typeGType _ = gTypeSVGFontFaceUriElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGFontFaceUriElement\"]" gTypeSVGFontFaceUriElement :: GType

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
  typeGType _ = gTypeSVGForeignObjectElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGForeignObjectElement\"]" gTypeSVGForeignObjectElement :: GType

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
  typeGType _ = gTypeSVGGElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGGElement\"]" gTypeSVGGElement :: GType

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
  typeGType _ = gTypeSVGGlyphElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGGlyphElement\"]" gTypeSVGGlyphElement :: GType

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
  typeGType _ = gTypeSVGGlyphRefElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGGlyphRefElement\"]" gTypeSVGGlyphRefElement :: GType

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
toSVGGradientElement = SVGGradientElement . coerce

instance IsSVGGradientElement SVGGradientElement
instance IsSVGElement SVGGradientElement
instance IsElement SVGGradientElement
instance IsNode SVGGradientElement
instance IsEventTarget SVGGradientElement
instance IsGObject SVGGradientElement where
  typeGType _ = gTypeSVGGradientElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGGradientElement\"]" gTypeSVGGradientElement :: GType

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
toSVGGraphicsElement = SVGGraphicsElement . coerce

instance IsSVGGraphicsElement SVGGraphicsElement
instance IsSVGElement SVGGraphicsElement
instance IsElement SVGGraphicsElement
instance IsNode SVGGraphicsElement
instance IsEventTarget SVGGraphicsElement
instance IsGObject SVGGraphicsElement where
  typeGType _ = gTypeSVGGraphicsElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGGraphicsElement\"]" gTypeSVGGraphicsElement :: GType

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
  typeGType _ = gTypeSVGHKernElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGHKernElement\"]" gTypeSVGHKernElement :: GType

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
  typeGType _ = gTypeSVGImageElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGImageElement\"]" gTypeSVGImageElement :: GType

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
  typeGType _ = gTypeSVGLength
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGLength\"]" gTypeSVGLength :: GType

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
  typeGType _ = gTypeSVGLengthList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGLengthList\"]" gTypeSVGLengthList :: GType

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
  typeGType _ = gTypeSVGLineElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGLineElement\"]" gTypeSVGLineElement :: GType

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
  typeGType _ = gTypeSVGLinearGradientElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGLinearGradientElement\"]" gTypeSVGLinearGradientElement :: GType

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
  typeGType _ = gTypeSVGMPathElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMPathElement\"]" gTypeSVGMPathElement :: GType

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
  typeGType _ = gTypeSVGMarkerElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMarkerElement\"]" gTypeSVGMarkerElement :: GType

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
  typeGType _ = gTypeSVGMaskElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMaskElement\"]" gTypeSVGMaskElement :: GType

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
  typeGType _ = gTypeSVGMatrix
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMatrix\"]" gTypeSVGMatrix :: GType

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
  typeGType _ = gTypeSVGMetadataElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMetadataElement\"]" gTypeSVGMetadataElement :: GType

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
  typeGType _ = gTypeSVGMissingGlyphElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGMissingGlyphElement\"]" gTypeSVGMissingGlyphElement :: GType

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
  typeGType _ = gTypeSVGNumber
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGNumber\"]" gTypeSVGNumber :: GType

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
  typeGType _ = gTypeSVGNumberList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGNumberList\"]" gTypeSVGNumberList :: GType

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
  typeGType _ = gTypeSVGPaint
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPaint\"]" gTypeSVGPaint :: GType

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
  typeGType _ = gTypeSVGPathElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathElement\"]" gTypeSVGPathElement :: GType

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
toSVGPathSeg = SVGPathSeg . coerce

instance IsSVGPathSeg SVGPathSeg
instance IsGObject SVGPathSeg where
  typeGType _ = gTypeSVGPathSeg
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSeg\"]" gTypeSVGPathSeg :: GType

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
  typeGType _ = gTypeSVGPathSegArcAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegArcAbs\"]" gTypeSVGPathSegArcAbs :: GType

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
  typeGType _ = gTypeSVGPathSegArcRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegArcRel\"]" gTypeSVGPathSegArcRel :: GType

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
  typeGType _ = gTypeSVGPathSegClosePath
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegClosePath\"]" gTypeSVGPathSegClosePath :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoCubicAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicAbs\"]" gTypeSVGPathSegCurvetoCubicAbs :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoCubicRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicRel\"]" gTypeSVGPathSegCurvetoCubicRel :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoCubicSmoothAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothAbs\"]" gTypeSVGPathSegCurvetoCubicSmoothAbs :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoCubicSmoothRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoCubicSmoothRel\"]" gTypeSVGPathSegCurvetoCubicSmoothRel :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticAbs\"]" gTypeSVGPathSegCurvetoQuadraticAbs :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticRel\"]" gTypeSVGPathSegCurvetoQuadraticRel :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticSmoothAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothAbs\"]" gTypeSVGPathSegCurvetoQuadraticSmoothAbs :: GType

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
  typeGType _ = gTypeSVGPathSegCurvetoQuadraticSmoothRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegCurvetoQuadraticSmoothRel\"]" gTypeSVGPathSegCurvetoQuadraticSmoothRel :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoAbs\"]" gTypeSVGPathSegLinetoAbs :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoHorizontalAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalAbs\"]" gTypeSVGPathSegLinetoHorizontalAbs :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoHorizontalRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoHorizontalRel\"]" gTypeSVGPathSegLinetoHorizontalRel :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoRel\"]" gTypeSVGPathSegLinetoRel :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoVerticalAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalAbs\"]" gTypeSVGPathSegLinetoVerticalAbs :: GType

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
  typeGType _ = gTypeSVGPathSegLinetoVerticalRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegLinetoVerticalRel\"]" gTypeSVGPathSegLinetoVerticalRel :: GType

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
  typeGType _ = gTypeSVGPathSegList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegList\"]" gTypeSVGPathSegList :: GType

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
  typeGType _ = gTypeSVGPathSegMovetoAbs
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegMovetoAbs\"]" gTypeSVGPathSegMovetoAbs :: GType

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
  typeGType _ = gTypeSVGPathSegMovetoRel
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPathSegMovetoRel\"]" gTypeSVGPathSegMovetoRel :: GType

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
  typeGType _ = gTypeSVGPatternElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPatternElement\"]" gTypeSVGPatternElement :: GType

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
  typeGType _ = gTypeSVGPoint
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPoint\"]" gTypeSVGPoint :: GType

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
  typeGType _ = gTypeSVGPointList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPointList\"]" gTypeSVGPointList :: GType

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
  typeGType _ = gTypeSVGPolygonElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPolygonElement\"]" gTypeSVGPolygonElement :: GType

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
  typeGType _ = gTypeSVGPolylineElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPolylineElement\"]" gTypeSVGPolylineElement :: GType

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
  typeGType _ = gTypeSVGPreserveAspectRatio
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGPreserveAspectRatio\"]" gTypeSVGPreserveAspectRatio :: GType

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
  typeGType _ = gTypeSVGRadialGradientElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGRadialGradientElement\"]" gTypeSVGRadialGradientElement :: GType

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
  typeGType _ = gTypeSVGRect
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGRect\"]" gTypeSVGRect :: GType

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
  typeGType _ = gTypeSVGRectElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGRectElement\"]" gTypeSVGRectElement :: GType

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
  typeGType _ = gTypeSVGRenderingIntent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGRenderingIntent\"]" gTypeSVGRenderingIntent :: GType

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
  typeGType _ = gTypeSVGSVGElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGSVGElement\"]" gTypeSVGSVGElement :: GType

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
  typeGType _ = gTypeSVGScriptElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGScriptElement\"]" gTypeSVGScriptElement :: GType

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
  typeGType _ = gTypeSVGSetElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGSetElement\"]" gTypeSVGSetElement :: GType

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
  typeGType _ = gTypeSVGStopElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGStopElement\"]" gTypeSVGStopElement :: GType

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
  typeGType _ = gTypeSVGStringList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGStringList\"]" gTypeSVGStringList :: GType

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
  typeGType _ = gTypeSVGStyleElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGStyleElement\"]" gTypeSVGStyleElement :: GType

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
  typeGType _ = gTypeSVGSwitchElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGSwitchElement\"]" gTypeSVGSwitchElement :: GType

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
  typeGType _ = gTypeSVGSymbolElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGSymbolElement\"]" gTypeSVGSymbolElement :: GType

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
  typeGType _ = gTypeSVGTRefElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTRefElement\"]" gTypeSVGTRefElement :: GType

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
  typeGType _ = gTypeSVGTSpanElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTSpanElement\"]" gTypeSVGTSpanElement :: GType

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
  typeGType _ = gTypeSVGTests
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTests\"]" gTypeSVGTests :: GType

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
toSVGTextContentElement = SVGTextContentElement . coerce

instance IsSVGTextContentElement SVGTextContentElement
instance IsSVGGraphicsElement SVGTextContentElement
instance IsSVGElement SVGTextContentElement
instance IsElement SVGTextContentElement
instance IsNode SVGTextContentElement
instance IsEventTarget SVGTextContentElement
instance IsGObject SVGTextContentElement where
  typeGType _ = gTypeSVGTextContentElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTextContentElement\"]" gTypeSVGTextContentElement :: GType

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
  typeGType _ = gTypeSVGTextElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTextElement\"]" gTypeSVGTextElement :: GType

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
  typeGType _ = gTypeSVGTextPathElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTextPathElement\"]" gTypeSVGTextPathElement :: GType

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
toSVGTextPositioningElement = SVGTextPositioningElement . coerce

instance IsSVGTextPositioningElement SVGTextPositioningElement
instance IsSVGTextContentElement SVGTextPositioningElement
instance IsSVGGraphicsElement SVGTextPositioningElement
instance IsSVGElement SVGTextPositioningElement
instance IsElement SVGTextPositioningElement
instance IsNode SVGTextPositioningElement
instance IsEventTarget SVGTextPositioningElement
instance IsGObject SVGTextPositioningElement where
  typeGType _ = gTypeSVGTextPositioningElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTextPositioningElement\"]" gTypeSVGTextPositioningElement :: GType

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
  typeGType _ = gTypeSVGTitleElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTitleElement\"]" gTypeSVGTitleElement :: GType

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
  typeGType _ = gTypeSVGTransform
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTransform\"]" gTypeSVGTransform :: GType

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
  typeGType _ = gTypeSVGTransformList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGTransformList\"]" gTypeSVGTransformList :: GType

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
  typeGType _ = gTypeSVGURIReference
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGURIReference\"]" gTypeSVGURIReference :: GType

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
  typeGType _ = gTypeSVGUnitTypes
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGUnitTypes\"]" gTypeSVGUnitTypes :: GType

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
  typeGType _ = gTypeSVGUseElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGUseElement\"]" gTypeSVGUseElement :: GType

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
  typeGType _ = gTypeSVGVKernElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGVKernElement\"]" gTypeSVGVKernElement :: GType

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
  typeGType _ = gTypeSVGViewElement
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGViewElement\"]" gTypeSVGViewElement :: GType

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
  typeGType _ = gTypeSVGViewSpec
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGViewSpec\"]" gTypeSVGViewSpec :: GType

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
  typeGType _ = gTypeSVGZoomAndPan
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGZoomAndPan\"]" gTypeSVGZoomAndPan :: GType

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
  typeGType _ = gTypeSVGZoomEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SVGZoomEvent\"]" gTypeSVGZoomEvent :: GType

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
  typeGType _ = gTypeScreen
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Screen\"]" gTypeScreen :: GType

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
  typeGType _ = gTypeScriptProcessorNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ScriptProcessorNode\"]" gTypeScriptProcessorNode :: GType

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
  typeGType _ = gTypeScriptProfile
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ScriptProfile\"]" gTypeScriptProfile :: GType

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
  typeGType _ = gTypeScriptProfileNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ScriptProfileNode\"]" gTypeScriptProfileNode :: GType

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
  typeGType _ = gTypeSecurityPolicy
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SecurityPolicy\"]" gTypeSecurityPolicy :: GType

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
  typeGType _ = gTypeSecurityPolicyViolationEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SecurityPolicyViolationEvent\"]" gTypeSecurityPolicyViolationEvent :: GType

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
  typeGType _ = gTypeSelection
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Selection\"]" gTypeSelection :: GType

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
  typeGType _ = gTypeSourceBuffer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SourceBuffer\"]" gTypeSourceBuffer :: GType

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
  typeGType _ = gTypeSourceBufferList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SourceBufferList\"]" gTypeSourceBufferList :: GType

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
  typeGType _ = gTypeSourceInfo
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SourceInfo\"]" gTypeSourceInfo :: GType

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
  typeGType _ = gTypeSpeechSynthesis
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SpeechSynthesis\"]" gTypeSpeechSynthesis :: GType

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
  typeGType _ = gTypeSpeechSynthesisEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SpeechSynthesisEvent\"]" gTypeSpeechSynthesisEvent :: GType

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
  typeGType _ = gTypeSpeechSynthesisUtterance
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SpeechSynthesisUtterance\"]" gTypeSpeechSynthesisUtterance :: GType

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
  typeGType _ = gTypeSpeechSynthesisVoice
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"SpeechSynthesisVoice\"]" gTypeSpeechSynthesisVoice :: GType

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
  typeGType _ = gTypeStorage
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Storage\"]" gTypeStorage :: GType

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
  typeGType _ = gTypeStorageEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StorageEvent\"]" gTypeStorageEvent :: GType

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
  typeGType _ = gTypeStorageInfo
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StorageInfo\"]" gTypeStorageInfo :: GType

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
  typeGType _ = gTypeStorageQuota
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StorageQuota\"]" gTypeStorageQuota :: GType

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
  typeGType _ = gTypeStyleMedia
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StyleMedia\"]" gTypeStyleMedia :: GType

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
toStyleSheet = StyleSheet . coerce

instance IsStyleSheet StyleSheet
instance IsGObject StyleSheet where
  typeGType _ = gTypeStyleSheet
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StyleSheet\"]" gTypeStyleSheet :: GType

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
  typeGType _ = gTypeStyleSheetList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"StyleSheetList\"]" gTypeStyleSheetList :: GType

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
  typeGType _ = gTypeSubtleCrypto
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitSubtleCrypto\"]" gTypeSubtleCrypto :: GType

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
toText = Text . coerce

instance IsText Text
instance IsCharacterData Text
instance IsNode Text
instance IsEventTarget Text
instance IsGObject Text where
  typeGType _ = gTypeText
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Text\"]" gTypeText :: GType

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
  typeGType _ = gTypeTextEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextEvent\"]" gTypeTextEvent :: GType

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
  typeGType _ = gTypeTextMetrics
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextMetrics\"]" gTypeTextMetrics :: GType

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
  typeGType _ = gTypeTextTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextTrack\"]" gTypeTextTrack :: GType

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
toTextTrackCue = TextTrackCue . coerce

instance IsTextTrackCue TextTrackCue
instance IsEventTarget TextTrackCue
instance IsGObject TextTrackCue where
  typeGType _ = gTypeTextTrackCue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextTrackCue\"]" gTypeTextTrackCue :: GType

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
  typeGType _ = gTypeTextTrackCueList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextTrackCueList\"]" gTypeTextTrackCueList :: GType

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
  typeGType _ = gTypeTextTrackList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TextTrackList\"]" gTypeTextTrackList :: GType

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
  typeGType _ = gTypeTimeRanges
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TimeRanges\"]" gTypeTimeRanges :: GType

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
  typeGType _ = gTypeTouch
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Touch\"]" gTypeTouch :: GType

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
  typeGType _ = gTypeTouchEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TouchEvent\"]" gTypeTouchEvent :: GType

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
  typeGType _ = gTypeTouchList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TouchList\"]" gTypeTouchList :: GType

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
  typeGType _ = gTypeTrackEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TrackEvent\"]" gTypeTrackEvent :: GType

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
  typeGType _ = gTypeTransitionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TransitionEvent\"]" gTypeTransitionEvent :: GType

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
  typeGType _ = gTypeTreeWalker
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TreeWalker\"]" gTypeTreeWalker :: GType

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
  typeGType _ = gTypeTypeConversions
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"TypeConversions\"]" gTypeTypeConversions :: GType

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
toUIEvent = UIEvent . coerce

instance IsUIEvent UIEvent
instance IsEvent UIEvent
instance IsGObject UIEvent where
  typeGType _ = gTypeUIEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"UIEvent\"]" gTypeUIEvent :: GType

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
  typeGType _ = gTypeUIRequestEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"UIRequestEvent\"]" gTypeUIRequestEvent :: GType

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
  typeGType _ = gTypeURL
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"URL\"]" gTypeURL :: GType

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
  typeGType _ = gTypeURLUtils
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"URLUtils\"]" gTypeURLUtils :: GType

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
  typeGType _ = gTypeUserMessageHandler
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"UserMessageHandler\"]" gTypeUserMessageHandler :: GType

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
  typeGType _ = gTypeUserMessageHandlersNamespace
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"UserMessageHandlersNamespace\"]" gTypeUserMessageHandlersNamespace :: GType

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
  typeGType _ = gTypeVTTCue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VTTCue\"]" gTypeVTTCue :: GType

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
  typeGType _ = gTypeVTTRegion
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VTTRegion\"]" gTypeVTTRegion :: GType

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
  typeGType _ = gTypeVTTRegionList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VTTRegionList\"]" gTypeVTTRegionList :: GType

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
  typeGType _ = gTypeValidityState
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"ValidityState\"]" gTypeValidityState :: GType

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
  typeGType _ = gTypeVideoPlaybackQuality
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VideoPlaybackQuality\"]" gTypeVideoPlaybackQuality :: GType

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
  typeGType _ = gTypeVideoStreamTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VideoStreamTrack\"]" gTypeVideoStreamTrack :: GType

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
  typeGType _ = gTypeVideoTrack
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VideoTrack\"]" gTypeVideoTrack :: GType

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
  typeGType _ = gTypeVideoTrackList
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"VideoTrackList\"]" gTypeVideoTrackList :: GType

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
  typeGType _ = gTypeWaveShaperNode
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WaveShaperNode\"]" gTypeWaveShaperNode :: GType

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
  typeGType _ = gTypeWebGL2RenderingContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGL2RenderingContext\"]" gTypeWebGL2RenderingContext :: GType

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
  typeGType _ = gTypeWebGLActiveInfo
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLActiveInfo\"]" gTypeWebGLActiveInfo :: GType

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
  typeGType _ = gTypeWebGLBuffer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLBuffer\"]" gTypeWebGLBuffer :: GType

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
  typeGType _ = gTypeWebGLCompressedTextureATC
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLCompressedTextureATC\"]" gTypeWebGLCompressedTextureATC :: GType

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
  typeGType _ = gTypeWebGLCompressedTexturePVRTC
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLCompressedTexturePVRTC\"]" gTypeWebGLCompressedTexturePVRTC :: GType

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
  typeGType _ = gTypeWebGLCompressedTextureS3TC
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLCompressedTextureS3TC\"]" gTypeWebGLCompressedTextureS3TC :: GType

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
  typeGType _ = gTypeWebGLContextAttributes
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLContextAttributes\"]" gTypeWebGLContextAttributes :: GType

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
  typeGType _ = gTypeWebGLContextEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLContextEvent\"]" gTypeWebGLContextEvent :: GType

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
  typeGType _ = gTypeWebGLDebugRendererInfo
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLDebugRendererInfo\"]" gTypeWebGLDebugRendererInfo :: GType

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
  typeGType _ = gTypeWebGLDebugShaders
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLDebugShaders\"]" gTypeWebGLDebugShaders :: GType

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
  typeGType _ = gTypeWebGLDepthTexture
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLDepthTexture\"]" gTypeWebGLDepthTexture :: GType

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
  typeGType _ = gTypeWebGLDrawBuffers
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLDrawBuffers\"]" gTypeWebGLDrawBuffers :: GType

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
  typeGType _ = gTypeWebGLFramebuffer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLFramebuffer\"]" gTypeWebGLFramebuffer :: GType

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
  typeGType _ = gTypeWebGLLoseContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLLoseContext\"]" gTypeWebGLLoseContext :: GType

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
  typeGType _ = gTypeWebGLProgram
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLProgram\"]" gTypeWebGLProgram :: GType

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
  typeGType _ = gTypeWebGLQuery
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLQuery\"]" gTypeWebGLQuery :: GType

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
  typeGType _ = gTypeWebGLRenderbuffer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLRenderbuffer\"]" gTypeWebGLRenderbuffer :: GType

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
  typeGType _ = gTypeWebGLRenderingContext
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLRenderingContext\"]" gTypeWebGLRenderingContext :: GType

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
toWebGLRenderingContextBase = WebGLRenderingContextBase . coerce

instance IsWebGLRenderingContextBase WebGLRenderingContextBase
instance IsCanvasRenderingContext WebGLRenderingContextBase
instance IsGObject WebGLRenderingContextBase where
  typeGType _ = gTypeWebGLRenderingContextBase
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLRenderingContextBase\"]" gTypeWebGLRenderingContextBase :: GType

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
  typeGType _ = gTypeWebGLSampler
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLSampler\"]" gTypeWebGLSampler :: GType

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
  typeGType _ = gTypeWebGLShader
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLShader\"]" gTypeWebGLShader :: GType

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
  typeGType _ = gTypeWebGLShaderPrecisionFormat
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLShaderPrecisionFormat\"]" gTypeWebGLShaderPrecisionFormat :: GType

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
  typeGType _ = gTypeWebGLSync
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLSync\"]" gTypeWebGLSync :: GType

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
  typeGType _ = gTypeWebGLTexture
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLTexture\"]" gTypeWebGLTexture :: GType

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
  typeGType _ = gTypeWebGLTransformFeedback
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLTransformFeedback\"]" gTypeWebGLTransformFeedback :: GType

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
  typeGType _ = gTypeWebGLUniformLocation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLUniformLocation\"]" gTypeWebGLUniformLocation :: GType

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
  typeGType _ = gTypeWebGLVertexArrayObject
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLVertexArrayObject\"]" gTypeWebGLVertexArrayObject :: GType

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
  typeGType _ = gTypeWebGLVertexArrayObjectOES
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebGLVertexArrayObjectOES\"]" gTypeWebGLVertexArrayObjectOES :: GType

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
  typeGType _ = gTypeWebKitAnimationEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitAnimationEvent\"]" gTypeWebKitAnimationEvent :: GType

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
  typeGType _ = gTypeWebKitCSSFilterValue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitCSSFilterValue\"]" gTypeWebKitCSSFilterValue :: GType

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
  typeGType _ = gTypeWebKitCSSMatrix
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitCSSMatrix\"]" gTypeWebKitCSSMatrix :: GType

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
  typeGType _ = gTypeWebKitCSSRegionRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitCSSRegionRule\"]" gTypeWebKitCSSRegionRule :: GType

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
  typeGType _ = gTypeWebKitCSSTransformValue
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitCSSTransformValue\"]" gTypeWebKitCSSTransformValue :: GType

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
  typeGType _ = gTypeWebKitCSSViewportRule
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitCSSViewportRule\"]" gTypeWebKitCSSViewportRule :: GType

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
  typeGType _ = gTypeWebKitNamedFlow
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitNamedFlow\"]" gTypeWebKitNamedFlow :: GType

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
  typeGType _ = gTypeWebKitNamespace
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitNamespace\"]" gTypeWebKitNamespace :: GType

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
  typeGType _ = gTypeWebKitPlaybackTargetAvailabilityEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitPlaybackTargetAvailabilityEvent\"]" gTypeWebKitPlaybackTargetAvailabilityEvent :: GType

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
  typeGType _ = gTypeWebKitPoint
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitPoint\"]" gTypeWebKitPoint :: GType

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
  typeGType _ = gTypeWebKitTransitionEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebKitTransitionEvent\"]" gTypeWebKitTransitionEvent :: GType

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
  typeGType _ = gTypeWebSocket
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WebSocket\"]" gTypeWebSocket :: GType

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
  typeGType _ = gTypeWheelEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WheelEvent\"]" gTypeWheelEvent :: GType

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
  typeGType _ = gTypeWindow
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Window\"]" gTypeWindow :: GType

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
  typeGType _ = gTypeWindowBase64
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WindowBase64\"]" gTypeWindowBase64 :: GType

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
  typeGType _ = gTypeWindowTimers
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WindowTimers\"]" gTypeWindowTimers :: GType

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
  typeGType _ = gTypeWorker
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"Worker\"]" gTypeWorker :: GType

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
toWorkerGlobalScope = WorkerGlobalScope . coerce

instance IsWorkerGlobalScope WorkerGlobalScope
instance IsEventTarget WorkerGlobalScope
instance IsGObject WorkerGlobalScope where
  typeGType _ = gTypeWorkerGlobalScope
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WorkerGlobalScope\"]" gTypeWorkerGlobalScope :: GType

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
  typeGType _ = gTypeWorkerLocation
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WorkerLocation\"]" gTypeWorkerLocation :: GType

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
  typeGType _ = gTypeWorkerNavigator
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"WorkerNavigator\"]" gTypeWorkerNavigator :: GType

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
  typeGType _ = gTypeXMLHttpRequest
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XMLHttpRequest\"]" gTypeXMLHttpRequest :: GType

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
  typeGType _ = gTypeXMLHttpRequestProgressEvent
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XMLHttpRequestProgressEvent\"]" gTypeXMLHttpRequestProgressEvent :: GType

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
  typeGType _ = gTypeXMLHttpRequestUpload
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XMLHttpRequestUpload\"]" gTypeXMLHttpRequestUpload :: GType

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
  typeGType _ = gTypeXMLSerializer
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XMLSerializer\"]" gTypeXMLSerializer :: GType

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
  typeGType _ = gTypeXPathEvaluator
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XPathEvaluator\"]" gTypeXPathEvaluator :: GType

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
  typeGType _ = gTypeXPathExpression
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XPathExpression\"]" gTypeXPathExpression :: GType

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
  typeGType _ = gTypeXPathNSResolver
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XPathNSResolver\"]" gTypeXPathNSResolver :: GType

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
  typeGType _ = gTypeXPathResult
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XPathResult\"]" gTypeXPathResult :: GType

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
  typeGType _ = gTypeXSLTProcessor
  {-# INLINE typeGType #-}
foreign import javascript unsafe "window[\"XSLTProcessor\"]" gTypeXSLTProcessor :: GType

