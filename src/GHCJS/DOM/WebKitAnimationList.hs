{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitAnimationList
       (ghcjs_dom_webkit_animation_list_item, webKitAnimationListItem,
        ghcjs_dom_webkit_animation_list_get_length,
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
        ghcjs_dom_webkit_animation_list_item ::
        JSRef WebKitAnimationList -> Word -> IO (JSRef WebKitAnimation)
#else 
ghcjs_dom_webkit_animation_list_item ::
                                       JSRef WebKitAnimationList ->
                                         Word -> IO (JSRef WebKitAnimation)
ghcjs_dom_webkit_animation_list_item = undefined
#endif
 
webKitAnimationListItem ::
                        (IsWebKitAnimationList self) =>
                          self -> Word -> IO (Maybe WebKitAnimation)
webKitAnimationListItem self index
  = fmap WebKitAnimation . maybeJSNull <$>
      (ghcjs_dom_webkit_animation_list_item
         (unWebKitAnimationList (toWebKitAnimationList self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_webkit_animation_list_get_length ::
        JSRef WebKitAnimationList -> IO Word
#else 
ghcjs_dom_webkit_animation_list_get_length ::
                                             JSRef WebKitAnimationList -> IO Word
ghcjs_dom_webkit_animation_list_get_length = undefined
#endif
 
webKitAnimationListGetLength ::
                             (IsWebKitAnimationList self) => self -> IO Word
webKitAnimationListGetLength self
  = ghcjs_dom_webkit_animation_list_get_length
      (unWebKitAnimationList (toWebKitAnimationList self))