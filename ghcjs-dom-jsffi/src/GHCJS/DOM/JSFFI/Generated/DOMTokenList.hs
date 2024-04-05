{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMTokenList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_contains,
        contains, contains_, js_add, add, js_remove, remove, js_toggle,
        toggle, toggle_, js_replace, replace, js_supports, supports,
        supports_, js_getLength, getLength, js_setValue, setValue,
        js_getValue, getValue, DOMTokenList(..), gTypeDOMTokenList)
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
 
foreign import javascript unsafe "$1[$2]" js_item ::
        DOMTokenList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       DOMTokenList -> Word -> m (Maybe result)
item self index
  = liftIO (fromMaybeJSString <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item_ :: (MonadIO m) => DOMTokenList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack, FromJSString result) =>
             DOMTokenList -> Word -> m result
itemUnsafe self index
  = liftIO
      ((fromMaybeJSString <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnchecked ::
              (MonadIO m, FromJSString result) =>
                DOMTokenList -> Word -> m result
itemUnchecked self index
  = liftIO (fromJust . fromMaybeJSString <$> (js_item self index))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: DOMTokenList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains ::
         (MonadIO m, ToJSString token) => DOMTokenList -> token -> m Bool
contains self token = liftIO (js_contains self (toJSString token))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains_ ::
          (MonadIO m, ToJSString token) => DOMTokenList -> token -> m ()
contains_ self token
  = liftIO (void (js_contains self (toJSString token)))
 
foreign import javascript safe "$1[\"add\"]($2)" js_add ::
        DOMTokenList -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
add ::
    (MonadIO m, ToJSString tokens) => DOMTokenList -> [tokens] -> m ()
add self tokens
  = liftIO (toJSVal tokens >>= \ tokens' -> js_add self tokens')
 
foreign import javascript safe "$1[\"remove\"]($2)" js_remove ::
        DOMTokenList -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
remove ::
       (MonadIO m, ToJSString tokens) => DOMTokenList -> [tokens] -> m ()
remove self tokens
  = liftIO (toJSVal tokens >>= \ tokens' -> js_remove self tokens')
 
foreign import javascript safe "($1[\"toggle\"]($2, $3) ? 1 : 0)"
        js_toggle :: DOMTokenList -> JSString -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle ::
       (MonadIO m, ToJSString token) =>
         DOMTokenList -> token -> Bool -> m Bool
toggle self token force
  = liftIO (js_toggle self (toJSString token) force)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle_ ::
        (MonadIO m, ToJSString token) =>
          DOMTokenList -> token -> Bool -> m ()
toggle_ self token force
  = liftIO (void (js_toggle self (toJSString token) force))
 
foreign import javascript safe "$1[\"replace\"]($2, $3)" js_replace
        :: DOMTokenList -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.replace Mozilla DOMTokenList.replace documentation> 
replace ::
        (MonadIO m, ToJSString token, ToJSString newToken) =>
          DOMTokenList -> token -> newToken -> m ()
replace self token newToken
  = liftIO (js_replace self (toJSString token) (toJSString newToken))
 
foreign import javascript safe "($1[\"supports\"]($2) ? 1 : 0)"
        js_supports :: DOMTokenList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.supports Mozilla DOMTokenList.supports documentation> 
supports ::
         (MonadIO m, ToJSString token) => DOMTokenList -> token -> m Bool
supports self token = liftIO (js_supports self (toJSString token))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.supports Mozilla DOMTokenList.supports documentation> 
supports_ ::
          (MonadIO m, ToJSString token) => DOMTokenList -> token -> m ()
supports_ self token
  = liftIO (void (js_supports self (toJSString token)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        DOMTokenList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
getLength :: (MonadIO m) => DOMTokenList -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: DOMTokenList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.value Mozilla DOMTokenList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => DOMTokenList -> val -> m ()
setValue self val = liftIO (js_setValue self (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DOMTokenList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.value Mozilla DOMTokenList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => DOMTokenList -> m result
getValue self = liftIO (fromJSString <$> (js_getValue self))