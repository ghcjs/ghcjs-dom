{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDListElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLDListElement, castToHTMLDListElement, gTypeHTMLDListElement)
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