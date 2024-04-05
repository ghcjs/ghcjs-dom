{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NonDocumentTypeChildNode
       (js_getPreviousElementSibling, getPreviousElementSibling,
        getPreviousElementSiblingUnsafe,
        getPreviousElementSiblingUnchecked, js_getNextElementSibling,
        getNextElementSibling, getNextElementSiblingUnsafe,
        getNextElementSiblingUnchecked, NonDocumentTypeChildNode(..),
        gTypeNonDocumentTypeChildNode, IsNonDocumentTypeChildNode,
        toNonDocumentTypeChildNode)
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
 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        js_getPreviousElementSibling ::
        NonDocumentTypeChildNode -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSibling ::
                          (MonadIO m, IsNonDocumentTypeChildNode self) =>
                            self -> m (Maybe Element)
getPreviousElementSibling self
  = liftIO
      (nullableToMaybe <$>
         (js_getPreviousElementSibling (toNonDocumentTypeChildNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSiblingUnsafe ::
                                (MonadIO m, IsNonDocumentTypeChildNode self, HasCallStack) =>
                                  self -> m Element
getPreviousElementSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getPreviousElementSibling (toNonDocumentTypeChildNode self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSiblingUnchecked ::
                                   (MonadIO m, IsNonDocumentTypeChildNode self) => self -> m Element
getPreviousElementSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getPreviousElementSibling (toNonDocumentTypeChildNode self)))
 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        js_getNextElementSibling ::
        NonDocumentTypeChildNode -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSibling ::
                      (MonadIO m, IsNonDocumentTypeChildNode self) =>
                        self -> m (Maybe Element)
getNextElementSibling self
  = liftIO
      (nullableToMaybe <$>
         (js_getNextElementSibling (toNonDocumentTypeChildNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSiblingUnsafe ::
                            (MonadIO m, IsNonDocumentTypeChildNode self, HasCallStack) =>
                              self -> m Element
getNextElementSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getNextElementSibling (toNonDocumentTypeChildNode self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSiblingUnchecked ::
                               (MonadIO m, IsNonDocumentTypeChildNode self) => self -> m Element
getNextElementSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNextElementSibling (toNonDocumentTypeChildNode self)))