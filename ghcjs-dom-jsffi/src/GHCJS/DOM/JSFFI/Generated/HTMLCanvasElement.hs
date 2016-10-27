{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLCanvasElement
       (js_toDataURL, toDataURL, toDataURL_, js_getContext, getContext,
        getContext_, js_probablySupportsContext, probablySupportsContext,
        probablySupportsContext_, js_setWidth, setWidth, js_getWidth,
        getWidth, js_setHeight, setHeight, js_getHeight, getHeight,
        HTMLCanvasElement(..), gTypeHTMLCanvasElement)
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
 
foreign import javascript unsafe "$1[\"toDataURL\"]($2)"
        js_toDataURL ::
        HTMLCanvasElement -> Nullable JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL ::
          (MonadIO m, ToJSString type', FromJSString result) =>
            HTMLCanvasElement -> Maybe type' -> m result
toDataURL self type'
  = liftIO
      (fromJSString <$> (js_toDataURL (self) (toMaybeJSString type')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL_ ::
           (MonadIO m, ToJSString type') =>
             HTMLCanvasElement -> Maybe type' -> m ()
toDataURL_ self type'
  = liftIO (void (js_toDataURL (self) (toMaybeJSString type')))
 
foreign import javascript unsafe "$1[\"getContext\"]($2)"
        js_getContext :: HTMLCanvasElement -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext ::
           (MonadIO m, ToJSString contextId) =>
             HTMLCanvasElement -> contextId -> m JSVal
getContext self contextId
  = liftIO (js_getContext (self) (toJSString contextId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext_ ::
            (MonadIO m, ToJSString contextId) =>
              HTMLCanvasElement -> contextId -> m ()
getContext_ self contextId
  = liftIO (void (js_getContext (self) (toJSString contextId)))
 
foreign import javascript unsafe
        "$1[\"probablySupportsContext\"]($2)" js_probablySupportsContext ::
        HTMLCanvasElement -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.probablySupportsContext Mozilla HTMLCanvasElement.probablySupportsContext documentation> 
probablySupportsContext ::
                        (MonadIO m, ToJSString contextId) =>
                          HTMLCanvasElement -> contextId -> m JSVal
probablySupportsContext self contextId
  = liftIO (js_probablySupportsContext (self) (toJSString contextId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.probablySupportsContext Mozilla HTMLCanvasElement.probablySupportsContext documentation> 
probablySupportsContext_ ::
                         (MonadIO m, ToJSString contextId) =>
                           HTMLCanvasElement -> contextId -> m ()
probablySupportsContext_ self contextId
  = liftIO
      (void (js_probablySupportsContext (self) (toJSString contextId)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLCanvasElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
setWidth :: (MonadIO m) => HTMLCanvasElement -> Int -> m ()
setWidth self val = liftIO (js_setWidth (self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLCanvasElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
getWidth :: (MonadIO m) => HTMLCanvasElement -> m Int
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: HTMLCanvasElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
setHeight :: (MonadIO m) => HTMLCanvasElement -> Int -> m ()
setHeight self val = liftIO (js_setHeight (self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLCanvasElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
getHeight :: (MonadIO m) => HTMLCanvasElement -> m Int
getHeight self = liftIO (js_getHeight (self))