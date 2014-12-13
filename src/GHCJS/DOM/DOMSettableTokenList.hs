{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSettableTokenList
       (ghcjs_dom_dom_settable_token_list_get, domSettableTokenList_get,
        ghcjs_dom_dom_settable_token_list_set_value,
        domSettableTokenListSetValue,
        ghcjs_dom_dom_settable_token_list_get_value,
        domSettableTokenListGetValue, DOMSettableTokenList,
        IsDOMSettableTokenList, castToDOMSettableTokenList,
        gTypeDOMSettableTokenList, toDOMSettableTokenList)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_dom_settable_token_list_get ::
        JSRef DOMSettableTokenList -> Word -> IO JSString
#else 
ghcjs_dom_dom_settable_token_list_get ::
                                        JSRef DOMSettableTokenList -> Word -> IO JSString
ghcjs_dom_dom_settable_token_list_get = undefined
#endif
 
domSettableTokenList_get ::
                         (IsDOMSettableTokenList self, FromJSString result) =>
                           self -> Word -> IO result
domSettableTokenList_get self index
  = fromJSString <$>
      (ghcjs_dom_dom_settable_token_list_get
         (unDOMSettableTokenList (toDOMSettableTokenList self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_dom_settable_token_list_set_value ::
        JSRef DOMSettableTokenList -> JSString -> IO ()
#else 
ghcjs_dom_dom_settable_token_list_set_value ::
                                              JSRef DOMSettableTokenList -> JSString -> IO ()
ghcjs_dom_dom_settable_token_list_set_value = undefined
#endif
 
domSettableTokenListSetValue ::
                             (IsDOMSettableTokenList self, ToJSString val) =>
                               self -> val -> IO ()
domSettableTokenListSetValue self val
  = ghcjs_dom_dom_settable_token_list_set_value
      (unDOMSettableTokenList (toDOMSettableTokenList self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_dom_settable_token_list_get_value ::
        JSRef DOMSettableTokenList -> IO JSString
#else 
ghcjs_dom_dom_settable_token_list_get_value ::
                                              JSRef DOMSettableTokenList -> IO JSString
ghcjs_dom_dom_settable_token_list_get_value = undefined
#endif
 
domSettableTokenListGetValue ::
                             (IsDOMSettableTokenList self, FromJSString result) =>
                               self -> IO result
domSettableTokenListGetValue self
  = fromJSString <$>
      (ghcjs_dom_dom_settable_token_list_get_value
         (unDOMSettableTokenList (toDOMSettableTokenList self)))
#else
module GHCJS.DOM.DOMSettableTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
#endif
