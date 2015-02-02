{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FontLoader
       (ghcjs_dom_font_loader_check_font, fontLoaderCheckFont,
        ghcjs_dom_font_loader_load_font, fontLoaderLoadFont,
        ghcjs_dom_font_loader_notify_when_fonts_ready,
        fontLoaderNotifyWhenFontsReady,
        ghcjs_dom_font_loader_dispatch_event, fontLoaderDispatchEvent,
        fontLoaderOnloading, fontLoaderOnloadingdone,
        fontLoaderOnloadstart, fontLoaderOnload, fontLoaderOnerror,
        ghcjs_dom_font_loader_get_loading, fontLoaderGetLoading,
        FontLoader, IsFontLoader, castToFontLoader, gTypeFontLoader,
        toFontLoader)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
                    (IsFontLoader self, ToJSString font, ToJSString text) =>
                      self -> font -> text -> IO Bool
fontLoaderCheckFont self font text
  = ghcjs_dom_font_loader_check_font
      (unFontLoader (toFontLoader self))
      (toJSString font)
      (toJSString text)
 
foreign import javascript unsafe "$1[\"loadFont\"]($2)"
        ghcjs_dom_font_loader_load_font ::
        JSRef FontLoader -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadFont Mozilla FontLoader.loadFont documentation> 
fontLoaderLoadFont ::
                   (IsFontLoader self, IsDictionary params) =>
                     self -> Maybe params -> IO ()
fontLoaderLoadFont self params
  = ghcjs_dom_font_loader_load_font
      (unFontLoader (toFontLoader self))
      (maybe jsNull (unDictionary . toDictionary) params)
 
foreign import javascript unsafe "$1[\"notifyWhenFontsReady\"]($2)"
        ghcjs_dom_font_loader_notify_when_fonts_ready ::
        JSRef FontLoader -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.notifyWhenFontsReady Mozilla FontLoader.notifyWhenFontsReady documentation> 
fontLoaderNotifyWhenFontsReady ::
                               (IsFontLoader self, IsVoidCallback callback) =>
                                 self -> Maybe callback -> IO ()
fontLoaderNotifyWhenFontsReady self callback
  = ghcjs_dom_font_loader_notify_when_fonts_ready
      (unFontLoader (toFontLoader self))
      (maybe jsNull (unVoidCallback . toVoidCallback) callback)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_font_loader_dispatch_event ::
        JSRef FontLoader -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.dispatchEvent Mozilla FontLoader.dispatchEvent documentation> 
fontLoaderDispatchEvent ::
                        (IsFontLoader self, IsEvent evt) => self -> Maybe evt -> IO Bool
fontLoaderDispatchEvent self evt
  = ghcjs_dom_font_loader_dispatch_event
      (unFontLoader (toFontLoader self))
      (maybe jsNull (unEvent . toEvent) evt)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloading Mozilla FontLoader.onloading documentation> 
fontLoaderOnloading ::
                    (IsFontLoader self) => Signal self (EventM UIEvent self ())
fontLoaderOnloading = (connect "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadingdone Mozilla FontLoader.onloadingdone documentation> 
fontLoaderOnloadingdone ::
                        (IsFontLoader self) => Signal self (EventM UIEvent self ())
fontLoaderOnloadingdone = (connect "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadstart Mozilla FontLoader.onloadstart documentation> 
fontLoaderOnloadstart ::
                      (IsFontLoader self) => Signal self (EventM UIEvent self ())
fontLoaderOnloadstart = (connect "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onload Mozilla FontLoader.onload documentation> 
fontLoaderOnload ::
                 (IsFontLoader self) => Signal self (EventM UIEvent self ())
fontLoaderOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onerror Mozilla FontLoader.onerror documentation> 
fontLoaderOnerror ::
                  (IsFontLoader self) => Signal self (EventM UIEvent self ())
fontLoaderOnerror = (connect "error")
 
foreign import javascript unsafe "($1[\"loading\"] ? 1 : 0)"
        ghcjs_dom_font_loader_get_loading :: JSRef FontLoader -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
fontLoaderGetLoading :: (IsFontLoader self) => self -> IO Bool
fontLoaderGetLoading self
  = ghcjs_dom_font_loader_get_loading
      (unFontLoader (toFontLoader self))
#else
module GHCJS.DOM.FontLoader (
  ) where
#endif
