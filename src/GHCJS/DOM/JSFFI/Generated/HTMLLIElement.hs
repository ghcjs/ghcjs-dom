{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLIElement
       (js_setValue, setValue, js_getValue, getValue, HTMLLIElement,
        castToHTMLLIElement, gTypeHTMLLIElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLLIElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
setValue :: (MonadIO m) => HTMLLIElement -> Int -> m ()
setValue self val = liftIO (js_setValue (unHTMLLIElement self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLLIElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
getValue :: (MonadIO m) => HTMLLIElement -> m Int
getValue self = liftIO (js_getValue (unHTMLLIElement self))