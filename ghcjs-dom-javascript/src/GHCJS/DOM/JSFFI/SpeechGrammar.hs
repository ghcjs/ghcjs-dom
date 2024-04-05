{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.SpeechGrammar
       (newSpeechGrammarList, addFromURI, addFromString,
        getLength, getSrc, setSrc,
        getWeight, setWeight, item, item_,
        SpeechGrammar(..), gTypeSpeechGrammar,
        SpeechGrammarList(..), gTypeSpeechGrammarList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums

foreign import javascript unsafe
        "new window[\"webkitSpeechGrammarList\"]()"
        js_newSpeechGrammarList ::
        IO SpeechGrammarList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList Mozilla SpeechGrammarList documentation>
newSpeechGrammarList :: (MonadIO m) => m SpeechGrammarList
newSpeechGrammarList = liftIO (js_newSpeechGrammarList)

foreign import javascript unsafe
        "$1[\"addFromURI\"]($2,\n$3)"
        js_speechGrammarListAddFromURI ::
        SpeechGrammarList -> JSString
        -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList.addFromURI Mozilla SpeechGrammarList.addFromURI documentation>
addFromURI :: (MonadIO m, ToJSString grammarURI)
  => SpeechGrammarList -> grammarURI -> Maybe Double -> m ()
addFromURI self grammarURI weight
  = liftIO (js_speechGrammarListAddFromURI self
            (toJSString grammarURI) (maybeToOptional weight))

foreign import javascript unsafe
        "$1[\"addFromString\"]($2,\n$3)"
        js_speechGrammarListAddFromString ::
        SpeechGrammarList -> JSString
        -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList.addFromString Mozilla SpeechGrammarList.addFromString documentation>
addFromString :: (MonadIO m, ToJSString grammarStr)
  => SpeechGrammarList -> grammarStr -> Maybe Double -> m ()
addFromString self grammarStr weight
  = liftIO (js_speechGrammarListAddFromString self
            (toJSString grammarStr) (maybeToOptional weight))

foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        SpeechGrammarList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList.length Mozilla SpeechGrammarList.length documentation>
getLength :: (MonadIO m) => SpeechGrammarList -> m Word
getLength self = liftIO (js_getLength self)

foreign import javascript unsafe "$1[$2]" js_item ::
        SpeechGrammarList -> Word -> IO SpeechGrammar

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList.item Mozilla SpeechGrammarList.item documentation>
item :: (MonadIO m) => SpeechGrammarList -> Word -> m SpeechGrammar
item self index = liftIO (js_item self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammarList.item Mozilla SpeechGrammarList.item documentation>
item_ :: (MonadIO m) => SpeechGrammarList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        SpeechGrammar -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammar.src Mozilla SpeechGrammar.src documentation>
setSrc ::
       (MonadIO m, ToJSString val) => SpeechGrammar -> val -> m ()
setSrc self val = liftIO (js_setSrc self (toJSString val))

foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        SpeechGrammar -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammar.src Mozilla SpeechGrammar.src documentation>
getSrc ::
       (MonadIO m, FromJSString result) => SpeechGrammar -> m result
getSrc self = liftIO (fromJSString <$> (js_getSrc self))

foreign import javascript unsafe "$1[\"weight\"] = $2;"
        js_setWeight :: SpeechGrammar -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammar.weight Mozilla SpeechGrammar.weight documentation>
setWeight :: (MonadIO m) => SpeechGrammar -> Double -> m ()
setWeight self val = liftIO (js_setWeight self val)

foreign import javascript unsafe "$1[\"weight\"]" js_getWeight ::
        SpeechGrammar -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SpeechGrammar.weight Mozilla SpeechGrammar.weight documentation>
getWeight ::
          (MonadIO m) => SpeechGrammar -> m Double
getWeight self = liftIO (js_getWeight self)
