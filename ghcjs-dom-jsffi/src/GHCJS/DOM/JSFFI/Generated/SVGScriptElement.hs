{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGScriptElement
       (js_setType, setType, js_getType, getType, getTypeUnchecked,
        SVGScriptElement, castToSVGScriptElement, gTypeSVGScriptElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        SVGScriptElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) =>
          SVGScriptElement -> Maybe val -> m ()
setType self val = liftIO (js_setType (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGScriptElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) =>
          SVGScriptElement -> m (Maybe result)
getType self = liftIO (fromMaybeJSString <$> (js_getType (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGScriptElement.type Mozilla SVGScriptElement.type documentation> 
getTypeUnchecked ::
                 (MonadIO m, FromJSString result) => SVGScriptElement -> m result
getTypeUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getType (self)))