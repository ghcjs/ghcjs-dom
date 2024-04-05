{-# LANGUAGE JavaScriptFFI, ForeignFunctionInterface #-}
module GHCJS.DOM.EventTargetClosures
       (
         -- | __Note on Naming:__ 'SaferEventListener' is to 'EventListener' what
         --   'EventName' is to 'DOMString'. If @SaferEventListener@ did not have
         --   a prefix we would have two types called @EventListener@. That might
         --   lead to confusion.
         EventName(..)
       , SaferEventListener(..)
       , eventNameString
       , unsafeEventName
       , unsafeEventNameAsync
       -- * Creation and Destruction
       -- | __Note:__ Don’t forget to release your event listeners, or you will leak memory.
       , eventListenerNew
       , eventListenerNewSync
       , eventListenerNewAsync
       , eventListenerRelease ) where

import Control.Applicative ((<$>))
import Control.Monad ((>=>))
import GHCJS.Types
import GHCJS.Foreign.Callback.Internal
import GHCJS.Foreign.Callback
import GHCJS.Marshal.Pure
import GHCJS.DOM.Types
import GHCJS.Foreign.Callback.Internal

-- | Plain JS 'DOMString' that carries two phantom types:
--
--   * @t@: type of the event’s target
--   * @e@: type of the event
--
--   Many @GHCJS.DOM@ modules export @EventName@s, for example
--   "GHCJS.DOM.JSFFI.Generated.Window".
data EventName t e = EventNameSyncDefault DOMString | EventNameAsyncDefault DOMString

eventNameString :: EventName t e -> DOMString
eventNameString (EventNameSyncDefault s) = s
eventNameString (EventNameAsyncDefault s) = s

-- | Plain JS 'EventListener' that carries the same phantom types as 'EventName'.
newtype SaferEventListener t e = SaferEventListener EventListener

instance PToJSVal (SaferEventListener t e) where
    pToJSVal (SaferEventListener l) = pToJSVal l
    {-# INLINE pToJSVal #-}

instance PFromJSVal (SaferEventListener t e) where
    pFromJSVal = SaferEventListener . pFromJSVal
    {-# INLINE pFromJSVal #-}

-- | Forces the phantom parameters.
unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventNameSyncDefault

unsafeEventNameAsync :: DOMString -> EventName t e
unsafeEventNameAsync = EventNameAsyncDefault

-- | Create an EventListener that will try to run the callback synchronously,
--   but fork a thread if it takes too long to execute ('ContinueAsync').
eventListenerNew :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNew callback = (EventListener . jsval) <$> syncCallback1 ContinueAsync (fromJSValUnchecked >=> callback)

-- | Create an sync EventListener, throw 'ThrowWouldBlock' if it takes too long.
eventListenerNewSync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewSync callback = (EventListener . jsval) <$> syncCallback1 ThrowWouldBlock (fromJSValUnchecked >=> callback)

-- | Create an async EventListener.
eventListenerNewAsync :: IsEvent event => (event -> IO ()) -> IO EventListener
eventListenerNewAsync callback = (EventListener . jsval) <$> asyncCallback1 (fromJSValUnchecked >=> callback)

-- | Release the event listener (deallocate callback).
eventListenerRelease :: EventListener -> IO ()
eventListenerRelease (EventListener ref) = releaseCallback (Callback ref)
