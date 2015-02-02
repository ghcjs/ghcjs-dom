{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMTokenList
       (ghcjs_dom_dom_token_list_item, domTokenListItem,
        ghcjs_dom_dom_token_list_contains, domTokenListContains,
        ghcjs_dom_dom_token_list_add, domTokenListAdd,
        ghcjs_dom_dom_token_list_remove, domTokenListRemove,
        ghcjs_dom_dom_token_list_toggle, domTokenListToggle,
        ghcjs_dom_dom_token_list_get_length, domTokenListGetLength,
        DOMTokenList, IsDOMTokenList, castToDOMTokenList,
        gTypeDOMTokenList, toDOMTokenList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_token_list_item ::
        JSRef DOMTokenList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
domTokenListItem ::
                 (IsDOMTokenList self, FromJSString result) =>
                   self -> Word -> IO result
domTokenListItem self index
  = fromJSString <$>
      (ghcjs_dom_dom_token_list_item
         (unDOMTokenList (toDOMTokenList self))
         index)
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_token_list_contains ::
        JSRef DOMTokenList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
domTokenListContains ::
                     (IsDOMTokenList self, ToJSString token) => self -> token -> IO Bool
domTokenListContains self token
  = ghcjs_dom_dom_token_list_contains
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)
 
foreign import javascript unsafe "$1[\"add\"].apply($1, $2)"
        ghcjs_dom_dom_token_list_add ::
        JSRef DOMTokenList -> JSRef [a] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
domTokenListAdd ::
                (IsDOMTokenList self, ToJSString tokens, ToJSRef tokens) =>
                  self -> [tokens] -> IO ()
domTokenListAdd self tokens
  = toJSRef tokens >>=
      \ tokens' ->
        ghcjs_dom_dom_token_list_add (unDOMTokenList (toDOMTokenList self))
          tokens'
 
foreign import javascript unsafe "$1[\"remove\"].apply($1, $2)"
        ghcjs_dom_dom_token_list_remove ::
        JSRef DOMTokenList -> JSRef [a] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
domTokenListRemove ::
                   (IsDOMTokenList self, ToJSString tokens, ToJSRef tokens) =>
                     self -> [tokens] -> IO ()
domTokenListRemove self tokens
  = toJSRef tokens >>=
      \ tokens' ->
        ghcjs_dom_dom_token_list_remove
          (unDOMTokenList (toDOMTokenList self))
          tokens'
 
foreign import javascript unsafe "($1[\"toggle\"]($2, $3) ? 1 : 0)"
        ghcjs_dom_dom_token_list_toggle ::
        JSRef DOMTokenList -> JSString -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
domTokenListToggle ::
                   (IsDOMTokenList self, ToJSString token) =>
                     self -> token -> Bool -> IO Bool
domTokenListToggle self token force
  = ghcjs_dom_dom_token_list_toggle
      (unDOMTokenList (toDOMTokenList self))
      (toJSString token)
      force
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_token_list_get_length ::
        JSRef DOMTokenList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
domTokenListGetLength :: (IsDOMTokenList self) => self -> IO Word
domTokenListGetLength self
  = ghcjs_dom_dom_token_list_get_length
      (unDOMTokenList (toDOMTokenList self))
#else
module GHCJS.DOM.DOMTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
#endif
