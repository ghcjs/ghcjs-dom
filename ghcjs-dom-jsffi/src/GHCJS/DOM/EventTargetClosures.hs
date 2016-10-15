{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.EventTargetClosures
       (EventName(..), SaferEventListener(..), unsafeEventName, eventListenerNew, eventListenerNewSync, eventListenerNewAsync, eventListenerRelease) where

import Control.Applicative ((<$>))
import Control.Monad ((>=>))
import GHCJS.Types
import GHCJS.Foreign.Callback.Internal
import GHCJS.Foreign.Callback
import GHCJS.Marshal.Pure
import GHCJS.DOM.Types
import GHCJS.Foreign.Callback.Internal

newtype EventName t e = EventName DOMString
newtype SaferEventListener t e = SaferEventListener EventListener

instance PToJSVal (SaferEventListener t e) where
    pToJSVal (SaferEventListener l) = pToJSVal l
    {-# INLINE pToJSVal #-}

instance PFromJSVal (SaferEventListener t e) where
    pFromJSVal = SaferEventListener . pFromJSVal
    {-# INLINE pFromJSVal #-}

unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventName

eventListenerNew :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNew callback = (EventListener . jsval) <$> syncCallback1 ContinueAsync (fromJSValUnchecked >=> callback)

eventListenerNewSync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewSync callback = (EventListener . jsval) <$> syncCallback1 ThrowWouldBlock (fromJSValUnchecked >=> callback)

eventListenerNewAsync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewAsync callback = (EventListener . jsval) <$> asyncCallback1 (fromJSValUnchecked >=> callback)

eventListenerRelease :: EventListener -> IO ()
eventListenerRelease (EventListener ref) = releaseCallback (Callback ref)
