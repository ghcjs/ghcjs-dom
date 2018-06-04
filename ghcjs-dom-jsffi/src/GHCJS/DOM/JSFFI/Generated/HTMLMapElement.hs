{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMapElement
       (js_getAreas, getAreas, js_setName, setName, js_getName, getName,
        HTMLMapElement(..), gTypeHTMLMapElement)
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
 
foreign import javascript unsafe "$1[\"areas\"]" js_getAreas ::
        HTMLMapElement -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.areas Mozilla HTMLMapElement.areas documentation> 
getAreas :: (MonadIO m) => HTMLMapElement -> m HTMLCollection
getAreas self = liftIO (js_getAreas self)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLMapElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLMapElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLMapElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement.name Mozilla HTMLMapElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLMapElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))