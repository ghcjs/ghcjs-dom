{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimationElement
       (js_getStartTime, getStartTime, js_getCurrentTime, getCurrentTime,
        js_getSimpleDuration, getSimpleDuration, js_beginElement,
        beginElement, js_beginElementAt, beginElementAt, js_endElement,
        endElement, js_endElementAt, endElementAt, js_getTargetElement,
        getTargetElement, SVGAnimationElement, castToSVGAnimationElement,
        gTypeSVGAnimationElement, IsSVGAnimationElement,
        toSVGAnimationElement)
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

 
foreign import javascript unsafe "$1[\"getStartTime\"]()"
        js_getStartTime :: JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getStartTime self
  = liftIO
      (js_getStartTime
         (unSVGAnimationElement (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        js_getCurrentTime :: JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getCurrentTime self
  = liftIO
      (js_getCurrentTime
         (unSVGAnimationElement (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"getSimpleDuration\"]()"
        js_getSimpleDuration :: JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration ::
                  (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getSimpleDuration self
  = liftIO
      (js_getSimpleDuration
         (unSVGAnimationElement (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"beginElement\"]()"
        js_beginElement :: JSRef SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElement Mozilla SVGAnimationElement.beginElement documentation> 
beginElement ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m ()
beginElement self
  = liftIO
      (js_beginElement
         (unSVGAnimationElement (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"beginElementAt\"]($2)"
        js_beginElementAt :: JSRef SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElementAt Mozilla SVGAnimationElement.beginElementAt documentation> 
beginElementAt ::
               (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
beginElementAt self offset
  = liftIO
      (js_beginElementAt
         (unSVGAnimationElement (toSVGAnimationElement self))
         offset)
 
foreign import javascript unsafe "$1[\"endElement\"]()"
        js_endElement :: JSRef SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElement Mozilla SVGAnimationElement.endElement documentation> 
endElement ::
           (MonadIO m, IsSVGAnimationElement self) => self -> m ()
endElement self
  = liftIO
      (js_endElement
         (unSVGAnimationElement (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"endElementAt\"]($2)"
        js_endElementAt :: JSRef SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElementAt Mozilla SVGAnimationElement.endElementAt documentation> 
endElementAt ::
             (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
endElementAt self offset
  = liftIO
      (js_endElementAt
         (unSVGAnimationElement (toSVGAnimationElement self))
         offset)
 
foreign import javascript unsafe "$1[\"targetElement\"]"
        js_getTargetElement ::
        JSRef SVGAnimationElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElement ::
                 (MonadIO m, IsSVGAnimationElement self) =>
                   self -> m (Maybe SVGElement)
getTargetElement self
  = liftIO
      ((js_getTargetElement
          (unSVGAnimationElement (toSVGAnimationElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGAnimationElement (
  ) where
#endif
