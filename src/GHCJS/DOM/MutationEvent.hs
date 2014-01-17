{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MutationEvent
       (ghcjs_dom_mutation_event_init_mutation_event,
        mutationEventInitMutationEvent, cMODIFICATION, cADDITION, cREMOVAL,
        ghcjs_dom_mutation_event_get_related_node,
        mutationEventGetRelatedNode,
        ghcjs_dom_mutation_event_get_prev_value, mutationEventGetPrevValue,
        ghcjs_dom_mutation_event_get_new_value, mutationEventGetNewValue,
        ghcjs_dom_mutation_event_get_attr_name, mutationEventGetAttrName,
        ghcjs_dom_mutation_event_get_attr_change,
        mutationEventGetAttrChange, MutationEvent, IsMutationEvent,
        castToMutationEvent, gTypeMutationEvent, toMutationEvent)
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
        ghcjs_dom_mutation_event_init_mutation_event ::
        JSRef MutationEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef Node -> JSString -> JSString -> JSString -> Word -> IO ()
#else 
ghcjs_dom_mutation_event_init_mutation_event ::
                                               JSRef MutationEvent ->
                                                 JSString ->
                                                   Bool ->
                                                     Bool ->
                                                       JSRef Node ->
                                                         JSString ->
                                                           JSString -> JSString -> Word -> IO ()
ghcjs_dom_mutation_event_init_mutation_event = undefined
#endif
 
mutationEventInitMutationEvent ::
                               (IsMutationEvent self, ToJSString type', IsNode relatedNode,
                                ToJSString prevValue, ToJSString newValue, ToJSString attrName) =>
                                 self ->
                                   type' ->
                                     Bool ->
                                       Bool ->
                                         Maybe relatedNode ->
                                           prevValue -> newValue -> attrName -> Word -> IO ()
mutationEventInitMutationEvent self type' canBubble cancelable
  relatedNode prevValue newValue attrName attrChange
  = ghcjs_dom_mutation_event_init_mutation_event
      (unMutationEvent (toMutationEvent self))
      (toJSString type')
      canBubble
      cancelable
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
        ghcjs_dom_mutation_event_get_related_node ::
        JSRef MutationEvent -> IO (JSRef Node)
#else 
ghcjs_dom_mutation_event_get_related_node ::
                                            JSRef MutationEvent -> IO (JSRef Node)
ghcjs_dom_mutation_event_get_related_node = undefined
#endif
 
mutationEventGetRelatedNode ::
                            (IsMutationEvent self) => self -> IO (Maybe Node)
mutationEventGetRelatedNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_mutation_event_get_related_node
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"prevValue\"]"
        ghcjs_dom_mutation_event_get_prev_value ::
        JSRef MutationEvent -> IO JSString
#else 
ghcjs_dom_mutation_event_get_prev_value ::
                                          JSRef MutationEvent -> IO JSString
ghcjs_dom_mutation_event_get_prev_value = undefined
#endif
 
mutationEventGetPrevValue ::
                          (IsMutationEvent self, FromJSString result) => self -> IO result
mutationEventGetPrevValue self
  = fromJSString <$>
      (ghcjs_dom_mutation_event_get_prev_value
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"newValue\"]"
        ghcjs_dom_mutation_event_get_new_value ::
        JSRef MutationEvent -> IO JSString
#else 
ghcjs_dom_mutation_event_get_new_value ::
                                         JSRef MutationEvent -> IO JSString
ghcjs_dom_mutation_event_get_new_value = undefined
#endif
 
mutationEventGetNewValue ::
                         (IsMutationEvent self, FromJSString result) => self -> IO result
mutationEventGetNewValue self
  = fromJSString <$>
      (ghcjs_dom_mutation_event_get_new_value
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"attrName\"]"
        ghcjs_dom_mutation_event_get_attr_name ::
        JSRef MutationEvent -> IO JSString
#else 
ghcjs_dom_mutation_event_get_attr_name ::
                                         JSRef MutationEvent -> IO JSString
ghcjs_dom_mutation_event_get_attr_name = undefined
#endif
 
mutationEventGetAttrName ::
                         (IsMutationEvent self, FromJSString result) => self -> IO result
mutationEventGetAttrName self
  = fromJSString <$>
      (ghcjs_dom_mutation_event_get_attr_name
         (unMutationEvent (toMutationEvent self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"attrChange\"]"
        ghcjs_dom_mutation_event_get_attr_change ::
        JSRef MutationEvent -> IO Word
#else 
ghcjs_dom_mutation_event_get_attr_change ::
                                           JSRef MutationEvent -> IO Word
ghcjs_dom_mutation_event_get_attr_change = undefined
#endif
 
mutationEventGetAttrChange ::
                           (IsMutationEvent self) => self -> IO Word
mutationEventGetAttrChange self
  = ghcjs_dom_mutation_event_get_attr_change
      (unMutationEvent (toMutationEvent self))
#else
module GHCJS.DOM.MutationEvent (
  module Graphics.UI.Gtk.WebKit.DOM.MutationEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MutationEvent
#endif
