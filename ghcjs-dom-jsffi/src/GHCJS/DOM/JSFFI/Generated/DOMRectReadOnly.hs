{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMRectReadOnly
       (js_newDOMRectReadOnly, newDOMRectReadOnly, js_fromRect, fromRect,
        fromRect_, js_getX, getX, js_getY, getY, js_getWidth, getWidth,
        js_getHeight, getHeight, js_getTop, getTop, js_getRight, getRight,
        js_getBottom, getBottom, js_getLeft, getLeft, DOMRectReadOnly(..),
        gTypeDOMRectReadOnly, IsDOMRectReadOnly, toDOMRectReadOnly)
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
        "new window[\"DOMRectReadOnly\"]($1,\n$2, $3, $4)"
        js_newDOMRectReadOnly ::
        Optional Double ->
          Optional Double ->
            Optional Double -> Optional Double -> IO DOMRectReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly Mozilla DOMRectReadOnly documentation> 
newDOMRectReadOnly ::
                   (MonadIO m) =>
                     Maybe Double ->
                       Maybe Double -> Maybe Double -> Maybe Double -> m DOMRectReadOnly
newDOMRectReadOnly x y width height
  = liftIO
      (js_newDOMRectReadOnly (maybeToOptional x) (maybeToOptional y)
         (maybeToOptional width)
         (maybeToOptional height))
 
foreign import javascript unsafe
        "window[\"DOMRectReadOnly\"][\"fromRect\"]($1)" js_fromRect ::
        Optional DOMRectInit -> IO DOMRectReadOnly

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.fromRect Mozilla DOMRectReadOnly.fromRect documentation> 
fromRect :: (MonadIO m) => Maybe DOMRectInit -> m DOMRectReadOnly
fromRect other = liftIO (js_fromRect (maybeToOptional other))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.fromRect Mozilla DOMRectReadOnly.fromRect documentation> 
fromRect_ :: (MonadIO m) => Maybe DOMRectInit -> m ()
fromRect_ other
  = liftIO (void (js_fromRect (maybeToOptional other)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.x Mozilla DOMRectReadOnly.x documentation> 
getX :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getX self = liftIO (js_getX (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.y Mozilla DOMRectReadOnly.y documentation> 
getY :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getY self = liftIO (js_getY (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.width Mozilla DOMRectReadOnly.width documentation> 
getWidth :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getWidth self = liftIO (js_getWidth (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.height Mozilla DOMRectReadOnly.height documentation> 
getHeight ::
          (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getHeight self = liftIO (js_getHeight (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.top Mozilla DOMRectReadOnly.top documentation> 
getTop :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getTop self = liftIO (js_getTop (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"right\"]" js_getRight ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.right Mozilla DOMRectReadOnly.right documentation> 
getRight :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getRight self = liftIO (js_getRight (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"bottom\"]" js_getBottom ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.bottom Mozilla DOMRectReadOnly.bottom documentation> 
getBottom ::
          (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getBottom self = liftIO (js_getBottom (toDOMRectReadOnly self))
 
foreign import javascript unsafe "$1[\"left\"]" js_getLeft ::
        DOMRectReadOnly -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRectReadOnly.left Mozilla DOMRectReadOnly.left documentation> 
getLeft :: (MonadIO m, IsDOMRectReadOnly self) => self -> m Double
getLeft self = liftIO (js_getLeft (toDOMRectReadOnly self))