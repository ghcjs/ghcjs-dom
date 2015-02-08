{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLProgressElement
       (ghcjs_dom_html_progress_element_set_value,
        htmlProgressElementSetValue,
        ghcjs_dom_html_progress_element_get_value,
        htmlProgressElementGetValue,
        ghcjs_dom_html_progress_element_set_max, htmlProgressElementSetMax,
        ghcjs_dom_html_progress_element_get_max, htmlProgressElementGetMax,
        ghcjs_dom_html_progress_element_get_position,
        htmlProgressElementGetPosition,
        ghcjs_dom_html_progress_element_get_labels,
        htmlProgressElementGetLabels, HTMLProgressElement,
        IsHTMLProgressElement, castToHTMLProgressElement,
        gTypeHTMLProgressElement, toHTMLProgressElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_progress_element_set_value ::
        JSRef HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
htmlProgressElementSetValue ::
                            (MonadIO m, IsHTMLProgressElement self) => self -> Double -> m ()
htmlProgressElementSetValue self val
  = liftIO
      (ghcjs_dom_html_progress_element_set_value
         (unHTMLProgressElement (toHTMLProgressElement self))
         val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_progress_element_get_value ::
        JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
htmlProgressElementGetValue ::
                            (MonadIO m, IsHTMLProgressElement self) => self -> m Double
htmlProgressElementGetValue self
  = liftIO
      (ghcjs_dom_html_progress_element_get_value
         (unHTMLProgressElement (toHTMLProgressElement self)))
 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        ghcjs_dom_html_progress_element_set_max ::
        JSRef HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
htmlProgressElementSetMax ::
                          (MonadIO m, IsHTMLProgressElement self) => self -> Double -> m ()
htmlProgressElementSetMax self val
  = liftIO
      (ghcjs_dom_html_progress_element_set_max
         (unHTMLProgressElement (toHTMLProgressElement self))
         val)
 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_html_progress_element_get_max ::
        JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
htmlProgressElementGetMax ::
                          (MonadIO m, IsHTMLProgressElement self) => self -> m Double
htmlProgressElementGetMax self
  = liftIO
      (ghcjs_dom_html_progress_element_get_max
         (unHTMLProgressElement (toHTMLProgressElement self)))
 
foreign import javascript unsafe "$1[\"position\"]"
        ghcjs_dom_html_progress_element_get_position ::
        JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.position Mozilla HTMLProgressElement.position documentation> 
htmlProgressElementGetPosition ::
                               (MonadIO m, IsHTMLProgressElement self) => self -> m Double
htmlProgressElementGetPosition self
  = liftIO
      (ghcjs_dom_html_progress_element_get_position
         (unHTMLProgressElement (toHTMLProgressElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_progress_element_get_labels ::
        JSRef HTMLProgressElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.labels Mozilla HTMLProgressElement.labels documentation> 
htmlProgressElementGetLabels ::
                             (MonadIO m, IsHTMLProgressElement self) =>
                               self -> m (Maybe NodeList)
htmlProgressElementGetLabels self
  = liftIO
      ((ghcjs_dom_html_progress_element_get_labels
          (unHTMLProgressElement (toHTMLProgressElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLProgressElement (
  ) where
#endif
