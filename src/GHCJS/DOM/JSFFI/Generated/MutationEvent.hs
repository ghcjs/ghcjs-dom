{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MutationEvent
       (js_initMutationEvent, initMutationEvent, pattern MODIFICATION,
        pattern ADDITION, pattern REMOVAL, js_getRelatedNode,
        getRelatedNode, js_getPrevValue, getPrevValue, js_getNewValue,
        getNewValue, js_getAttrName, getAttrName, js_getAttrChange,
        getAttrChange, MutationEvent, castToMutationEvent,
        gTypeMutationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"initMutationEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initMutationEvent ::
        MutationEvent ->
          JSString ->
            Bool ->
              Bool ->
                Nullable Node -> JSString -> JSString -> JSString -> Word -> IO ()

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
      (js_initMutationEvent (self) (toJSString type') canBubble
         cancelable
         (maybeToNullable (fmap toNode relatedNode))
         (toJSString prevValue)
         (toJSString newValue)
         (toJSString attrName)
         attrChange)
pattern MODIFICATION = 1
pattern ADDITION = 2
pattern REMOVAL = 3
 
foreign import javascript unsafe "$1[\"relatedNode\"]"
        js_getRelatedNode :: MutationEvent -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.relatedNode Mozilla MutationEvent.relatedNode documentation> 
getRelatedNode :: (MonadIO m) => MutationEvent -> m (Maybe Node)
getRelatedNode self
  = liftIO (nullableToMaybe <$> (js_getRelatedNode (self)))
 
foreign import javascript unsafe "$1[\"prevValue\"]"
        js_getPrevValue :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.prevValue Mozilla MutationEvent.prevValue documentation> 
getPrevValue ::
             (MonadIO m, FromJSString result) => MutationEvent -> m result
getPrevValue self
  = liftIO (fromJSString <$> (js_getPrevValue (self)))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.newValue Mozilla MutationEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getNewValue self
  = liftIO (fromJSString <$> (js_getNewValue (self)))
 
foreign import javascript unsafe "$1[\"attrName\"]" js_getAttrName
        :: MutationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrName Mozilla MutationEvent.attrName documentation> 
getAttrName ::
            (MonadIO m, FromJSString result) => MutationEvent -> m result
getAttrName self
  = liftIO (fromJSString <$> (js_getAttrName (self)))
 
foreign import javascript unsafe "$1[\"attrChange\"]"
        js_getAttrChange :: MutationEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationEvent.attrChange Mozilla MutationEvent.attrChange documentation> 
getAttrChange :: (MonadIO m) => MutationEvent -> m Word
getAttrChange self = liftIO (js_getAttrChange (self))