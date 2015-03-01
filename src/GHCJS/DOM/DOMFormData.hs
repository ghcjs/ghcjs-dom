{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMFormData
       (js_newDOMFormData, newDOMFormData, js_append, append, DOMFormData,
        castToDOMFormData, gTypeDOMFormData)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"FormData\"]($1)"
        js_newDOMFormData ::
        JSRef HTMLFormElement -> IO (JSRef DOMFormData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newDOMFormData ::
               (MonadIO m) => Maybe HTMLFormElement -> m DOMFormData
newDOMFormData form
  = liftIO
      (js_newDOMFormData (maybe jsNull unHTMLFormElement form) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        js_append ::
        JSRef DOMFormData -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
append ::
       (MonadIO m, ToJSString name, ToJSString value,
        ToJSString filename) =>
         DOMFormData -> name -> value -> filename -> m ()
append self name value filename
  = liftIO
      (js_append (unDOMFormData self) (toJSString name)
         (toJSString value)
         (toJSString filename))
#else
module GHCJS.DOM.DOMFormData (
  ) where
#endif
