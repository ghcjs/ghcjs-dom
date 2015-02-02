{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFormControlsCollection
       (ghcjs_dom_html_form_controls_collection_get,
        htmlFormControlsCollection_get,
        ghcjs_dom_html_form_controls_collection_named_item,
        htmlFormControlsCollectionNamedItem, HTMLFormControlsCollection,
        IsHTMLFormControlsCollection, castToHTMLFormControlsCollection,
        gTypeHTMLFormControlsCollection, toHTMLFormControlsCollection)
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
        ghcjs_dom_html_form_controls_collection_get ::
        JSRef HTMLFormControlsCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
htmlFormControlsCollection_get ::
                               (IsHTMLFormControlsCollection self) =>
                                 self -> Word -> IO (Maybe Node)
htmlFormControlsCollection_get self index
  = (ghcjs_dom_html_form_controls_collection_get
       (unHTMLFormControlsCollection (toHTMLFormControlsCollection self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_form_controls_collection_named_item ::
        JSRef HTMLFormControlsCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
htmlFormControlsCollectionNamedItem ::
                                    (IsHTMLFormControlsCollection self, ToJSString name) =>
                                      self -> name -> IO (Maybe Node)
htmlFormControlsCollectionNamedItem self name
  = (ghcjs_dom_html_form_controls_collection_named_item
       (unHTMLFormControlsCollection (toHTMLFormControlsCollection self))
       (toJSString name))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLFormControlsCollection (
  ) where
#endif
