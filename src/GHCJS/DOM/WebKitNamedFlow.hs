{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitNamedFlow
       (ghcjs_dom_webkit_named_flow_get_regions_by_content,
        webKitNamedFlowGetRegionsByContent,
        ghcjs_dom_webkit_named_flow_get_regions, webKitNamedFlowGetRegions,
        ghcjs_dom_webkit_named_flow_get_content, webKitNamedFlowGetContent,
        ghcjs_dom_webkit_named_flow_get_name, webKitNamedFlowGetName,
        ghcjs_dom_webkit_named_flow_get_overset, webKitNamedFlowGetOverset,
        ghcjs_dom_webkit_named_flow_get_first_empty_region_index,
        webKitNamedFlowGetFirstEmptyRegionIndex, WebKitNamedFlow,
        IsWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow,
        toWebKitNamedFlow)
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

 
foreign import javascript unsafe "$1[\"getRegionsByContent\"]($2)"
        ghcjs_dom_webkit_named_flow_get_regions_by_content ::
        JSRef WebKitNamedFlow -> JSRef Node -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.regionsByContent Mozilla WebKitNamedFlow.regionsByContent documentation> 
webKitNamedFlowGetRegionsByContent ::
                                   (MonadIO m, IsWebKitNamedFlow self, IsNode contentNode) =>
                                     self -> Maybe contentNode -> m (Maybe NodeList)
webKitNamedFlowGetRegionsByContent self contentNode
  = liftIO
      ((ghcjs_dom_webkit_named_flow_get_regions_by_content
          (unWebKitNamedFlow (toWebKitNamedFlow self))
          (maybe jsNull (unNode . toNode) contentNode))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        ghcjs_dom_webkit_named_flow_get_regions ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.regions Mozilla WebKitNamedFlow.regions documentation> 
webKitNamedFlowGetRegions ::
                          (MonadIO m, IsWebKitNamedFlow self) => self -> m (Maybe NodeList)
webKitNamedFlowGetRegions self
  = liftIO
      ((ghcjs_dom_webkit_named_flow_get_regions
          (unWebKitNamedFlow (toWebKitNamedFlow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getContent\"]()"
        ghcjs_dom_webkit_named_flow_get_content ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.content Mozilla WebKitNamedFlow.content documentation> 
webKitNamedFlowGetContent ::
                          (MonadIO m, IsWebKitNamedFlow self) => self -> m (Maybe NodeList)
webKitNamedFlowGetContent self
  = liftIO
      ((ghcjs_dom_webkit_named_flow_get_content
          (unWebKitNamedFlow (toWebKitNamedFlow self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_webkit_named_flow_get_name ::
        JSRef WebKitNamedFlow -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.name Mozilla WebKitNamedFlow.name documentation> 
webKitNamedFlowGetName ::
                       (MonadIO m, IsWebKitNamedFlow self, FromJSString result) =>
                         self -> m result
webKitNamedFlowGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_webkit_named_flow_get_name
            (unWebKitNamedFlow (toWebKitNamedFlow self))))
 
foreign import javascript unsafe "($1[\"overset\"] ? 1 : 0)"
        ghcjs_dom_webkit_named_flow_get_overset ::
        JSRef WebKitNamedFlow -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.overset Mozilla WebKitNamedFlow.overset documentation> 
webKitNamedFlowGetOverset ::
                          (MonadIO m, IsWebKitNamedFlow self) => self -> m Bool
webKitNamedFlowGetOverset self
  = liftIO
      (ghcjs_dom_webkit_named_flow_get_overset
         (unWebKitNamedFlow (toWebKitNamedFlow self)))
 
foreign import javascript unsafe "$1[\"firstEmptyRegionIndex\"]"
        ghcjs_dom_webkit_named_flow_get_first_empty_region_index ::
        JSRef WebKitNamedFlow -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.firstEmptyRegionIndex Mozilla WebKitNamedFlow.firstEmptyRegionIndex documentation> 
webKitNamedFlowGetFirstEmptyRegionIndex ::
                                        (MonadIO m, IsWebKitNamedFlow self) => self -> m Int
webKitNamedFlowGetFirstEmptyRegionIndex self
  = liftIO
      (ghcjs_dom_webkit_named_flow_get_first_empty_region_index
         (unWebKitNamedFlow (toWebKitNamedFlow self)))
#else
module GHCJS.DOM.WebKitNamedFlow (
  module Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
  ) where
import Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
#endif
