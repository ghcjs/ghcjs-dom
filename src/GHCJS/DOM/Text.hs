{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Text
       (ghcjs_dom_text_new, textNew, ghcjs_dom_text_split_text,
        textSplitText, ghcjs_dom_text_replace_whole_text,
        textReplaceWholeText, ghcjs_dom_text_get_whole_text,
        textGetWholeText, Text(..), IsText, castToText, gTypeText, toText)
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

 
foreign import javascript unsafe "new window[\"Text\"]($1)"
        ghcjs_dom_text_new :: JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
textNew :: (ToJSString data') => data' -> IO Text
textNew data'
  = ghcjs_dom_text_new (toJSString data') >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        ghcjs_dom_text_split_text :: JSRef Text -> Word -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
textSplitText :: (IsText self) => self -> Word -> IO (Maybe Text)
textSplitText self offset
  = (ghcjs_dom_text_split_text (unText (toText self)) offset) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        ghcjs_dom_text_replace_whole_text ::
        JSRef Text -> JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
textReplaceWholeText ::
                     (IsText self, ToJSString content) =>
                       self -> content -> IO (Maybe Text)
textReplaceWholeText self content
  = (ghcjs_dom_text_replace_whole_text (unText (toText self))
       (toJSString content))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        ghcjs_dom_text_get_whole_text :: JSRef Text -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
textGetWholeText ::
                 (IsText self, FromJSString result) => self -> IO result
textGetWholeText self
  = fromJSString <$>
      (ghcjs_dom_text_get_whole_text (unText (toText self)))
#else
module GHCJS.DOM.Text (
  module Graphics.UI.Gtk.WebKit.DOM.Text
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Text
#endif
