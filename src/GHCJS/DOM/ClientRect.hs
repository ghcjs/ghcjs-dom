{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ClientRect
       (ghcjs_dom_client_rect_get_top, clientRectGetTop,
        ghcjs_dom_client_rect_get_right, clientRectGetRight,
        ghcjs_dom_client_rect_get_bottom, clientRectGetBottom,
        ghcjs_dom_client_rect_get_left, clientRectGetLeft,
        ghcjs_dom_client_rect_get_width, clientRectGetWidth,
        ghcjs_dom_client_rect_get_height, clientRectGetHeight, ClientRect,
        IsClientRect, castToClientRect, gTypeClientRect, toClientRect)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_client_rect_get_top :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.top Mozilla ClientRect.top documentation> 
clientRectGetTop ::
                 (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetTop self
  = liftIO
      (ghcjs_dom_client_rect_get_top (unClientRect (toClientRect self)))
 
foreign import javascript unsafe "$1[\"right\"]"
        ghcjs_dom_client_rect_get_right :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.right Mozilla ClientRect.right documentation> 
clientRectGetRight ::
                   (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetRight self
  = liftIO
      (ghcjs_dom_client_rect_get_right
         (unClientRect (toClientRect self)))
 
foreign import javascript unsafe "$1[\"bottom\"]"
        ghcjs_dom_client_rect_get_bottom :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.bottom Mozilla ClientRect.bottom documentation> 
clientRectGetBottom ::
                    (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetBottom self
  = liftIO
      (ghcjs_dom_client_rect_get_bottom
         (unClientRect (toClientRect self)))
 
foreign import javascript unsafe "$1[\"left\"]"
        ghcjs_dom_client_rect_get_left :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.left Mozilla ClientRect.left documentation> 
clientRectGetLeft ::
                  (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetLeft self
  = liftIO
      (ghcjs_dom_client_rect_get_left (unClientRect (toClientRect self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_client_rect_get_width :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.width Mozilla ClientRect.width documentation> 
clientRectGetWidth ::
                   (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetWidth self
  = liftIO
      (ghcjs_dom_client_rect_get_width
         (unClientRect (toClientRect self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_client_rect_get_height :: JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.height Mozilla ClientRect.height documentation> 
clientRectGetHeight ::
                    (MonadIO m, IsClientRect self) => self -> m Float
clientRectGetHeight self
  = liftIO
      (ghcjs_dom_client_rect_get_height
         (unClientRect (toClientRect self)))
#else
module GHCJS.DOM.ClientRect (
  ) where
#endif
