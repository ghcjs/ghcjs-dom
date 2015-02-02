{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RadioNodeList
       (ghcjs_dom_radio_node_list_get, radioNodeList_get,
        ghcjs_dom_radio_node_list_set_value, radioNodeListSetValue,
        ghcjs_dom_radio_node_list_get_value, radioNodeListGetValue,
        RadioNodeList, IsRadioNodeList, castToRadioNodeList,
        gTypeRadioNodeList, toRadioNodeList)
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

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_radio_node_list_get ::
        JSRef RadioNodeList -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
radioNodeList_get ::
                  (IsRadioNodeList self) => self -> Word -> IO (Maybe Node)
radioNodeList_get self index
  = (ghcjs_dom_radio_node_list_get
       (unRadioNodeList (toRadioNodeList self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_radio_node_list_set_value ::
        JSRef RadioNodeList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
radioNodeListSetValue ::
                      (IsRadioNodeList self, ToJSString val) => self -> val -> IO ()
radioNodeListSetValue self val
  = ghcjs_dom_radio_node_list_set_value
      (unRadioNodeList (toRadioNodeList self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_radio_node_list_get_value ::
        JSRef RadioNodeList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
radioNodeListGetValue ::
                      (IsRadioNodeList self, FromJSString result) => self -> IO result
radioNodeListGetValue self
  = fromJSString <$>
      (ghcjs_dom_radio_node_list_get_value
         (unRadioNodeList (toRadioNodeList self)))
#else
module GHCJS.DOM.RadioNodeList (
  ) where
#endif
