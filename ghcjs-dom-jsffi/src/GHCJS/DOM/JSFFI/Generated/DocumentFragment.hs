{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DocumentFragment
       (js_newDocumentFragment, newDocumentFragment, js_querySelector,
        querySelector, js_querySelectorAll, querySelectorAll,
        DocumentFragment, castToDocumentFragment, gTypeDocumentFragment)
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
        "new window[\"DocumentFragment\"]()" js_newDocumentFragment ::
        IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation> 
newDocumentFragment :: (MonadIO m) => m DocumentFragment
newDocumentFragment = liftIO (js_newDocumentFragment)
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        js_querySelector ::
        DocumentFragment -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector ::
              (MonadIO m, ToJSString selectors) =>
                DocumentFragment -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_querySelector (self) (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll ::
        DocumentFragment -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, ToJSString selectors) =>
                   DocumentFragment -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_querySelectorAll (self) (toJSString selectors)))