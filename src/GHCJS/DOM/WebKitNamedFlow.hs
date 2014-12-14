{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitNamedFlow
       (ghcjs_dom_webkit_named_flow_get_regions_by_content,
        webKitNamedFlowGetRegionsByContent,
        ghcjs_dom_webkit_named_flow_get_regions, webKitNamedFlowGetRegions,
        ghcjs_dom_webkit_named_flow_get_content, webKitNamedFlowGetContent,
        ghcjs_dom_webkit_named_flow_dispatch_event,
        webKitNamedFlowDispatchEvent, ghcjs_dom_webkit_named_flow_get_name,
        webKitNamedFlowGetName, ghcjs_dom_webkit_named_flow_get_overset,
        webKitNamedFlowGetOverset,
        ghcjs_dom_webkit_named_flow_get_first_empty_region_index,
        webKitNamedFlowGetFirstEmptyRegionIndex, WebKitNamedFlow,
        IsWebKitNamedFlow, castToWebKitNamedFlow, gTypeWebKitNamedFlow,
        toWebKitNamedFlow)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"getRegionsByContent\"]($2)"
        ghcjs_dom_webkit_named_flow_get_regions_by_content ::
        JSRef WebKitNamedFlow -> JSRef Node -> IO (JSRef NodeList)
 
webKitNamedFlowGetRegionsByContent ::
                                   (IsWebKitNamedFlow self, IsNode contentNode) =>
                                     self -> Maybe contentNode -> IO (Maybe NodeList)
webKitNamedFlowGetRegionsByContent self contentNode
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_webkit_named_flow_get_regions_by_content
         (unWebKitNamedFlow (toWebKitNamedFlow self))
         (maybe jsNull (unNode . toNode) contentNode))
 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        ghcjs_dom_webkit_named_flow_get_regions ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)
 
webKitNamedFlowGetRegions ::
                          (IsWebKitNamedFlow self) => self -> IO (Maybe NodeList)
webKitNamedFlowGetRegions self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_webkit_named_flow_get_regions
         (unWebKitNamedFlow (toWebKitNamedFlow self)))
 
foreign import javascript unsafe "$1[\"getContent\"]()"
        ghcjs_dom_webkit_named_flow_get_content ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)
 
webKitNamedFlowGetContent ::
                          (IsWebKitNamedFlow self) => self -> IO (Maybe NodeList)
webKitNamedFlowGetContent self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_webkit_named_flow_get_content
         (unWebKitNamedFlow (toWebKitNamedFlow self)))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_webkit_named_flow_dispatch_event ::
        JSRef WebKitNamedFlow -> JSRef Event -> IO Bool
 
webKitNamedFlowDispatchEvent ::
                             (IsWebKitNamedFlow self, IsEvent event) =>
                               self -> Maybe event -> IO Bool
webKitNamedFlowDispatchEvent self event
  = ghcjs_dom_webkit_named_flow_dispatch_event
      (unWebKitNamedFlow (toWebKitNamedFlow self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_webkit_named_flow_get_name ::
        JSRef WebKitNamedFlow -> IO JSString
 
webKitNamedFlowGetName ::
                       (IsWebKitNamedFlow self, FromJSString result) => self -> IO result
webKitNamedFlowGetName self
  = fromJSString <$>
      (ghcjs_dom_webkit_named_flow_get_name
         (unWebKitNamedFlow (toWebKitNamedFlow self)))
 
foreign import javascript unsafe "($1[\"overset\"] ? 1 : 0)"
        ghcjs_dom_webkit_named_flow_get_overset ::
        JSRef WebKitNamedFlow -> IO Bool
 
webKitNamedFlowGetOverset ::
                          (IsWebKitNamedFlow self) => self -> IO Bool
webKitNamedFlowGetOverset self
  = ghcjs_dom_webkit_named_flow_get_overset
      (unWebKitNamedFlow (toWebKitNamedFlow self))
 
foreign import javascript unsafe "$1[\"firstEmptyRegionIndex\"]"
        ghcjs_dom_webkit_named_flow_get_first_empty_region_index ::
        JSRef WebKitNamedFlow -> IO Int
 
webKitNamedFlowGetFirstEmptyRegionIndex ::
                                        (IsWebKitNamedFlow self) => self -> IO Int
webKitNamedFlowGetFirstEmptyRegionIndex self
  = ghcjs_dom_webkit_named_flow_get_first_empty_region_index
      (unWebKitNamedFlow (toWebKitNamedFlow self))
#else
module GHCJS.DOM.WebKitNamedFlow (
  module Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
  ) where
import Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
#endif
