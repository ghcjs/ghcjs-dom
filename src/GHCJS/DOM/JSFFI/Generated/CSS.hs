{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSS
       (js_supports2, supports2, js_supports, supports, CSS, castToCSS,
        gTypeCSS)
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
        "($1[\"supports\"]($2, $3) ? 1 : 0)" js_supports2 ::
        JSRef CSS -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2 ::
          (MonadIO m, ToJSString property, ToJSString value) =>
            CSS -> property -> value -> m Bool
supports2 self property value
  = liftIO
      (js_supports2 (unCSS self) (toJSString property)
         (toJSString value))
 
foreign import javascript unsafe "($1[\"supports\"]($2) ? 1 : 0)"
        js_supports :: JSRef CSS -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadIO m, ToJSString conditionText) =>
           CSS -> conditionText -> m Bool
supports self conditionText
  = liftIO (js_supports (unCSS self) (toJSString conditionText))