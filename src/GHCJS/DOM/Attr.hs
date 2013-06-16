{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Attr
       (webkit_dom_attr_get_name, attrGetName,
        webkit_dom_attr_get_specified, attrGetSpecified,
        webkit_dom_attr_set_value, attrSetValue, webkit_dom_attr_get_value,
        attrGetValue, webkit_dom_attr_get_owner_element,
        attrGetOwnerElement, webkit_dom_attr_get_is_id, attrGetIsId)
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
        webkit_dom_attr_get_name :: JSRef DOMAttr -> IO JSString
#else 
webkit_dom_attr_get_name :: JSRef DOMAttr -> IO JSString
webkit_dom_attr_get_name = undefined
#endif
 
attrGetName ::
            (DOMAttrClass self, FromJSString result) => self -> IO result
attrGetName self
  = fromJSString <$>
      (webkit_dom_attr_get_name (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"specified\"]"
        webkit_dom_attr_get_specified :: JSRef DOMAttr -> IO JSBool
#else 
webkit_dom_attr_get_specified :: JSRef DOMAttr -> IO JSBool
webkit_dom_attr_get_specified = undefined
#endif
 
attrGetSpecified :: (DOMAttrClass self) => self -> IO Bool
attrGetSpecified self
  = fromJSBool <$>
      (webkit_dom_attr_get_specified (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()
#else 
webkit_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()
webkit_dom_attr_set_value = undefined
#endif
 
attrSetValue ::
             (DOMAttrClass self, ToJSString val) => self -> val -> IO ()
attrSetValue self val
  = webkit_dom_attr_set_value (unDOMAttr (toDOMAttr self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_attr_get_value :: JSRef DOMAttr -> IO JSString
#else 
webkit_dom_attr_get_value :: JSRef DOMAttr -> IO JSString
webkit_dom_attr_get_value = undefined
#endif
 
attrGetValue ::
             (DOMAttrClass self, FromJSString result) => self -> IO result
attrGetValue self
  = fromJSString <$>
      (webkit_dom_attr_get_value (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        webkit_dom_attr_get_owner_element ::
        JSRef DOMAttr -> IO (JSRef Element)
#else 
webkit_dom_attr_get_owner_element ::
                                    JSRef DOMAttr -> IO (JSRef Element)
webkit_dom_attr_get_owner_element = undefined
#endif
 
attrGetOwnerElement ::
                    (DOMAttrClass self) => self -> IO (Maybe Element)
attrGetOwnerElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_attr_get_owner_element (unDOMAttr (toDOMAttr self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"isId\"]"
        webkit_dom_attr_get_is_id :: JSRef DOMAttr -> IO JSBool
#else 
webkit_dom_attr_get_is_id :: JSRef DOMAttr -> IO JSBool
webkit_dom_attr_get_is_id = undefined
#endif
 
attrGetIsId :: (DOMAttrClass self) => self -> IO Bool
attrGetIsId self
  = fromJSBool <$>
      (webkit_dom_attr_get_is_id (unDOMAttr (toDOMAttr self)))