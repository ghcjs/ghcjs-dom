{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MutationEvent
       (webkit_dom_mutation_event_init_mutation_event,
        mutationEventInitMutationEvent, cMODIFICATION, cADDITION, cREMOVAL,
        webkit_dom_mutation_event_get_related_node,
        mutationEventGetRelatedNode,
        webkit_dom_mutation_event_get_prev_value,
        mutationEventGetPrevValue, webkit_dom_mutation_event_get_new_value,
        mutationEventGetNewValue, webkit_dom_mutation_event_get_attr_name,
        mutationEventGetAttrName,
        webkit_dom_mutation_event_get_attr_change,
        mutationEventGetAttrChange)
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
foreign import javascript unsafe
        "$1[\"initMutationEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        webkit_dom_mutation_event_init_mutation_event ::
        JSRef MutationEvent ->
          JSString ->
            JSBool ->
              JSBool ->
                JSRef Node -> JSString -> JSString -> JSString -> Word -> IO ()
#else 
webkit_dom_mutation_event_init_mutation_event ::
                                                JSRef MutationEvent ->
                                                  JSString ->
                                                    JSBool ->
                                                      JSBool ->
                                                        JSRef Node ->
                                                          JSString ->
                                                            JSString -> JSString -> Word -> IO ()
webkit_dom_mutation_event_init_mutation_event = undefined
#endif
 
mutationEventInitMutationEvent ::
                               (MutationEventClass self, ToJSString type', NodeClass relatedNode,
                                ToJSString prevValue, ToJSString newValue, ToJSString attrName) =>
                                 self ->
                                   type' ->
                                     Bool ->
                                       Bool ->
                                         Maybe relatedNode ->
                                           prevValue -> newValue -> attrName -> Word -> IO ()
mutationEventInitMutationEvent self type' canBubble cancelable
  relatedNode prevValue newValue attrName attrChange
  = webkit_dom_mutation_event_init_mutation_event
      (unMutationEvent (toMutationEvent self))
      (toJSString type')
      (toJSBool canBubble)
      (toJSBool cancelable)
      (maybe jsNull (unNode . toNode) relatedNode)
      (toJSString prevValue)
      (toJSString newValue)
      (toJSString attrName)
      attrChange
cMODIFICATION = 1
cADDITION = 2
cREMOVAL = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"relatedNode\"]"
        webkit_dom_mutation_event_get_related_node ::
        JSRef MutationEvent -> IO (JSRef Node)
#else 
webkit_dom_mutation_event_get_related_node ::
                                             JSRef MutationEvent -> IO (JSRef Node)
webkit_dom_mutation_event_get_related_node = undefined
#endif
 
mutationEventGetRelatedNode ::
                            (MutationEventClass self) => self -> IO (Maybe Node)
mutationEventGetRelatedNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_mutation_event_get_related_node
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"prevValue\"]"
        webkit_dom_mutation_event_get_prev_value ::
        JSRef MutationEvent -> IO JSString
#else 
webkit_dom_mutation_event_get_prev_value ::
                                           JSRef MutationEvent -> IO JSString
webkit_dom_mutation_event_get_prev_value = undefined
#endif
 
mutationEventGetPrevValue ::
                          (MutationEventClass self, FromJSString result) => self -> IO result
mutationEventGetPrevValue self
  = fromJSString <$>
      (webkit_dom_mutation_event_get_prev_value
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"newValue\"]"
        webkit_dom_mutation_event_get_new_value ::
        JSRef MutationEvent -> IO JSString
#else 
webkit_dom_mutation_event_get_new_value ::
                                          JSRef MutationEvent -> IO JSString
webkit_dom_mutation_event_get_new_value = undefined
#endif
 
mutationEventGetNewValue ::
                         (MutationEventClass self, FromJSString result) => self -> IO result
mutationEventGetNewValue self
  = fromJSString <$>
      (webkit_dom_mutation_event_get_new_value
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"attrName\"]"
        webkit_dom_mutation_event_get_attr_name ::
        JSRef MutationEvent -> IO JSString
#else 
webkit_dom_mutation_event_get_attr_name ::
                                          JSRef MutationEvent -> IO JSString
webkit_dom_mutation_event_get_attr_name = undefined
#endif
 
mutationEventGetAttrName ::
                         (MutationEventClass self, FromJSString result) => self -> IO result
mutationEventGetAttrName self
  = fromJSString <$>
      (webkit_dom_mutation_event_get_attr_name
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"attrChange\"]"
        webkit_dom_mutation_event_get_attr_change ::
        JSRef MutationEvent -> IO Word
#else 
webkit_dom_mutation_event_get_attr_change ::
                                            JSRef MutationEvent -> IO Word
webkit_dom_mutation_event_get_attr_change = undefined
#endif
 
mutationEventGetAttrChange ::
                           (MutationEventClass self) => self -> IO Word
mutationEventGetAttrChange self
  = webkit_dom_mutation_event_get_attr_change
      (unMutationEvent (toMutationEvent self))