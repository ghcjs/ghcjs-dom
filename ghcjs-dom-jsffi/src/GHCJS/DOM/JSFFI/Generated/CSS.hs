{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSS
       (js_supports2, supports2, supports2_, js_supports, supports,
        supports_, js_escape, escape, escape_, CSS(..), gTypeCSS)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "(window[\"CSS\"][\"supports\"]($1,\n$2) ? 1 : 0)" js_supports2 ::
        JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2 ::
          (MonadIO m, ToJSString property, ToJSString value) =>
            property -> value -> m Bool
supports2 property value
  = liftIO (js_supports2 (toJSString property) (toJSString value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2_ ::
           (MonadIO m, ToJSString property, ToJSString value) =>
             property -> value -> m ()
supports2_ property value
  = liftIO
      (void (js_supports2 (toJSString property) (toJSString value)))
 
foreign import javascript unsafe
        "(window[\"CSS\"][\"supports\"]($1) ? 1 : 0)" js_supports ::
        JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadIO m, ToJSString conditionText) => conditionText -> m Bool
supports conditionText
  = liftIO (js_supports (toJSString conditionText))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports_ ::
          (MonadIO m, ToJSString conditionText) => conditionText -> m ()
supports_ conditionText
  = liftIO (void (js_supports (toJSString conditionText)))
 
foreign import javascript unsafe "window[\"CSS\"][\"escape\"]($1)"
        js_escape :: JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape ::
       (MonadIO m, ToJSString ident, FromJSString result) =>
         ident -> m result
escape ident
  = liftIO (fromJSString <$> (js_escape (toJSString ident)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape_ :: (MonadIO m, ToJSString ident) => ident -> m ()
escape_ ident = liftIO (void (js_escape (toJSString ident)))