{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitPoint
       (js_newWebKitPoint, newWebKitPoint, js_setX, setX, js_getX, getX,
        js_setY, setY, js_getY, getY, WebKitPoint(..), gTypeWebKitPoint)
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
        "new window[\"WebKitPoint\"]($1,\n$2)" js_newWebKitPoint ::
        Optional Float -> Optional Float -> IO WebKitPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint ::
               (MonadIO m) => Maybe Float -> Maybe Float -> m WebKitPoint
newWebKitPoint x y
  = liftIO
      (js_newWebKitPoint (maybeToOptional x) (maybeToOptional y))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
setX :: (MonadIO m) => WebKitPoint -> Float -> m ()
setX self val = liftIO (js_setX self val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
getX :: (MonadIO m) => WebKitPoint -> m Float
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
setY :: (MonadIO m) => WebKitPoint -> Float -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
getY :: (MonadIO m) => WebKitPoint -> m Float
getY self = liftIO (js_getY self)