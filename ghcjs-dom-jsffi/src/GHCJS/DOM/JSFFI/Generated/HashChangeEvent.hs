{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HashChangeEvent
       (js_newHashChangeEvent, newHashChangeEvent, js_initHashChangeEvent,
        initHashChangeEvent, js_getOldURL, getOldURL, js_getNewURL,
        getNewURL, HashChangeEvent(..), gTypeHashChangeEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"HashChangeEvent\"]($1,\n$2)" js_newHashChangeEvent ::
        JSString -> Optional HashChangeEventInit -> IO HashChangeEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent Mozilla HashChangeEvent documentation> 
newHashChangeEvent ::
                   (MonadIO m, ToJSString type') =>
                     type' -> Maybe HashChangeEventInit -> m HashChangeEvent
newHashChangeEvent type' eventInitDict
  = liftIO
      (js_newHashChangeEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "$1[\"initHashChangeEvent\"]($2,\n$3, $4, $5, $6)"
        js_initHashChangeEvent ::
        HashChangeEvent ->
          Optional JSString ->
            Bool -> Bool -> Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
initHashChangeEvent ::
                    (MonadIO m, ToJSString type', ToJSString oldURL,
                     ToJSString newURL) =>
                      HashChangeEvent ->
                        Maybe type' -> Bool -> Bool -> Maybe oldURL -> Maybe newURL -> m ()
initHashChangeEvent self type' canBubble cancelable oldURL newURL
  = liftIO
      (js_initHashChangeEvent self (toOptionalJSString type') canBubble
         cancelable
         (toOptionalJSString oldURL)
         (toOptionalJSString newURL))
 
foreign import javascript unsafe "$1[\"oldURL\"]" js_getOldURL ::
        HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.oldURL Mozilla HashChangeEvent.oldURL documentation> 
getOldURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getOldURL self = liftIO (fromJSString <$> (js_getOldURL self))
 
foreign import javascript unsafe "$1[\"newURL\"]" js_getNewURL ::
        HashChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.newURL Mozilla HashChangeEvent.newURL documentation> 
getNewURL ::
          (MonadIO m, FromJSString result) => HashChangeEvent -> m result
getNewURL self = liftIO (fromJSString <$> (js_getNewURL self))