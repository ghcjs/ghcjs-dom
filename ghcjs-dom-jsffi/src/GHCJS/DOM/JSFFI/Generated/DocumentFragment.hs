{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DocumentFragment
       (js_newDocumentFragment, newDocumentFragment, js_querySelector,
        querySelector, querySelector_, querySelectorUnsafe,
        querySelectorUnchecked, js_querySelectorAll, querySelectorAll,
        querySelectorAll_, querySelectorAllUnsafe,
        querySelectorAllUnchecked, DocumentFragment(..),
        gTypeDocumentFragment)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector_ ::
               (MonadIO m, ToJSString selectors) =>
                 DocumentFragment -> selectors -> m ()
querySelector_ self selectors
  = liftIO (void (js_querySelector (self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadIO m, ToJSString selectors, HasCallStack) =>
                      DocumentFragment -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftIO
      ((nullableToMaybe <$>
          (js_querySelector (self) (toJSString selectors)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadIO m, ToJSString selectors) =>
                         DocumentFragment -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadIO m, ToJSString selectors) =>
                    DocumentFragment -> selectors -> m ()
querySelectorAll_ self selectors
  = liftIO (void (js_querySelectorAll (self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAllUnsafe ::
                       (MonadIO m, ToJSString selectors, HasCallStack) =>
                         DocumentFragment -> selectors -> m NodeList
querySelectorAllUnsafe self selectors
  = liftIO
      ((nullableToMaybe <$>
          (js_querySelectorAll (self) (toJSString selectors)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAllUnchecked ::
                          (MonadIO m, ToJSString selectors) =>
                            DocumentFragment -> selectors -> m NodeList
querySelectorAllUnchecked self selectors
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_querySelectorAll (self) (toJSString selectors)))