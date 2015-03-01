{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FontLoader
       (js_checkFont, checkFont, js_loadFont, loadFont,
        js_notifyWhenFontsReady, notifyWhenFontsReady, loading,
        loadingDone, loadStart, load, error, js_getLoading, getLoading,
        FontLoader, castToFontLoader, gTypeFontLoader)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"checkFont\"]($2,\n$3) ? 1 : 0)" js_checkFont ::
        JSRef FontLoader -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.checkFont Mozilla FontLoader.checkFont documentation> 
checkFont ::
          (MonadIO m, ToJSString font, ToJSString text) =>
            FontLoader -> font -> text -> m Bool
checkFont self font text
  = liftIO
      (js_checkFont (unFontLoader self) (toJSString font)
         (toJSString text))
 
foreign import javascript unsafe "$1[\"loadFont\"]($2)" js_loadFont
        :: JSRef FontLoader -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadFont Mozilla FontLoader.loadFont documentation> 
loadFont ::
         (MonadIO m, IsDictionary params) =>
           FontLoader -> Maybe params -> m ()
loadFont self params
  = liftIO
      (js_loadFont (unFontLoader self)
         (maybe jsNull (unDictionary . toDictionary) params))
 
foreign import javascript unsafe "$1[\"notifyWhenFontsReady\"]($2)"
        js_notifyWhenFontsReady ::
        JSRef FontLoader -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.notifyWhenFontsReady Mozilla FontLoader.notifyWhenFontsReady documentation> 
notifyWhenFontsReady ::
                     (MonadIO m) => FontLoader -> Maybe VoidCallback -> m ()
notifyWhenFontsReady self callback
  = liftIO
      (js_notifyWhenFontsReady (unFontLoader self)
         (maybe jsNull unVoidCallback callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloading Mozilla FontLoader.onloading documentation> 
loading :: EventName FontLoader Event
loading = unsafeEventName (toJSString "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadingdone Mozilla FontLoader.onloadingdone documentation> 
loadingDone :: EventName FontLoader Event
loadingDone = unsafeEventName (toJSString "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadstart Mozilla FontLoader.onloadstart documentation> 
loadStart :: EventName FontLoader ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onload Mozilla FontLoader.onload documentation> 
load :: EventName FontLoader UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onerror Mozilla FontLoader.onerror documentation> 
error :: EventName FontLoader UIEvent
error = unsafeEventName (toJSString "error")
 
foreign import javascript unsafe "($1[\"loading\"] ? 1 : 0)"
        js_getLoading :: JSRef FontLoader -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
getLoading :: (MonadIO m) => FontLoader -> m Bool
getLoading self = liftIO (js_getLoading (unFontLoader self))
#else
module GHCJS.DOM.FontLoader (
  ) where
#endif
