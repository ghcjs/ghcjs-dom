{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimationElement
       (js_getStartTime, getStartTime, js_getCurrentTime, getCurrentTime,
        js_getSimpleDuration, getSimpleDuration, js_beginElement,
        beginElement, js_beginElementAt, beginElementAt, js_endElement,
        endElement, js_endElementAt, endElementAt, js_getTargetElement,
        getTargetElement, SVGAnimationElement, castToSVGAnimationElement,
        gTypeSVGAnimationElement, IsSVGAnimationElement,
        toSVGAnimationElement)
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
 
foreign import javascript unsafe "$1[\"getStartTime\"]()"
        js_getStartTime :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getStartTime self
  = liftIO (js_getStartTime (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        js_getCurrentTime :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getCurrentTime self
  = liftIO (js_getCurrentTime (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getSimpleDuration\"]()"
        js_getSimpleDuration :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration ::
                  (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getSimpleDuration self
  = liftIO (js_getSimpleDuration (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElement\"]()"
        js_beginElement :: SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElement Mozilla SVGAnimationElement.beginElement documentation> 
beginElement ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m ()
beginElement self
  = liftIO (js_beginElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElementAt\"]($2)"
        js_beginElementAt :: SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElementAt Mozilla SVGAnimationElement.beginElementAt documentation> 
beginElementAt ::
               (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
beginElementAt self offset
  = liftIO (js_beginElementAt (toSVGAnimationElement self) offset)
 
foreign import javascript unsafe "$1[\"endElement\"]()"
        js_endElement :: SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElement Mozilla SVGAnimationElement.endElement documentation> 
endElement ::
           (MonadIO m, IsSVGAnimationElement self) => self -> m ()
endElement self
  = liftIO (js_endElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"endElementAt\"]($2)"
        js_endElementAt :: SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElementAt Mozilla SVGAnimationElement.endElementAt documentation> 
endElementAt ::
             (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
endElementAt self offset
  = liftIO (js_endElementAt (toSVGAnimationElement self) offset)
 
foreign import javascript unsafe "$1[\"targetElement\"]"
        js_getTargetElement ::
        SVGAnimationElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElement ::
                 (MonadIO m, IsSVGAnimationElement self) =>
                   self -> m (Maybe SVGElement)
getTargetElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getTargetElement (toSVGAnimationElement self)))