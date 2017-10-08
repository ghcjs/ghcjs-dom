{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitNamedFlow
       (js_getRegionsByContent, getRegionsByContent, getRegionsByContent_,
        js_getRegions, getRegions, getRegions_, js_getContent, getContent,
        getContent_, js_getName, getName, js_getOverset, getOverset,
        js_getFirstEmptyRegionIndex, getFirstEmptyRegionIndex,
        WebKitNamedFlow(..), gTypeWebKitNamedFlow)
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
 
foreign import javascript unsafe "$1[\"getRegionsByContent\"]($2)"
        js_getRegionsByContent ::
        WebKitNamedFlow -> Optional Node -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent ::
                    (MonadIO m, IsNode contentNode) =>
                      WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContent self contentNode
  = liftIO
      (js_getRegionsByContent self
         (maybeToOptional (fmap toNode contentNode)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent_ ::
                     (MonadIO m, IsNode contentNode) =>
                       WebKitNamedFlow -> Maybe contentNode -> m ()
getRegionsByContent_ self contentNode
  = liftIO
      (void
         (js_getRegionsByContent self
            (maybeToOptional (fmap toNode contentNode))))
 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        js_getRegions :: WebKitNamedFlow -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadIO m) => WebKitNamedFlow -> m NodeList
getRegions self = liftIO (js_getRegions self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions_ :: (MonadIO m) => WebKitNamedFlow -> m ()
getRegions_ self = liftIO (void (js_getRegions self))
 
foreign import javascript unsafe "$1[\"getContent\"]()"
        js_getContent :: WebKitNamedFlow -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadIO m) => WebKitNamedFlow -> m NodeList
getContent self = liftIO (js_getContent self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent_ :: (MonadIO m) => WebKitNamedFlow -> m ()
getContent_ self = liftIO (void (js_getContent self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        WebKitNamedFlow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.name Mozilla WebKitNamedFlow.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => WebKitNamedFlow -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "($1[\"overset\"] ? 1 : 0)"
        js_getOverset :: WebKitNamedFlow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.overset Mozilla WebKitNamedFlow.overset documentation> 
getOverset :: (MonadIO m) => WebKitNamedFlow -> m Bool
getOverset self = liftIO (js_getOverset self)
 
foreign import javascript unsafe "$1[\"firstEmptyRegionIndex\"]"
        js_getFirstEmptyRegionIndex :: WebKitNamedFlow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.firstEmptyRegionIndex Mozilla WebKitNamedFlow.firstEmptyRegionIndex documentation> 
getFirstEmptyRegionIndex :: (MonadIO m) => WebKitNamedFlow -> m Int
getFirstEmptyRegionIndex self
  = liftIO (js_getFirstEmptyRegionIndex self)