{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.ProcessingInstruction
       (ghcjs_dom_processing_instruction_get_target,
        processingInstructionGetTarget,
        ghcjs_dom_processing_instruction_set_data,
        processingInstructionSetData,
        ghcjs_dom_processing_instruction_get_data,
        processingInstructionGetData,
        ghcjs_dom_processing_instruction_get_sheet,
        processingInstructionGetSheet)
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
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_processing_instruction_get_target ::
        JSRef ProcessingInstruction -> IO JSString
#else 
ghcjs_dom_processing_instruction_get_target ::
                                              JSRef ProcessingInstruction -> IO JSString
ghcjs_dom_processing_instruction_get_target = undefined
#endif
 
processingInstructionGetTarget ::
                               (IsProcessingInstruction self, FromJSString result) =>
                                 self -> IO result
processingInstructionGetTarget self
  = fromJSString <$>
      (ghcjs_dom_processing_instruction_get_target
         (unProcessingInstruction (toProcessingInstruction self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_processing_instruction_set_data ::
        JSRef ProcessingInstruction -> JSString -> IO ()
#else 
ghcjs_dom_processing_instruction_set_data ::
                                            JSRef ProcessingInstruction -> JSString -> IO ()
ghcjs_dom_processing_instruction_set_data = undefined
#endif
 
processingInstructionSetData ::
                             (IsProcessingInstruction self, ToJSString val) =>
                               self -> val -> IO ()
processingInstructionSetData self val
  = ghcjs_dom_processing_instruction_set_data
      (unProcessingInstruction (toProcessingInstruction self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_processing_instruction_get_data ::
        JSRef ProcessingInstruction -> IO JSString
#else 
ghcjs_dom_processing_instruction_get_data ::
                                            JSRef ProcessingInstruction -> IO JSString
ghcjs_dom_processing_instruction_get_data = undefined
#endif
 
processingInstructionGetData ::
                             (IsProcessingInstruction self, FromJSString result) =>
                               self -> IO result
processingInstructionGetData self
  = fromJSString <$>
      (ghcjs_dom_processing_instruction_get_data
         (unProcessingInstruction (toProcessingInstruction self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_processing_instruction_get_sheet ::
        JSRef ProcessingInstruction -> IO (JSRef StyleSheet)
#else 
ghcjs_dom_processing_instruction_get_sheet ::
                                             JSRef ProcessingInstruction -> IO (JSRef StyleSheet)
ghcjs_dom_processing_instruction_get_sheet = undefined
#endif
 
processingInstructionGetSheet ::
                              (IsProcessingInstruction self) => self -> IO (Maybe StyleSheet)
processingInstructionGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_processing_instruction_get_sheet
         (unProcessingInstruction (toProcessingInstruction self)))