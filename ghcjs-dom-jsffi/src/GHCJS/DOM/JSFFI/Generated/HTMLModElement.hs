{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLModElement
       (js_setCite, setCite, js_getCite, getCite, js_setDateTime,
        setDateTime, js_getDateTime, getDateTime, HTMLModElement,
        castToHTMLModElement, gTypeHTMLModElement)
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
 
foreign import javascript unsafe "$1[\"cite\"] = $2;" js_setCite ::
        HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
setCite ::
        (MonadIO m, ToJSString val) => HTMLModElement -> val -> m ()
setCite self val = liftIO (js_setCite (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cite\"]" js_getCite ::
        HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
getCite ::
        (MonadIO m, FromJSString result) => HTMLModElement -> m result
getCite self = liftIO (fromJSString <$> (js_getCite (self)))
 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        js_setDateTime :: HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
setDateTime ::
            (MonadIO m, ToJSString val) => HTMLModElement -> val -> m ()
setDateTime self val
  = liftIO (js_setDateTime (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dateTime\"]" js_getDateTime
        :: HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
getDateTime ::
            (MonadIO m, FromJSString result) => HTMLModElement -> m result
getDateTime self
  = liftIO (fromJSString <$> (js_getDateTime (self)))