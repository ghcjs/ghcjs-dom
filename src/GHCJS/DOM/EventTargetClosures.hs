{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.EventTargetClosures
       (EventName(..), SaferEventListener(..), unsafeEventName, eventListenerNew, eventListenerNewSync, eventListenerNewAsync, eventListenerRelease) where

import Control.Applicative ((<$>))
import GHCJS.Types
import GHCJS.Foreign.Callback.Internal
import GHCJS.Foreign.Callback
import GHCJS.Marshal.Pure
import GHCJS.DOM.Types
import GHCJS.Marshal.Pure (pToJSRef, pFromJSRef)

newtype EventName t e = EventName DOMString
newtype SaferEventListener t e = SaferEventListener EventListener

instance PToJSRef (SaferEventListener t e) where
    pToJSRef (SaferEventListener l) = castRef $ pToJSRef l
    {-# INLINE pToJSRef #-}

instance PFromJSRef (SaferEventListener t e) where
    pFromJSRef = SaferEventListener . pFromJSRef . castRef
    {-# INLINE pFromJSRef #-}

unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventName

eventListenerNew :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNew callback = (EventListener . castRef . pToJSRef) <$> syncCallback1 ContinueAsync (callback . unsafeCastGObject . GObject)

eventListenerNewSync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewSync callback = (EventListener . castRef . pToJSRef) <$> syncCallback1 ThrowWouldBlock (callback . unsafeCastGObject . GObject)

eventListenerNewAsync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewAsync callback = (EventListener . castRef . pToJSRef) <$> asyncCallback1 (callback . unsafeCastGObject . GObject)

eventListenerRelease :: EventListener -> IO ()
eventListenerRelease (EventListener ref) = releaseCallback (Callback $ castRef ref)

#else
module GHCJS.DOM.EventTargetClosures (
  module Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
#endif
