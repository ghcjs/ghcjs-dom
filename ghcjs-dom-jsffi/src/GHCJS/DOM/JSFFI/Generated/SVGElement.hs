{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGElement
       (js_getPresentationAttribute, getPresentationAttribute,
        getPresentationAttribute_, js_focus, focus, js_blur, blur,
        js_getOwnerSVGElement, getOwnerSVGElement, js_getViewportElement,
        getViewportElement, js_setXmllang, setXmllang, js_getXmllang,
        getXmllang, js_setXmlspace, setXmlspace, js_getXmlspace,
        getXmlspace, js_getClassName, getClassName, js_setTabIndex,
        setTabIndex, js_getTabIndex, getTabIndex, js_getDataset,
        getDataset, SVGElement(..), gTypeSVGElement, IsSVGElement,
        toSVGElement)
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
        "$1[\"getPresentationAttribute\"]($2)" js_getPresentationAttribute
        :: SVGElement -> Optional JSString -> IO CSSValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute ::
                         (MonadIO m, IsSVGElement self, ToJSString name) =>
                           self -> Maybe name -> m CSSValue
getPresentationAttribute self name
  = liftIO
      (js_getPresentationAttribute (toSVGElement self)
         (toOptionalJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.getPresentationAttribute Mozilla SVGElement.getPresentationAttribute documentation> 
getPresentationAttribute_ ::
                          (MonadIO m, IsSVGElement self, ToJSString name) =>
                            self -> Maybe name -> m ()
getPresentationAttribute_ self name
  = liftIO
      (void
         (js_getPresentationAttribute (toSVGElement self)
            (toOptionalJSString name)))
 
foreign import javascript unsafe "$1[\"focus\"]()" js_focus ::
        SVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.focus Mozilla SVGElement.focus documentation> 
focus :: (MonadIO m, IsSVGElement self) => self -> m ()
focus self = liftIO (js_focus (toSVGElement self))
 
foreign import javascript unsafe "$1[\"blur\"]()" js_blur ::
        SVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.blur Mozilla SVGElement.blur documentation> 
blur :: (MonadIO m, IsSVGElement self) => self -> m ()
blur self = liftIO (js_blur (toSVGElement self))
 
foreign import javascript unsafe "$1[\"ownerSVGElement\"]"
        js_getOwnerSVGElement :: SVGElement -> IO SVGSVGElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
getOwnerSVGElement ::
                   (MonadIO m, IsSVGElement self) => self -> m SVGSVGElement
getOwnerSVGElement self
  = liftIO (js_getOwnerSVGElement (toSVGElement self))
 
foreign import javascript unsafe "$1[\"viewportElement\"]"
        js_getViewportElement :: SVGElement -> IO SVGElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
getViewportElement ::
                   (MonadIO m, IsSVGElement self) => self -> m SVGElement
getViewportElement self
  = liftIO (js_getViewportElement (toSVGElement self))
 
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
        js_getClassName :: SVGElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
getClassName ::
             (MonadIO m, IsSVGElement self) => self -> m SVGAnimatedString
getClassName self = liftIO (js_getClassName (toSVGElement self))
 
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
 
foreign import javascript unsafe "$1[\"dataset\"]" js_getDataset ::
        SVGElement -> IO DOMStringMap

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.dataset Mozilla SVGElement.dataset documentation> 
getDataset ::
           (MonadIO m, IsSVGElement self) => self -> m DOMStringMap
getDataset self = liftIO (js_getDataset (toSVGElement self))