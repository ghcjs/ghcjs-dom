{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAreaElement
       (js_setAlt, setAlt, js_getAlt, getAlt, js_setCoords, setCoords,
        js_getCoords, getCoords, js_setNoHref, setNoHref, js_getNoHref,
        getNoHref, js_setPing, setPing, js_getPing, getPing, js_setRel,
        setRel, js_getRel, getRel, js_setShape, setShape, js_getShape,
        getShape, js_setTarget, setTarget, js_getTarget, getTarget,
        js_setDownload, setDownload, js_getDownload, getDownload,
        js_getRelList, getRelList, HTMLAreaElement(..),
        gTypeHTMLAreaElement)
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
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setAlt self val = liftIO (js_setAlt self (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getAlt self = liftIO (fromJSString <$> (js_getAlt self))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setCoords self val = liftIO (js_setCoords self (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getCoords self = liftIO (fromJSString <$> (js_getCoords self))
 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        js_setNoHref :: HTMLAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
setNoHref :: (MonadIO m) => HTMLAreaElement -> Bool -> m ()
setNoHref self val = liftIO (js_setNoHref self val)
 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        js_getNoHref :: HTMLAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
getNoHref :: (MonadIO m) => HTMLAreaElement -> m Bool
getNoHref self = liftIO (js_getNoHref self)
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setPing self val = liftIO (js_setPing self (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPing self = liftIO (fromJSString <$> (js_getPing self))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setRel self val = liftIO (js_setRel self (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getRel self = liftIO (fromJSString <$> (js_getRel self))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setShape self val = liftIO (js_setShape self (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getShape self = liftIO (fromJSString <$> (js_getShape self))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setTarget self val = liftIO (js_setTarget self (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget self))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        js_setDownload :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.download Mozilla HTMLAreaElement.download documentation> 
setDownload ::
            (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setDownload self val
  = liftIO (js_setDownload self (toJSString val))
 
foreign import javascript unsafe "$1[\"download\"]" js_getDownload
        :: HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.download Mozilla HTMLAreaElement.download documentation> 
getDownload ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getDownload self = liftIO (fromJSString <$> (js_getDownload self))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        HTMLAreaElement -> IO DOMTokenList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelList :: (MonadIO m) => HTMLAreaElement -> m DOMTokenList
getRelList self = liftIO (js_getRelList self)