{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDListElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLDListElement(..), gTypeHTMLDListElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        js_setCompact :: HTMLDListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement.compact Mozilla HTMLDListElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLDListElement -> Bool -> m ()
setCompact self val = liftIO (js_setCompact (self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: HTMLDListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDListElement.compact Mozilla HTMLDListElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLDListElement -> m Bool
getCompact self = liftIO (js_getCompact (self))