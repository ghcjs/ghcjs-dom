{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Notation
       (webkit_dom_notation_get_public_id, notationGetPublicId,
        webkit_dom_notation_get_system_id, notationGetSystemId)
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
        webkit_dom_notation_get_public_id :: JSRef Notation -> IO JSString
#else 
webkit_dom_notation_get_public_id :: JSRef Notation -> IO JSString
webkit_dom_notation_get_public_id = undefined
#endif
 
notationGetPublicId ::
                    (NotationClass self, FromJSString result) => self -> IO result
notationGetPublicId self
  = fromJSString <$>
      (webkit_dom_notation_get_public_id (unNotation (toNotation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"systemId\"]"
        webkit_dom_notation_get_system_id :: JSRef Notation -> IO JSString
#else 
webkit_dom_notation_get_system_id :: JSRef Notation -> IO JSString
webkit_dom_notation_get_system_id = undefined
#endif
 
notationGetSystemId ::
                    (NotationClass self, FromJSString result) => self -> IO result
notationGetSystemId self
  = fromJSString <$>
      (webkit_dom_notation_get_system_id (unNotation (toNotation self)))