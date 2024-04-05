{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLSourceElement
       (js_setSrc, setSrc, js_getSrc, getSrc, js_setType, setType,
        js_getType, getType, js_setSrcset, setSrcset, js_getSrcset,
        getSrcset, js_setSizes, setSizes, js_getSizes, getSizes,
        js_setMedia, setMedia, js_getMedia, getMedia,
        HTMLSourceElement(..), gTypeHTMLSourceElement)
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
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setSrc self val = liftIO (js_setSrc self (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getSrc self = liftIO (fromJSString <$> (js_getSrc self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.type Mozilla HTMLSourceElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.type Mozilla HTMLSourceElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"srcset\"] = $2;"
        js_setSrcset :: HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.srcset Mozilla HTMLSourceElement.srcset documentation> 
setSrcset ::
          (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setSrcset self val = liftIO (js_setSrcset self (toJSString val))
 
foreign import javascript unsafe "$1[\"srcset\"]" js_getSrcset ::
        HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.srcset Mozilla HTMLSourceElement.srcset documentation> 
getSrcset ::
          (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getSrcset self = liftIO (fromJSString <$> (js_getSrcset self))
 
foreign import javascript unsafe "$1[\"sizes\"] = $2;" js_setSizes
        :: HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.sizes Mozilla HTMLSourceElement.sizes documentation> 
setSizes ::
         (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setSizes self val = liftIO (js_setSizes self (toJSString val))
 
foreign import javascript unsafe "$1[\"sizes\"]" js_getSizes ::
        HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.sizes Mozilla HTMLSourceElement.sizes documentation> 
getSizes ::
         (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getSizes self = liftIO (fromJSString <$> (js_getSizes self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setMedia self val = liftIO (js_setMedia self (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia self))