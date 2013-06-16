{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMSettableTokenList
       (webkit_dom_dom_settable_token_list_set_value,
        domSettableTokenListSetValue,
        webkit_dom_dom_settable_token_list_get_value,
        domSettableTokenListGetValue)
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
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_dom_settable_token_list_set_value ::
        JSRef DOMSettableTokenList -> JSString -> IO ()
#else 
webkit_dom_dom_settable_token_list_set_value ::
                                               JSRef DOMSettableTokenList -> JSString -> IO ()
webkit_dom_dom_settable_token_list_set_value = undefined
#endif
 
domSettableTokenListSetValue ::
                             (DOMSettableTokenListClass self, ToJSString val) =>
                               self -> val -> IO ()
domSettableTokenListSetValue self val
  = webkit_dom_dom_settable_token_list_set_value
      (unDOMSettableTokenList (toDOMSettableTokenList self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_dom_settable_token_list_get_value ::
        JSRef DOMSettableTokenList -> IO JSString
#else 
webkit_dom_dom_settable_token_list_get_value ::
                                               JSRef DOMSettableTokenList -> IO JSString
webkit_dom_dom_settable_token_list_get_value = undefined
#endif
 
domSettableTokenListGetValue ::
                             (DOMSettableTokenListClass self, FromJSString result) =>
                               self -> IO result
domSettableTokenListGetValue self
  = fromJSString <$>
      (webkit_dom_dom_settable_token_list_get_value
         (unDOMSettableTokenList (toDOMSettableTokenList self)))