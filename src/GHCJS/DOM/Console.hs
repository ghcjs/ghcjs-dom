{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Console
       (webkit_dom_console_time, consoleTime,
        webkit_dom_console_group_end, consoleGroupEnd,
        webkit_dom_console_get_memory, consoleGetMemory)
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
        webkit_dom_console_time :: JSRef Console -> JSString -> IO ()
#else 
webkit_dom_console_time :: JSRef Console -> JSString -> IO ()
webkit_dom_console_time = undefined
#endif
 
consoleTime ::
            (ConsoleClass self, ToJSString title) => self -> title -> IO ()
consoleTime self title
  = webkit_dom_console_time (unConsole (toConsole self))
      (toJSString title)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"groupEnd\"]()"
        webkit_dom_console_group_end :: JSRef Console -> IO ()
#else 
webkit_dom_console_group_end :: JSRef Console -> IO ()
webkit_dom_console_group_end = undefined
#endif
 
consoleGroupEnd :: (ConsoleClass self) => self -> IO ()
consoleGroupEnd self
  = webkit_dom_console_group_end (unConsole (toConsole self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"memory\"]"
        webkit_dom_console_get_memory ::
        JSRef Console -> IO (JSRef MemoryInfo)
#else 
webkit_dom_console_get_memory ::
                                JSRef Console -> IO (JSRef MemoryInfo)
webkit_dom_console_get_memory = undefined
#endif
 
consoleGetMemory ::
                 (ConsoleClass self) => self -> IO (Maybe MemoryInfo)
consoleGetMemory self
  = fmap MemoryInfo . maybeJSNull <$>
      (webkit_dom_console_get_memory (unConsole (toConsole self)))