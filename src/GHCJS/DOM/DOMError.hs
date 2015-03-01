{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMError
       (js_getName, getName, DOMError, castToDOMError, gTypeDOMError,
        IsDOMError, toDOMError)
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

 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef DOMError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMError.name Mozilla DOMError.name documentation> 
getName ::
        (MonadIO m, IsDOMError self, FromJSString result) =>
          self -> m result
getName self
  = liftIO
      (fromJSString <$> (js_getName (unDOMError (toDOMError self))))
#else
module GHCJS.DOM.DOMError (
  ) where
#endif
