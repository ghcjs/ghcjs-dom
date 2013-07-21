{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Attr
       (ghcjs_dom_attr_get_name, attrGetName,
        ghcjs_dom_attr_get_specified, attrGetSpecified,
        ghcjs_dom_attr_set_value, attrSetValue, ghcjs_dom_attr_get_value,
        attrGetValue, ghcjs_dom_attr_get_owner_element,
        attrGetOwnerElement, ghcjs_dom_attr_get_is_id, attrGetIsId)
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
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_attr_get_name :: JSRef DOMAttr -> IO JSString
#else 
ghcjs_dom_attr_get_name :: JSRef DOMAttr -> IO JSString
ghcjs_dom_attr_get_name = undefined
#endif
 
attrGetName ::
            (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetName self
  = fromJSString <$>
      (ghcjs_dom_attr_get_name (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        ghcjs_dom_attr_get_specified :: JSRef DOMAttr -> IO Bool
#else 
ghcjs_dom_attr_get_specified :: JSRef DOMAttr -> IO Bool
ghcjs_dom_attr_get_specified = undefined
#endif
 
attrGetSpecified :: (IsDOMAttr self) => self -> IO Bool
attrGetSpecified self
  = ghcjs_dom_attr_get_specified (unDOMAttr (toDOMAttr self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()
#else 
ghcjs_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()
ghcjs_dom_attr_set_value = undefined
#endif
 
attrSetValue ::
             (IsDOMAttr self, ToJSString val) => self -> val -> IO ()
attrSetValue self val
  = ghcjs_dom_attr_set_value (unDOMAttr (toDOMAttr self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_attr_get_value :: JSRef DOMAttr -> IO JSString
#else 
ghcjs_dom_attr_get_value :: JSRef DOMAttr -> IO JSString
ghcjs_dom_attr_get_value = undefined
#endif
 
attrGetValue ::
             (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetValue self
  = fromJSString <$>
      (ghcjs_dom_attr_get_value (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        ghcjs_dom_attr_get_owner_element ::
        JSRef DOMAttr -> IO (JSRef Element)
#else 
ghcjs_dom_attr_get_owner_element ::
                                   JSRef DOMAttr -> IO (JSRef Element)
ghcjs_dom_attr_get_owner_element = undefined
#endif
 
attrGetOwnerElement ::
                    (IsDOMAttr self) => self -> IO (Maybe Element)
attrGetOwnerElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_attr_get_owner_element (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        ghcjs_dom_attr_get_is_id :: JSRef DOMAttr -> IO Bool
#else 
ghcjs_dom_attr_get_is_id :: JSRef DOMAttr -> IO Bool
ghcjs_dom_attr_get_is_id = undefined
#endif
 
attrGetIsId :: (IsDOMAttr self) => self -> IO Bool
attrGetIsId self
  = ghcjs_dom_attr_get_is_id (unDOMAttr (toDOMAttr self))
#else
module GHCJS.DOM.Attr (
  module Graphics.UI.Gtk.WebKit.DOM.Attr
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
