{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HashChangeEvent
       (ghcjs_dom_hash_change_event_init_hash_change_event,
        hashChangeEventInitHashChangeEvent,
        ghcjs_dom_hash_change_event_get_old_url, hashChangeEventGetOldURL,
        ghcjs_dom_hash_change_event_get_new_url, hashChangeEventGetNewURL,
        HashChangeEvent, IsHashChangeEvent, castToHashChangeEvent,
        gTypeHashChangeEvent, toHashChangeEvent)
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

 
foreign import javascript unsafe
        "$1[\"initHashChangeEvent\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_hash_change_event_init_hash_change_event ::
        JSRef HashChangeEvent ->
          JSString -> Bool -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
hashChangeEventInitHashChangeEvent ::
                                   (IsHashChangeEvent self, ToJSString type', ToJSString oldURL,
                                    ToJSString newURL) =>
                                     self -> type' -> Bool -> Bool -> oldURL -> newURL -> IO ()
hashChangeEventInitHashChangeEvent self type' canBubble cancelable
  oldURL newURL
  = ghcjs_dom_hash_change_event_init_hash_change_event
      (unHashChangeEvent (toHashChangeEvent self))
      (toJSString type')
      canBubble
      cancelable
      (toJSString oldURL)
      (toJSString newURL)
 
foreign import javascript unsafe "$1[\"oldURL\"]"
        ghcjs_dom_hash_change_event_get_old_url ::
        JSRef HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.oldURL Mozilla HashChangeEvent.oldURL documentation> 
hashChangeEventGetOldURL ::
                         (IsHashChangeEvent self, FromJSString result) => self -> IO result
hashChangeEventGetOldURL self
  = fromJSString <$>
      (ghcjs_dom_hash_change_event_get_old_url
         (unHashChangeEvent (toHashChangeEvent self)))
 
foreign import javascript unsafe "$1[\"newURL\"]"
        ghcjs_dom_hash_change_event_get_new_url ::
        JSRef HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.newURL Mozilla HashChangeEvent.newURL documentation> 
hashChangeEventGetNewURL ::
                         (IsHashChangeEvent self, FromJSString result) => self -> IO result
hashChangeEventGetNewURL self
  = fromJSString <$>
      (ghcjs_dom_hash_change_event_get_new_url
         (unHashChangeEvent (toHashChangeEvent self)))
#else
module GHCJS.DOM.HashChangeEvent (
  ) where
#endif
