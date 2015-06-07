{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextContentElement
       (js_getNumberOfChars, getNumberOfChars, js_getComputedTextLength,
        getComputedTextLength, js_getSubStringLength, getSubStringLength,
        js_getStartPositionOfChar, getStartPositionOfChar,
        js_getEndPositionOfChar, getEndPositionOfChar, js_getExtentOfChar,
        getExtentOfChar, js_getRotationOfChar, getRotationOfChar,
        js_getCharNumAtPosition, getCharNumAtPosition, js_selectSubString,
        selectSubString, pattern LENGTHADJUST_UNKNOWN,
        pattern LENGTHADJUST_SPACING,
        pattern LENGTHADJUST_SPACINGANDGLYPHS, js_getTextLength,
        getTextLength, js_getLengthAdjust, getLengthAdjust,
        SVGTextContentElement, castToSVGTextContentElement,
        gTypeSVGTextContentElement, IsSVGTextContentElement,
        toSVGTextContentElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"getNumberOfChars\"]()"
        js_getNumberOfChars :: JSRef SVGTextContentElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars ::
                 (MonadIO m, IsSVGTextContentElement self) => self -> m Int
getNumberOfChars self
  = liftIO
      (js_getNumberOfChars
         (unSVGTextContentElement (toSVGTextContentElement self)))
 
foreign import javascript unsafe "$1[\"getComputedTextLength\"]()"
        js_getComputedTextLength :: JSRef SVGTextContentElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength ::
                      (MonadIO m, IsSVGTextContentElement self) => self -> m Float
getComputedTextLength self
  = liftIO
      (js_getComputedTextLength
         (unSVGTextContentElement (toSVGTextContentElement self)))
 
foreign import javascript unsafe
        "$1[\"getSubStringLength\"]($2, $3)" js_getSubStringLength ::
        JSRef SVGTextContentElement -> Word -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength ::
                   (MonadIO m, IsSVGTextContentElement self) =>
                     self -> Word -> Word -> m Float
getSubStringLength self offset length
  = liftIO
      (js_getSubStringLength
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset
         length)
 
foreign import javascript unsafe
        "$1[\"getStartPositionOfChar\"]($2)" js_getStartPositionOfChar ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar ::
                       (MonadIO m, IsSVGTextContentElement self) =>
                         self -> Word -> m (Maybe SVGPoint)
getStartPositionOfChar self offset
  = liftIO
      ((js_getStartPositionOfChar
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getEndPositionOfChar\"]($2)"
        js_getEndPositionOfChar ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> Word -> m (Maybe SVGPoint)
getEndPositionOfChar self offset
  = liftIO
      ((js_getEndPositionOfChar
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getExtentOfChar\"]($2)"
        js_getExtentOfChar ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Word -> m (Maybe SVGRect)
getExtentOfChar self offset
  = liftIO
      ((js_getExtentOfChar
          (unSVGTextContentElement (toSVGTextContentElement self))
          offset)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRotationOfChar\"]($2)"
        js_getRotationOfChar ::
        JSRef SVGTextContentElement -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar ::
                  (MonadIO m, IsSVGTextContentElement self) =>
                    self -> Word -> m Float
getRotationOfChar self offset
  = liftIO
      (js_getRotationOfChar
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset)
 
foreign import javascript unsafe "$1[\"getCharNumAtPosition\"]($2)"
        js_getCharNumAtPosition ::
        JSRef SVGTextContentElement -> JSRef SVGPoint -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> Maybe SVGPoint -> m Int
getCharNumAtPosition self point
  = liftIO
      (js_getCharNumAtPosition
         (unSVGTextContentElement (toSVGTextContentElement self))
         (maybe jsNull pToJSRef point))
 
foreign import javascript unsafe "$1[\"selectSubString\"]($2, $3)"
        js_selectSubString ::
        JSRef SVGTextContentElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.selectSubString Mozilla SVGTextContentElement.selectSubString documentation> 
selectSubString ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Word -> Word -> m ()
selectSubString self offset length
  = liftIO
      (js_selectSubString
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset
         length)
pattern LENGTHADJUST_UNKNOWN = 0
pattern LENGTHADJUST_SPACING = 1
pattern LENGTHADJUST_SPACINGANDGLYPHS = 2
 
foreign import javascript unsafe "$1[\"textLength\"]"
        js_getTextLength ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLength ::
              (MonadIO m, IsSVGTextContentElement self) =>
                self -> m (Maybe SVGAnimatedLength)
getTextLength self
  = liftIO
      ((js_getTextLength
          (unSVGTextContentElement (toSVGTextContentElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lengthAdjust\"]"
        js_getLengthAdjust ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjust ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getLengthAdjust self
  = liftIO
      ((js_getLengthAdjust
          (unSVGTextContentElement (toSVGTextContentElement self)))
         >>= fromJSRef)