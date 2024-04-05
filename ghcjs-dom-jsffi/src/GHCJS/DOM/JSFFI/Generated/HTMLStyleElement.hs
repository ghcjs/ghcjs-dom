{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLStyleElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setMedia, setMedia, js_getMedia, getMedia, js_setType, setType,
        js_getType, getType, js_getSheet, getSheet, js_setNonce, setNonce,
        js_getNonce, getNonce, HTMLStyleElement(..), gTypeHTMLStyleElement)
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
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLStyleElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled self val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLStyleElement -> m Bool
getDisabled self = liftIO (js_getDisabled self)
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setMedia self val = liftIO (js_setMedia self (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.type Mozilla HTMLStyleElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        HTMLStyleElement -> IO StyleSheet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.sheet Mozilla HTMLStyleElement.sheet documentation> 
getSheet :: (MonadIO m) => HTMLStyleElement -> m StyleSheet
getSheet self = liftIO (js_getSheet self)
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;" js_setNonce
        :: HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.nonce Mozilla HTMLStyleElement.nonce documentation> 
setNonce ::
         (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setNonce self val = liftIO (js_setNonce self (toJSString val))
 
foreign import javascript unsafe "$1[\"nonce\"]" js_getNonce ::
        HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.nonce Mozilla HTMLStyleElement.nonce documentation> 
getNonce ::
         (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getNonce self = liftIO (fromJSString <$> (js_getNonce self))