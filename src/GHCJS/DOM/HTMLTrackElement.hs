{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTrackElement
       (cNONE, cLOADING, cLOADED, cERROR,
        ghcjs_dom_html_track_element_set_kind, htmlTrackElementSetKind,
        ghcjs_dom_html_track_element_get_kind, htmlTrackElementGetKind,
        ghcjs_dom_html_track_element_set_src, htmlTrackElementSetSrc,
        ghcjs_dom_html_track_element_get_src, htmlTrackElementGetSrc,
        ghcjs_dom_html_track_element_set_srclang,
        htmlTrackElementSetSrclang,
        ghcjs_dom_html_track_element_get_srclang,
        htmlTrackElementGetSrclang, ghcjs_dom_html_track_element_set_label,
        htmlTrackElementSetLabel, ghcjs_dom_html_track_element_get_label,
        htmlTrackElementGetLabel, ghcjs_dom_html_track_element_set_default,
        htmlTrackElementSetDefault,
        ghcjs_dom_html_track_element_get_default,
        htmlTrackElementGetDefault,
        ghcjs_dom_html_track_element_get_ready_state,
        htmlTrackElementGetReadyState,
        ghcjs_dom_html_track_element_get_track, htmlTrackElementGetTrack,
        HTMLTrackElement, IsHTMLTrackElement, castToHTMLTrackElement,
        gTypeHTMLTrackElement, toHTMLTrackElement)
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

cNONE = 0
cLOADING = 1
cLOADED = 2
cERROR = 3
 
foreign import javascript unsafe "$1[\"kind\"] = $2;"
        ghcjs_dom_html_track_element_set_kind ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
htmlTrackElementSetKind ::
                        (MonadIO m, IsHTMLTrackElement self, ToJSString val) =>
                          self -> val -> m ()
htmlTrackElementSetKind self val
  = liftIO
      (ghcjs_dom_html_track_element_set_kind
         (unHTMLTrackElement (toHTMLTrackElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_html_track_element_get_kind ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
htmlTrackElementGetKind ::
                        (MonadIO m, IsHTMLTrackElement self, FromJSString result) =>
                          self -> m result
htmlTrackElementGetKind self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_track_element_get_kind
            (unHTMLTrackElement (toHTMLTrackElement self))))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_track_element_set_src ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
htmlTrackElementSetSrc ::
                       (MonadIO m, IsHTMLTrackElement self, ToJSString val) =>
                         self -> val -> m ()
htmlTrackElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_track_element_set_src
         (unHTMLTrackElement (toHTMLTrackElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_track_element_get_src ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
htmlTrackElementGetSrc ::
                       (MonadIO m, IsHTMLTrackElement self, FromJSString result) =>
                         self -> m result
htmlTrackElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_track_element_get_src
            (unHTMLTrackElement (toHTMLTrackElement self))))
 
foreign import javascript unsafe "$1[\"srclang\"] = $2;"
        ghcjs_dom_html_track_element_set_srclang ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
htmlTrackElementSetSrclang ::
                           (MonadIO m, IsHTMLTrackElement self, ToJSString val) =>
                             self -> val -> m ()
htmlTrackElementSetSrclang self val
  = liftIO
      (ghcjs_dom_html_track_element_set_srclang
         (unHTMLTrackElement (toHTMLTrackElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"srclang\"]"
        ghcjs_dom_html_track_element_get_srclang ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
htmlTrackElementGetSrclang ::
                           (MonadIO m, IsHTMLTrackElement self, FromJSString result) =>
                             self -> m result
htmlTrackElementGetSrclang self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_track_element_get_srclang
            (unHTMLTrackElement (toHTMLTrackElement self))))
 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        ghcjs_dom_html_track_element_set_label ::
        JSRef HTMLTrackElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
htmlTrackElementSetLabel ::
                         (MonadIO m, IsHTMLTrackElement self, ToJSString val) =>
                           self -> val -> m ()
htmlTrackElementSetLabel self val
  = liftIO
      (ghcjs_dom_html_track_element_set_label
         (unHTMLTrackElement (toHTMLTrackElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_html_track_element_get_label ::
        JSRef HTMLTrackElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
htmlTrackElementGetLabel ::
                         (MonadIO m, IsHTMLTrackElement self, FromJSString result) =>
                           self -> m result
htmlTrackElementGetLabel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_track_element_get_label
            (unHTMLTrackElement (toHTMLTrackElement self))))
 
foreign import javascript unsafe "$1[\"default\"] = $2;"
        ghcjs_dom_html_track_element_set_default ::
        JSRef HTMLTrackElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
htmlTrackElementSetDefault ::
                           (MonadIO m, IsHTMLTrackElement self) => self -> Bool -> m ()
htmlTrackElementSetDefault self val
  = liftIO
      (ghcjs_dom_html_track_element_set_default
         (unHTMLTrackElement (toHTMLTrackElement self))
         val)
 
foreign import javascript unsafe "($1[\"default\"] ? 1 : 0)"
        ghcjs_dom_html_track_element_get_default ::
        JSRef HTMLTrackElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
htmlTrackElementGetDefault ::
                           (MonadIO m, IsHTMLTrackElement self) => self -> m Bool
htmlTrackElementGetDefault self
  = liftIO
      (ghcjs_dom_html_track_element_get_default
         (unHTMLTrackElement (toHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_html_track_element_get_ready_state ::
        JSRef HTMLTrackElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.readyState Mozilla HTMLTrackElement.readyState documentation> 
htmlTrackElementGetReadyState ::
                              (MonadIO m, IsHTMLTrackElement self) => self -> m Word
htmlTrackElementGetReadyState self
  = liftIO
      (ghcjs_dom_html_track_element_get_ready_state
         (unHTMLTrackElement (toHTMLTrackElement self)))
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_html_track_element_get_track ::
        JSRef HTMLTrackElement -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.track Mozilla HTMLTrackElement.track documentation> 
htmlTrackElementGetTrack ::
                         (MonadIO m, IsHTMLTrackElement self) => self -> m (Maybe TextTrack)
htmlTrackElementGetTrack self
  = liftIO
      ((ghcjs_dom_html_track_element_get_track
          (unHTMLTrackElement (toHTMLTrackElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLTrackElement (
  ) where
#endif
