{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOListElement
       (js_setCompact, setCompact, js_getCompact, getCompact, js_setStart,
        setStart, js_getStart, getStart, js_setReversed, setReversed,
        js_getReversed, getReversed, js_setType, setType, js_getType,
        getType, HTMLOListElement, castToHTMLOListElement,
        gTypeHTMLOListElement)
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
 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        js_setCompact :: HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLOListElement -> Bool -> m ()
setCompact self val = liftIO (js_setCompact (self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLOListElement -> m Bool
getCompact self = liftIO (js_getCompact (self))
 
foreign import javascript unsafe "$1[\"start\"] = $2;" js_setStart
        :: HTMLOListElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
setStart :: (MonadIO m) => HTMLOListElement -> Int -> m ()
setStart self val = liftIO (js_setStart (self) val)
 
foreign import javascript unsafe "$1[\"start\"]" js_getStart ::
        HTMLOListElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
getStart :: (MonadIO m) => HTMLOListElement -> m Int
getStart self = liftIO (js_getStart (self))
 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        js_setReversed :: HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
setReversed :: (MonadIO m) => HTMLOListElement -> Bool -> m ()
setReversed self val = liftIO (js_setReversed (self) val)
 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        js_getReversed :: HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
getReversed :: (MonadIO m) => HTMLOListElement -> m Bool
getReversed self = liftIO (js_getReversed (self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLOListElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.type Mozilla HTMLOListElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLOListElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLOListElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.type Mozilla HTMLOListElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLOListElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))