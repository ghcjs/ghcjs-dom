{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableCaptionElement
       (js_setAlign, setAlign, js_getAlign, getAlign,
        HTMLTableCaptionElement, castToHTMLTableCaptionElement,
        gTypeHTMLTableCaptionElement)
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
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLTableCaptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement.align Mozilla HTMLTableCaptionElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) =>
           HTMLTableCaptionElement -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLTableCaptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement.align Mozilla HTMLTableCaptionElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCaptionElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))