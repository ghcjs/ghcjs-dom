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
 
foreign import javascript unsafe "$1[\"getNumberOfChars\"]()"
        js_getNumberOfChars :: SVGTextContentElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars ::
                 (MonadIO m, IsSVGTextContentElement self) => self -> m Int
getNumberOfChars self
  = liftIO (js_getNumberOfChars (toSVGTextContentElement self))
 
foreign import javascript unsafe "$1[\"getComputedTextLength\"]()"
        js_getComputedTextLength :: SVGTextContentElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength ::
                      (MonadIO m, IsSVGTextContentElement self) => self -> m Float
getComputedTextLength self
  = liftIO (js_getComputedTextLength (toSVGTextContentElement self))
 
foreign import javascript unsafe
        "$1[\"getSubStringLength\"]($2, $3)" js_getSubStringLength ::
        SVGTextContentElement -> Word -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength ::
                   (MonadIO m, IsSVGTextContentElement self) =>
                     self -> Word -> Word -> m Float
getSubStringLength self offset length
  = liftIO
      (js_getSubStringLength (toSVGTextContentElement self) offset
         length)
 
foreign import javascript unsafe
        "$1[\"getStartPositionOfChar\"]($2)" js_getStartPositionOfChar ::
        SVGTextContentElement -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar ::
                       (MonadIO m, IsSVGTextContentElement self) =>
                         self -> Word -> m (Maybe SVGPoint)
getStartPositionOfChar self offset
  = liftIO
      (nullableToMaybe <$>
         (js_getStartPositionOfChar (toSVGTextContentElement self) offset))
 
foreign import javascript unsafe "$1[\"getEndPositionOfChar\"]($2)"
        js_getEndPositionOfChar ::
        SVGTextContentElement -> Word -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> Word -> m (Maybe SVGPoint)
getEndPositionOfChar self offset
  = liftIO
      (nullableToMaybe <$>
         (js_getEndPositionOfChar (toSVGTextContentElement self) offset))
 
foreign import javascript unsafe "$1[\"getExtentOfChar\"]($2)"
        js_getExtentOfChar ::
        SVGTextContentElement -> Word -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Word -> m (Maybe SVGRect)
getExtentOfChar self offset
  = liftIO
      (nullableToMaybe <$>
         (js_getExtentOfChar (toSVGTextContentElement self) offset))
 
foreign import javascript unsafe "$1[\"getRotationOfChar\"]($2)"
        js_getRotationOfChar :: SVGTextContentElement -> Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar ::
                  (MonadIO m, IsSVGTextContentElement self) =>
                    self -> Word -> m Float
getRotationOfChar self offset
  = liftIO
      (js_getRotationOfChar (toSVGTextContentElement self) offset)
 
foreign import javascript unsafe "$1[\"getCharNumAtPosition\"]($2)"
        js_getCharNumAtPosition ::
        SVGTextContentElement -> Nullable SVGPoint -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> Maybe SVGPoint -> m Int
getCharNumAtPosition self point
  = liftIO
      (js_getCharNumAtPosition (toSVGTextContentElement self)
         (maybeToNullable point))
 
foreign import javascript unsafe "$1[\"selectSubString\"]($2, $3)"
        js_selectSubString ::
        SVGTextContentElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.selectSubString Mozilla SVGTextContentElement.selectSubString documentation> 
selectSubString ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Word -> Word -> m ()
selectSubString self offset length
  = liftIO
      (js_selectSubString (toSVGTextContentElement self) offset length)
pattern LENGTHADJUST_UNKNOWN = 0
pattern LENGTHADJUST_SPACING = 1
pattern LENGTHADJUST_SPACINGANDGLYPHS = 2
 
foreign import javascript unsafe "$1[\"textLength\"]"
        js_getTextLength ::
        SVGTextContentElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLength ::
              (MonadIO m, IsSVGTextContentElement self) =>
                self -> m (Maybe SVGAnimatedLength)
getTextLength self
  = liftIO
      (nullableToMaybe <$>
         (js_getTextLength (toSVGTextContentElement self)))
 
foreign import javascript unsafe "$1[\"lengthAdjust\"]"
        js_getLengthAdjust ::
        SVGTextContentElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjust ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getLengthAdjust self
  = liftIO
      (nullableToMaybe <$>
         (js_getLengthAdjust (toSVGTextContentElement self)))