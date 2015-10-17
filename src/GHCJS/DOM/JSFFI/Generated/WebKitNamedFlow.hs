{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitNamedFlow
       (js_getRegionsByContent, getRegionsByContent, js_getRegions,
        getRegions, js_getContent, getContent, js_getName, getName,
        js_getOverset, getOverset, js_getFirstEmptyRegionIndex,
        getFirstEmptyRegionIndex, WebKitNamedFlow, castToWebKitNamedFlow,
        gTypeWebKitNamedFlow)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getRegionsByContent\"]($2)"
        js_getRegionsByContent ::
        WebKitNamedFlow -> Nullable Node -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent ::
                    (MonadIO m, IsNode contentNode) =>
                      WebKitNamedFlow -> Maybe contentNode -> m (Maybe NodeList)
getRegionsByContent self contentNode
  = liftIO
      (nullableToMaybe <$>
         (js_getRegionsByContent (self)
            (maybeToNullable (fmap toNode contentNode))))
 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        js_getRegions :: WebKitNamedFlow -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadIO m) => WebKitNamedFlow -> m (Maybe NodeList)
getRegions self
  = liftIO (nullableToMaybe <$> (js_getRegions (self)))
 
foreign import javascript unsafe "$1[\"getContent\"]()"
        js_getContent :: WebKitNamedFlow -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadIO m) => WebKitNamedFlow -> m (Maybe NodeList)
getContent self
  = liftIO (nullableToMaybe <$> (js_getContent (self)))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        WebKitNamedFlow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.name Mozilla WebKitNamedFlow.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => WebKitNamedFlow -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "($1[\"overset\"] ? 1 : 0)"
        js_getOverset :: WebKitNamedFlow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.overset Mozilla WebKitNamedFlow.overset documentation> 
getOverset :: (MonadIO m) => WebKitNamedFlow -> m Bool
getOverset self = liftIO (js_getOverset (self))
 
foreign import javascript unsafe "$1[\"firstEmptyRegionIndex\"]"
        js_getFirstEmptyRegionIndex :: WebKitNamedFlow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.firstEmptyRegionIndex Mozilla WebKitNamedFlow.firstEmptyRegionIndex documentation> 
getFirstEmptyRegionIndex :: (MonadIO m) => WebKitNamedFlow -> m Int
getFirstEmptyRegionIndex self
  = liftIO (js_getFirstEmptyRegionIndex (self))