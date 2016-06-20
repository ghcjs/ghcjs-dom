{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.FormData (
    module Generated
  , js_append
  , js_append3
  , append
  , appendBlob
) where

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSVal, JSString)
import GHCJS.Marshal.Internal (PToJSVal(..))
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.FormData as Generated hiding (js_append, append)

foreign import javascript unsafe "$1[\"append\"]($2, $3)"
        js_append :: FormData -> JSString -> JSVal -> IO ()

foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        js_append3 :: FormData -> JSString -> JSVal -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData/append Mozilla FormData.append documentation>
append
  :: (MonadIO m, ToJSString name, ToJSString str)
  => FormData -> name -> str -> m ()
append self name str
  = liftIO $ js_append self (toJSString name) (pToJSVal str)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData/append Mozilla FormData.append documentation>
appendBlob
  :: (MonadIO m, ToJSString name, IsBlob blob, ToJSString filename)
  => FormData -> name -> blob -> Maybe filename -> m ()
appendBlob self name blob mfilename
  = let jsname = toJSString name
        jsblob = unBlob $ toBlob blob
    in liftIO $ case mfilename of
         Just filename -> js_append3 self jsname jsblob $ toJSString filename
         Nothing -> js_append self jsname jsblob
