{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMPointReadOnly
       (js_newDOMPointReadOnly, newDOMPointReadOnly,
        js_newDOMPointReadOnly', newDOMPointReadOnly', js_fromPoint,
        fromPoint, fromPoint_, js_getX, getX, js_getY, getY, js_getZ, getZ,
        js_getW, getW, DOMPointReadOnly(..), gTypeDOMPointReadOnly,
        IsDOMPointReadOnly, toDOMPointReadOnly)
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
        "new window[\"DOMPointReadOnly\"]($1)" js_newDOMPointReadOnly ::
        DOMPointInit -> IO DOMPointReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly Mozilla DOMPointReadOnly documentation> 
newDOMPointReadOnly ::
                    (MonadIO m) => DOMPointInit -> m DOMPointReadOnly
newDOMPointReadOnly point = liftIO (js_newDOMPointReadOnly point)
 
foreign import javascript unsafe
        "new window[\"DOMPointReadOnly\"]($1,\n$2, $3, $4)"
        js_newDOMPointReadOnly' ::
        Optional Double ->
          Optional Double ->
            Optional Double -> Optional Double -> IO DOMPointReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly Mozilla DOMPointReadOnly documentation> 
newDOMPointReadOnly' ::
                     (MonadIO m) =>
                       Maybe Double ->
                         Maybe Double -> Maybe Double -> Maybe Double -> m DOMPointReadOnly
newDOMPointReadOnly' x y z w
  = liftIO
      (js_newDOMPointReadOnly' (maybeToOptional x) (maybeToOptional y)
         (maybeToOptional z)
         (maybeToOptional w))
 
foreign import javascript unsafe
        "window[\"DOMPointReadOnly\"][\"fromPoint\"]($1)" js_fromPoint ::
        Optional DOMPointInit -> IO DOMPointReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.fromPoint Mozilla DOMPointReadOnly.fromPoint documentation> 
fromPoint ::
          (MonadIO m) => Maybe DOMPointInit -> m DOMPointReadOnly
fromPoint other = liftIO (js_fromPoint (maybeToOptional other))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.fromPoint Mozilla DOMPointReadOnly.fromPoint documentation> 
fromPoint_ :: (MonadIO m) => Maybe DOMPointInit -> m ()
fromPoint_ other
  = liftIO (void (js_fromPoint (maybeToOptional other)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        DOMPointReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.x Mozilla DOMPointReadOnly.x documentation> 
getX :: (MonadIO m, IsDOMPointReadOnly self) => self -> m Double
getX self = liftIO (js_getX (toDOMPointReadOnly self))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        DOMPointReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.y Mozilla DOMPointReadOnly.y documentation> 
getY :: (MonadIO m, IsDOMPointReadOnly self) => self -> m Double
getY self = liftIO (js_getY (toDOMPointReadOnly self))
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        DOMPointReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.z Mozilla DOMPointReadOnly.z documentation> 
getZ :: (MonadIO m, IsDOMPointReadOnly self) => self -> m Double
getZ self = liftIO (js_getZ (toDOMPointReadOnly self))
 
foreign import javascript unsafe "$1[\"w\"]" js_getW ::
        DOMPointReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPointReadOnly.w Mozilla DOMPointReadOnly.w documentation> 
getW :: (MonadIO m, IsDOMPointReadOnly self) => self -> m Double
getW self = liftIO (js_getW (toDOMPointReadOnly self))