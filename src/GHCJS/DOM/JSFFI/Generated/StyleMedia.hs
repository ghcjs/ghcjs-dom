{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StyleMedia
       (js_matchMedium, matchMedium, js_getType, getType, StyleMedia,
        castToStyleMedia, gTypeStyleMedia)
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
 
foreign import javascript unsafe
        "($1[\"matchMedium\"]($2) ? 1 : 0)" js_matchMedium ::
        StyleMedia -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium ::
            (MonadIO m, ToJSString mediaquery) =>
              StyleMedia -> mediaquery -> m Bool
matchMedium self mediaquery
  = liftIO (js_matchMedium (self) (toJSString mediaquery))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        StyleMedia -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.type Mozilla StyleMedia.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => StyleMedia -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))