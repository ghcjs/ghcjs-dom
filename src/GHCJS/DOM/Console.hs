{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Console
       (ghcjs_dom_console_time, consoleTime, ghcjs_dom_console_group_end,
        consoleGroupEnd, Console, IsConsole, castToConsole, gTypeConsole,
        toConsole)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"time\"]($2)"
        ghcjs_dom_console_time :: JSRef Console -> JSString -> IO ()
#else 
ghcjs_dom_console_time :: JSRef Console -> JSString -> IO ()
ghcjs_dom_console_time = undefined
#endif
 
consoleTime ::
            (IsConsole self, ToJSString title) => self -> title -> IO ()
consoleTime self title
  = ghcjs_dom_console_time (unConsole (toConsole self))
      (toJSString title)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"groupEnd\"]()"
        ghcjs_dom_console_group_end :: JSRef Console -> IO ()
#else 
ghcjs_dom_console_group_end :: JSRef Console -> IO ()
ghcjs_dom_console_group_end = undefined
#endif
 
consoleGroupEnd :: (IsConsole self) => self -> IO ()
consoleGroupEnd self
  = ghcjs_dom_console_group_end (unConsole (toConsole self))
#else
module GHCJS.DOM.Console (
  module Graphics.UI.Gtk.WebKit.DOM.Console
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Console
#endif
