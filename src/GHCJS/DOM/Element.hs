{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Element
       (js_getAttribute, getAttribute, js_setAttribute, setAttribute,
        js_removeAttribute, removeAttribute, js_getAttributeNode,
        getAttributeNode, js_setAttributeNode, setAttributeNode,
        js_removeAttributeNode, removeAttributeNode,
        js_getElementsByTagName, getElementsByTagName, js_hasAttributes,
        hasAttributes, js_getAttributeNS, getAttributeNS,
        js_setAttributeNS, setAttributeNS, js_removeAttributeNS,
        removeAttributeNS, js_getElementsByTagNameNS,
        getElementsByTagNameNS, js_getAttributeNodeNS, getAttributeNodeNS,
        js_setAttributeNodeNS, setAttributeNodeNS, js_hasAttribute,
        hasAttribute, js_hasAttributeNS, hasAttributeNS, js_focus, focus,
        js_blur, blur, js_scrollIntoView, scrollIntoView,
        js_scrollIntoViewIfNeeded, scrollIntoViewIfNeeded,
        js_scrollByLines, scrollByLines, js_scrollByPages, scrollByPages,
        js_getElementsByClassName, getElementsByClassName,
        js_querySelector, querySelector, js_querySelectorAll,
        querySelectorAll, js_matches, matches, js_closest, closest,
        js_webkitMatchesSelector, webkitMatchesSelector,
        js_webkitRequestFullScreen, webkitRequestFullScreen,
        js_webkitRequestFullscreen, webkitRequestFullscreen,
        js_requestPointerLock, requestPointerLock,
        js_webkitGetRegionFlowRanges, webkitGetRegionFlowRanges,
        pattern ALLOW_KEYBOARD_INPUT, js_getTagName, getTagName,
        js_getAttributes, getAttributes, js_getStyle, getStyle, js_setId,
        setId, js_getId, getId, js_getOffsetLeft, getOffsetLeft,
        js_getOffsetTop, getOffsetTop, js_getOffsetWidth, getOffsetWidth,
        js_getOffsetHeight, getOffsetHeight, js_getClientLeft,
        getClientLeft, js_getClientTop, getClientTop, js_getClientWidth,
        getClientWidth, js_getClientHeight, getClientHeight,
        js_setScrollLeft, setScrollLeft, js_getScrollLeft, getScrollLeft,
        js_setScrollTop, setScrollTop, js_getScrollTop, getScrollTop,
        js_getScrollWidth, getScrollWidth, js_getScrollHeight,
        getScrollHeight, js_getOffsetParent, getOffsetParent,
        js_setInnerHTML, setInnerHTML, js_getInnerHTML, getInnerHTML,
        js_setOuterHTML, setOuterHTML, js_getOuterHTML, getOuterHTML,
        js_setClassName, setClassName, js_getClassName, getClassName,
        js_getClassList, getClassList, js_getFirstElementChild,
        getFirstElementChild, js_getLastElementChild, getLastElementChild,
        js_getPreviousElementSibling, getPreviousElementSibling,
        js_getNextElementSibling, getNextElementSibling,
        js_getChildElementCount, getChildElementCount, js_setUiactions,
        setUiactions, js_getUiactions, getUiactions,
        js_getWebkitRegionOverset, getWebkitRegionOverset, abort,
        blurEvent, change, click, contextMenu, dblClick, drag, dragEnd,
        dragEnter, dragLeave, dragOver, dragStart, drop, error, focusEvent,
        input, invalid, keyDown, keyPress, keyUp, load, mouseDown,
        mouseEnter, mouseLeave, mouseMove, mouseOut, mouseOver, mouseUp,
        mouseWheel, scroll, select, submit, wheel, beforeCut, cut,
        beforeCopy, copy, beforePaste, paste, reset, search, selectStart,
        touchStart, touchMove, touchEnd, touchCancel,
        webKitFullscreenChange, webKitFullscreenError,
        webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop, Element, castToElement,
        gTypeElement, IsElement, toElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        js_getAttribute :: JSRef Element -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute ::
             (MonadIO m, IsElement self, ToJSString name,
              FromJSString result) =>
               self -> name -> m result
getAttribute self name
  = liftIO
      (fromJSString <$>
         (js_getAttribute (unElement (toElement self)) (toJSString name)))
 
foreign import javascript unsafe "$1[\"setAttribute\"]($2, $3)"
        js_setAttribute :: JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttribute Mozilla Element.setAttribute documentation> 
setAttribute ::
             (MonadIO m, IsElement self, ToJSString name, ToJSString value) =>
               self -> name -> value -> m ()
setAttribute self name value
  = liftIO
      (js_setAttribute (unElement (toElement self)) (toJSString name)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        js_removeAttribute :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
removeAttribute ::
                (MonadIO m, IsElement self, ToJSString name) =>
                  self -> name -> m ()
removeAttribute self name
  = liftIO
      (js_removeAttribute (unElement (toElement self)) (toJSString name))
 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        js_getAttributeNode ::
        JSRef Element -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode ::
                 (MonadIO m, IsElement self, ToJSString name) =>
                   self -> name -> m (Maybe DOMAttr)
getAttributeNode self name
  = liftIO
      ((js_getAttributeNode (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAttributeNode\"]($2)"
        js_setAttributeNode ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode ::
                 (MonadIO m, IsElement self) =>
                   self -> Maybe DOMAttr -> m (Maybe DOMAttr)
setAttributeNode self newAttr
  = liftIO
      ((js_setAttributeNode (unElement (toElement self))
          (maybe jsNull unDOMAttr newAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeAttributeNode\"]($2)"
        js_removeAttributeNode ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode ::
                    (MonadIO m, IsElement self) =>
                      self -> Maybe DOMAttr -> m (Maybe DOMAttr)
removeAttributeNode self oldAttr
  = liftIO
      ((js_removeAttributeNode (unElement (toElement self))
          (maybe jsNull unDOMAttr oldAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        js_getElementsByTagName ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadIO m, IsElement self, ToJSString name) =>
                       self -> name -> m (Maybe NodeList)
getElementsByTagName self name
  = liftIO
      ((js_getElementsByTagName (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)" js_hasAttributes ::
        JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes :: (MonadIO m, IsElement self) => self -> m Bool
hasAttributes self
  = liftIO (js_hasAttributes (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        js_getAttributeNS ::
        JSRef Element -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString localName, FromJSString result) =>
                 self -> namespaceURI -> localName -> m result
getAttributeNS self namespaceURI localName
  = liftIO
      (fromJSString <$>
         (js_getAttributeNS (unElement (toElement self))
            (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe
        "$1[\"setAttributeNS\"]($2, $3, $4)" js_setAttributeNS ::
        JSRef Element -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNS Mozilla Element.setAttributeNS documentation> 
setAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString qualifiedName, ToJSString value) =>
                 self -> namespaceURI -> qualifiedName -> value -> m ()
setAttributeNS self namespaceURI qualifiedName value
  = liftIO
      (js_setAttributeNS (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString qualifiedName)
         (toJSString value))
 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)" js_removeAttributeNS ::
        JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
removeAttributeNS ::
                  (MonadIO m, IsElement self, ToJSString namespaceURI,
                   ToJSString localName) =>
                    self -> namespaceURI -> localName -> m ()
removeAttributeNS self namespaceURI localName
  = liftIO
      (js_removeAttributeNS (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)" js_getElementsByTagNameNS
        :: JSRef Element -> JSString -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadIO m, IsElement self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> namespaceURI -> localName -> m (Maybe NodeList)
getElementsByTagNameNS self namespaceURI localName
  = liftIO
      ((js_getElementsByTagNameNS (unElement (toElement self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)" js_getAttributeNodeNS ::
        JSRef Element -> JSString -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS ::
                   (MonadIO m, IsElement self, ToJSString namespaceURI,
                    ToJSString localName) =>
                     self -> namespaceURI -> localName -> m (Maybe DOMAttr)
getAttributeNodeNS self namespaceURI localName
  = liftIO
      ((js_getAttributeNodeNS (unElement (toElement self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAttributeNodeNS\"]($2)"
        js_setAttributeNodeNS ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS ::
                   (MonadIO m, IsElement self) =>
                     self -> Maybe DOMAttr -> m (Maybe DOMAttr)
setAttributeNodeNS self newAttr
  = liftIO
      ((js_setAttributeNodeNS (unElement (toElement self))
          (maybe jsNull unDOMAttr newAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasAttribute\"]($2) ? 1 : 0)" js_hasAttribute ::
        JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute ::
             (MonadIO m, IsElement self, ToJSString name) =>
               self -> name -> m Bool
hasAttribute self name
  = liftIO
      (js_hasAttribute (unElement (toElement self)) (toJSString name))
 
foreign import javascript unsafe
        "($1[\"hasAttributeNS\"]($2,\n$3) ? 1 : 0)" js_hasAttributeNS ::
        JSRef Element -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString localName) =>
                 self -> namespaceURI -> localName -> m Bool
hasAttributeNS self namespaceURI localName
  = liftIO
      (js_hasAttributeNS (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"focus\"]()" js_focus ::
        JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.focus Mozilla Element.focus documentation> 
focus :: (MonadIO m, IsElement self) => self -> m ()
focus self = liftIO (js_focus (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"blur\"]()" js_blur ::
        JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.blur Mozilla Element.blur documentation> 
blur :: (MonadIO m, IsElement self) => self -> m ()
blur self = liftIO (js_blur (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        js_scrollIntoView :: JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
scrollIntoView ::
               (MonadIO m, IsElement self) => self -> Bool -> m ()
scrollIntoView self alignWithTop
  = liftIO
      (js_scrollIntoView (unElement (toElement self)) alignWithTop)
 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)" js_scrollIntoViewIfNeeded ::
        JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
scrollIntoViewIfNeeded ::
                       (MonadIO m, IsElement self) => self -> Bool -> m ()
scrollIntoViewIfNeeded self centerIfNeeded
  = liftIO
      (js_scrollIntoViewIfNeeded (unElement (toElement self))
         centerIfNeeded)
 
foreign import javascript unsafe "$1[\"scrollByLines\"]($2)"
        js_scrollByLines :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByLines Mozilla Element.scrollByLines documentation> 
scrollByLines :: (MonadIO m, IsElement self) => self -> Int -> m ()
scrollByLines self lines
  = liftIO (js_scrollByLines (unElement (toElement self)) lines)
 
foreign import javascript unsafe "$1[\"scrollByPages\"]($2)"
        js_scrollByPages :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByPages Mozilla Element.scrollByPages documentation> 
scrollByPages :: (MonadIO m, IsElement self) => self -> Int -> m ()
scrollByPages self pages
  = liftIO (js_scrollByPages (unElement (toElement self)) pages)
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)" js_getElementsByClassName ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadIO m, IsElement self, ToJSString name) =>
                         self -> name -> m (Maybe NodeList)
getElementsByClassName self name
  = liftIO
      ((js_getElementsByClassName (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        js_querySelector :: JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
querySelector ::
              (MonadIO m, IsElement self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      ((js_querySelector (unElement (toElement self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, IsElement self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftIO
      ((js_querySelectorAll (unElement (toElement self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"matches\"]($2) ? 1 : 0)"
        js_matches :: JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches ::
        (MonadIO m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m Bool
matches self selectors
  = liftIO
      (js_matches (unElement (toElement self)) (toJSString selectors))
 
foreign import javascript unsafe "$1[\"closest\"]($2)" js_closest
        :: JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest ::
        (MonadIO m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m (Maybe Element)
closest self selectors
  = liftIO
      ((js_closest (unElement (toElement self)) (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"webkitMatchesSelector\"]($2) ? 1 : 0)"
        js_webkitMatchesSelector :: JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector ::
                      (MonadIO m, IsElement self, ToJSString selectors) =>
                        self -> selectors -> m Bool
webkitMatchesSelector self selectors
  = liftIO
      (js_webkitMatchesSelector (unElement (toElement self))
         (toJSString selectors))
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullScreen\"]($2)" js_webkitRequestFullScreen ::
        JSRef Element -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
webkitRequestFullScreen ::
                        (MonadIO m, IsElement self) => self -> Word -> m ()
webkitRequestFullScreen self flags
  = liftIO
      (js_webkitRequestFullScreen (unElement (toElement self)) flags)
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullscreen\"]()" js_webkitRequestFullscreen ::
        JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
webkitRequestFullscreen ::
                        (MonadIO m, IsElement self) => self -> m ()
webkitRequestFullscreen self
  = liftIO (js_webkitRequestFullscreen (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"requestPointerLock\"]()"
        js_requestPointerLock :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
requestPointerLock :: (MonadIO m, IsElement self) => self -> m ()
requestPointerLock self
  = liftIO (js_requestPointerLock (unElement (toElement self)))
 
foreign import javascript unsafe
        "$1[\"webkitGetRegionFlowRanges\"]()" js_webkitGetRegionFlowRanges
        :: JSRef Element -> IO (JSRef [Maybe DOMRange])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges ::
                          (MonadIO m, IsElement self) => self -> m [Maybe DOMRange]
webkitGetRegionFlowRanges self
  = liftIO
      ((js_webkitGetRegionFlowRanges (unElement (toElement self))) >>=
         fromJSRefUnchecked)
pattern ALLOW_KEYBOARD_INPUT = 1
 
foreign import javascript unsafe "$1[\"tagName\"]" js_getTagName ::
        JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagName ::
           (MonadIO m, IsElement self, FromJSString result) =>
             self -> m result
getTagName self
  = liftIO
      (fromJSString <$> (js_getTagName (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"attributes\"]"
        js_getAttributes :: JSRef Element -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
getAttributes ::
              (MonadIO m, IsElement self) => self -> m (Maybe NamedNodeMap)
getAttributes self
  = liftIO
      ((js_getAttributes (unElement (toElement self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        JSRef Element -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
getStyle ::
         (MonadIO m, IsElement self) =>
           self -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO ((js_getStyle (unElement (toElement self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"] = $2;" js_setId ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
setId ::
      (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setId self val
  = liftIO (js_setId (unElement (toElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
getId ::
      (MonadIO m, IsElement self, FromJSString result) =>
        self -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        js_getOffsetLeft :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetLeft Mozilla Element.offsetLeft documentation> 
getOffsetLeft :: (MonadIO m, IsElement self) => self -> m Double
getOffsetLeft self
  = liftIO (js_getOffsetLeft (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        js_getOffsetTop :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetTop Mozilla Element.offsetTop documentation> 
getOffsetTop :: (MonadIO m, IsElement self) => self -> m Double
getOffsetTop self
  = liftIO (js_getOffsetTop (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        js_getOffsetWidth :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetWidth Mozilla Element.offsetWidth documentation> 
getOffsetWidth :: (MonadIO m, IsElement self) => self -> m Double
getOffsetWidth self
  = liftIO (js_getOffsetWidth (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        js_getOffsetHeight :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetHeight Mozilla Element.offsetHeight documentation> 
getOffsetHeight :: (MonadIO m, IsElement self) => self -> m Double
getOffsetHeight self
  = liftIO (js_getOffsetHeight (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        js_getClientLeft :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
getClientLeft :: (MonadIO m, IsElement self) => self -> m Double
getClientLeft self
  = liftIO (js_getClientLeft (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientTop\"]"
        js_getClientTop :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
getClientTop :: (MonadIO m, IsElement self) => self -> m Double
getClientTop self
  = liftIO (js_getClientTop (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        js_getClientWidth :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
getClientWidth :: (MonadIO m, IsElement self) => self -> m Double
getClientWidth self
  = liftIO (js_getClientWidth (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        js_getClientHeight :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
getClientHeight :: (MonadIO m, IsElement self) => self -> m Double
getClientHeight self
  = liftIO (js_getClientHeight (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        js_setScrollLeft :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
setScrollLeft :: (MonadIO m, IsElement self) => self -> Int -> m ()
setScrollLeft self val
  = liftIO (js_setScrollLeft (unElement (toElement self)) val)
 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        js_getScrollLeft :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
getScrollLeft :: (MonadIO m, IsElement self) => self -> m Int
getScrollLeft self
  = liftIO (js_getScrollLeft (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        js_setScrollTop :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
setScrollTop :: (MonadIO m, IsElement self) => self -> Int -> m ()
setScrollTop self val
  = liftIO (js_setScrollTop (unElement (toElement self)) val)
 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        js_getScrollTop :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
getScrollTop :: (MonadIO m, IsElement self) => self -> m Int
getScrollTop self
  = liftIO (js_getScrollTop (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        js_getScrollWidth :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
getScrollWidth :: (MonadIO m, IsElement self) => self -> m Int
getScrollWidth self
  = liftIO (js_getScrollWidth (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        js_getScrollHeight :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
getScrollHeight :: (MonadIO m, IsElement self) => self -> m Int
getScrollHeight self
  = liftIO (js_getScrollHeight (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        js_getOffsetParent :: JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
getOffsetParent ::
                (MonadIO m, IsElement self) => self -> m (Maybe Element)
getOffsetParent self
  = liftIO
      ((js_getOffsetParent (unElement (toElement self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"innerHTML\"] = $2;"
        js_setInnerHTML :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
setInnerHTML ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setInnerHTML self val
  = liftIO
      (js_setInnerHTML (unElement (toElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        js_getInnerHTML :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTML ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getInnerHTML self
  = liftIO
      (fromJSString <$> (js_getInnerHTML (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"outerHTML\"] = $2;"
        js_setOuterHTML :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
setOuterHTML ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setOuterHTML self val
  = liftIO
      (js_setOuterHTML (unElement (toElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"outerHTML\"]"
        js_getOuterHTML :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTML ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getOuterHTML self
  = liftIO
      (fromJSString <$> (js_getOuterHTML (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        js_setClassName :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
setClassName ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setClassName self val
  = liftIO
      (js_setClassName (unElement (toElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"className\"]"
        js_getClassName :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
getClassName ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getClassName self
  = liftIO
      (fromJSString <$> (js_getClassName (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"classList\"]"
        js_getClassList :: JSRef Element -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
getClassList ::
             (MonadIO m, IsElement self) => self -> m (Maybe DOMTokenList)
getClassList self
  = liftIO
      ((js_getClassList (unElement (toElement self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        js_getFirstElementChild :: JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.firstElementChild Mozilla Element.firstElementChild documentation> 
getFirstElementChild ::
                     (MonadIO m, IsElement self) => self -> m (Maybe Element)
getFirstElementChild self
  = liftIO
      ((js_getFirstElementChild (unElement (toElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        js_getLastElementChild :: JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.lastElementChild Mozilla Element.lastElementChild documentation> 
getLastElementChild ::
                    (MonadIO m, IsElement self) => self -> m (Maybe Element)
getLastElementChild self
  = liftIO
      ((js_getLastElementChild (unElement (toElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        js_getPreviousElementSibling :: JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.previousElementSibling Mozilla Element.previousElementSibling documentation> 
getPreviousElementSibling ::
                          (MonadIO m, IsElement self) => self -> m (Maybe Element)
getPreviousElementSibling self
  = liftIO
      ((js_getPreviousElementSibling (unElement (toElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        js_getNextElementSibling :: JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.nextElementSibling Mozilla Element.nextElementSibling documentation> 
getNextElementSibling ::
                      (MonadIO m, IsElement self) => self -> m (Maybe Element)
getNextElementSibling self
  = liftIO
      ((js_getNextElementSibling (unElement (toElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        js_getChildElementCount :: JSRef Element -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.childElementCount Mozilla Element.childElementCount documentation> 
getChildElementCount ::
                     (MonadIO m, IsElement self) => self -> m Word
getChildElementCount self
  = liftIO (js_getChildElementCount (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"uiactions\"] = $2;"
        js_setUiactions :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
setUiactions ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setUiactions self val
  = liftIO
      (js_setUiactions (unElement (toElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"uiactions\"]"
        js_getUiactions :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
getUiactions ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getUiactions self
  = liftIO
      (fromJSString <$> (js_getUiactions (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        js_getWebkitRegionOverset :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
getWebkitRegionOverset ::
                       (MonadIO m, IsElement self, FromJSString result) =>
                         self -> m result
getWebkitRegionOverset self
  = liftIO
      (fromJSString <$>
         (js_getWebkitRegionOverset (unElement (toElement self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onabort Mozilla Element.onabort documentation> 
abort ::
      (IsElement self, IsEventTarget self) => EventName self UIEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onblur Mozilla Element.onblur documentation> 
blurEvent ::
          (IsElement self, IsEventTarget self) => EventName self FocusEvent
blurEvent = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onchange Mozilla Element.onchange documentation> 
change ::
       (IsElement self, IsEventTarget self) => EventName self Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onclick Mozilla Element.onclick documentation> 
click ::
      (IsElement self, IsEventTarget self) => EventName self MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncontextmenu Mozilla Element.oncontextmenu documentation> 
contextMenu ::
            (IsElement self, IsEventTarget self) => EventName self MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondblclick Mozilla Element.ondblclick documentation> 
dblClick ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrag Mozilla Element.ondrag documentation> 
drag ::
     (IsElement self, IsEventTarget self) => EventName self MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragend Mozilla Element.ondragend documentation> 
dragEnd ::
        (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragenter Mozilla Element.ondragenter documentation> 
dragEnter ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragleave Mozilla Element.ondragleave documentation> 
dragLeave ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragover Mozilla Element.ondragover documentation> 
dragOver ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragstart Mozilla Element.ondragstart documentation> 
dragStart ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrop Mozilla Element.ondrop documentation> 
drop ::
     (IsElement self, IsEventTarget self) => EventName self MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onerror Mozilla Element.onerror documentation> 
error ::
      (IsElement self, IsEventTarget self) => EventName self UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocus Mozilla Element.onfocus documentation> 
focusEvent ::
           (IsElement self, IsEventTarget self) => EventName self FocusEvent
focusEvent = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninput Mozilla Element.oninput documentation> 
input ::
      (IsElement self, IsEventTarget self) => EventName self Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninvalid Mozilla Element.oninvalid documentation> 
invalid ::
        (IsElement self, IsEventTarget self) => EventName self Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeydown Mozilla Element.onkeydown documentation> 
keyDown ::
        (IsElement self, IsEventTarget self) =>
          EventName self KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeypress Mozilla Element.onkeypress documentation> 
keyPress ::
         (IsElement self, IsEventTarget self) =>
           EventName self KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeyup Mozilla Element.onkeyup documentation> 
keyUp ::
      (IsElement self, IsEventTarget self) =>
        EventName self KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onload Mozilla Element.onload documentation> 
load ::
     (IsElement self, IsEventTarget self) => EventName self UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousedown Mozilla Element.onmousedown documentation> 
mouseDown ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseenter Mozilla Element.onmouseenter documentation> 
mouseEnter ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseleave Mozilla Element.onmouseleave documentation> 
mouseLeave ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousemove Mozilla Element.onmousemove documentation> 
mouseMove ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseout Mozilla Element.onmouseout documentation> 
mouseOut ::
         (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseover Mozilla Element.onmouseover documentation> 
mouseOver ::
          (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseup Mozilla Element.onmouseup documentation> 
mouseUp ::
        (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousewheel Mozilla Element.onmousewheel documentation> 
mouseWheel ::
           (IsElement self, IsEventTarget self) => EventName self MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onscroll Mozilla Element.onscroll documentation> 
scroll ::
       (IsElement self, IsEventTarget self) => EventName self UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselect Mozilla Element.onselect documentation> 
select ::
       (IsElement self, IsEventTarget self) => EventName self UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsubmit Mozilla Element.onsubmit documentation> 
submit ::
       (IsElement self, IsEventTarget self) => EventName self Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwheel Mozilla Element.onwheel documentation> 
wheel ::
      (IsElement self, IsEventTarget self) => EventName self WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecut Mozilla Element.onbeforecut documentation> 
beforeCut ::
          (IsElement self, IsEventTarget self) => EventName self Event
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncut Mozilla Element.oncut documentation> 
cut :: (IsElement self, IsEventTarget self) => EventName self Event
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecopy Mozilla Element.onbeforecopy documentation> 
beforeCopy ::
           (IsElement self, IsEventTarget self) => EventName self Event
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncopy Mozilla Element.oncopy documentation> 
copy ::
     (IsElement self, IsEventTarget self) => EventName self Event
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforepaste Mozilla Element.onbeforepaste documentation> 
beforePaste ::
            (IsElement self, IsEventTarget self) => EventName self Event
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onpaste Mozilla Element.onpaste documentation> 
paste ::
      (IsElement self, IsEventTarget self) => EventName self Event
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onreset Mozilla Element.onreset documentation> 
reset ::
      (IsElement self, IsEventTarget self) => EventName self Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsearch Mozilla Element.onsearch documentation> 
search ::
       (IsElement self, IsEventTarget self) => EventName self Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselectstart Mozilla Element.onselectstart documentation> 
selectStart ::
            (IsElement self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchstart Mozilla Element.ontouchstart documentation> 
touchStart ::
           (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchmove Mozilla Element.ontouchmove documentation> 
touchMove ::
          (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchend Mozilla Element.ontouchend documentation> 
touchEnd ::
         (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchcancel Mozilla Element.ontouchcancel documentation> 
touchCancel ::
            (IsElement self, IsEventTarget self) => EventName self TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenchange Mozilla Element.onwebkitfullscreenchange documentation> 
webKitFullscreenChange ::
                       (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenerror Mozilla Element.onwebkitfullscreenerror documentation> 
webKitFullscreenError ::
                      (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealbottom Mozilla Element.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom ::
                       (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealleft Mozilla Element.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft ::
                     (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealright Mozilla Element.onwebkitwillrevealright documentation> 
webKitWillRevealRight ::
                      (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealtop Mozilla Element.onwebkitwillrevealtop documentation> 
webKitWillRevealTop ::
                    (IsElement self, IsEventTarget self) => EventName self Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
#else
module GHCJS.DOM.Element (
  module Graphics.UI.Gtk.WebKit.DOM.Element
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Element
#endif
