{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitNamedFlow
       (js_getRegionsByContent, getRegionsByContent, getRegionsByContent_,
        getRegionsByContentUnsafe, getRegionsByContentUnchecked,
        js_getRegions, getRegions, getRegions_, getRegionsUnsafe,
        getRegionsUnchecked, js_getContent, getContent, getContent_,
        getContentUnsafe, getContentUnchecked, js_getName, getName,
        js_getOverset, getOverset, js_getFirstEmptyRegionIndex,
        getFirstEmptyRegionIndex, WebKitNamedFlow(..),
        gTypeWebKitNamedFlow)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent_ ::
                     (MonadIO m, IsNode contentNode) =>
                       WebKitNamedFlow -> Maybe contentNode -> m ()
getRegionsByContent_ self contentNode
  = liftIO
      (void
         (js_getRegionsByContent (self)
            (maybeToNullable (fmap toNode contentNode))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContentUnsafe ::
                          (MonadIO m, IsNode contentNode, HasCallStack) =>
                            WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContentUnsafe self contentNode
  = liftIO
      ((nullableToMaybe <$>
          (js_getRegionsByContent (self)
             (maybeToNullable (fmap toNode contentNode))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContentUnchecked ::
                             (MonadIO m, IsNode contentNode) =>
                               WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContentUnchecked self contentNode
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRegionsByContent (self)
            (maybeToNullable (fmap toNode contentNode))))
 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        js_getRegions :: WebKitNamedFlow -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadIO m) => WebKitNamedFlow -> m (Maybe NodeList)
getRegions self
  = liftIO (nullableToMaybe <$> (js_getRegions (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions_ :: (MonadIO m) => WebKitNamedFlow -> m ()
getRegions_ self = liftIO (void (js_getRegions (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegionsUnsafe ::
                 (MonadIO m, HasCallStack) => WebKitNamedFlow -> m NodeList
getRegionsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRegions (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegionsUnchecked :: (MonadIO m) => WebKitNamedFlow -> m NodeList
getRegionsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRegions (self)))
 
foreign import javascript unsafe "$1[\"getContent\"]()"
        js_getContent :: WebKitNamedFlow -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadIO m) => WebKitNamedFlow -> m (Maybe NodeList)
getContent self
  = liftIO (nullableToMaybe <$> (js_getContent (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent_ :: (MonadIO m) => WebKitNamedFlow -> m ()
getContent_ self = liftIO (void (js_getContent (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContentUnsafe ::
                 (MonadIO m, HasCallStack) => WebKitNamedFlow -> m NodeList
getContentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getContent (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContentUnchecked :: (MonadIO m) => WebKitNamedFlow -> m NodeList
getContentUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getContent (self)))
 
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