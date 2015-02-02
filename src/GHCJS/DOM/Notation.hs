{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Notation
       (ghcjs_dom_notation_get_public_id, notationGetPublicId,
        ghcjs_dom_notation_get_system_id, notationGetSystemId, Notation,
        IsNotation, castToNotation, gTypeNotation, toNotation)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_notation_get_public_id :: JSRef Notation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notation.publicId Mozilla Notation.publicId documentation> 
notationGetPublicId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_public_id (unNotation (toNotation self)))
 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_notation_get_system_id :: JSRef Notation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Notation.systemId Mozilla Notation.systemId documentation> 
notationGetSystemId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_system_id (unNotation (toNotation self)))
#else
module GHCJS.DOM.Notation (
  ) where
#endif
