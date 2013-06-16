{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Text
       (webkit_dom_text_split_text, textSplitText,
        webkit_dom_text_replace_whole_text, textReplaceWholeText,
        webkit_dom_text_get_whole_text, textGetWholeText)
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
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        webkit_dom_text_split_text :: JSRef Text -> Word -> IO (JSRef Text)
#else 
webkit_dom_text_split_text :: JSRef Text -> Word -> IO (JSRef Text)
webkit_dom_text_split_text = undefined
#endif
 
textSplitText ::
              (TextClass self) => self -> Word -> IO (Maybe Text)
textSplitText self offset
  = fmap Text . maybeJSNull <$>
      (webkit_dom_text_split_text (unText (toText self)) offset)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        webkit_dom_text_replace_whole_text ::
        JSRef Text -> JSString -> IO (JSRef Text)
#else 
webkit_dom_text_replace_whole_text ::
                                     JSRef Text -> JSString -> IO (JSRef Text)
webkit_dom_text_replace_whole_text = undefined
#endif
 
textReplaceWholeText ::
                     (TextClass self, ToJSString content) =>
                       self -> content -> IO (Maybe Text)
textReplaceWholeText self content
  = fmap Text . maybeJSNull <$>
      (webkit_dom_text_replace_whole_text (unText (toText self))
         (toJSString content))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"wholeText\"]"
        webkit_dom_text_get_whole_text :: JSRef Text -> IO JSString
#else 
webkit_dom_text_get_whole_text :: JSRef Text -> IO JSString
webkit_dom_text_get_whole_text = undefined
#endif
 
textGetWholeText ::
                 (TextClass self, FromJSString result) => self -> IO result
textGetWholeText self
  = fromJSString <$>
      (webkit_dom_text_get_whole_text (unText (toText self)))