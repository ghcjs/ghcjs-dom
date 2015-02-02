{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Comment
       (ghcjs_dom_comment_new, commentNew, Comment, IsComment,
        castToComment, gTypeComment, toComment)
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

 
foreign import javascript unsafe "new window[\"Comment\"]($1)"
        ghcjs_dom_comment_new :: JSString -> IO (JSRef Comment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Comment Mozilla Comment documentation> 
commentNew :: (ToJSString data') => data' -> IO Comment
commentNew data'
  = ghcjs_dom_comment_new (toJSString data') >>= fromJSRefUnchecked
#else
module GHCJS.DOM.Comment (
  ) where
#endif
