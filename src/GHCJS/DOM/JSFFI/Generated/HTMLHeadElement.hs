{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLHeadElement
       (js_setProfile, setProfile, js_getProfile, getProfile,
        HTMLHeadElement, castToHTMLHeadElement, gTypeHTMLHeadElement)
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
 
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        js_setProfile :: HTMLHeadElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
setProfile ::
           (MonadIO m, ToJSString val) => HTMLHeadElement -> val -> m ()
setProfile self val
  = liftIO (js_setProfile (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"profile\"]" js_getProfile ::
        HTMLHeadElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
getProfile ::
           (MonadIO m, FromJSString result) => HTMLHeadElement -> m result
getProfile self = liftIO (fromJSString <$> (js_getProfile (self)))