{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.XMLHttpRequest (
    module Generated
  , XHRError(..)
  , js_send
  , send
  , sendString
  , sendArrayBuffer
  , sendBlob
  , sendDocument
  , sendFormData
) where

import Control.Monad.IO.Class (MonadIO(..))
import Control.Exception (Exception(..), throwIO)

import GHCJS.Types (JSVal)
import GHCJS.Marshal.Internal (PToJSVal(..))
import GHCJS.Foreign (jsNull)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.XMLHttpRequest as Generated hiding (js_send, send)

data XHRError = XHRError
              | XHRAborted
              deriving (Show, Eq)

instance Exception XHRError

throwXHRError 0 = return ()
throwXHRError 1 = throwIO XHRAborted
throwXHRError 2 = throwIO XHRError

foreign import javascript interruptible "h$dom$sendXHR($1, $2, $c);" js_send :: XMLHttpRequest -> JSVal -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
send :: (MonadIO m) => XMLHttpRequest -> m ()
send self = liftIO $ js_send self jsNull >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendString :: (MonadIO m, ToJSString str) => XMLHttpRequest -> str -> m ()
sendString self str = liftIO $ js_send self (pToJSVal str) >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendArrayBuffer :: (MonadIO m, IsArrayBufferView view) => XMLHttpRequest -> view -> m ()
sendArrayBuffer self view = liftIO $ js_send self (unArrayBufferView $ toArrayBufferView view) >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendBlob :: (MonadIO m, IsBlob blob) => XMLHttpRequest -> blob -> m ()
sendBlob self blob = liftIO $ js_send self (unBlob $ toBlob blob) >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendDocument :: (MonadIO m, IsDocument doc) => XMLHttpRequest -> doc -> m ()
sendDocument self doc = liftIO $ js_send self (unDocument $ toDocument doc) >>= throwXHRError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest#send() Mozilla XMLHttpRequest.send documentation>
sendFormData :: (MonadIO m) => XMLHttpRequest -> FormData -> m ()
sendFormData self formData = liftIO $ js_send self (unFormData formData) >>= throwXHRError
