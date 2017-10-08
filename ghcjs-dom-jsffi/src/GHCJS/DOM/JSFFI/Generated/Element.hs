{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Element
       (js_hasAttributes, hasAttributes, hasAttributes_,
        js_getAttributeNames, getAttributeNames, getAttributeNames_,
        js_getAttribute, getAttribute, getAttribute_, getAttributeUnsafe,
        getAttributeUnchecked, js_getAttributeNS, getAttributeNS,
        getAttributeNS_, getAttributeNSUnsafe, getAttributeNSUnchecked,
        js_setAttribute, setAttribute, js_setAttributeNS, setAttributeNS,
        js_removeAttribute, removeAttribute, js_removeAttributeNS,
        removeAttributeNS, js_hasAttribute, hasAttribute, hasAttribute_,
        js_hasAttributeNS, hasAttributeNS, hasAttributeNS_,
        js_getAttributeNode, getAttributeNode, getAttributeNode_,
        getAttributeNodeUnsafe, getAttributeNodeUnchecked,
        js_getAttributeNodeNS, getAttributeNodeNS, getAttributeNodeNS_,
        getAttributeNodeNSUnsafe, getAttributeNodeNSUnchecked,
        js_setAttributeNode, setAttributeNode, setAttributeNode_,
        setAttributeNodeUnsafe, setAttributeNodeUnchecked,
        js_setAttributeNodeNS, setAttributeNodeNS, setAttributeNodeNS_,
        setAttributeNodeNSUnsafe, setAttributeNodeNSUnchecked,
        js_removeAttributeNode, removeAttributeNode, removeAttributeNode_,
        js_attachShadow, attachShadow, attachShadow_, js_closest, closest,
        closest_, closestUnsafe, closestUnchecked, js_matches, matches,
        matches_, js_webkitMatchesSelector, webkitMatchesSelector,
        webkitMatchesSelector_, js_getElementsByTagName,
        getElementsByTagName, getElementsByTagName_,
        js_getElementsByTagNameNS, getElementsByTagNameNS,
        getElementsByTagNameNS_, js_getElementsByClassName,
        getElementsByClassName, getElementsByClassName_,
        js_insertAdjacentElement, insertAdjacentElement,
        insertAdjacentElement_, insertAdjacentElementUnsafe,
        insertAdjacentElementUnchecked, js_insertAdjacentText,
        insertAdjacentText, js_getClientRects, getClientRects,
        getClientRects_, js_getBoundingClientRect, getBoundingClientRect,
        getBoundingClientRect_, js_scrollIntoView, scrollIntoView,
        js_scrollOpt, scrollOpt, js_scroll, scroll, js_scrollToOpt,
        scrollToOpt, js_scrollTo, scrollTo, js_scrollByOpt, scrollByOpt,
        js_scrollBy, scrollBy, js_insertAdjacentHTML, insertAdjacentHTML,
        js_webkitRequestFullScreen, webkitRequestFullScreen,
        js_webkitRequestFullscreen, webkitRequestFullscreen,
        js_requestPointerLock, requestPointerLock,
        js_webkitGetRegionFlowRanges, webkitGetRegionFlowRanges,
        webkitGetRegionFlowRanges_, js_scrollIntoViewIfNeeded,
        scrollIntoViewIfNeeded, js_getNamespaceURI, getNamespaceURI,
        getNamespaceURIUnsafe, getNamespaceURIUnchecked, js_getPrefix,
        getPrefix, getPrefixUnsafe, getPrefixUnchecked, js_getLocalName,
        getLocalName, js_getTagName, getTagName, js_setId, setId, js_getId,
        getId, js_setClassName, setClassName, js_getClassName,
        getClassName, js_getClassList, getClassList, js_setSlot, setSlot,
        js_getSlot, getSlot, js_getAttributes, getAttributes,
        js_getShadowRoot, getShadowRoot, getShadowRootUnsafe,
        getShadowRootUnchecked, js_setScrollTop, setScrollTop,
        js_getScrollTop, getScrollTop, js_setScrollLeft, setScrollLeft,
        js_getScrollLeft, getScrollLeft, js_getScrollWidth, getScrollWidth,
        js_getScrollHeight, getScrollHeight, js_getClientTop, getClientTop,
        js_getClientLeft, getClientLeft, js_getClientWidth, getClientWidth,
        js_getClientHeight, getClientHeight, js_setInnerHTML, setInnerHTML,
        js_getInnerHTML, getInnerHTML, js_setOuterHTML, setOuterHTML,
        js_getOuterHTML, getOuterHTML, js_getWebkitRegionOverset,
        getWebkitRegionOverset, selectStart, gestureChange, gestureEnd,
        gestureStart, webKitAnimationEnd, webKitAnimationIteration,
        webKitAnimationStart, webKitTransitionEnd, webKitFullscreenChange,
        webKitFullscreenError, focusin, focusout, beforeload,
        webKitNeedKey, webKitPresentationModeChanged,
        webKitCurrentPlaybackTargetIsWirelessChanged,
        webKitPlaybackTargetAvailabilityChanged, Element(..), gTypeElement,
        IsElement, toElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)" js_hasAttributes ::
        Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes :: (MonadIO m, IsElement self) => self -> m Bool
hasAttributes self = liftIO (js_hasAttributes (toElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes_ :: (MonadIO m, IsElement self) => self -> m ()
hasAttributes_ self
  = liftIO (void (js_hasAttributes (toElement self)))
 
foreign import javascript unsafe "$1[\"getAttributeNames\"]()"
        js_getAttributeNames :: Element -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNames Mozilla Element.getAttributeNames documentation> 
getAttributeNames ::
                  (MonadIO m, IsElement self, FromJSString result) =>
                    self -> m [result]
getAttributeNames self
  = liftIO
      ((js_getAttributeNames (toElement self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNames Mozilla Element.getAttributeNames documentation> 
getAttributeNames_ :: (MonadIO m, IsElement self) => self -> m ()
getAttributeNames_ self
  = liftIO (void (js_getAttributeNames (toElement self)))
 
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        js_getAttribute :: Element -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute ::
             (MonadIO m, IsElement self, ToJSString qualifiedName,
              FromJSString result) =>
               self -> qualifiedName -> m (Maybe result)
getAttribute self qualifiedName
  = liftIO
      (fromMaybeJSString <$>
         (js_getAttribute (toElement self) (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute_ ::
              (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                self -> qualifiedName -> m ()
getAttribute_ self qualifiedName
  = liftIO
      (void
         (js_getAttribute (toElement self) (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnsafe ::
                   (MonadIO m, IsElement self, ToJSString qualifiedName, HasCallStack,
                    FromJSString result) =>
                     self -> qualifiedName -> m result
getAttributeUnsafe self qualifiedName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getAttribute (toElement self) (toJSString qualifiedName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnchecked ::
                      (MonadIO m, IsElement self, ToJSString qualifiedName,
                       FromJSString result) =>
                        self -> qualifiedName -> m result
getAttributeUnchecked self qualifiedName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getAttribute (toElement self) (toJSString qualifiedName)))
 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        js_getAttributeNS ::
        Element -> Optional JSString -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString localName, FromJSString result) =>
                 self -> Maybe namespaceURI -> localName -> m (Maybe result)
getAttributeNS self namespaceURI localName
  = liftIO
      (fromMaybeJSString <$>
         (js_getAttributeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS_ ::
                (MonadIO m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
getAttributeNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getAttributeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNSUnsafe ::
                     (MonadIO m, IsElement self, ToJSString namespaceURI,
                      ToJSString localName, HasCallStack, FromJSString result) =>
                       self -> Maybe namespaceURI -> localName -> m result
getAttributeNSUnsafe self namespaceURI localName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getAttributeNS (toElement self)
             (toOptionalJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNSUnchecked ::
                        (MonadIO m, IsElement self, ToJSString namespaceURI,
                         ToJSString localName, FromJSString result) =>
                          self -> Maybe namespaceURI -> localName -> m result
getAttributeNSUnchecked self namespaceURI localName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getAttributeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript safe "$1[\"setAttribute\"]($2, $3)"
        js_setAttribute :: Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttribute Mozilla Element.setAttribute documentation> 
setAttribute ::
             (MonadIO m, IsElement self, ToJSString qualifiedName,
              ToJSString value) =>
               self -> qualifiedName -> value -> m ()
setAttribute self qualifiedName value
  = liftIO
      (js_setAttribute (toElement self) (toJSString qualifiedName)
         (toJSString value))
 
foreign import javascript safe "$1[\"setAttributeNS\"]($2, $3, $4)"
        js_setAttributeNS ::
        Element -> Optional JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNS Mozilla Element.setAttributeNS documentation> 
setAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString qualifiedName, ToJSString value) =>
                 self -> Maybe namespaceURI -> qualifiedName -> value -> m ()
setAttributeNS self namespaceURI qualifiedName value
  = liftIO
      (js_setAttributeNS (toElement self)
         (toOptionalJSString namespaceURI)
         (toJSString qualifiedName)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        js_removeAttribute :: Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
removeAttribute ::
                (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                  self -> qualifiedName -> m ()
removeAttribute self qualifiedName
  = liftIO
      (js_removeAttribute (toElement self) (toJSString qualifiedName))
 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)" js_removeAttributeNS ::
        Element -> Optional JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
removeAttributeNS ::
                  (MonadIO m, IsElement self, ToJSString namespaceURI,
                   ToJSString localName) =>
                    self -> Maybe namespaceURI -> localName -> m ()
removeAttributeNS self namespaceURI localName
  = liftIO
      (js_removeAttributeNS (toElement self)
         (toOptionalJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe
        "($1[\"hasAttribute\"]($2) ? 1 : 0)" js_hasAttribute ::
        Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute ::
             (MonadIO m, IsElement self, ToJSString qualifiedName) =>
               self -> qualifiedName -> m Bool
hasAttribute self qualifiedName
  = liftIO
      (js_hasAttribute (toElement self) (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute_ ::
              (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                self -> qualifiedName -> m ()
hasAttribute_ self qualifiedName
  = liftIO
      (void
         (js_hasAttribute (toElement self) (toJSString qualifiedName)))
 
foreign import javascript unsafe
        "($1[\"hasAttributeNS\"]($2,\n$3) ? 1 : 0)" js_hasAttributeNS ::
        Element -> Optional JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS ::
               (MonadIO m, IsElement self, ToJSString namespaceURI,
                ToJSString localName) =>
                 self -> Maybe namespaceURI -> localName -> m Bool
hasAttributeNS self namespaceURI localName
  = liftIO
      (js_hasAttributeNS (toElement self)
         (toOptionalJSString namespaceURI)
         (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS_ ::
                (MonadIO m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
hasAttributeNS_ self namespaceURI localName
  = liftIO
      (void
         (js_hasAttributeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        js_getAttributeNode :: Element -> JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode ::
                 (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                   self -> qualifiedName -> m (Maybe Attr)
getAttributeNode self qualifiedName
  = liftIO
      (nullableToMaybe <$>
         (js_getAttributeNode (toElement self) (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode_ ::
                  (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                    self -> qualifiedName -> m ()
getAttributeNode_ self qualifiedName
  = liftIO
      (void
         (js_getAttributeNode (toElement self) (toJSString qualifiedName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnsafe ::
                       (MonadIO m, IsElement self, ToJSString qualifiedName,
                        HasCallStack) =>
                         self -> qualifiedName -> m Attr
getAttributeNodeUnsafe self qualifiedName
  = liftIO
      ((nullableToMaybe <$>
          (js_getAttributeNode (toElement self) (toJSString qualifiedName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnchecked ::
                          (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                            self -> qualifiedName -> m Attr
getAttributeNodeUnchecked self qualifiedName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getAttributeNode (toElement self) (toJSString qualifiedName)))
 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)" js_getAttributeNodeNS ::
        Element -> Optional JSString -> JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS ::
                   (MonadIO m, IsElement self, ToJSString namespaceURI,
                    ToJSString localName) =>
                     self -> Maybe namespaceURI -> localName -> m (Maybe Attr)
getAttributeNodeNS self namespaceURI localName
  = liftIO
      (nullableToMaybe <$>
         (js_getAttributeNodeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS_ ::
                    (MonadIO m, IsElement self, ToJSString namespaceURI,
                     ToJSString localName) =>
                      self -> Maybe namespaceURI -> localName -> m ()
getAttributeNodeNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getAttributeNodeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnsafe ::
                         (MonadIO m, IsElement self, ToJSString namespaceURI,
                          ToJSString localName, HasCallStack) =>
                           self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnsafe self namespaceURI localName
  = liftIO
      ((nullableToMaybe <$>
          (js_getAttributeNodeNS (toElement self)
             (toOptionalJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnchecked ::
                            (MonadIO m, IsElement self, ToJSString namespaceURI,
                             ToJSString localName) =>
                              self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnchecked self namespaceURI localName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getAttributeNodeNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript safe "$1[\"setAttributeNode\"]($2)"
        js_setAttributeNode :: Element -> Attr -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode ::
                 (MonadIO m, IsElement self) => self -> Attr -> m (Maybe Attr)
setAttributeNode self attr
  = liftIO
      (nullableToMaybe <$> (js_setAttributeNode (toElement self) attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode_ ::
                  (MonadIO m, IsElement self) => self -> Attr -> m ()
setAttributeNode_ self attr
  = liftIO (void (js_setAttributeNode (toElement self) attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnsafe ::
                       (MonadIO m, IsElement self, HasCallStack) => self -> Attr -> m Attr
setAttributeNodeUnsafe self attr
  = liftIO
      ((nullableToMaybe <$> (js_setAttributeNode (toElement self) attr))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnchecked ::
                          (MonadIO m, IsElement self) => self -> Attr -> m Attr
setAttributeNodeUnchecked self attr
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_setAttributeNode (toElement self) attr))
 
foreign import javascript safe "$1[\"setAttributeNodeNS\"]($2)"
        js_setAttributeNodeNS :: Element -> Attr -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS ::
                   (MonadIO m, IsElement self) => self -> Attr -> m (Maybe Attr)
setAttributeNodeNS self attr
  = liftIO
      (nullableToMaybe <$> (js_setAttributeNodeNS (toElement self) attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS_ ::
                    (MonadIO m, IsElement self) => self -> Attr -> m ()
setAttributeNodeNS_ self attr
  = liftIO (void (js_setAttributeNodeNS (toElement self) attr))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnsafe ::
                         (MonadIO m, IsElement self, HasCallStack) => self -> Attr -> m Attr
setAttributeNodeNSUnsafe self attr
  = liftIO
      ((nullableToMaybe <$>
          (js_setAttributeNodeNS (toElement self) attr))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnchecked ::
                            (MonadIO m, IsElement self) => self -> Attr -> m Attr
setAttributeNodeNSUnchecked self attr
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_setAttributeNodeNS (toElement self) attr))
 
foreign import javascript safe "$1[\"removeAttributeNode\"]($2)"
        js_removeAttributeNode :: Element -> Attr -> IO Attr

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode ::
                    (MonadIO m, IsElement self) => self -> Attr -> m Attr
removeAttributeNode self attr
  = liftIO (js_removeAttributeNode (toElement self) attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode_ ::
                     (MonadIO m, IsElement self) => self -> Attr -> m ()
removeAttributeNode_ self attr
  = liftIO (void (js_removeAttributeNode (toElement self) attr))
 
foreign import javascript safe "$1[\"attachShadow\"]($2)"
        js_attachShadow :: Element -> ShadowRootInit -> IO ShadowRoot

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attachShadow Mozilla Element.attachShadow documentation> 
attachShadow ::
             (MonadIO m, IsElement self) =>
               self -> ShadowRootInit -> m ShadowRoot
attachShadow self init
  = liftIO (js_attachShadow (toElement self) init)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attachShadow Mozilla Element.attachShadow documentation> 
attachShadow_ ::
              (MonadIO m, IsElement self) => self -> ShadowRootInit -> m ()
attachShadow_ self init
  = liftIO (void (js_attachShadow (toElement self) init))
 
foreign import javascript safe "$1[\"closest\"]($2)" js_closest ::
        Element -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest ::
        (MonadIO m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m (Maybe Element)
closest self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_closest (toElement self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest_ ::
         (MonadIO m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
closest_ self selectors
  = liftIO
      (void (js_closest (toElement self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnsafe ::
              (MonadIO m, IsElement self, ToJSString selectors, HasCallStack) =>
                self -> selectors -> m Element
closestUnsafe self selectors
  = liftIO
      ((nullableToMaybe <$>
          (js_closest (toElement self) (toJSString selectors)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnchecked ::
                 (MonadIO m, IsElement self, ToJSString selectors) =>
                   self -> selectors -> m Element
closestUnchecked self selectors
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_closest (toElement self) (toJSString selectors)))
 
foreign import javascript safe "($1[\"matches\"]($2) ? 1 : 0)"
        js_matches :: Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches ::
        (MonadIO m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m Bool
matches self selectors
  = liftIO (js_matches (toElement self) (toJSString selectors))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches_ ::
         (MonadIO m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
matches_ self selectors
  = liftIO
      (void (js_matches (toElement self) (toJSString selectors)))
 
foreign import javascript safe
        "($1[\"webkitMatchesSelector\"]($2) ? 1 : 0)"
        js_webkitMatchesSelector :: Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector ::
                      (MonadIO m, IsElement self, ToJSString selectors) =>
                        self -> selectors -> m Bool
webkitMatchesSelector self selectors
  = liftIO
      (js_webkitMatchesSelector (toElement self) (toJSString selectors))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector_ ::
                       (MonadIO m, IsElement self, ToJSString selectors) =>
                         self -> selectors -> m ()
webkitMatchesSelector_ self selectors
  = liftIO
      (void
         (js_webkitMatchesSelector (toElement self) (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        js_getElementsByTagName :: Element -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                       self -> qualifiedName -> m HTMLCollection
getElementsByTagName self qualifiedName
  = liftIO
      (js_getElementsByTagName (toElement self)
         (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadIO m, IsElement self, ToJSString qualifiedName) =>
                        self -> qualifiedName -> m ()
getElementsByTagName_ self qualifiedName
  = liftIO
      (void
         (js_getElementsByTagName (toElement self)
            (toJSString qualifiedName)))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)" js_getElementsByTagNameNS
        :: Element -> Optional JSString -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadIO m, IsElement self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m HTMLCollection
getElementsByTagNameNS self namespaceURI localName
  = liftIO
      (js_getElementsByTagNameNS (toElement self)
         (toOptionalJSString namespaceURI)
         (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS_ ::
                        (MonadIO m, IsElement self, ToJSString namespaceURI,
                         ToJSString localName) =>
                          self -> Maybe namespaceURI -> localName -> m ()
getElementsByTagNameNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getElementsByTagNameNS (toElement self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)" js_getElementsByClassName ::
        Element -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadIO m, IsElement self, ToJSString name) =>
                         self -> name -> m HTMLCollection
getElementsByClassName self name
  = liftIO
      (js_getElementsByClassName (toElement self) (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadIO m, IsElement self, ToJSString name) =>
                          self -> name -> m ()
getElementsByClassName_ self name
  = liftIO
      (void
         (js_getElementsByClassName (toElement self) (toJSString name)))
 
foreign import javascript safe
        "$1[\"insertAdjacentElement\"]($2,\n$3)" js_insertAdjacentElement
        :: Element -> JSString -> Element -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElement ::
                      (MonadIO m, IsElement self, ToJSString where',
                       IsElement element) =>
                        self -> where' -> element -> m (Maybe Element)
insertAdjacentElement self where' element
  = liftIO
      (nullableToMaybe <$>
         (js_insertAdjacentElement (toElement self) (toJSString where')
            (toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElement_ ::
                       (MonadIO m, IsElement self, ToJSString where',
                        IsElement element) =>
                         self -> where' -> element -> m ()
insertAdjacentElement_ self where' element
  = liftIO
      (void
         (js_insertAdjacentElement (toElement self) (toJSString where')
            (toElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElementUnsafe ::
                            (MonadIO m, IsElement self, ToJSString where', IsElement element,
                             HasCallStack) =>
                              self -> where' -> element -> m Element
insertAdjacentElementUnsafe self where' element
  = liftIO
      ((nullableToMaybe <$>
          (js_insertAdjacentElement (toElement self) (toJSString where')
             (toElement element)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElementUnchecked ::
                               (MonadIO m, IsElement self, ToJSString where',
                                IsElement element) =>
                                 self -> where' -> element -> m Element
insertAdjacentElementUnchecked self where' element
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_insertAdjacentElement (toElement self) (toJSString where')
            (toElement element)))
 
foreign import javascript safe "$1[\"insertAdjacentText\"]($2, $3)"
        js_insertAdjacentText :: Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentText Mozilla Element.insertAdjacentText documentation> 
insertAdjacentText ::
                   (MonadIO m, IsElement self, ToJSString where', ToJSString data') =>
                     self -> where' -> data' -> m ()
insertAdjacentText self where' data'
  = liftIO
      (js_insertAdjacentText (toElement self) (toJSString where')
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"getClientRects\"]()"
        js_getClientRects :: Element -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects ::
               (MonadIO m, IsElement self) => self -> m [DOMRect]
getClientRects self
  = liftIO
      ((js_getClientRects (toElement self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects_ :: (MonadIO m, IsElement self) => self -> m ()
getClientRects_ self
  = liftIO (void (js_getClientRects (toElement self)))
 
foreign import javascript unsafe "$1[\"getBoundingClientRect\"]()"
        js_getBoundingClientRect :: Element -> IO DOMRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadIO m, IsElement self) => self -> m DOMRect
getBoundingClientRect self
  = liftIO (js_getBoundingClientRect (toElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect_ ::
                       (MonadIO m, IsElement self) => self -> m ()
getBoundingClientRect_ self
  = liftIO (void (js_getBoundingClientRect (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        js_scrollIntoView :: Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
scrollIntoView ::
               (MonadIO m, IsElement self) => self -> Bool -> m ()
scrollIntoView self alignWithTop
  = liftIO (js_scrollIntoView (toElement self) alignWithTop)
 
foreign import javascript unsafe "$1[\"scroll\"]($2)" js_scrollOpt
        :: Element -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scroll Mozilla Element.scroll documentation> 
scrollOpt ::
          (MonadIO m, IsElement self) =>
            self -> Maybe ScrollToOptions -> m ()
scrollOpt self options
  = liftIO (js_scrollOpt (toElement self) (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)" js_scroll
        :: Element -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scroll Mozilla Element.scroll documentation> 
scroll ::
       (MonadIO m, IsElement self) => self -> Double -> Double -> m ()
scroll self x y = liftIO (js_scroll (toElement self) x y)
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2)"
        js_scrollToOpt :: Element -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTo Mozilla Element.scrollTo documentation> 
scrollToOpt ::
            (MonadIO m, IsElement self) =>
              self -> Maybe ScrollToOptions -> m ()
scrollToOpt self options
  = liftIO
      (js_scrollToOpt (toElement self) (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        js_scrollTo :: Element -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTo Mozilla Element.scrollTo documentation> 
scrollTo ::
         (MonadIO m, IsElement self) => self -> Double -> Double -> m ()
scrollTo self x y = liftIO (js_scrollTo (toElement self) x y)
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2)"
        js_scrollByOpt :: Element -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollBy Mozilla Element.scrollBy documentation> 
scrollByOpt ::
            (MonadIO m, IsElement self) =>
              self -> Maybe ScrollToOptions -> m ()
scrollByOpt self option
  = liftIO (js_scrollByOpt (toElement self) (maybeToOptional option))
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        js_scrollBy :: Element -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollBy Mozilla Element.scrollBy documentation> 
scrollBy ::
         (MonadIO m, IsElement self) => self -> Double -> Double -> m ()
scrollBy self x y = liftIO (js_scrollBy (toElement self) x y)
 
foreign import javascript safe "$1[\"insertAdjacentHTML\"]($2, $3)"
        js_insertAdjacentHTML :: Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentHTML Mozilla Element.insertAdjacentHTML documentation> 
insertAdjacentHTML ::
                   (MonadIO m, IsElement self, ToJSString position,
                    ToJSString text) =>
                     self -> position -> text -> m ()
insertAdjacentHTML self position text
  = liftIO
      (js_insertAdjacentHTML (toElement self) (toJSString position)
         (toJSString text))
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullScreen\"]()" js_webkitRequestFullScreen ::
        Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
webkitRequestFullScreen ::
                        (MonadIO m, IsElement self) => self -> m ()
webkitRequestFullScreen self
  = liftIO (js_webkitRequestFullScreen (toElement self))
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullscreen\"]()" js_webkitRequestFullscreen ::
        Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
webkitRequestFullscreen ::
                        (MonadIO m, IsElement self) => self -> m ()
webkitRequestFullscreen self
  = liftIO (js_webkitRequestFullscreen (toElement self))
 
foreign import javascript unsafe "$1[\"requestPointerLock\"]()"
        js_requestPointerLock :: Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
requestPointerLock :: (MonadIO m, IsElement self) => self -> m ()
requestPointerLock self
  = liftIO (js_requestPointerLock (toElement self))
 
foreign import javascript unsafe
        "$1[\"webkitGetRegionFlowRanges\"]()" js_webkitGetRegionFlowRanges
        :: Element -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges ::
                          (MonadIO m, IsElement self) => self -> m (Maybe [Range])
webkitGetRegionFlowRanges self
  = liftIO
      ((js_webkitGetRegionFlowRanges (toElement self)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges_ ::
                           (MonadIO m, IsElement self) => self -> m ()
webkitGetRegionFlowRanges_ self
  = liftIO (void (js_webkitGetRegionFlowRanges (toElement self)))
 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)" js_scrollIntoViewIfNeeded ::
        Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
scrollIntoViewIfNeeded ::
                       (MonadIO m, IsElement self) => self -> Bool -> m ()
scrollIntoViewIfNeeded self centerIfNeeded
  = liftIO
      (js_scrollIntoViewIfNeeded (toElement self) centerIfNeeded)
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        js_getNamespaceURI :: Element -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURI ::
                (MonadIO m, IsElement self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftIO
      (fromMaybeJSString <$> (js_getNamespaceURI (toElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURIUnsafe ::
                      (MonadIO m, IsElement self, HasCallStack, FromJSString result) =>
                        self -> m result
getNamespaceURIUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getNamespaceURI (toElement self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURIUnchecked ::
                         (MonadIO m, IsElement self, FromJSString result) =>
                           self -> m result
getNamespaceURIUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getNamespaceURI (toElement self)))
 
foreign import javascript unsafe "$1[\"prefix\"]" js_getPrefix ::
        Element -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefix ::
          (MonadIO m, IsElement self, FromJSString result) =>
            self -> m (Maybe result)
getPrefix self
  = liftIO (fromMaybeJSString <$> (js_getPrefix (toElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefixUnsafe ::
                (MonadIO m, IsElement self, HasCallStack, FromJSString result) =>
                  self -> m result
getPrefixUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getPrefix (toElement self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefixUnchecked ::
                   (MonadIO m, IsElement self, FromJSString result) =>
                     self -> m result
getPrefixUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getPrefix (toElement self)))
 
foreign import javascript unsafe "$1[\"localName\"]"
        js_getLocalName :: Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.localName Mozilla Element.localName documentation> 
getLocalName ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getLocalName self
  = liftIO (fromJSString <$> (js_getLocalName (toElement self)))
 
foreign import javascript unsafe "$1[\"tagName\"]" js_getTagName ::
        Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagName ::
           (MonadIO m, IsElement self, FromJSString result) =>
             self -> m result
getTagName self
  = liftIO (fromJSString <$> (js_getTagName (toElement self)))
 
foreign import javascript unsafe "$1[\"id\"] = $2;" js_setId ::
        Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
setId ::
      (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setId self val
  = liftIO (js_setId (toElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
getId ::
      (MonadIO m, IsElement self, FromJSString result) =>
        self -> m result
getId self = liftIO (fromJSString <$> (js_getId (toElement self)))
 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        js_setClassName :: Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
setClassName ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setClassName self val
  = liftIO (js_setClassName (toElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"className\"]"
        js_getClassName :: Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
getClassName ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getClassName self
  = liftIO (fromJSString <$> (js_getClassName (toElement self)))
 
foreign import javascript unsafe "$1[\"classList\"]"
        js_getClassList :: Element -> IO DOMTokenList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
getClassList ::
             (MonadIO m, IsElement self) => self -> m DOMTokenList
getClassList self = liftIO (js_getClassList (toElement self))
 
foreign import javascript unsafe "$1[\"slot\"] = $2;" js_setSlot ::
        Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.slot Mozilla Element.slot documentation> 
setSlot ::
        (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setSlot self val
  = liftIO (js_setSlot (toElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"slot\"]" js_getSlot ::
        Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.slot Mozilla Element.slot documentation> 
getSlot ::
        (MonadIO m, IsElement self, FromJSString result) =>
          self -> m result
getSlot self
  = liftIO (fromJSString <$> (js_getSlot (toElement self)))
 
foreign import javascript unsafe "$1[\"attributes\"]"
        js_getAttributes :: Element -> IO NamedNodeMap

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
getAttributes ::
              (MonadIO m, IsElement self) => self -> m NamedNodeMap
getAttributes self = liftIO (js_getAttributes (toElement self))
 
foreign import javascript unsafe "$1[\"shadowRoot\"]"
        js_getShadowRoot :: Element -> IO (Nullable ShadowRoot)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.shadowRoot Mozilla Element.shadowRoot documentation> 
getShadowRoot ::
              (MonadIO m, IsElement self) => self -> m (Maybe ShadowRoot)
getShadowRoot self
  = liftIO (nullableToMaybe <$> (js_getShadowRoot (toElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.shadowRoot Mozilla Element.shadowRoot documentation> 
getShadowRootUnsafe ::
                    (MonadIO m, IsElement self, HasCallStack) => self -> m ShadowRoot
getShadowRootUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getShadowRoot (toElement self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.shadowRoot Mozilla Element.shadowRoot documentation> 
getShadowRootUnchecked ::
                       (MonadIO m, IsElement self) => self -> m ShadowRoot
getShadowRootUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getShadowRoot (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        js_setScrollTop :: Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
setScrollTop :: (MonadIO m, IsElement self) => self -> Int -> m ()
setScrollTop self val
  = liftIO (js_setScrollTop (toElement self) val)
 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        js_getScrollTop :: Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
getScrollTop :: (MonadIO m, IsElement self) => self -> m Int
getScrollTop self = liftIO (js_getScrollTop (toElement self))
 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        js_setScrollLeft :: Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
setScrollLeft :: (MonadIO m, IsElement self) => self -> Int -> m ()
setScrollLeft self val
  = liftIO (js_setScrollLeft (toElement self) val)
 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        js_getScrollLeft :: Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
getScrollLeft :: (MonadIO m, IsElement self) => self -> m Int
getScrollLeft self = liftIO (js_getScrollLeft (toElement self))
 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        js_getScrollWidth :: Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
getScrollWidth :: (MonadIO m, IsElement self) => self -> m Int
getScrollWidth self = liftIO (js_getScrollWidth (toElement self))
 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        js_getScrollHeight :: Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
getScrollHeight :: (MonadIO m, IsElement self) => self -> m Int
getScrollHeight self = liftIO (js_getScrollHeight (toElement self))
 
foreign import javascript unsafe "$1[\"clientTop\"]"
        js_getClientTop :: Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
getClientTop :: (MonadIO m, IsElement self) => self -> m Double
getClientTop self = liftIO (js_getClientTop (toElement self))
 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        js_getClientLeft :: Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
getClientLeft :: (MonadIO m, IsElement self) => self -> m Double
getClientLeft self = liftIO (js_getClientLeft (toElement self))
 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        js_getClientWidth :: Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
getClientWidth :: (MonadIO m, IsElement self) => self -> m Double
getClientWidth self = liftIO (js_getClientWidth (toElement self))
 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        js_getClientHeight :: Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
getClientHeight :: (MonadIO m, IsElement self) => self -> m Double
getClientHeight self = liftIO (js_getClientHeight (toElement self))
 
foreign import javascript safe "$1[\"innerHTML\"] = $2;"
        js_setInnerHTML :: Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
setInnerHTML ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setInnerHTML self val
  = liftIO (js_setInnerHTML (toElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        js_getInnerHTML :: Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTML ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getInnerHTML self
  = liftIO (fromJSString <$> (js_getInnerHTML (toElement self)))
 
foreign import javascript safe "$1[\"outerHTML\"] = $2;"
        js_setOuterHTML :: Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
setOuterHTML ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
setOuterHTML self val
  = liftIO (js_setOuterHTML (toElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"outerHTML\"]"
        js_getOuterHTML :: Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTML ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
getOuterHTML self
  = liftIO (fromJSString <$> (js_getOuterHTML (toElement self)))
 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        js_getWebkitRegionOverset :: Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
getWebkitRegionOverset ::
                       (MonadIO m, IsElement self, FromJSString result) =>
                         self -> m result
getWebkitRegionOverset self
  = liftIO
      (fromJSString <$> (js_getWebkitRegionOverset (toElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselectstart Mozilla Element.onselectstart documentation> 
selectStart ::
            (IsElement self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongesturechange Mozilla Element.ongesturechange documentation> 
gestureChange ::
              (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureChange = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongestureend Mozilla Element.ongestureend documentation> 
gestureEnd ::
           (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongesturestart Mozilla Element.ongesturestart documentation> 
gestureStart ::
             (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureStart = unsafeEventName (toJSString "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationend Mozilla Element.onwebkitanimationend documentation> 
webKitAnimationEnd ::
                   (IsElement self, IsEventTarget self) =>
                     EventName self AnimationEvent
webKitAnimationEnd
  = unsafeEventName (toJSString "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationiteration Mozilla Element.onwebkitanimationiteration documentation> 
webKitAnimationIteration ::
                         (IsElement self, IsEventTarget self) =>
                           EventName self AnimationEvent
webKitAnimationIteration
  = unsafeEventName (toJSString "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationstart Mozilla Element.onwebkitanimationstart documentation> 
webKitAnimationStart ::
                     (IsElement self, IsEventTarget self) =>
                       EventName self AnimationEvent
webKitAnimationStart
  = unsafeEventName (toJSString "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkittransitionend Mozilla Element.onwebkittransitionend documentation> 
webKitTransitionEnd ::
                    (IsElement self, IsEventTarget self) =>
                      EventName self TransitionEvent
webKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocusin Mozilla Element.onfocusin documentation> 
focusin ::
        (IsElement self, IsEventTarget self) => EventName self onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocusout Mozilla Element.onfocusout documentation> 
focusout ::
         (IsElement self, IsEventTarget self) => EventName self onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforeload Mozilla Element.onbeforeload documentation> 
beforeload ::
           (IsElement self, IsEventTarget self) => EventName self onbeforeload
beforeload = unsafeEventName (toJSString "beforeload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitneedkey Mozilla Element.onwebkitneedkey documentation> 
webKitNeedKey ::
              (IsElement self, IsEventTarget self) => EventName self Event
webKitNeedKey = unsafeEventName (toJSString "webkitneedkey")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitpresentationmodechanged Mozilla Element.onwebkitpresentationmodechanged documentation> 
webKitPresentationModeChanged ::
                              (IsElement self, IsEventTarget self) => EventName self Event
webKitPresentationModeChanged
  = unsafeEventName (toJSString "webkitpresentationmodechanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitcurrentplaybacktargetiswirelesschanged Mozilla Element.onwebkitcurrentplaybacktargetiswirelesschanged documentation> 
webKitCurrentPlaybackTargetIsWirelessChanged ::
                                             (IsElement self, IsEventTarget self) =>
                                               EventName self Event
webKitCurrentPlaybackTargetIsWirelessChanged
  = unsafeEventName
      (toJSString "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitplaybacktargetavailabilitychanged Mozilla Element.onwebkitplaybacktargetavailabilitychanged documentation> 
webKitPlaybackTargetAvailabilityChanged ::
                                        (IsElement self, IsEventTarget self) => EventName self Event
webKitPlaybackTargetAvailabilityChanged
  = unsafeEventName
      (toJSString "webkitplaybacktargetavailabilitychanged")