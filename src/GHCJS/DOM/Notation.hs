{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Notation
       (ghcjs_dom_notation_get_public_id, notationGetPublicId,
        ghcjs_dom_notation_get_system_id, notationGetSystemId)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_notation_get_public_id :: JSRef Notation -> IO JSString
#else 
ghcjs_dom_notation_get_public_id :: JSRef Notation -> IO JSString
ghcjs_dom_notation_get_public_id = undefined
#endif
 
notationGetPublicId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_public_id (unNotation (toNotation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_notation_get_system_id :: JSRef Notation -> IO JSString
#else 
ghcjs_dom_notation_get_system_id :: JSRef Notation -> IO JSString
ghcjs_dom_notation_get_system_id = undefined
#endif
 
notationGetSystemId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_system_id (unNotation (toNotation self)))