{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ProcessingInstruction
       (ghcjs_dom_processing_instruction_get_target,
        processingInstructionGetTarget,
        ghcjs_dom_processing_instruction_get_sheet,
        processingInstructionGetSheet, ProcessingInstruction,
        IsProcessingInstruction, castToProcessingInstruction,
        gTypeProcessingInstruction, toProcessingInstruction)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_processing_instruction_get_target ::
        JSRef ProcessingInstruction -> IO JSString
 
processingInstructionGetTarget ::
                               (IsProcessingInstruction self, FromJSString result) =>
                                 self -> IO result
processingInstructionGetTarget self
  = fromJSString <$>
      (ghcjs_dom_processing_instruction_get_target
         (unProcessingInstruction (toProcessingInstruction self)))
 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_processing_instruction_get_sheet ::
        JSRef ProcessingInstruction -> IO (JSRef StyleSheet)
 
processingInstructionGetSheet ::
                              (IsProcessingInstruction self) => self -> IO (Maybe StyleSheet)
processingInstructionGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_processing_instruction_get_sheet
         (unProcessingInstruction (toProcessingInstruction self)))
#else
module GHCJS.DOM.ProcessingInstruction (
  module Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
  ) where
import Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
#endif
