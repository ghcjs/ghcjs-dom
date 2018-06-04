{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Geoposition
       (js_getCoords, getCoords, js_getTimestamp, getTimestamp,
        Geoposition(..), gTypeGeoposition)
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
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        Geoposition -> IO Coordinates

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
getCoords :: (MonadIO m) => Geoposition -> m Coordinates
getCoords self = liftIO (js_getCoords self)
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        js_getTimestamp :: Geoposition -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.timestamp Mozilla Geoposition.timestamp documentation> 
getTimestamp :: (MonadIO m) => Geoposition -> m Word
getTimestamp self = liftIO (js_getTimestamp self)