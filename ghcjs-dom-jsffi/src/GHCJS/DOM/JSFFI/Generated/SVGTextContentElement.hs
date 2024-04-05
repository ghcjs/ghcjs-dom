{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextContentElement
       (js_getNumberOfChars, getNumberOfChars, getNumberOfChars_,
        js_getComputedTextLength, getComputedTextLength,
        getComputedTextLength_, js_getSubStringLength, getSubStringLength,
        getSubStringLength_, js_getStartPositionOfChar,
        getStartPositionOfChar, getStartPositionOfChar_,
        js_getEndPositionOfChar, getEndPositionOfChar,
        getEndPositionOfChar_, js_getExtentOfChar, getExtentOfChar,
        getExtentOfChar_, js_getRotationOfChar, getRotationOfChar,
        getRotationOfChar_, js_getCharNumAtPosition, getCharNumAtPosition,
        getCharNumAtPosition_, js_selectSubString, selectSubString,
        pattern LENGTHADJUST_UNKNOWN, pattern LENGTHADJUST_SPACING,
        pattern LENGTHADJUST_SPACINGANDGLYPHS, js_getTextLength,
        getTextLength, js_getLengthAdjust, getLengthAdjust,
        SVGTextContentElement(..), gTypeSVGTextContentElement,
        IsSVGTextContentElement, toSVGTextContentElement)
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
 
foreign import javascript unsafe "$1[\"getNumberOfChars\"]()"
        js_getNumberOfChars :: SVGTextContentElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars ::
                 (MonadIO m, IsSVGTextContentElement self) => self -> m Int
getNumberOfChars self
  = liftIO (js_getNumberOfChars (toSVGTextContentElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars_ ::
                  (MonadIO m, IsSVGTextContentElement self) => self -> m ()
getNumberOfChars_ self
  = liftIO
      (void (js_getNumberOfChars (toSVGTextContentElement self)))
 
foreign import javascript unsafe "$1[\"getComputedTextLength\"]()"
        js_getComputedTextLength :: SVGTextContentElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength ::
                      (MonadIO m, IsSVGTextContentElement self) => self -> m Float
getComputedTextLength self
  = liftIO (js_getComputedTextLength (toSVGTextContentElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength_ ::
                       (MonadIO m, IsSVGTextContentElement self) => self -> m ()
getComputedTextLength_ self
  = liftIO
      (void (js_getComputedTextLength (toSVGTextContentElement self)))
 
foreign import javascript safe "$1[\"getSubStringLength\"]($2, $3)"
        js_getSubStringLength ::
        SVGTextContentElement -> Optional Word -> Optional Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength ::
                   (MonadIO m, IsSVGTextContentElement self) =>
                     self -> Maybe Word -> Maybe Word -> m Float
getSubStringLength self offset length
  = liftIO
      (js_getSubStringLength (toSVGTextContentElement self)
         (maybeToOptional offset)
         (maybeToOptional length))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength_ ::
                    (MonadIO m, IsSVGTextContentElement self) =>
                      self -> Maybe Word -> Maybe Word -> m ()
getSubStringLength_ self offset length
  = liftIO
      (void
         (js_getSubStringLength (toSVGTextContentElement self)
            (maybeToOptional offset)
            (maybeToOptional length)))
 
foreign import javascript safe "$1[\"getStartPositionOfChar\"]($2)"
        js_getStartPositionOfChar ::
        SVGTextContentElement -> Optional Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar ::
                       (MonadIO m, IsSVGTextContentElement self) =>
                         self -> Maybe Word -> m SVGPoint
getStartPositionOfChar self offset
  = liftIO
      (js_getStartPositionOfChar (toSVGTextContentElement self)
         (maybeToOptional offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar_ ::
                        (MonadIO m, IsSVGTextContentElement self) =>
                          self -> Maybe Word -> m ()
getStartPositionOfChar_ self offset
  = liftIO
      (void
         (js_getStartPositionOfChar (toSVGTextContentElement self)
            (maybeToOptional offset)))
 
foreign import javascript safe "$1[\"getEndPositionOfChar\"]($2)"
        js_getEndPositionOfChar ::
        SVGTextContentElement -> Optional Word -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> Maybe Word -> m SVGPoint
getEndPositionOfChar self offset
  = liftIO
      (js_getEndPositionOfChar (toSVGTextContentElement self)
         (maybeToOptional offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar_ ::
                      (MonadIO m, IsSVGTextContentElement self) =>
                        self -> Maybe Word -> m ()
getEndPositionOfChar_ self offset
  = liftIO
      (void
         (js_getEndPositionOfChar (toSVGTextContentElement self)
            (maybeToOptional offset)))
 
foreign import javascript safe "$1[\"getExtentOfChar\"]($2)"
        js_getExtentOfChar ::
        SVGTextContentElement -> Optional Word -> IO SVGRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Maybe Word -> m SVGRect
getExtentOfChar self offset
  = liftIO
      (js_getExtentOfChar (toSVGTextContentElement self)
         (maybeToOptional offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar_ ::
                 (MonadIO m, IsSVGTextContentElement self) =>
                   self -> Maybe Word -> m ()
getExtentOfChar_ self offset
  = liftIO
      (void
         (js_getExtentOfChar (toSVGTextContentElement self)
            (maybeToOptional offset)))
 
foreign import javascript safe "$1[\"getRotationOfChar\"]($2)"
        js_getRotationOfChar ::
        SVGTextContentElement -> Optional Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar ::
                  (MonadIO m, IsSVGTextContentElement self) =>
                    self -> Maybe Word -> m Float
getRotationOfChar self offset
  = liftIO
      (js_getRotationOfChar (toSVGTextContentElement self)
         (maybeToOptional offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar_ ::
                   (MonadIO m, IsSVGTextContentElement self) =>
                     self -> Maybe Word -> m ()
getRotationOfChar_ self offset
  = liftIO
      (void
         (js_getRotationOfChar (toSVGTextContentElement self)
            (maybeToOptional offset)))
 
foreign import javascript unsafe "$1[\"getCharNumAtPosition\"]($2)"
        js_getCharNumAtPosition ::
        SVGTextContentElement -> SVGPoint -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition ::
                     (MonadIO m, IsSVGTextContentElement self) =>
                       self -> SVGPoint -> m Int
getCharNumAtPosition self point
  = liftIO
      (js_getCharNumAtPosition (toSVGTextContentElement self) point)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition_ ::
                      (MonadIO m, IsSVGTextContentElement self) =>
                        self -> SVGPoint -> m ()
getCharNumAtPosition_ self point
  = liftIO
      (void
         (js_getCharNumAtPosition (toSVGTextContentElement self) point))
 
foreign import javascript safe "$1[\"selectSubString\"]($2, $3)"
        js_selectSubString ::
        SVGTextContentElement -> Optional Word -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.selectSubString Mozilla SVGTextContentElement.selectSubString documentation> 
selectSubString ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> Maybe Word -> Maybe Word -> m ()
selectSubString self offset length
  = liftIO
      (js_selectSubString (toSVGTextContentElement self)
         (maybeToOptional offset)
         (maybeToOptional length))
pattern LENGTHADJUST_UNKNOWN = 0
pattern LENGTHADJUST_SPACING = 1
pattern LENGTHADJUST_SPACINGANDGLYPHS = 2
 
foreign import javascript unsafe "$1[\"textLength\"]"
        js_getTextLength :: SVGTextContentElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLength ::
              (MonadIO m, IsSVGTextContentElement self) =>
                self -> m SVGAnimatedLength
getTextLength self
  = liftIO (js_getTextLength (toSVGTextContentElement self))
 
foreign import javascript unsafe "$1[\"lengthAdjust\"]"
        js_getLengthAdjust ::
        SVGTextContentElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjust ::
                (MonadIO m, IsSVGTextContentElement self) =>
                  self -> m SVGAnimatedEnumeration
getLengthAdjust self
  = liftIO (js_getLengthAdjust (toSVGTextContentElement self))