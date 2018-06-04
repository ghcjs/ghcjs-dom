{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLinkElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setCharset, setCharset, js_getCharset, getCharset, js_setHref,
        setHref, js_getHref, getHref, js_setHreflang, setHreflang,
        js_getHreflang, getHreflang, js_setMedia, setMedia, js_getMedia,
        getMedia, js_setRel, setRel, js_getRel, getRel, js_setRev, setRev,
        js_getRev, getRev, js_getSizes, getSizes, js_setTarget, setTarget,
        js_getTarget, getTarget, js_setType, setType, js_getType, getType,
        js_setAs, setAs, js_getAs, getAs, js_setCrossOrigin,
        setCrossOrigin, js_getCrossOrigin, getCrossOrigin,
        getCrossOriginUnsafe, getCrossOriginUnchecked, js_getSheet,
        getSheet, js_getRelList, getRelList, js_setNonce, setNonce,
        js_getNonce, getNonce, js_setIntegrity, setIntegrity,
        js_getIntegrity, getIntegrity, HTMLLinkElement(..),
        gTypeHTMLLinkElement)
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
        js_setDisabled :: HTMLLinkElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLLinkElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled self val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLLinkElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLLinkElement -> m Bool
getDisabled self = liftIO (js_getDisabled self)
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setCharset self val = liftIO (js_setCharset self (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getCharset self = liftIO (fromJSString <$> (js_getCharset self))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHref self val = liftIO (js_setHref self (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getHref self = liftIO (fromJSString <$> (js_getHref self))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        js_setHreflang :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
setHreflang ::
            (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHreflang self val
  = liftIO (js_setHreflang self (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]" js_getHreflang
        :: HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
getHreflang ::
            (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getHreflang self = liftIO (fromJSString <$> (js_getHreflang self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setMedia self val = liftIO (js_setMedia self (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia self))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRel self val = liftIO (js_setRel self (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getRel self = liftIO (fromJSString <$> (js_getRel self))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;" js_setRev ::
        HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
setRev ::
       (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRev self val = liftIO (js_setRev self (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]" js_getRev ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
getRev ::
       (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getRev self = liftIO (fromJSString <$> (js_getRev self))
 
foreign import javascript unsafe "$1[\"sizes\"]" js_getSizes ::
        HTMLLinkElement -> IO DOMTokenList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sizes Mozilla HTMLLinkElement.sizes documentation> 
getSizes :: (MonadIO m) => HTMLLinkElement -> m DOMTokenList
getSizes self = liftIO (js_getSizes self)
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setTarget self val = liftIO (js_setTarget self (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.type Mozilla HTMLLinkElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.type Mozilla HTMLLinkElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"as\"] = $2;" js_setAs ::
        HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.as Mozilla HTMLLinkElement.as documentation> 
setAs ::
      (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setAs self val = liftIO (js_setAs self (toJSString val))
 
foreign import javascript unsafe "$1[\"as\"]" js_getAs ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.as Mozilla HTMLLinkElement.as documentation> 
getAs ::
      (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getAs self = liftIO (fromJSString <$> (js_getAs self))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        js_setCrossOrigin :: HTMLLinkElement -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadIO m, ToJSString val) => HTMLLinkElement -> Maybe val -> m ()
setCrossOrigin self val
  = liftIO (js_setCrossOrigin self (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        js_getCrossOrigin :: HTMLLinkElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadIO m, FromJSString result) =>
                 HTMLLinkElement -> m (Maybe result)
getCrossOrigin self
  = liftIO (fromMaybeJSString <$> (js_getCrossOrigin self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadIO m, HasCallStack, FromJSString result) =>
                       HTMLLinkElement -> m result
getCrossOriginUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getCrossOrigin self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.crossOrigin Mozilla HTMLLinkElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getCrossOriginUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getCrossOrigin self))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        HTMLLinkElement -> IO StyleSheet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sheet Mozilla HTMLLinkElement.sheet documentation> 
getSheet :: (MonadIO m) => HTMLLinkElement -> m StyleSheet
getSheet self = liftIO (js_getSheet self)
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        HTMLLinkElement -> IO DOMTokenList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.relList Mozilla HTMLLinkElement.relList documentation> 
getRelList :: (MonadIO m) => HTMLLinkElement -> m DOMTokenList
getRelList self = liftIO (js_getRelList self)
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;" js_setNonce
        :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.nonce Mozilla HTMLLinkElement.nonce documentation> 
setNonce ::
         (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setNonce self val = liftIO (js_setNonce self (toJSString val))
 
foreign import javascript unsafe "$1[\"nonce\"]" js_getNonce ::
        HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.nonce Mozilla HTMLLinkElement.nonce documentation> 
getNonce ::
         (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getNonce self = liftIO (fromJSString <$> (js_getNonce self))
 
foreign import javascript unsafe "$1[\"integrity\"] = $2;"
        js_setIntegrity :: HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.integrity Mozilla HTMLLinkElement.integrity documentation> 
setIntegrity ::
             (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setIntegrity self val
  = liftIO (js_setIntegrity self (toJSString val))
 
foreign import javascript unsafe "$1[\"integrity\"]"
        js_getIntegrity :: HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.integrity Mozilla HTMLLinkElement.integrity documentation> 
getIntegrity ::
             (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getIntegrity self
  = liftIO (fromJSString <$> (js_getIntegrity self))