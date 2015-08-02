{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGElement
       (js_getPresentationAttribute, getPresentationAttribute,
        js_setXmlbase, setXmlbase, js_getXmlbase, getXmlbase,
        js_getOwnerSVGElement, getOwnerSVGElement, js_getViewportElement,
        getViewportElement, js_setXmllang, setXmllang, js_getXmllang,
        getXmllang, js_setXmlspace, setXmlspace, js_getXmlspace,
        getXmlspace, js_getClassName, getClassName, js_getStyle, getStyle,
        js_setTabIndex, setTabIndex, js_getTabIndex, getTabIndex,
        SVGElement, castToSVGElement, gTypeSVGElement, IsSVGElement,
        toSVGElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"getPresentationAttribute\"]($2)" js_getPresentationAttribute
        :: JSRef SVGElement -> JSString -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute ::
                         (MonadIO m, IsSVGElement self, ToJSString name) =>
                           self -> name -> m (Maybe CSSValue)
getPresentationAttribute self name
  = liftIO
      ((js_getPresentationAttribute (unSVGElement (toSVGElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"xmlbase\"] = $2;"
        js_setXmlbase ::
        JSRef SVGElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
setXmlbase ::
           (MonadIO m, IsSVGElement self, ToJSString val) =>
             self -> Maybe val -> m ()
setXmlbase self val
  = liftIO
      (js_setXmlbase (unSVGElement (toSVGElement self))
         (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"xmlbase\"]" js_getXmlbase ::
        JSRef SVGElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
getXmlbase ::
           (MonadIO m, IsSVGElement self, FromJSString result) =>
             self -> m (Maybe result)
getXmlbase self
  = liftIO
      (fromMaybeJSString <$>
         (js_getXmlbase (unSVGElement (toSVGElement self))))
 
foreign import javascript unsafe "$1[\"ownerSVGElement\"]"
        js_getOwnerSVGElement ::
        JSRef SVGElement -> IO (JSRef SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElement ::
                   (MonadIO m, IsSVGElement self) => self -> m (Maybe SVGSVGElement)
getOwnerSVGElement self
  = liftIO
      ((js_getOwnerSVGElement (unSVGElement (toSVGElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"viewportElement\"]"
        js_getViewportElement :: JSRef SVGElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElement ::
                   (MonadIO m, IsSVGElement self) => self -> m (Maybe SVGElement)
getViewportElement self
  = liftIO
      ((js_getViewportElement (unSVGElement (toSVGElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"xmllang\"] = $2;"
        js_setXmllang :: JSRef SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
setXmllang ::
           (MonadIO m, IsSVGElement self, ToJSString val) =>
             self -> val -> m ()
setXmllang self val
  = liftIO
      (js_setXmllang (unSVGElement (toSVGElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"xmllang\"]" js_getXmllang ::
        JSRef SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
getXmllang ::
           (MonadIO m, IsSVGElement self, FromJSString result) =>
             self -> m result
getXmllang self
  = liftIO
      (fromJSString <$>
         (js_getXmllang (unSVGElement (toSVGElement self))))
 
foreign import javascript unsafe "$1[\"xmlspace\"] = $2;"
        js_setXmlspace :: JSRef SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
setXmlspace ::
            (MonadIO m, IsSVGElement self, ToJSString val) =>
              self -> val -> m ()
setXmlspace self val
  = liftIO
      (js_setXmlspace (unSVGElement (toSVGElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"xmlspace\"]" js_getXmlspace
        :: JSRef SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
getXmlspace ::
            (MonadIO m, IsSVGElement self, FromJSString result) =>
              self -> m result
getXmlspace self
  = liftIO
      (fromJSString <$>
         (js_getXmlspace (unSVGElement (toSVGElement self))))
 
foreign import javascript unsafe "$1[\"className\"]"
        js_getClassName :: JSRef SVGElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
getClassName ::
             (MonadIO m, IsSVGElement self) =>
               self -> m (Maybe SVGAnimatedString)
getClassName self
  = liftIO
      ((js_getClassName (unSVGElement (toSVGElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        JSRef SVGElement -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.style Mozilla SVGElement.style documentation> 
getStyle ::
         (MonadIO m, IsSVGElement self) =>
           self -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO
      ((js_getStyle (unSVGElement (toSVGElement self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        js_setTabIndex :: JSRef SVGElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
setTabIndex ::
            (MonadIO m, IsSVGElement self) => self -> Int -> m ()
setTabIndex self val
  = liftIO (js_setTabIndex (unSVGElement (toSVGElement self)) val)
 
foreign import javascript unsafe "$1[\"tabIndex\"]" js_getTabIndex
        :: JSRef SVGElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
getTabIndex :: (MonadIO m, IsSVGElement self) => self -> m Int
getTabIndex self
  = liftIO (js_getTabIndex (unSVGElement (toSVGElement self)))