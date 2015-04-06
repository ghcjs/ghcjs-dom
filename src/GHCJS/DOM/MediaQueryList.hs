{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaQueryList
       (js_addListener, addListener, js_removeListener, removeListener,
        js_getMedia, getMedia, js_getMatches, getMatches, MediaQueryList,
        castToMediaQueryList, gTypeMediaQueryList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"addListener\"]($2)"
        js_addListener ::
        JSRef MediaQueryList -> JSRef MediaQueryListListener -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.addListener Mozilla MediaQueryList.addListener documentation> 
addListener ::
            (MonadIO m) =>
              MediaQueryList -> Maybe MediaQueryListListener -> m ()
addListener self listener
  = liftIO
      (js_addListener (unMediaQueryList self)
         (maybe jsNull unMediaQueryListListener listener))
 
foreign import javascript unsafe "$1[\"removeListener\"]($2)"
        js_removeListener ::
        JSRef MediaQueryList -> JSRef MediaQueryListListener -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.removeListener Mozilla MediaQueryList.removeListener documentation> 
removeListener ::
               (MonadIO m) =>
                 MediaQueryList -> Maybe MediaQueryListListener -> m ()
removeListener self listener
  = liftIO
      (js_removeListener (unMediaQueryList self)
         (maybe jsNull unMediaQueryListListener listener))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef MediaQueryList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.media Mozilla MediaQueryList.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => MediaQueryList -> m result
getMedia self
  = liftIO (fromJSString <$> (js_getMedia (unMediaQueryList self)))
 
foreign import javascript unsafe "($1[\"matches\"] ? 1 : 0)"
        js_getMatches :: JSRef MediaQueryList -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.matches Mozilla MediaQueryList.matches documentation> 
getMatches :: (MonadIO m) => MediaQueryList -> m Bool
getMatches self = liftIO (js_getMatches (unMediaQueryList self))
#else
module GHCJS.DOM.MediaQueryList (
  module Graphics.UI.Gtk.WebKit.DOM.MediaQueryList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaQueryList
#endif
