{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DocumentOrShadowRoot
       (js_elementFromPoint, elementFromPoint, elementFromPoint_,
        elementFromPointUnsafe, elementFromPointUnchecked,
        js_getActiveElement, getActiveElement, getActiveElementUnsafe,
        getActiveElementUnchecked, js_getPointerLockElement,
        getPointerLockElement, getPointerLockElementUnsafe,
        getPointerLockElementUnchecked, DocumentOrShadowRoot(..),
        gTypeDocumentOrShadowRoot, IsDocumentOrShadowRoot,
        toDocumentOrShadowRoot)
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
 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        js_elementFromPoint ::
        DocumentOrShadowRoot -> Double -> Double -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadIO m, IsDocumentOrShadowRoot self) =>
                   self -> Double -> Double -> m (Maybe Element)
elementFromPoint self x y
  = liftIO
      (nullableToMaybe <$>
         (js_elementFromPoint (toDocumentOrShadowRoot self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPoint_ ::
                  (MonadIO m, IsDocumentOrShadowRoot self) =>
                    self -> Double -> Double -> m ()
elementFromPoint_ self x y
  = liftIO
      (void (js_elementFromPoint (toDocumentOrShadowRoot self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPointUnsafe ::
                       (MonadIO m, IsDocumentOrShadowRoot self, HasCallStack) =>
                         self -> Double -> Double -> m Element
elementFromPointUnsafe self x y
  = liftIO
      ((nullableToMaybe <$>
          (js_elementFromPoint (toDocumentOrShadowRoot self) x y))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.elementFromPoint Mozilla DocumentOrShadowRoot.elementFromPoint documentation> 
elementFromPointUnchecked ::
                          (MonadIO m, IsDocumentOrShadowRoot self) =>
                            self -> Double -> Double -> m Element
elementFromPointUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_elementFromPoint (toDocumentOrShadowRoot self) x y))
 
foreign import javascript unsafe "$1[\"activeElement\"]"
        js_getActiveElement ::
        DocumentOrShadowRoot -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElement ::
                 (MonadIO m, IsDocumentOrShadowRoot self) =>
                   self -> m (Maybe Element)
getActiveElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getActiveElement (toDocumentOrShadowRoot self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElementUnsafe ::
                       (MonadIO m, IsDocumentOrShadowRoot self, HasCallStack) =>
                         self -> m Element
getActiveElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getActiveElement (toDocumentOrShadowRoot self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.activeElement Mozilla DocumentOrShadowRoot.activeElement documentation> 
getActiveElementUnchecked ::
                          (MonadIO m, IsDocumentOrShadowRoot self) => self -> m Element
getActiveElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getActiveElement (toDocumentOrShadowRoot self)))
 
foreign import javascript unsafe "$1[\"pointerLockElement\"]"
        js_getPointerLockElement ::
        DocumentOrShadowRoot -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadIO m, IsDocumentOrShadowRoot self) =>
                        self -> m (Maybe Element)
getPointerLockElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getPointerLockElement (toDocumentOrShadowRoot self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElementUnsafe ::
                            (MonadIO m, IsDocumentOrShadowRoot self, HasCallStack) =>
                              self -> m Element
getPointerLockElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getPointerLockElement (toDocumentOrShadowRoot self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentOrShadowRoot.pointerLockElement Mozilla DocumentOrShadowRoot.pointerLockElement documentation> 
getPointerLockElementUnchecked ::
                               (MonadIO m, IsDocumentOrShadowRoot self) => self -> m Element
getPointerLockElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getPointerLockElement (toDocumentOrShadowRoot self)))