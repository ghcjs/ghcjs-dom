{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Attr
       (ghcjs_dom_attr_get_name, attrGetName,
        ghcjs_dom_attr_get_specified, attrGetSpecified,
        ghcjs_dom_attr_set_value, attrSetValue, ghcjs_dom_attr_get_value,
        attrGetValue, ghcjs_dom_attr_get_owner_element,
        attrGetOwnerElement, ghcjs_dom_attr_get_is_id, attrGetIsId,
        DOMAttr, IsDOMAttr, castToDOMAttr, gTypeDOMAttr, toDOMAttr)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_attr_get_name :: JSRef DOMAttr -> IO JSString
 
attrGetName ::
            (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetName self
  = fromJSString <$>
      (ghcjs_dom_attr_get_name (unDOMAttr (toDOMAttr self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        ghcjs_dom_attr_get_specified :: JSRef DOMAttr -> IO Bool
 
attrGetSpecified :: (IsDOMAttr self) => self -> IO Bool
attrGetSpecified self
  = ghcjs_dom_attr_get_specified (unDOMAttr (toDOMAttr self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()
 
attrSetValue ::
             (IsDOMAttr self, ToJSString val) => self -> val -> IO ()
attrSetValue self val
  = ghcjs_dom_attr_set_value (unDOMAttr (toDOMAttr self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_attr_get_value :: JSRef DOMAttr -> IO JSString
 
attrGetValue ::
             (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetValue self
  = fromJSString <$>
      (ghcjs_dom_attr_get_value (unDOMAttr (toDOMAttr self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        ghcjs_dom_attr_get_owner_element ::
        JSRef DOMAttr -> IO (JSRef Element)
 
attrGetOwnerElement ::
                    (IsDOMAttr self) => self -> IO (Maybe Element)
attrGetOwnerElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_attr_get_owner_element (unDOMAttr (toDOMAttr self)))
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        ghcjs_dom_attr_get_is_id :: JSRef DOMAttr -> IO Bool
 
attrGetIsId :: (IsDOMAttr self) => self -> IO Bool
attrGetIsId self
  = ghcjs_dom_attr_get_is_id (unDOMAttr (toDOMAttr self))
#else
module GHCJS.DOM.Attr (
  module Graphics.UI.Gtk.WebKit.DOM.Attr
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
