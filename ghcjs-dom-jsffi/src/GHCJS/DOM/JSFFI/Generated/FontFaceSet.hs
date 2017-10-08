{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FontFaceSet
       (js_newFontFaceSet, newFontFaceSet, js_has, has, has_, js_add, add,
        add_, js_delete, delete, delete_, js_clear, clear, js_load, load,
        load_, js_check, check, check_, js_getSize, getSize, loading,
        loadingDone, loadingerror, js_getReady, getReady, js_getStatus,
        getStatus, FontFaceSet(..), gTypeFontFaceSet)
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
 
foreign import javascript unsafe "new window[\"FontFaceSet\"]($1)"
        js_newFontFaceSet :: JSVal -> IO FontFaceSet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet Mozilla FontFaceSet documentation> 
newFontFaceSet :: (MonadIO m) => [FontFace] -> m FontFaceSet
newFontFaceSet initialFaces
  = liftIO
      (toJSVal initialFaces >>=
         \ initialFaces' -> js_newFontFaceSet initialFaces')
 
foreign import javascript unsafe "($1[\"has\"]($2) ? 1 : 0)" js_has
        :: FontFaceSet -> FontFace -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.has Mozilla FontFaceSet.has documentation> 
has :: (MonadIO m) => FontFaceSet -> FontFace -> m Bool
has self font = liftIO (js_has self font)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.has Mozilla FontFaceSet.has documentation> 
has_ :: (MonadIO m) => FontFaceSet -> FontFace -> m ()
has_ self font = liftIO (void (js_has self font))
 
foreign import javascript unsafe "$1[\"add\"]($2)" js_add ::
        FontFaceSet -> FontFace -> IO FontFaceSet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.add Mozilla FontFaceSet.add documentation> 
add :: (MonadIO m) => FontFaceSet -> FontFace -> m FontFaceSet
add self font = liftIO (js_add self font)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.add Mozilla FontFaceSet.add documentation> 
add_ :: (MonadIO m) => FontFaceSet -> FontFace -> m ()
add_ self font = liftIO (void (js_add self font))
 
foreign import javascript unsafe "($1[\"delete\"]($2) ? 1 : 0)"
        js_delete :: FontFaceSet -> FontFace -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.delete Mozilla FontFaceSet.delete documentation> 
delete :: (MonadIO m) => FontFaceSet -> FontFace -> m Bool
delete self font = liftIO (js_delete self font)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.delete Mozilla FontFaceSet.delete documentation> 
delete_ :: (MonadIO m) => FontFaceSet -> FontFace -> m ()
delete_ self font = liftIO (void (js_delete self font))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        FontFaceSet -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.clear Mozilla FontFaceSet.clear documentation> 
clear :: (MonadIO m) => FontFaceSet -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript interruptible
        "$1[\"load\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_load ::
        FontFaceSet -> JSString -> Optional JSString -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.load Mozilla FontFaceSet.load documentation> 
load ::
     (MonadIO m, ToJSString font, ToJSString text) =>
       FontFaceSet -> font -> Maybe text -> m [FontFace]
load self font text
  = liftIO
      (((js_load self (toJSString font) (toOptionalJSString text)) >>=
          checkPromiseResult)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.load Mozilla FontFaceSet.load documentation> 
load_ ::
      (MonadIO m, ToJSString font, ToJSString text) =>
        FontFaceSet -> font -> Maybe text -> m ()
load_ self font text
  = liftIO
      (void (js_load self (toJSString font) (toOptionalJSString text)))
 
foreign import javascript safe "($1[\"check\"]($2, $3) ? 1 : 0)"
        js_check :: FontFaceSet -> JSString -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.check Mozilla FontFaceSet.check documentation> 
check ::
      (MonadIO m, ToJSString font, ToJSString text) =>
        FontFaceSet -> font -> Maybe text -> m Bool
check self font text
  = liftIO
      (js_check self (toJSString font) (toOptionalJSString text))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.check Mozilla FontFaceSet.check documentation> 
check_ ::
       (MonadIO m, ToJSString font, ToJSString text) =>
         FontFaceSet -> font -> Maybe text -> m ()
check_ self font text
  = liftIO
      (void (js_check self (toJSString font) (toOptionalJSString text)))
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        FontFaceSet -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.size Mozilla FontFaceSet.size documentation> 
getSize :: (MonadIO m) => FontFaceSet -> m Int
getSize self = liftIO (js_getSize self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloading Mozilla FontFaceSet.onloading documentation> 
loading :: EventName FontFaceSet Event
loading = unsafeEventName (toJSString "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloadingdone Mozilla FontFaceSet.onloadingdone documentation> 
loadingDone :: EventName FontFaceSet Event
loadingDone = unsafeEventName (toJSString "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloadingerror Mozilla FontFaceSet.onloadingerror documentation> 
loadingerror :: EventName FontFaceSet onloadingerror
loadingerror = unsafeEventName (toJSString "loadingerror")
 
foreign import javascript interruptible
        "$1[\"ready\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getReady :: FontFaceSet -> IO (JSVal, FontFaceSet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.ready Mozilla FontFaceSet.ready documentation> 
getReady :: (MonadIO m) => FontFaceSet -> m FontFaceSet
getReady self = liftIO ((js_getReady self) >>= checkPromiseResult)
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        FontFaceSet -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.status Mozilla FontFaceSet.status documentation> 
getStatus :: (MonadIO m) => FontFaceSet -> m FontFaceSetLoadStatus
getStatus self
  = liftIO ((js_getStatus self) >>= fromJSValUnchecked)