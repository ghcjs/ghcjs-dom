{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VTTRegionList
       (ghcjs_dom_vtt_region_list_item, vttRegionListItem,
        ghcjs_dom_vtt_region_list_get_region_by_id,
        vttRegionListGetRegionById, ghcjs_dom_vtt_region_list_get_length,
        vttRegionListGetLength, VTTRegionList, IsVTTRegionList,
        castToVTTRegionList, gTypeVTTRegionList, toVTTRegionList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_vtt_region_list_item ::
        JSRef VTTRegionList -> Word -> IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
vttRegionListItem ::
                  (MonadIO m, IsVTTRegionList self) =>
                    self -> Word -> m (Maybe VTTRegion)
vttRegionListItem self index
  = liftIO
      ((ghcjs_dom_vtt_region_list_item
          (unVTTRegionList (toVTTRegionList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRegionById\"]($2)"
        ghcjs_dom_vtt_region_list_get_region_by_id ::
        JSRef VTTRegionList -> JSString -> IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.regionById Mozilla VTTRegionList.regionById documentation> 
vttRegionListGetRegionById ::
                           (MonadIO m, IsVTTRegionList self, ToJSString id) =>
                             self -> id -> m (Maybe VTTRegion)
vttRegionListGetRegionById self id
  = liftIO
      ((ghcjs_dom_vtt_region_list_get_region_by_id
          (unVTTRegionList (toVTTRegionList self))
          (toJSString id))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_vtt_region_list_get_length ::
        JSRef VTTRegionList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.length Mozilla VTTRegionList.length documentation> 
vttRegionListGetLength ::
                       (MonadIO m, IsVTTRegionList self) => self -> m Word
vttRegionListGetLength self
  = liftIO
      (ghcjs_dom_vtt_region_list_get_length
         (unVTTRegionList (toVTTRegionList self)))
#else
module GHCJS.DOM.VTTRegionList (
  ) where
#endif
