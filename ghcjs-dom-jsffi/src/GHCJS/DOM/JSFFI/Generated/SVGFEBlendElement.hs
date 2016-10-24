{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEBlendElement
       (pattern SVG_FEBLEND_MODE_UNKNOWN, pattern SVG_FEBLEND_MODE_NORMAL,
        pattern SVG_FEBLEND_MODE_MULTIPLY, pattern SVG_FEBLEND_MODE_SCREEN,
        pattern SVG_FEBLEND_MODE_DARKEN, pattern SVG_FEBLEND_MODE_LIGHTEN,
        js_getIn1, getIn1, getIn1Unsafe, getIn1Unchecked, js_getIn2,
        getIn2, getIn2Unsafe, getIn2Unchecked, js_getMode, getMode,
        getModeUnsafe, getModeUnchecked, SVGFEBlendElement(..),
        gTypeSVGFEBlendElement)
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
pattern SVG_FEBLEND_MODE_UNKNOWN = 0
pattern SVG_FEBLEND_MODE_NORMAL = 1
pattern SVG_FEBLEND_MODE_MULTIPLY = 2
pattern SVG_FEBLEND_MODE_SCREEN = 3
pattern SVG_FEBLEND_MODE_DARKEN = 4
pattern SVG_FEBLEND_MODE_LIGHTEN = 5
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEBlendElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in1 Mozilla SVGFEBlendElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEBlendElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in1 Mozilla SVGFEBlendElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEBlendElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in1 Mozilla SVGFEBlendElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEBlendElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFEBlendElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in2 Mozilla SVGFEBlendElement.in2 documentation> 
getIn2 ::
       (MonadIO m) => SVGFEBlendElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftIO (nullableToMaybe <$> (js_getIn2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in2 Mozilla SVGFEBlendElement.in2 documentation> 
getIn2Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEBlendElement -> m SVGAnimatedString
getIn2Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn2 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in2 Mozilla SVGFEBlendElement.in2 documentation> 
getIn2Unchecked ::
                (MonadIO m) => SVGFEBlendElement -> m SVGAnimatedString
getIn2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn2 (self)))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        SVGFEBlendElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.mode Mozilla SVGFEBlendElement.mode documentation> 
getMode ::
        (MonadIO m) =>
          SVGFEBlendElement -> m (Maybe SVGAnimatedEnumeration)
getMode self = liftIO (nullableToMaybe <$> (js_getMode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.mode Mozilla SVGFEBlendElement.mode documentation> 
getModeUnsafe ::
              (MonadIO m, HasCallStack) =>
                SVGFEBlendElement -> m SVGAnimatedEnumeration
getModeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.mode Mozilla SVGFEBlendElement.mode documentation> 
getModeUnchecked ::
                 (MonadIO m) => SVGFEBlendElement -> m SVGAnimatedEnumeration
getModeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getMode (self)))