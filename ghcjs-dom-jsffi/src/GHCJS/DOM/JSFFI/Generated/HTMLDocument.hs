{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDocument
       (js_open, open, js_close, close, js_write, write, js_writeln,
        writeln, js_clear, clear, js_captureEvents, captureEvents,
        js_releaseEvents, releaseEvents, js_getAll, getAll, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setFgColor, setFgColor,
        js_getFgColor, getFgColor, js_setAlinkColor, setAlinkColor,
        js_getAlinkColor, getAlinkColor, js_setLinkColor, setLinkColor,
        js_getLinkColor, getLinkColor, js_setVlinkColor, setVlinkColor,
        js_getVlinkColor, getVlinkColor, HTMLDocument(..),
        gTypeHTMLDocument)
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
 
foreign import javascript unsafe "$1[\"open\"]()" js_open ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.open Mozilla HTMLDocument.open documentation> 
open :: (MonadIO m) => HTMLDocument -> m ()
open self = liftIO (js_open self)
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.close Mozilla HTMLDocument.close documentation> 
close :: (MonadIO m) => HTMLDocument -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"write\"]($2)" js_write ::
        HTMLDocument -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.write Mozilla HTMLDocument.write documentation> 
write ::
      (MonadIO m, ToJSString text) => HTMLDocument -> Maybe text -> m ()
write self text = liftIO (js_write self (toOptionalJSString text))
 
foreign import javascript unsafe "$1[\"writeln\"]($2)" js_writeln
        :: HTMLDocument -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.writeln Mozilla HTMLDocument.writeln documentation> 
writeln ::
        (MonadIO m, ToJSString text) => HTMLDocument -> Maybe text -> m ()
writeln self text
  = liftIO (js_writeln self (toOptionalJSString text))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.clear Mozilla HTMLDocument.clear documentation> 
clear :: (MonadIO m) => HTMLDocument -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        js_captureEvents :: HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.captureEvents Mozilla HTMLDocument.captureEvents documentation> 
captureEvents :: (MonadIO m) => HTMLDocument -> m ()
captureEvents self = liftIO (js_captureEvents self)
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        js_releaseEvents :: HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.releaseEvents Mozilla HTMLDocument.releaseEvents documentation> 
releaseEvents :: (MonadIO m) => HTMLDocument -> m ()
releaseEvents self = liftIO (js_releaseEvents self)
 
foreign import javascript unsafe "$1[\"all\"]" js_getAll ::
        HTMLDocument -> IO HTMLAllCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAll :: (MonadIO m) => HTMLDocument -> m HTMLAllCollection
getAll self = liftIO (js_getAll self)
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setBgColor self val = liftIO (js_setBgColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLDocument -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor self))
 
foreign import javascript unsafe "$1[\"fgColor\"] = $2;"
        js_setFgColor :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
setFgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setFgColor self val = liftIO (js_setFgColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"fgColor\"]" js_getFgColor ::
        HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColor ::
           (MonadIO m, FromJSString result) => HTMLDocument -> m result
getFgColor self = liftIO (fromJSString <$> (js_getFgColor self))
 
foreign import javascript unsafe "$1[\"alinkColor\"] = $2;"
        js_setAlinkColor :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
setAlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setAlinkColor self val
  = liftIO (js_setAlinkColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"alinkColor\"]"
        js_getAlinkColor :: HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColor ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getAlinkColor self
  = liftIO (fromJSString <$> (js_getAlinkColor self))
 
foreign import javascript unsafe "$1[\"linkColor\"] = $2;"
        js_setLinkColor :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
setLinkColor ::
             (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setLinkColor self val
  = liftIO (js_setLinkColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"linkColor\"]"
        js_getLinkColor :: HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColor ::
             (MonadIO m, FromJSString result) => HTMLDocument -> m result
getLinkColor self
  = liftIO (fromJSString <$> (js_getLinkColor self))
 
foreign import javascript unsafe "$1[\"vlinkColor\"] = $2;"
        js_setVlinkColor :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
setVlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setVlinkColor self val
  = liftIO (js_setVlinkColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"vlinkColor\"]"
        js_getVlinkColor :: HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColor ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getVlinkColor self
  = liftIO (fromJSString <$> (js_getVlinkColor self))