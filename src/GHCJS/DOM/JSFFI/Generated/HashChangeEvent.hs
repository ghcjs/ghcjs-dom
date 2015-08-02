{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HashChangeEvent
       (js_initHashChangeEvent, initHashChangeEvent, js_getOldURL,
        getOldURL, js_getNewURL, getNewURL, HashChangeEvent,
        castToHashChangeEvent, gTypeHashChangeEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
        JSRef HashChangeEvent ->
          JSString -> Bool -> Bool -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
initHashChangeEvent ::
                    (MonadIO m, ToJSString type', ToJSString oldURL,
                     ToJSString newURL) =>
                      HashChangeEvent ->
                        type' -> Bool -> Bool -> oldURL -> newURL -> m ()
initHashChangeEvent self type' canBubble cancelable oldURL newURL
  = liftIO
      (js_initHashChangeEvent (unHashChangeEvent self) (toJSString type')
         canBubble
         cancelable
         (toJSString oldURL)
         (toJSString newURL))
 
foreign import javascript unsafe "$1[\"oldURL\"]" js_getOldURL ::
        JSRef HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.oldURL Mozilla HashChangeEvent.oldURL documentation> 
getOldURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getOldURL self
  = liftIO (fromJSString <$> (js_getOldURL (unHashChangeEvent self)))
 
foreign import javascript unsafe "$1[\"newURL\"]" js_getNewURL ::
        JSRef HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.newURL Mozilla HashChangeEvent.newURL documentation> 
getNewURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getNewURL self
  = liftIO (fromJSString <$> (js_getNewURL (unHashChangeEvent self)))