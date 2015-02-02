{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Counter
       (ghcjs_dom_counter_get_identifier, counterGetIdentifier,
        ghcjs_dom_counter_get_list_style, counterGetListStyle,
        ghcjs_dom_counter_get_separator, counterGetSeparator, Counter,
        IsCounter, castToCounter, gTypeCounter, toCounter)
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

 
foreign import javascript unsafe "$1[\"identifier\"]"
        ghcjs_dom_counter_get_identifier :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.identifier Mozilla Counter.identifier documentation> 
counterGetIdentifier ::
                     (IsCounter self, FromJSString result) => self -> IO result
counterGetIdentifier self
  = fromJSString <$>
      (ghcjs_dom_counter_get_identifier (unCounter (toCounter self)))
 
foreign import javascript unsafe "$1[\"listStyle\"]"
        ghcjs_dom_counter_get_list_style :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.listStyle Mozilla Counter.listStyle documentation> 
counterGetListStyle ::
                    (IsCounter self, FromJSString result) => self -> IO result
counterGetListStyle self
  = fromJSString <$>
      (ghcjs_dom_counter_get_list_style (unCounter (toCounter self)))
 
foreign import javascript unsafe "$1[\"separator\"]"
        ghcjs_dom_counter_get_separator :: JSRef Counter -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.separator Mozilla Counter.separator documentation> 
counterGetSeparator ::
                    (IsCounter self, FromJSString result) => self -> IO result
counterGetSeparator self
  = fromJSString <$>
      (ghcjs_dom_counter_get_separator (unCounter (toCounter self)))
#else
module GHCJS.DOM.Counter (
  ) where
#endif
