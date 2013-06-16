{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitAnimationList
       (webkit_dom_webkit_animation_list_item, webKitAnimationListItem,
        webkit_dom_webkit_animation_list_get_length,
        webKitAnimationListGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_webkit_animation_list_item ::
        JSRef WebKitAnimationList -> Word -> IO (JSRef WebKitAnimation)
#else 
webkit_dom_webkit_animation_list_item ::
                                        JSRef WebKitAnimationList ->
                                          Word -> IO (JSRef WebKitAnimation)
webkit_dom_webkit_animation_list_item = undefined
#endif
 
webKitAnimationListItem ::
                        (WebKitAnimationListClass self) =>
                          self -> Word -> IO (Maybe WebKitAnimation)
webKitAnimationListItem self index
  = fmap WebKitAnimation . maybeJSNull <$>
      (webkit_dom_webkit_animation_list_item
         (unWebKitAnimationList (toWebKitAnimationList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_webkit_animation_list_get_length ::
        JSRef WebKitAnimationList -> IO Word
#else 
webkit_dom_webkit_animation_list_get_length ::
                                              JSRef WebKitAnimationList -> IO Word
webkit_dom_webkit_animation_list_get_length = undefined
#endif
 
webKitAnimationListGetLength ::
                             (WebKitAnimationListClass self) => self -> IO Word
webKitAnimationListGetLength self
  = webkit_dom_webkit_animation_list_get_length
      (unWebKitAnimationList (toWebKitAnimationList self))