{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DocumentFragment
       (js_newDocumentFragment, newDocumentFragment, js_querySelector,
        querySelector, js_querySelectorAll, querySelectorAll,
        DocumentFragment, castToDocumentFragment, gTypeDocumentFragment)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
        "new window[\"DocumentFragment\"]()" js_newDocumentFragment ::
        IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation> 
newDocumentFragment :: (MonadIO m) => m DocumentFragment
newDocumentFragment
  = liftIO (js_newDocumentFragment >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        js_querySelector ::
        JSRef DocumentFragment -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector ::
              (MonadIO m, ToJSString selectors) =>
                DocumentFragment -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      ((js_querySelector (unDocumentFragment self)
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll ::
        JSRef DocumentFragment -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, ToJSString selectors) =>
                   DocumentFragment -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftIO
      ((js_querySelectorAll (unDocumentFragment self)
          (toJSString selectors))
         >>= fromJSRef)