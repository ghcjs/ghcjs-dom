{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FontLoader
       (ghcjs_dom_font_loader_check_font, fontLoaderCheckFont,
        ghcjs_dom_font_loader_load_font, fontLoaderLoadFont,
        ghcjs_dom_font_loader_notify_when_fonts_ready,
        fontLoaderNotifyWhenFontsReady, fontLoaderLoading,
        fontLoaderLoadingDone, fontLoaderLoadStart, fontLoaderLoad,
        fontLoaderError, ghcjs_dom_font_loader_get_loading,
        fontLoaderGetLoading, FontLoader, IsFontLoader, castToFontLoader,
        gTypeFontLoader, toFontLoader)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"checkFont\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_font_loader_check_font ::
        JSRef FontLoader -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.checkFont Mozilla FontLoader.checkFont documentation> 
fontLoaderCheckFont ::
                    (MonadIO m, IsFontLoader self, ToJSString font, ToJSString text) =>
                      self -> font -> text -> m Bool
fontLoaderCheckFont self font text
  = liftIO
      (ghcjs_dom_font_loader_check_font
         (unFontLoader (toFontLoader self))
         (toJSString font)
         (toJSString text))
 
foreign import javascript unsafe "$1[\"loadFont\"]($2)"
        ghcjs_dom_font_loader_load_font ::
        JSRef FontLoader -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadFont Mozilla FontLoader.loadFont documentation> 
fontLoaderLoadFont ::
                   (MonadIO m, IsFontLoader self, IsDictionary params) =>
                     self -> Maybe params -> m ()
fontLoaderLoadFont self params
  = liftIO
      (ghcjs_dom_font_loader_load_font (unFontLoader (toFontLoader self))
         (maybe jsNull (unDictionary . toDictionary) params))
 
foreign import javascript unsafe "$1[\"notifyWhenFontsReady\"]($2)"
        ghcjs_dom_font_loader_notify_when_fonts_ready ::
        JSRef FontLoader -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.notifyWhenFontsReady Mozilla FontLoader.notifyWhenFontsReady documentation> 
fontLoaderNotifyWhenFontsReady ::
                               (MonadIO m, IsFontLoader self, IsVoidCallback callback) =>
                                 self -> Maybe callback -> m ()
fontLoaderNotifyWhenFontsReady self callback
  = liftIO
      (ghcjs_dom_font_loader_notify_when_fonts_ready
         (unFontLoader (toFontLoader self))
         (maybe jsNull (unVoidCallback . toVoidCallback) callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
fontLoaderLoading ::
                  (IsFontLoader self, IsEventTarget self) => EventName self Event
fontLoaderLoading = unsafeEventName (toJSString "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadingDone Mozilla FontLoader.loadingDone documentation> 
fontLoaderLoadingDone ::
                      (IsFontLoader self, IsEventTarget self) => EventName self Event
fontLoaderLoadingDone = unsafeEventName (toJSString "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadStart Mozilla FontLoader.loadStart documentation> 
fontLoaderLoadStart ::
                    (IsFontLoader self, IsEventTarget self) =>
                      EventName self ProgressEvent
fontLoaderLoadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.load Mozilla FontLoader.load documentation> 
fontLoaderLoad ::
               (IsFontLoader self, IsEventTarget self) => EventName self UIEvent
fontLoaderLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.error Mozilla FontLoader.error documentation> 
fontLoaderError ::
                (IsFontLoader self, IsEventTarget self) => EventName self UIEvent
fontLoaderError = unsafeEventName (toJSString "error")
 
foreign import javascript unsafe "($1[\"loading\"] ? 1 : 0)"
        ghcjs_dom_font_loader_get_loading :: JSRef FontLoader -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
fontLoaderGetLoading ::
                     (MonadIO m, IsFontLoader self) => self -> m Bool
fontLoaderGetLoading self
  = liftIO
      (ghcjs_dom_font_loader_get_loading
         (unFontLoader (toFontLoader self)))
#else
module GHCJS.DOM.FontLoader (
  ) where
#endif
