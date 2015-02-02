{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitAnimationEvent
       (ghcjs_dom_webkit_animation_event_get_animation_name,
        webKitAnimationEventGetAnimationName,
        ghcjs_dom_webkit_animation_event_get_elapsed_time,
        webKitAnimationEventGetElapsedTime, WebKitAnimationEvent,
        IsWebKitAnimationEvent, castToWebKitAnimationEvent,
        gTypeWebKitAnimationEvent, toWebKitAnimationEvent)
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

 
foreign import javascript unsafe "$1[\"animationName\"]"
        ghcjs_dom_webkit_animation_event_get_animation_name ::
        JSRef WebKitAnimationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.animationName Mozilla WebKitAnimationEvent.animationName documentation> 
webKitAnimationEventGetAnimationName ::
                                     (IsWebKitAnimationEvent self, FromJSString result) =>
                                       self -> IO result
webKitAnimationEventGetAnimationName self
  = fromJSString <$>
      (ghcjs_dom_webkit_animation_event_get_animation_name
         (unWebKitAnimationEvent (toWebKitAnimationEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_webkit_animation_event_get_elapsed_time ::
        JSRef WebKitAnimationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.elapsedTime Mozilla WebKitAnimationEvent.elapsedTime documentation> 
webKitAnimationEventGetElapsedTime ::
                                   (IsWebKitAnimationEvent self) => self -> IO Double
webKitAnimationEventGetElapsedTime self
  = ghcjs_dom_webkit_animation_event_get_elapsed_time
      (unWebKitAnimationEvent (toWebKitAnimationEvent self))
#else
module GHCJS.DOM.WebKitAnimationEvent (
  ) where
#endif
