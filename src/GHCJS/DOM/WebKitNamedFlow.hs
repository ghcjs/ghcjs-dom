{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitNamedFlow
       (webkit_dom_webkit_named_flow_get_regions_by_content,
        webKitNamedFlowGetRegionsByContent,
        webkit_dom_webkit_named_flow_get_regions,
        webKitNamedFlowGetRegions,
        webkit_dom_webkit_named_flow_get_content,
        webKitNamedFlowGetContent,
        webkit_dom_webkit_named_flow_dispatch_event,
        webKitNamedFlowDispatchEvent,
        webkit_dom_webkit_named_flow_get_name, webKitNamedFlowGetName,
        webkit_dom_webkit_named_flow_get_overset,
        webKitNamedFlowGetOverset,
        webkit_dom_webkit_named_flow_get_first_empty_region_index,
        webKitNamedFlowGetFirstEmptyRegionIndex)
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
foreign import javascript unsafe "$1[\"getRegionsByContent\"]($2)"
        webkit_dom_webkit_named_flow_get_regions_by_content ::
        JSRef WebKitNamedFlow -> JSRef Node -> IO (JSRef NodeList)
#else 
webkit_dom_webkit_named_flow_get_regions_by_content ::
                                                      JSRef WebKitNamedFlow ->
                                                        JSRef Node -> IO (JSRef NodeList)
webkit_dom_webkit_named_flow_get_regions_by_content = undefined
#endif
 
webKitNamedFlowGetRegionsByContent ::
                                   (WebKitNamedFlowClass self, NodeClass contentNode) =>
                                     self -> Maybe contentNode -> IO (Maybe NodeList)
webKitNamedFlowGetRegionsByContent self contentNode
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_webkit_named_flow_get_regions_by_content
         (unWebKitNamedFlow (toWebKitNamedFlow self))
         (maybe jsNull (unNode . toNode) contentNode))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getRegions\"]()"
        webkit_dom_webkit_named_flow_get_regions ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)
#else 
webkit_dom_webkit_named_flow_get_regions ::
                                           JSRef WebKitNamedFlow -> IO (JSRef NodeList)
webkit_dom_webkit_named_flow_get_regions = undefined
#endif
 
webKitNamedFlowGetRegions ::
                          (WebKitNamedFlowClass self) => self -> IO (Maybe NodeList)
webKitNamedFlowGetRegions self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_webkit_named_flow_get_regions
         (unWebKitNamedFlow (toWebKitNamedFlow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getContent\"]()"
        webkit_dom_webkit_named_flow_get_content ::
        JSRef WebKitNamedFlow -> IO (JSRef NodeList)
#else 
webkit_dom_webkit_named_flow_get_content ::
                                           JSRef WebKitNamedFlow -> IO (JSRef NodeList)
webkit_dom_webkit_named_flow_get_content = undefined
#endif
 
webKitNamedFlowGetContent ::
                          (WebKitNamedFlowClass self) => self -> IO (Maybe NodeList)
webKitNamedFlowGetContent self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_webkit_named_flow_get_content
         (unWebKitNamedFlow (toWebKitNamedFlow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dispatchEvent\"]($2)"
        webkit_dom_webkit_named_flow_dispatch_event ::
        JSRef WebKitNamedFlow -> JSRef Event -> IO JSBool
#else 
webkit_dom_webkit_named_flow_dispatch_event ::
                                              JSRef WebKitNamedFlow -> JSRef Event -> IO JSBool
webkit_dom_webkit_named_flow_dispatch_event = undefined
#endif
 
webKitNamedFlowDispatchEvent ::
                             (WebKitNamedFlowClass self, EventClass event) =>
                               self -> Maybe event -> IO Bool
webKitNamedFlowDispatchEvent self event
  = fromJSBool <$>
      (webkit_dom_webkit_named_flow_dispatch_event
         (unWebKitNamedFlow (toWebKitNamedFlow self))
         (maybe jsNull (unEvent . toEvent) event))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_webkit_named_flow_get_name ::
        JSRef WebKitNamedFlow -> IO JSString
#else 
webkit_dom_webkit_named_flow_get_name ::
                                        JSRef WebKitNamedFlow -> IO JSString
webkit_dom_webkit_named_flow_get_name = undefined
#endif
 
webKitNamedFlowGetName ::
                       (WebKitNamedFlowClass self, FromJSString result) =>
                         self -> IO result
webKitNamedFlowGetName self
  = fromJSString <$>
      (webkit_dom_webkit_named_flow_get_name
         (unWebKitNamedFlow (toWebKitNamedFlow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"overset\"]"
        webkit_dom_webkit_named_flow_get_overset ::
        JSRef WebKitNamedFlow -> IO JSBool
#else 
webkit_dom_webkit_named_flow_get_overset ::
                                           JSRef WebKitNamedFlow -> IO JSBool
webkit_dom_webkit_named_flow_get_overset = undefined
#endif
 
webKitNamedFlowGetOverset ::
                          (WebKitNamedFlowClass self) => self -> IO Bool
webKitNamedFlowGetOverset self
  = fromJSBool <$>
      (webkit_dom_webkit_named_flow_get_overset
         (unWebKitNamedFlow (toWebKitNamedFlow self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"firstEmptyRegionIndex\"]"
        webkit_dom_webkit_named_flow_get_first_empty_region_index ::
        JSRef WebKitNamedFlow -> IO Int
#else 
webkit_dom_webkit_named_flow_get_first_empty_region_index ::
                                                            JSRef WebKitNamedFlow -> IO Int
webkit_dom_webkit_named_flow_get_first_empty_region_index
  = undefined
#endif
 
webKitNamedFlowGetFirstEmptyRegionIndex ::
                                        (WebKitNamedFlowClass self) => self -> IO Int
webKitNamedFlowGetFirstEmptyRegionIndex self
  = webkit_dom_webkit_named_flow_get_first_empty_region_index
      (unWebKitNamedFlow (toWebKitNamedFlow self))