{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StringCallback
       (newStringCallbackSync, newStringCallbackSync',
        newStringCallbackAsync, newStringCallbackAsync', StringCallback,
        castToStringCallback, gTypeStringCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackSync ::
                      (MonadIO m, FromJSString data') =>
                        (data' -> IO Bool) -> m StringCallback
newStringCallbackSync callback
  = liftIO
      (StringCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ data' ->
              fromJSRefUnchecked data' >>= \ data'' -> callback data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackSync' ::
                       (MonadIO m, FromJSString data') =>
                         ForeignRetention -> Bool -> (data' -> IO Bool) -> m StringCallback
newStringCallbackSync' retention continueAsync callback
  = liftIO
      (StringCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ data' ->
              fromJSRefUnchecked data' >>= \ data'' -> callback data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackAsync ::
                       (MonadIO m, FromJSString data') =>
                         (data' -> IO Bool) -> m StringCallback
newStringCallbackAsync callback
  = liftIO
      (StringCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ data' ->
              fromJSRefUnchecked data' >>= \ data'' -> callback data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback Mozilla StringCallback documentation> 
newStringCallbackAsync' ::
                        (MonadIO m, FromJSString data') =>
                          ForeignRetention -> (data' -> IO Bool) -> m StringCallback
newStringCallbackAsync' retention callback
  = liftIO
      (StringCallback . castRef <$>
         asyncCallback1 retention
           (\ data' ->
              fromJSRefUnchecked data' >>= \ data'' -> callback data''))
#else
module GHCJS.DOM.StringCallback (
  ) where
#endif
