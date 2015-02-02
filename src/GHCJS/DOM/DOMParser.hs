{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMParser
       (ghcjs_dom_dom_parser_new, domParserNew,
        ghcjs_dom_dom_parser_parse_from_string, domParserParseFromString,
        DOMParser, IsDOMParser, castToDOMParser, gTypeDOMParser,
        toDOMParser)
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

 
foreign import javascript unsafe "new window[\"DOMParser\"]()"
        ghcjs_dom_dom_parser_new :: IO (JSRef DOMParser)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation> 
domParserNew :: IO DOMParser
domParserNew = ghcjs_dom_dom_parser_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"parseFromString\"]($2, $3)"
        ghcjs_dom_dom_parser_parse_from_string ::
        JSRef DOMParser -> JSString -> JSString -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
domParserParseFromString ::
                         (IsDOMParser self, ToJSString str, ToJSString contentType) =>
                           self -> str -> contentType -> IO (Maybe Document)
domParserParseFromString self str contentType
  = (ghcjs_dom_dom_parser_parse_from_string
       (unDOMParser (toDOMParser self))
       (toJSString str)
       (toJSString contentType))
      >>= fromJSRef
#else
module GHCJS.DOM.DOMParser (
  ) where
#endif
