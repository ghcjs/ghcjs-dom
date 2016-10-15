{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FileReaderSync
       (js_newFileReaderSync, newFileReaderSync, js_readAsArrayBuffer,
        readAsArrayBuffer, readAsArrayBuffer_, readAsArrayBufferUnchecked,
        js_readAsBinaryString, readAsBinaryString, readAsBinaryString_,
        js_readAsText, readAsText, readAsText_, js_readAsDataURL,
        readAsDataURL, readAsDataURL_, FileReaderSync(..),
        gTypeFileReaderSync)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "new window[\"FileReaderSync\"]()"
        js_newFileReaderSync :: IO FileReaderSync

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
newFileReaderSync :: (MonadIO m) => m FileReaderSync
newFileReaderSync = liftIO (js_newFileReaderSync)
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        js_readAsArrayBuffer ::
        FileReaderSync -> Nullable Blob -> IO (Nullable ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadIO m, IsBlob blob) =>
                    FileReaderSync -> Maybe blob -> m (Maybe ArrayBuffer)
readAsArrayBuffer self blob
  = liftIO
      (nullableToMaybe <$>
         (js_readAsArrayBuffer (self) (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer_ ::
                   (MonadIO m, IsBlob blob) => FileReaderSync -> Maybe blob -> m ()
readAsArrayBuffer_ self blob
  = liftIO
      (void
         (js_readAsArrayBuffer (self) (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBufferUnchecked ::
                           (MonadIO m, IsBlob blob) =>
                             FileReaderSync -> Maybe blob -> m ArrayBuffer
readAsArrayBufferUnchecked self blob
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_readAsArrayBuffer (self) (maybeToNullable (fmap toBlob blob))))
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        js_readAsBinaryString ::
        FileReaderSync -> Nullable Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadIO m, IsBlob blob, FromJSString result) =>
                     FileReaderSync -> Maybe blob -> m result
readAsBinaryString self blob
  = liftIO
      (fromJSString <$>
         (js_readAsBinaryString (self)
            (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString_ ::
                    (MonadIO m, IsBlob blob) => FileReaderSync -> Maybe blob -> m ()
readAsBinaryString_ self blob
  = liftIO
      (void
         (js_readAsBinaryString (self)
            (maybeToNullable (fmap toBlob blob))))
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        js_readAsText ::
        FileReaderSync -> Nullable Blob -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText ::
           (MonadIO m, IsBlob blob, ToJSString encoding,
            FromJSString result) =>
             FileReaderSync -> Maybe blob -> encoding -> m result
readAsText self blob encoding
  = liftIO
      (fromJSString <$>
         (js_readAsText (self) (maybeToNullable (fmap toBlob blob))
            (toJSString encoding)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText_ ::
            (MonadIO m, IsBlob blob, ToJSString encoding) =>
              FileReaderSync -> Maybe blob -> encoding -> m ()
readAsText_ self blob encoding
  = liftIO
      (void
         (js_readAsText (self) (maybeToNullable (fmap toBlob blob))
            (toJSString encoding)))
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        js_readAsDataURL :: FileReaderSync -> Nullable Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL ::
              (MonadIO m, IsBlob blob, FromJSString result) =>
                FileReaderSync -> Maybe blob -> m result
readAsDataURL self blob
  = liftIO
      (fromJSString <$>
         (js_readAsDataURL (self) (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL_ ::
               (MonadIO m, IsBlob blob) => FileReaderSync -> Maybe blob -> m ()
readAsDataURL_ self blob
  = liftIO
      (void
         (js_readAsDataURL (self) (maybeToNullable (fmap toBlob blob))))