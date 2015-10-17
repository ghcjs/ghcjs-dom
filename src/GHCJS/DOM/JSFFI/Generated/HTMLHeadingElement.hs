{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLHeadingElement
       (js_setAlign, setAlign, js_getAlign, getAlign, HTMLHeadingElement,
        castToHTMLHeadingElement, gTypeHTMLHeadingElement)
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
        :: HTMLHeadingElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement.align Mozilla HTMLHeadingElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLHeadingElement -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLHeadingElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement.align Mozilla HTMLHeadingElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLHeadingElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))