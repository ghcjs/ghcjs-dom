{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Text
       (ghcjs_dom_text_split_text, textSplitText,
        ghcjs_dom_text_replace_whole_text, textReplaceWholeText,
        ghcjs_dom_text_get_whole_text, textGetWholeText, Text(..), IsText,
        castToText, gTypeText, toText)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        ghcjs_dom_text_split_text :: JSRef Text -> Word -> IO (JSRef Text)
 
textSplitText :: (IsText self) => self -> Word -> IO (Maybe Text)
textSplitText self offset
  = fmap Text . maybeJSNull <$>
      (ghcjs_dom_text_split_text (unText (toText self)) offset)
 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        ghcjs_dom_text_replace_whole_text ::
        JSRef Text -> JSString -> IO (JSRef Text)
 
textReplaceWholeText ::
                     (IsText self, ToJSString content) =>
                       self -> content -> IO (Maybe Text)
textReplaceWholeText self content
  = fmap Text . maybeJSNull <$>
      (ghcjs_dom_text_replace_whole_text (unText (toText self))
         (toJSString content))
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        ghcjs_dom_text_get_whole_text :: JSRef Text -> IO JSString
 
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
