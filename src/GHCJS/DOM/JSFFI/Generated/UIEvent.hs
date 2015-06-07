{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.UIEvent
       (js_initUIEvent, initUIEvent, js_getView, getView, js_getDetail,
        getDetail, js_getKeyCode, getKeyCode, js_getCharCode, getCharCode,
        js_getLayerX, getLayerX, js_getLayerY, getLayerY, js_getPageX,
        getPageX, js_getPageY, getPageY, js_getWhich, getWhich, UIEvent,
        castToUIEvent, gTypeUIEvent, IsUIEvent, toUIEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"initUIEvent\"]($2, $3, $4,\n$5, $6)" js_initUIEvent ::
        JSRef UIEvent ->
          JSString -> Bool -> Bool -> JSRef Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.initUIEvent Mozilla UIEvent.initUIEvent documentation> 
initUIEvent ::
            (MonadIO m, IsUIEvent self, ToJSString type') =>
              self -> type' -> Bool -> Bool -> Maybe Window -> Int -> m ()
initUIEvent self type' canBubble cancelable view detail
  = liftIO
      (js_initUIEvent (unUIEvent (toUIEvent self)) (toJSString type')
         canBubble
         cancelable
         (maybe jsNull pToJSRef view)
         detail)
 
foreign import javascript unsafe "$1[\"view\"]" js_getView ::
        JSRef UIEvent -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.view Mozilla UIEvent.view documentation> 
getView :: (MonadIO m, IsUIEvent self) => self -> m (Maybe Window)
getView self
  = liftIO ((js_getView (unUIEvent (toUIEvent self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"detail\"]" js_getDetail ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.detail Mozilla UIEvent.detail documentation> 
getDetail :: (MonadIO m, IsUIEvent self) => self -> m Int
getDetail self = liftIO (js_getDetail (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"keyCode\"]" js_getKeyCode ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.keyCode Mozilla UIEvent.keyCode documentation> 
getKeyCode :: (MonadIO m, IsUIEvent self) => self -> m Int
getKeyCode self
  = liftIO (js_getKeyCode (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"charCode\"]" js_getCharCode
        :: JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.charCode Mozilla UIEvent.charCode documentation> 
getCharCode :: (MonadIO m, IsUIEvent self) => self -> m Int
getCharCode self
  = liftIO (js_getCharCode (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"layerX\"]" js_getLayerX ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerX Mozilla UIEvent.layerX documentation> 
getLayerX :: (MonadIO m, IsUIEvent self) => self -> m Int
getLayerX self = liftIO (js_getLayerX (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"layerY\"]" js_getLayerY ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerY Mozilla UIEvent.layerY documentation> 
getLayerY :: (MonadIO m, IsUIEvent self) => self -> m Int
getLayerY self = liftIO (js_getLayerY (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"pageX\"]" js_getPageX ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageX Mozilla UIEvent.pageX documentation> 
getPageX :: (MonadIO m, IsUIEvent self) => self -> m Int
getPageX self = liftIO (js_getPageX (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"pageY\"]" js_getPageY ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageY Mozilla UIEvent.pageY documentation> 
getPageY :: (MonadIO m, IsUIEvent self) => self -> m Int
getPageY self = liftIO (js_getPageY (unUIEvent (toUIEvent self)))
 
foreign import javascript unsafe "$1[\"which\"]" js_getWhich ::
        JSRef UIEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.which Mozilla UIEvent.which documentation> 
getWhich :: (MonadIO m, IsUIEvent self) => self -> m Int
getWhich self = liftIO (js_getWhich (unUIEvent (toUIEvent self)))