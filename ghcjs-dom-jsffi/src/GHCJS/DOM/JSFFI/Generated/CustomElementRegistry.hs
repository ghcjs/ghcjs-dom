{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CustomElementRegistry
       (js_define, define, js_get, get, get_, js_whenDefined, whenDefined,
        CustomElementRegistry(..), gTypeCustomElementRegistry)
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
 
foreign import javascript unsafe "$1[\"define\"]($2, $3)" js_define
        :: CustomElementRegistry -> JSString -> Function -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.define Mozilla CustomElementRegistry.define documentation> 
define ::
       (MonadIO m, ToJSString name, IsFunction constructor) =>
         CustomElementRegistry -> name -> constructor -> m ()
define self name constructor
  = liftIO
      (js_define self (toJSString name) (toFunction constructor))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        CustomElementRegistry -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.get Mozilla CustomElementRegistry.get documentation> 
get ::
    (MonadIO m, ToJSString name) =>
      CustomElementRegistry -> name -> m JSVal
get self name = liftIO (js_get self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.get Mozilla CustomElementRegistry.get documentation> 
get_ ::
     (MonadIO m, ToJSString name) =>
       CustomElementRegistry -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))
 
foreign import javascript interruptible
        "$1[\"whenDefined\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_whenDefined :: CustomElementRegistry -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry.whenDefined Mozilla CustomElementRegistry.whenDefined documentation> 
whenDefined ::
            (MonadIO m, ToJSString name) =>
              CustomElementRegistry -> name -> m ()
whenDefined self name
  = liftIO
      ((js_whenDefined self (toJSString name)) >>=
         maybeThrowPromiseRejected)