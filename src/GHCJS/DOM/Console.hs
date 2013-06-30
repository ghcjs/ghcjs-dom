{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Console
       (ghcjs_dom_console_time, consoleTime, ghcjs_dom_console_group_end,
        consoleGroupEnd, ghcjs_dom_console_get_memory, consoleGetMemory)
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"groupEnd\"]()"
        ghcjs_dom_console_group_end :: JSRef Console -> IO ()
#else 
ghcjs_dom_console_group_end :: JSRef Console -> IO ()
ghcjs_dom_console_group_end = undefined
#endif
 
consoleGroupEnd :: (IsConsole self) => self -> IO ()
consoleGroupEnd self
  = ghcjs_dom_console_group_end (unConsole (toConsole self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"memory\"]"
        ghcjs_dom_console_get_memory ::
        JSRef Console -> IO (JSRef MemoryInfo)
#else 
ghcjs_dom_console_get_memory ::
                               JSRef Console -> IO (JSRef MemoryInfo)
ghcjs_dom_console_get_memory = undefined
#endif
 
consoleGetMemory ::
                 (IsConsole self) => self -> IO (Maybe MemoryInfo)
consoleGetMemory self
  = fmap MemoryInfo . maybeJSNull <$>
      (ghcjs_dom_console_get_memory (unConsole (toConsole self)))