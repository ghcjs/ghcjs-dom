{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FontLoader
       (js_checkFont, checkFont, js_loadFont, loadFont,
        js_notifyWhenFontsReady, notifyWhenFontsReady, loading,
        loadingDone, loadStart, load, error, js_getLoading, getLoading,
        FontLoader, castToFontLoader, gTypeFontLoader)
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
 
foreign import javascript unsafe
        "($1[\"checkFont\"]($2,\n$3) ? 1 : 0)" js_checkFont ::
        FontLoader -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.checkFont Mozilla FontLoader.checkFont documentation> 
checkFont ::
          (MonadIO m, ToJSString font, ToJSString text) =>
            FontLoader -> font -> text -> m Bool
checkFont self font text
  = liftIO (js_checkFont (self) (toJSString font) (toJSString text))
 
foreign import javascript unsafe "$1[\"loadFont\"]($2)" js_loadFont
        :: FontLoader -> Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadFont Mozilla FontLoader.loadFont documentation> 
loadFont ::
         (MonadIO m, IsDictionary params) =>
           FontLoader -> Maybe params -> m ()
loadFont self params
  = liftIO
      (js_loadFont (self) (maybeToNullable (fmap toDictionary params)))
 
foreign import javascript unsafe "$1[\"notifyWhenFontsReady\"]($2)"
        js_notifyWhenFontsReady ::
        FontLoader -> Nullable VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.notifyWhenFontsReady Mozilla FontLoader.notifyWhenFontsReady documentation> 
notifyWhenFontsReady ::
                     (MonadIO m) => FontLoader -> Maybe VoidCallback -> m ()
notifyWhenFontsReady self callback
  = liftIO
      (js_notifyWhenFontsReady (self) (maybeToNullable callback))

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
        js_getLoading :: FontLoader -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
getLoading :: (MonadIO m) => FontLoader -> m Bool
getLoading self = liftIO (js_getLoading (self))