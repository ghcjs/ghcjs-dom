{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MutationEvent
       (js_initMutationEvent, initMutationEvent, pattern MODIFICATION,
        pattern ADDITION, pattern REMOVAL, js_getRelatedNode,
        getRelatedNode, js_getPrevValue, getPrevValue, js_getNewValue,
        getNewValue, js_getAttrName, getAttrName, js_getAttrChange,
        getAttrChange, MutationEvent, castToMutationEvent,
        gTypeMutationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"initMutationEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMutationEvent ::
        JSRef MutationEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef Node -> JSString -> JSString -> JSString -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.initMutationEvent Mozilla MutationEvent.initMutationEvent documentation> 
initMutationEvent ::
                  (MonadIO m, ToJSString type', IsNode relatedNode,
                   ToJSString prevValue, ToJSString newValue, ToJSString attrName) =>
                    MutationEvent ->
                      type' ->
                        Bool ->
                          Bool ->
                            Maybe relatedNode ->
                              prevValue -> newValue -> attrName -> Word -> m ()
initMutationEvent self type' canBubble cancelable relatedNode
  prevValue newValue attrName attrChange
  = liftIO
      (js_initMutationEvent (unMutationEvent self) (toJSString type')
         canBubble
         cancelable
         (maybe jsNull (unNode . toNode) relatedNode)
         (toJSString prevValue)
         (toJSString newValue)
         (toJSString attrName)
         attrChange)
pattern MODIFICATION = 1
pattern ADDITION = 2
pattern REMOVAL = 3
 
foreign import javascript unsafe "$1[\"relatedNode\"]"
        js_getRelatedNode :: JSRef MutationEvent -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.relatedNode Mozilla MutationEvent.relatedNode documentation> 
getRelatedNode :: (MonadIO m) => MutationEvent -> m (Maybe Node)
getRelatedNode self
  = liftIO ((js_getRelatedNode (unMutationEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"prevValue\"]"
        js_getPrevValue :: JSRef MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.prevValue Mozilla MutationEvent.prevValue documentation> 
getPrevValue ::
             (MonadIO m, FromJSString result) => MutationEvent -> m result
getPrevValue self
  = liftIO
      (fromJSString <$> (js_getPrevValue (unMutationEvent self)))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: JSRef MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.newValue Mozilla MutationEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getNewValue self
  = liftIO (fromJSString <$> (js_getNewValue (unMutationEvent self)))
 
foreign import javascript unsafe "$1[\"attrName\"]" js_getAttrName
        :: JSRef MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrName Mozilla MutationEvent.attrName documentation> 
getAttrName ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getAttrName self
  = liftIO (fromJSString <$> (js_getAttrName (unMutationEvent self)))
 
foreign import javascript unsafe "$1[\"attrChange\"]"
        js_getAttrChange :: JSRef MutationEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrChange Mozilla MutationEvent.attrChange documentation> 
getAttrChange :: (MonadIO m) => MutationEvent -> m Word
getAttrChange self
  = liftIO (js_getAttrChange (unMutationEvent self))
#else
module GHCJS.DOM.MutationEvent (
  ) where
#endif
