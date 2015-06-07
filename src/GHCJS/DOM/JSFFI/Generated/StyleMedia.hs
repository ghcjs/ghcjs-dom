{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StyleMedia
       (js_matchMedium, matchMedium, StyleMedia, castToStyleMedia,
        gTypeStyleMedia)
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
 
foreign import javascript unsafe
        "($1[\"matchMedium\"]($2) ? 1 : 0)" js_matchMedium ::
        JSRef StyleMedia -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium ::
            (MonadIO m, ToJSString mediaquery) =>
              StyleMedia -> mediaquery -> m Bool
matchMedium self mediaquery
  = liftIO
      (js_matchMedium (unStyleMedia self) (toJSString mediaquery))