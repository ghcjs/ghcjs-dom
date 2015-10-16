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
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"getPresentationAttribute\"]($2)" js_getPresentationAttribute
        :: SVGElement -> JSString -> IO (Nullable CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute ::
                         (MonadIO m, IsSVGElement self, ToJSString name) =>
                           self -> name -> m (Maybe CSSValue)
getPresentationAttribute self name
  = liftIO
      (nullableToMaybe <$>
         (js_getPresentationAttribute (toSVGElement self)
            (toJSString name)))
 
foreign import javascript unsafe "$1[\"xmlbase\"] = $2;"
        js_setXmlbase :: SVGElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
setXmlbase ::
           (MonadIO m, IsSVGElement self, ToJSString val) =>
             self -> Maybe val -> m ()
setXmlbase self val
  = liftIO (js_setXmlbase (toSVGElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"xmlbase\"]" js_getXmlbase ::
        SVGElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
getXmlbase ::
           (MonadIO m, IsSVGElement self, FromJSString result) =>
             self -> m (Maybe result)
getXmlbase self
  = liftIO
      (fromMaybeJSString <$> (js_getXmlbase (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"ownerSVGElement\"]"
        js_getOwnerSVGElement :: SVGElement -> IO (Nullable SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElement ::
                   (MonadIO m, IsSVGElement self) => self -> m (Maybe SVGSVGElement)
getOwnerSVGElement self
  = liftIO
      (nullableToMaybe <$> (js_getOwnerSVGElement (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"viewportElement\"]"
        js_getViewportElement :: SVGElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElement ::
                   (MonadIO m, IsSVGElement self) => self -> m (Maybe SVGElement)
getViewportElement self
  = liftIO
      (nullableToMaybe <$> (js_getViewportElement (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"xmllang\"] = $2;"
        js_setXmllang :: SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
setXmllang ::
           (MonadIO m, IsSVGElement self, ToJSString val) =>
             self -> val -> m ()
setXmllang self val
  = liftIO (js_setXmllang (toSVGElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"xmllang\"]" js_getXmllang ::
        SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
getXmllang ::
           (MonadIO m, IsSVGElement self, FromJSString result) =>
             self -> m result
getXmllang self
  = liftIO (fromJSString <$> (js_getXmllang (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"xmlspace\"] = $2;"
        js_setXmlspace :: SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
setXmlspace ::
            (MonadIO m, IsSVGElement self, ToJSString val) =>
              self -> val -> m ()
setXmlspace self val
  = liftIO (js_setXmlspace (toSVGElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"xmlspace\"]" js_getXmlspace
        :: SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
getXmlspace ::
            (MonadIO m, IsSVGElement self, FromJSString result) =>
              self -> m result
getXmlspace self
  = liftIO (fromJSString <$> (js_getXmlspace (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"className\"]"
        js_getClassName :: SVGElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
getClassName ::
             (MonadIO m, IsSVGElement self) =>
               self -> m (Maybe SVGAnimatedString)
getClassName self
  = liftIO
      (nullableToMaybe <$> (js_getClassName (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        SVGElement -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.style Mozilla SVGElement.style documentation> 
getStyle ::
         (MonadIO m, IsSVGElement self) =>
           self -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO (nullableToMaybe <$> (js_getStyle (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        js_setTabIndex :: SVGElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
setTabIndex ::
            (MonadIO m, IsSVGElement self) => self -> Int -> m ()
setTabIndex self val
  = liftIO (js_setTabIndex (toSVGElement self) val)
 
foreign import javascript unsafe "$1[\"tabIndex\"]" js_getTabIndex
        :: SVGElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
getTabIndex :: (MonadIO m, IsSVGElement self) => self -> m Int
getTabIndex self = liftIO (js_getTabIndex (toSVGElement self))