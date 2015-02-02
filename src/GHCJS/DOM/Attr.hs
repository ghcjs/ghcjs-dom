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

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_attr_get_name :: JSRef DOMAttr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.name Mozilla Attr.name documentation> 
attrGetName ::
            (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetName self
  = fromJSString <$>
      (ghcjs_dom_attr_get_name (unDOMAttr (toDOMAttr self)))
 
foreign import javascript unsafe "($1[\"specified\"] ? 1 : 0)"
        ghcjs_dom_attr_get_specified :: JSRef DOMAttr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.specified Mozilla Attr.specified documentation> 
attrGetSpecified :: (IsDOMAttr self) => self -> IO Bool
attrGetSpecified self
  = ghcjs_dom_attr_get_specified (unDOMAttr (toDOMAttr self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_attr_set_value :: JSRef DOMAttr -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
attrSetValue ::
             (IsDOMAttr self, ToJSString val) => self -> val -> IO ()
attrSetValue self val
  = ghcjs_dom_attr_set_value (unDOMAttr (toDOMAttr self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_attr_get_value :: JSRef DOMAttr -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.value Mozilla Attr.value documentation> 
attrGetValue ::
             (IsDOMAttr self, FromJSString result) => self -> IO result
attrGetValue self
  = fromJSString <$>
      (ghcjs_dom_attr_get_value (unDOMAttr (toDOMAttr self)))
 
foreign import javascript unsafe "$1[\"ownerElement\"]"
        ghcjs_dom_attr_get_owner_element ::
        JSRef DOMAttr -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.ownerElement Mozilla Attr.ownerElement documentation> 
attrGetOwnerElement ::
                    (IsDOMAttr self) => self -> IO (Maybe Element)
attrGetOwnerElement self
  = (ghcjs_dom_attr_get_owner_element (unDOMAttr (toDOMAttr self)))
      >>= fromJSRef
 
foreign import javascript unsafe "($1[\"isId\"] ? 1 : 0)"
        ghcjs_dom_attr_get_is_id :: JSRef DOMAttr -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Attr.isId Mozilla Attr.isId documentation> 
attrGetIsId :: (IsDOMAttr self) => self -> IO Bool
attrGetIsId self
  = ghcjs_dom_attr_get_is_id (unDOMAttr (toDOMAttr self))
#else
module GHCJS.DOM.Attr (
  module Graphics.UI.Gtk.WebKit.DOM.Attr
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Attr
#endif
