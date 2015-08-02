{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGScriptElement
       (js_setType, setType, js_getType, getType, SVGScriptElement,
        castToSVGScriptElement, gTypeSVGScriptElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        JSRef SVGScriptElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) =>
          SVGScriptElement -> Maybe val -> m ()
setType self val
  = liftIO
      (js_setType (unSVGScriptElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef SVGScriptElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) =>
          SVGScriptElement -> m (Maybe result)
getType self
  = liftIO
      (fromMaybeJSString <$> (js_getType (unSVGScriptElement self)))