{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMTokenList
       (js_item, item, js_contains, contains, js_add, add, js_remove,
        remove, js_toggle, toggle, js_toString, toString, js_getLength,
        getLength, DOMTokenList, castToDOMTokenList, gTypeDOMTokenList,
        IsDOMTokenList, toDOMTokenList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        DOMTokenList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item ::
     (MonadIO m, IsDOMTokenList self, FromJSString result) =>
       self -> Word -> m (Maybe result)
item self index
  = liftIO
      (fromMaybeJSString <$> (js_item (toDOMTokenList self) index))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: DOMTokenList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains ::
         (MonadIO m, IsDOMTokenList self, ToJSString token) =>
           self -> token -> m Bool
contains self token
  = liftIO (js_contains (toDOMTokenList self) (toJSString token))
 
foreign import javascript unsafe "$1[\"add\"].apply($1, $2)" js_add
        :: DOMTokenList -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
add ::
    (MonadIO m, IsDOMTokenList self, ToJSString tokens,
     ToJSVal tokens) =>
      self -> [tokens] -> m ()
add self tokens
  = liftIO
      (toJSVal tokens >>=
         \ tokens' -> js_add (toDOMTokenList self) tokens')
 
foreign import javascript unsafe "$1[\"remove\"].apply($1, $2)"
        js_remove :: DOMTokenList -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
remove ::
       (MonadIO m, IsDOMTokenList self, ToJSString tokens,
        ToJSVal tokens) =>
         self -> [tokens] -> m ()
remove self tokens
  = liftIO
      (toJSVal tokens >>=
         \ tokens' -> js_remove (toDOMTokenList self) tokens')
 
foreign import javascript unsafe "($1[\"toggle\"]($2, $3) ? 1 : 0)"
        js_toggle :: DOMTokenList -> JSString -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle ::
       (MonadIO m, IsDOMTokenList self, ToJSString token) =>
         self -> token -> Bool -> m Bool
toggle self token force
  = liftIO (js_toggle (toDOMTokenList self) (toJSString token) force)
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: DOMTokenList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toString Mozilla DOMTokenList.toString documentation> 
toString ::
         (MonadIO m, IsDOMTokenList self, FromJSString result) =>
           self -> m result
toString self
  = liftIO (fromJSString <$> (js_toString (toDOMTokenList self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        DOMTokenList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
getLength :: (MonadIO m, IsDOMTokenList self) => self -> m Word
getLength self = liftIO (js_getLength (toDOMTokenList self))