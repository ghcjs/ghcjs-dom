{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSCharsetRule
       (js_setEncoding, setEncoding, js_getEncoding, getEncoding,
        CSSCharsetRule, castToCSSCharsetRule, gTypeCSSCharsetRule)
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
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: CSSCharsetRule -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => CSSCharsetRule -> Maybe val -> m ()
setEncoding self val
  = liftIO (js_setEncoding (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: CSSCharsetRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) =>
              CSSCharsetRule -> m (Maybe result)
getEncoding self
  = liftIO (fromMaybeJSString <$> (js_getEncoding (self)))