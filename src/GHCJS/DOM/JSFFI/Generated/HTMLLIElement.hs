{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLIElement
       (js_setType, setType, js_getType, getType, js_setValue, setValue,
        js_getValue, getValue, HTMLLIElement, castToHTMLLIElement,
        gTypeHTMLLIElement)
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
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLLIElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.type Mozilla HTMLLIElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLLIElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLLIElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.type Mozilla HTMLLIElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLLIElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLLIElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
setValue :: (MonadIO m) => HTMLLIElement -> Int -> m ()
setValue self val = liftIO (js_setValue (self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLLIElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
getValue :: (MonadIO m) => HTMLLIElement -> m Int
getValue self = liftIO (js_getValue (self))