{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Path2D
       (js_newPath2D, newPath2D, js_newPath2D', newPath2D',
        js_newPath2D'', newPath2D'', js_addPath, addPath,
        js_addPathWithTransform, addPathWithTransform, Path2D(..),
        gTypePath2D)
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
 
foreign import javascript unsafe "new window[\"Path2D\"]()"
        js_newPath2D :: IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D :: (MonadIO m) => m Path2D
newPath2D = liftIO (js_newPath2D)
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newPath2D' :: Path2D -> IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D' :: (MonadIO m) => Path2D -> m Path2D
newPath2D' path = liftIO (js_newPath2D' path)
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newPath2D'' :: JSString -> IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D'' :: (MonadIO m, ToJSString text) => text -> m Path2D
newPath2D'' text = liftIO (js_newPath2D'' (toJSString text))
 
foreign import javascript unsafe "$1[\"addPath\"]($2)" js_addPath
        :: Path2D -> Optional Path2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPath :: (MonadIO m) => Path2D -> Maybe Path2D -> m ()
addPath self path = liftIO (js_addPath self (maybeToOptional path))
 
foreign import javascript unsafe "$1[\"addPath\"]($2, $3)"
        js_addPathWithTransform ::
        Path2D -> Optional Path2D -> SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPathWithTransform ::
                     (MonadIO m) => Path2D -> Maybe Path2D -> SVGMatrix -> m ()
addPathWithTransform self path transform
  = liftIO
      (js_addPathWithTransform self (maybeToOptional path) transform)