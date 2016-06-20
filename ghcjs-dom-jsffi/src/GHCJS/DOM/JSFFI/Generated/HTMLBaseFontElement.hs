{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLBaseFontElement
       (js_setColor, setColor, js_getColor, getColor, js_setFace, setFace,
        js_getFace, getFace, js_setSize, setSize, js_getSize, getSize,
        HTMLBaseFontElement, castToHTMLBaseFontElement,
        gTypeHTMLBaseFontElement)
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
 
foreign import javascript unsafe "$1[\"color\"] = $2;" js_setColor
        :: HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
setColor ::
         (MonadIO m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setColor self val = liftIO (js_setColor (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"color\"]" js_getColor ::
        HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
getColor ::
         (MonadIO m, FromJSString result) => HTMLBaseFontElement -> m result
getColor self = liftIO (fromJSString <$> (js_getColor (self)))
 
foreign import javascript unsafe "$1[\"face\"] = $2;" js_setFace ::
        HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
setFace ::
        (MonadIO m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setFace self val = liftIO (js_setFace (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"face\"]" js_getFace ::
        HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
getFace ::
        (MonadIO m, FromJSString result) => HTMLBaseFontElement -> m result
getFace self = liftIO (fromJSString <$> (js_getFace (self)))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        HTMLBaseFontElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
setSize :: (MonadIO m) => HTMLBaseFontElement -> Int -> m ()
setSize self val = liftIO (js_setSize (self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        HTMLBaseFontElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
getSize :: (MonadIO m) => HTMLBaseFontElement -> m Int
getSize self = liftIO (js_getSize (self))