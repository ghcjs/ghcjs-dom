{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HashChangeEvent
       (js_initHashChangeEvent, initHashChangeEvent, js_getOldURL,
        getOldURL, js_getNewURL, getNewURL, HashChangeEvent,
        castToHashChangeEvent, gTypeHashChangeEvent)
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
        "$1[\"initHashChangeEvent\"]($2,\n$3, $4, $5, $6)"
        js_initHashChangeEvent ::
        HashChangeEvent ->
          JSString -> Bool -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
initHashChangeEvent ::
                    (MonadIO m, ToJSString type', ToJSString oldURL,
                     ToJSString newURL) =>
                      HashChangeEvent ->
                        type' -> Bool -> Bool -> oldURL -> newURL -> m ()
initHashChangeEvent self type' canBubble cancelable oldURL newURL
  = liftIO
      (js_initHashChangeEvent (self) (toJSString type') canBubble
         cancelable
         (toJSString oldURL)
         (toJSString newURL))
 
foreign import javascript unsafe "$1[\"oldURL\"]" js_getOldURL ::
        HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.oldURL Mozilla HashChangeEvent.oldURL documentation> 
getOldURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getOldURL self = liftIO (fromJSString <$> (js_getOldURL (self)))
 
foreign import javascript unsafe "$1[\"newURL\"]" js_getNewURL ::
        HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.newURL Mozilla HashChangeEvent.newURL documentation> 
getNewURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getNewURL self = liftIO (fromJSString <$> (js_getNewURL (self)))