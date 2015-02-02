{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.QuickTimePluginReplacement
       (ghcjs_dom_quick_time_plugin_replacement_post_event,
        quickTimePluginReplacementPostEvent,
        ghcjs_dom_quick_time_plugin_replacement_get_movie_size,
        quickTimePluginReplacementGetMovieSize,
        ghcjs_dom_quick_time_plugin_replacement_get_timed_meta_data,
        quickTimePluginReplacementGetTimedMetaData,
        ghcjs_dom_quick_time_plugin_replacement_get_access_log,
        quickTimePluginReplacementGetAccessLog,
        ghcjs_dom_quick_time_plugin_replacement_get_error_log,
        quickTimePluginReplacementGetErrorLog, QuickTimePluginReplacement,
        IsQuickTimePluginReplacement, castToQuickTimePluginReplacement,
        gTypeQuickTimePluginReplacement, toQuickTimePluginReplacement)
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

 
foreign import javascript unsafe "$1[\"postEvent\"]($2)"
        ghcjs_dom_quick_time_plugin_replacement_post_event ::
        JSRef QuickTimePluginReplacement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.postEvent Mozilla QuickTimePluginReplacement.postEvent documentation> 
quickTimePluginReplacementPostEvent ::
                                    (IsQuickTimePluginReplacement self, ToJSString eventName) =>
                                      self -> eventName -> IO ()
quickTimePluginReplacementPostEvent self eventName
  = ghcjs_dom_quick_time_plugin_replacement_post_event
      (unQuickTimePluginReplacement (toQuickTimePluginReplacement self))
      (toJSString eventName)
 
foreign import javascript unsafe "$1[\"movieSize\"]"
        ghcjs_dom_quick_time_plugin_replacement_get_movie_size ::
        JSRef QuickTimePluginReplacement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.movieSize Mozilla QuickTimePluginReplacement.movieSize documentation> 
quickTimePluginReplacementGetMovieSize ::
                                       (IsQuickTimePluginReplacement self) => self -> IO Word64
quickTimePluginReplacementGetMovieSize self
  = round <$>
      (ghcjs_dom_quick_time_plugin_replacement_get_movie_size
         (unQuickTimePluginReplacement (toQuickTimePluginReplacement self)))
 
foreign import javascript unsafe "$1[\"timedMetaData\"]"
        ghcjs_dom_quick_time_plugin_replacement_get_timed_meta_data ::
        JSRef QuickTimePluginReplacement -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.timedMetaData Mozilla QuickTimePluginReplacement.timedMetaData documentation> 
quickTimePluginReplacementGetTimedMetaData ::
                                           (IsQuickTimePluginReplacement self) =>
                                             self -> IO (JSRef a)
quickTimePluginReplacementGetTimedMetaData self
  = ghcjs_dom_quick_time_plugin_replacement_get_timed_meta_data
      (unQuickTimePluginReplacement (toQuickTimePluginReplacement self))
 
foreign import javascript unsafe "$1[\"accessLog\"]"
        ghcjs_dom_quick_time_plugin_replacement_get_access_log ::
        JSRef QuickTimePluginReplacement -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.accessLog Mozilla QuickTimePluginReplacement.accessLog documentation> 
quickTimePluginReplacementGetAccessLog ::
                                       (IsQuickTimePluginReplacement self) => self -> IO (JSRef a)
quickTimePluginReplacementGetAccessLog self
  = ghcjs_dom_quick_time_plugin_replacement_get_access_log
      (unQuickTimePluginReplacement (toQuickTimePluginReplacement self))
 
foreign import javascript unsafe "$1[\"errorLog\"]"
        ghcjs_dom_quick_time_plugin_replacement_get_error_log ::
        JSRef QuickTimePluginReplacement -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.errorLog Mozilla QuickTimePluginReplacement.errorLog documentation> 
quickTimePluginReplacementGetErrorLog ::
                                      (IsQuickTimePluginReplacement self) => self -> IO (JSRef a)
quickTimePluginReplacementGetErrorLog self
  = ghcjs_dom_quick_time_plugin_replacement_get_error_log
      (unQuickTimePluginReplacement (toQuickTimePluginReplacement self))
#else
module GHCJS.DOM.QuickTimePluginReplacement (
  ) where
#endif
