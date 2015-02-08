{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGElementInstanceList
       (ghcjs_dom_svg_element_instance_list_item,
        svgElementInstanceListItem,
        ghcjs_dom_svg_element_instance_list_get_length,
        svgElementInstanceListGetLength, SVGElementInstanceList,
        IsSVGElementInstanceList, castToSVGElementInstanceList,
        gTypeSVGElementInstanceList, toSVGElementInstanceList)
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
        ghcjs_dom_svg_element_instance_list_item ::
        JSRef SVGElementInstanceList ->
          Word -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstanceList.item Mozilla SVGElementInstanceList.item documentation> 
svgElementInstanceListItem ::
                           (MonadIO m, IsSVGElementInstanceList self) =>
                             self -> Word -> m (Maybe SVGElementInstance)
svgElementInstanceListItem self index
  = liftIO
      ((ghcjs_dom_svg_element_instance_list_item
          (unSVGElementInstanceList (toSVGElementInstanceList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_svg_element_instance_list_get_length ::
        JSRef SVGElementInstanceList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElementInstanceList.length Mozilla SVGElementInstanceList.length documentation> 
svgElementInstanceListGetLength ::
                                (MonadIO m, IsSVGElementInstanceList self) => self -> m Word
svgElementInstanceListGetLength self
  = liftIO
      (ghcjs_dom_svg_element_instance_list_get_length
         (unSVGElementInstanceList (toSVGElementInstanceList self)))
#else
module GHCJS.DOM.SVGElementInstanceList (
  ) where
#endif
