{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAElement
       (js_getTarget, getTarget, getTargetUnchecked, SVGAElement(..),
        gTypeSVGAElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        SVGAElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
getTarget ::
          (MonadIO m) => SVGAElement -> m (Maybe SVGAnimatedString)
getTarget self = liftIO (nullableToMaybe <$> (js_getTarget (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
getTargetUnchecked ::
                   (MonadIO m) => SVGAElement -> m SVGAnimatedString
getTargetUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTarget (self)))