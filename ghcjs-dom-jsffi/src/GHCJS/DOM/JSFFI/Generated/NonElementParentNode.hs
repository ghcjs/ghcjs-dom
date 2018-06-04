{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NonElementParentNode
       (js_getElementById, getElementById, getElementById_,
        getElementByIdUnsafe, getElementByIdUnchecked,
        NonElementParentNode(..), gTypeNonElementParentNode,
        IsNonElementParentNode, toNonElementParentNode)
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
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        js_getElementById ::
        NonElementParentNode -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementById ::
               (MonadIO m, IsNonElementParentNode self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftIO
      (nullableToMaybe <$>
         (js_getElementById (toNonElementParentNode self)
            (toJSString elementId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementById_ ::
                (MonadIO m, IsNonElementParentNode self, ToJSString elementId) =>
                  self -> elementId -> m ()
getElementById_ self elementId
  = liftIO
      (void
         (js_getElementById (toNonElementParentNode self)
            (toJSString elementId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementByIdUnsafe ::
                     (MonadIO m, IsNonElementParentNode self, ToJSString elementId,
                      HasCallStack) =>
                       self -> elementId -> m Element
getElementByIdUnsafe self elementId
  = liftIO
      ((nullableToMaybe <$>
          (js_getElementById (toNonElementParentNode self)
             (toJSString elementId)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementByIdUnchecked ::
                        (MonadIO m, IsNonElementParentNode self, ToJSString elementId) =>
                          self -> elementId -> m Element
getElementByIdUnchecked self elementId
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getElementById (toNonElementParentNode self)
            (toJSString elementId)))