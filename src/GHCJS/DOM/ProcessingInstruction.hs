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

 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_processing_instruction_get_target ::
        JSRef ProcessingInstruction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
processingInstructionGetSheet ::
                              (IsProcessingInstruction self) => self -> IO (Maybe StyleSheet)
processingInstructionGetSheet self
  = (ghcjs_dom_processing_instruction_get_sheet
       (unProcessingInstruction (toProcessingInstruction self)))
      >>= fromJSRef
#else
module GHCJS.DOM.ProcessingInstruction (
  module Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
  ) where
import Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
#endif
