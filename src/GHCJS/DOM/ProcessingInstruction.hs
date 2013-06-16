{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.ProcessingInstruction
       (webkit_dom_processing_instruction_get_target,
        processingInstructionGetTarget,
        webkit_dom_processing_instruction_set_data,
        processingInstructionSetData,
        webkit_dom_processing_instruction_get_data,
        processingInstructionGetData,
        webkit_dom_processing_instruction_get_sheet,
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
        webkit_dom_processing_instruction_get_target ::
        JSRef ProcessingInstruction -> IO JSString
#else 
webkit_dom_processing_instruction_get_target ::
                                               JSRef ProcessingInstruction -> IO JSString
webkit_dom_processing_instruction_get_target = undefined
#endif
 
processingInstructionGetTarget ::
                               (ProcessingInstructionClass self, FromJSString result) =>
                                 self -> IO result
processingInstructionGetTarget self
  = fromJSString <$>
      (webkit_dom_processing_instruction_get_target
         (unProcessingInstruction (toProcessingInstruction self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        webkit_dom_processing_instruction_set_data ::
        JSRef ProcessingInstruction -> JSString -> IO ()
#else 
webkit_dom_processing_instruction_set_data ::
                                             JSRef ProcessingInstruction -> JSString -> IO ()
webkit_dom_processing_instruction_set_data = undefined
#endif
 
processingInstructionSetData ::
                             (ProcessingInstructionClass self, ToJSString val) =>
                               self -> val -> IO ()
processingInstructionSetData self val
  = webkit_dom_processing_instruction_set_data
      (unProcessingInstruction (toProcessingInstruction self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"]"
        webkit_dom_processing_instruction_get_data ::
        JSRef ProcessingInstruction -> IO JSString
#else 
webkit_dom_processing_instruction_get_data ::
                                             JSRef ProcessingInstruction -> IO JSString
webkit_dom_processing_instruction_get_data = undefined
#endif
 
processingInstructionGetData ::
                             (ProcessingInstructionClass self, FromJSString result) =>
                               self -> IO result
processingInstructionGetData self
  = fromJSString <$>
      (webkit_dom_processing_instruction_get_data
         (unProcessingInstruction (toProcessingInstruction self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sheet\"]"
        webkit_dom_processing_instruction_get_sheet ::
        JSRef ProcessingInstruction -> IO (JSRef StyleSheet)
#else 
webkit_dom_processing_instruction_get_sheet ::
                                              JSRef ProcessingInstruction -> IO (JSRef StyleSheet)
webkit_dom_processing_instruction_get_sheet = undefined
#endif
 
processingInstructionGetSheet ::
                              (ProcessingInstructionClass self) => self -> IO (Maybe StyleSheet)
processingInstructionGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (webkit_dom_processing_instruction_get_sheet
         (unProcessingInstruction (toProcessingInstruction self)))