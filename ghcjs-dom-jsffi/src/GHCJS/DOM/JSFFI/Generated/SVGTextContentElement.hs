{-# LANGUAGE CPP #-}
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
        getStartPositionOfCharUnsafe, getStartPositionOfCharUnchecked,
        js_getEndPositionOfChar, getEndPositionOfChar,
        getEndPositionOfChar_, getEndPositionOfCharUnsafe,
        getEndPositionOfCharUnchecked, js_getExtentOfChar, getExtentOfChar,
        getExtentOfChar_, getExtentOfCharUnsafe, getExtentOfCharUnchecked,
        js_getRotationOfChar, getRotationOfChar, getRotationOfChar_,
        js_getCharNumAtPosition, getCharNumAtPosition,
        getCharNumAtPosition_, js_selectSubString, selectSubString,
        pattern LENGTHADJUST_UNKNOWN, pattern LENGTHADJUST_SPACING,
        pattern LENGTHADJUST_SPACINGANDGLYPHS, js_getTextLength,
        getTextLength, getTextLengthUnsafe, getTextLengthUnchecked,
        js_getLengthAdjust, getLengthAdjust, getLengthAdjustUnsafe,
        getLengthAdjustUnchecked, SVGTextContentElement(..),
        gTypeSVGTextContentElement, IsSVGTextContentElement,
        toSVGTextContentElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength_ ::
                    (MonadIO m, IsSVGTextContentElement self) =>
                      self -> Word -> Word -> m ()
getSubStringLength_ self offset length
  = liftIO
      (void
         (js_getSubStringLength (toSVGTextContentElement self) offset
            length))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar_ ::
                        (MonadIO m, IsSVGTextContentElement self) => self -> Word -> m ()
getStartPositionOfChar_ self offset
  = liftIO
      (void
         (js_getStartPositionOfChar (toSVGTextContentElement self) offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfCharUnsafe ::
                             (MonadIO m, IsSVGTextContentElement self, HasCallStack) =>
                               self -> Word -> m SVGPoint
getStartPositionOfCharUnsafe self offset
  = liftIO
      ((nullableToMaybe <$>
          (js_getStartPositionOfChar (toSVGTextContentElement self) offset))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfCharUnchecked ::
                                (MonadIO m, IsSVGTextContentElement self) =>
                                  self -> Word -> m SVGPoint
getStartPositionOfCharUnchecked self offset
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar_ ::
                      (MonadIO m, IsSVGTextContentElement self) => self -> Word -> m ()
getEndPositionOfChar_ self offset
  = liftIO
      (void
         (js_getEndPositionOfChar (toSVGTextContentElement self) offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfCharUnsafe ::
                           (MonadIO m, IsSVGTextContentElement self, HasCallStack) =>
                             self -> Word -> m SVGPoint
getEndPositionOfCharUnsafe self offset
  = liftIO
      ((nullableToMaybe <$>
          (js_getEndPositionOfChar (toSVGTextContentElement self) offset))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfCharUnchecked ::
                              (MonadIO m, IsSVGTextContentElement self) =>
                                self -> Word -> m SVGPoint
getEndPositionOfCharUnchecked self offset
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar_ ::
                 (MonadIO m, IsSVGTextContentElement self) => self -> Word -> m ()
getExtentOfChar_ self offset
  = liftIO
      (void (js_getExtentOfChar (toSVGTextContentElement self) offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfCharUnsafe ::
                      (MonadIO m, IsSVGTextContentElement self, HasCallStack) =>
                        self -> Word -> m SVGRect
getExtentOfCharUnsafe self offset
  = liftIO
      ((nullableToMaybe <$>
          (js_getExtentOfChar (toSVGTextContentElement self) offset))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfCharUnchecked ::
                         (MonadIO m, IsSVGTextContentElement self) =>
                           self -> Word -> m SVGRect
getExtentOfCharUnchecked self offset
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar_ ::
                   (MonadIO m, IsSVGTextContentElement self) => self -> Word -> m ()
getRotationOfChar_ self offset
  = liftIO
      (void (js_getRotationOfChar (toSVGTextContentElement self) offset))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition_ ::
                      (MonadIO m, IsSVGTextContentElement self) =>
                        self -> Maybe SVGPoint -> m ()
getCharNumAtPosition_ self point
  = liftIO
      (void
         (js_getCharNumAtPosition (toSVGTextContentElement self)
            (maybeToNullable point)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLengthUnsafe ::
                    (MonadIO m, IsSVGTextContentElement self, HasCallStack) =>
                      self -> m SVGAnimatedLength
getTextLengthUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getTextLength (toSVGTextContentElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLengthUnchecked ::
                       (MonadIO m, IsSVGTextContentElement self) =>
                         self -> m SVGAnimatedLength
getTextLengthUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjustUnsafe ::
                      (MonadIO m, IsSVGTextContentElement self, HasCallStack) =>
                        self -> m SVGAnimatedEnumeration
getLengthAdjustUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getLengthAdjust (toSVGTextContentElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjustUnchecked ::
                         (MonadIO m, IsSVGTextContentElement self) =>
                           self -> m SVGAnimatedEnumeration
getLengthAdjustUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getLengthAdjust (toSVGTextContentElement self)))