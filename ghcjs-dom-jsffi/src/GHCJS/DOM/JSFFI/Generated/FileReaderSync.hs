{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FileReaderSync
       (js_newFileReaderSync, newFileReaderSync, js_readAsArrayBuffer,
        readAsArrayBuffer, readAsArrayBuffer_, js_readAsBinaryString,
        readAsBinaryString, readAsBinaryString_, js_readAsText, readAsText,
        readAsText_, js_readAsDataURL, readAsDataURL, readAsDataURL_,
        FileReaderSync(..), gTypeFileReaderSync)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"FileReaderSync\"]()"
        js_newFileReaderSync :: IO FileReaderSync

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
newFileReaderSync :: (MonadIO m) => m FileReaderSync
newFileReaderSync = liftIO (js_newFileReaderSync)
 
foreign import javascript safe "$1[\"readAsArrayBuffer\"]($2)"
        js_readAsArrayBuffer :: FileReaderSync -> Blob -> IO ArrayBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadIO m, IsBlob blob) => FileReaderSync -> blob -> m ArrayBuffer
readAsArrayBuffer self blob
  = liftIO (js_readAsArrayBuffer self (toBlob blob))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer_ ::
                   (MonadIO m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsArrayBuffer_ self blob
  = liftIO (void (js_readAsArrayBuffer self (toBlob blob)))
 
foreign import javascript safe "$1[\"readAsBinaryString\"]($2)"
        js_readAsBinaryString :: FileReaderSync -> Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadIO m, IsBlob blob, FromJSString result) =>
                     FileReaderSync -> blob -> m result
readAsBinaryString self blob
  = liftIO
      (fromJSString <$> (js_readAsBinaryString self (toBlob blob)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString_ ::
                    (MonadIO m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsBinaryString_ self blob
  = liftIO (void (js_readAsBinaryString self (toBlob blob)))
 
foreign import javascript safe "$1[\"readAsText\"]($2, $3)"
        js_readAsText ::
        FileReaderSync -> Blob -> Optional JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText ::
           (MonadIO m, IsBlob blob, ToJSString encoding,
            FromJSString result) =>
             FileReaderSync -> blob -> Maybe encoding -> m result
readAsText self blob encoding
  = liftIO
      (fromJSString <$>
         (js_readAsText self (toBlob blob) (toOptionalJSString encoding)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText_ ::
            (MonadIO m, IsBlob blob, ToJSString encoding) =>
              FileReaderSync -> blob -> Maybe encoding -> m ()
readAsText_ self blob encoding
  = liftIO
      (void
         (js_readAsText self (toBlob blob) (toOptionalJSString encoding)))
 
foreign import javascript safe "$1[\"readAsDataURL\"]($2)"
        js_readAsDataURL :: FileReaderSync -> Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL ::
              (MonadIO m, IsBlob blob, FromJSString result) =>
                FileReaderSync -> blob -> m result
readAsDataURL self blob
  = liftIO (fromJSString <$> (js_readAsDataURL self (toBlob blob)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL_ ::
               (MonadIO m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsDataURL_ self blob
  = liftIO (void (js_readAsDataURL self (toBlob blob)))