{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegLinetoVerticalRel
       (js_setY, setY, js_getY, getY, SVGPathSegLinetoVerticalRel(..),
        gTypeSVGPathSegLinetoVerticalRel)
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
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        SVGPathSegLinetoVerticalRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel.y Mozilla SVGPathSegLinetoVerticalRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegLinetoVerticalRel -> Float -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGPathSegLinetoVerticalRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalRel.y Mozilla SVGPathSegLinetoVerticalRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegLinetoVerticalRel -> m Float
getY self = liftIO (js_getY self)