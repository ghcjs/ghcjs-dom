{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.FormData (
    module Generated
  , js_append
  , append
  , appendBlob
  , appendFile
) where

import Prelude hiding (appendFile)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSVal, JSString)
import GHCJS.Marshal.Internal (PToJSVal(..))
import GHCJS.Foreign (jsNull)
import GHCJS.DOM.File (getName)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.FormData as Generated hiding (js_append, append)

foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        js_append :: FormData -> JSString -> JSVal -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData/append Mozilla FormData.append documentation>
append
  :: (MonadIO m, ToJSString name, ToJSString str)
  => FormData -> name -> str -> m ()
append self name str
  = liftIO $ js_append self (toJSString name) (pToJSVal str) (Nullable jsNull)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData/append Mozilla FormData.append documentation>
appendBlob
  :: (MonadIO m, ToJSString name, IsBlob blob, ToJSString filename)
  => FormData -> name -> blob -> Maybe filename -> m ()
appendBlob self name blob filename
  = liftIO $ js_append self (toJSString name) (unBlob $ toBlob blob) $
                Nullable $ pToJSVal $ maybe (toJSString "blob") toJSString filename

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData/append Mozilla FormData.append documentation>
appendFile
  :: (MonadIO m, ToJSString name, ToJSString filename)
  => FormData -> name -> File -> Maybe filename -> m ()
appendFile self name file filename
  = liftIO $ do
      fn <- getName file
      js_append self (toJSString name) (unFile file) $
          Nullable $ pToJSVal $ maybe (fn :: JSString) toJSString filename
