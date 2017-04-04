{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.UIEvent
       (js_newUIEvent, newUIEvent, js_initUIEvent, initUIEvent,
        js_getView, getView, js_getDetail, getDetail, js_getLayerX,
        getLayerX, js_getLayerY, getLayerY, js_getPageX, getPageX,
        js_getPageY, getPageY, js_getWhich, getWhich, UIEvent(..),
        gTypeUIEvent, IsUIEvent, toUIEvent)
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
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"UIEvent\"]($1, $2)"
        js_newUIEvent :: JSString -> Optional UIEventInit -> IO UIEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent Mozilla UIEvent documentation> 
newUIEvent ::
           (MonadIO m, ToJSString type', IsUIEventInit eventInitDict) =>
             type' -> Maybe eventInitDict -> m UIEvent
newUIEvent type' eventInitDict
  = liftIO
      (js_newUIEvent (toJSString type')
         (maybeToOptional (fmap toUIEventInit eventInitDict)))
 
foreign import javascript unsafe
        "$1[\"initUIEvent\"]($2, $3, $4,\n$5, $6)" js_initUIEvent ::
        UIEvent ->
          Optional JSString ->
            Bool -> Bool -> Optional Window -> Optional Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.initUIEvent Mozilla UIEvent.initUIEvent documentation> 
initUIEvent ::
            (MonadIO m, IsUIEvent self, ToJSString type') =>
              self ->
                Maybe type' -> Bool -> Bool -> Maybe Window -> Maybe Int -> m ()
initUIEvent self type' canBubble cancelable view detail
  = liftIO
      (js_initUIEvent (toUIEvent self) (toOptionalJSString type')
         canBubble
         cancelable
         (maybeToOptional view)
         (maybeToOptional detail))
 
foreign import javascript unsafe "$1[\"view\"]" js_getView ::
        UIEvent -> IO Window

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.view Mozilla UIEvent.view documentation> 
getView :: (MonadIO m, IsUIEvent self) => self -> m Window
getView self = liftIO (js_getView (toUIEvent self))
 
foreign import javascript unsafe "$1[\"detail\"]" js_getDetail ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.detail Mozilla UIEvent.detail documentation> 
getDetail :: (MonadIO m, IsUIEvent self) => self -> m Int
getDetail self = liftIO (js_getDetail (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerX\"]" js_getLayerX ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerX Mozilla UIEvent.layerX documentation> 
getLayerX :: (MonadIO m, IsUIEvent self) => self -> m Int
getLayerX self = liftIO (js_getLayerX (toUIEvent self))
 
foreign import javascript unsafe "$1[\"layerY\"]" js_getLayerY ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerY Mozilla UIEvent.layerY documentation> 
getLayerY :: (MonadIO m, IsUIEvent self) => self -> m Int
getLayerY self = liftIO (js_getLayerY (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageX\"]" js_getPageX ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageX Mozilla UIEvent.pageX documentation> 
getPageX :: (MonadIO m, IsUIEvent self) => self -> m Int
getPageX self = liftIO (js_getPageX (toUIEvent self))
 
foreign import javascript unsafe "$1[\"pageY\"]" js_getPageY ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageY Mozilla UIEvent.pageY documentation> 
getPageY :: (MonadIO m, IsUIEvent self) => self -> m Int
getPageY self = liftIO (js_getPageY (toUIEvent self))
 
foreign import javascript unsafe "$1[\"which\"]" js_getWhich ::
        UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.which Mozilla UIEvent.which documentation> 
getWhich :: (MonadIO m, IsUIEvent self) => self -> m Int
getWhich self = liftIO (js_getWhich (toUIEvent self))