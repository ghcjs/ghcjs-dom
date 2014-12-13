{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageInfo
       (cTEMPORARY, cPERSISTENT, StorageInfo, IsStorageInfo,
        castToStorageInfo, gTypeStorageInfo, toStorageInfo)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cTEMPORARY = 0
cPERSISTENT = 1
#else
module GHCJS.DOM.StorageInfo (
  module Graphics.UI.Gtk.WebKit.DOM.StorageInfo
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StorageInfo
#endif
