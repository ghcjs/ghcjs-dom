{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AbstractView
       (ghcjs_dom_abstract_view_get_document, abstractViewGetDocument,
        ghcjs_dom_abstract_view_get_style_media, abstractViewGetStyleMedia,
        AbstractView, IsAbstractView, castToAbstractView,
        gTypeAbstractView, toAbstractView)
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

 
foreign import javascript unsafe "$1[\"document\"]"
        ghcjs_dom_abstract_view_get_document ::
        JSRef AbstractView -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
abstractViewGetDocument ::
                        (IsAbstractView self) => self -> IO (Maybe Document)
abstractViewGetDocument self
  = (ghcjs_dom_abstract_view_get_document
       (unAbstractView (toAbstractView self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        ghcjs_dom_abstract_view_get_style_media ::
        JSRef AbstractView -> IO (JSRef StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
abstractViewGetStyleMedia ::
                          (IsAbstractView self) => self -> IO (Maybe StyleMedia)
abstractViewGetStyleMedia self
  = (ghcjs_dom_abstract_view_get_style_media
       (unAbstractView (toAbstractView self)))
      >>= fromJSRef
#else
module GHCJS.DOM.AbstractView (
  ) where
#endif
