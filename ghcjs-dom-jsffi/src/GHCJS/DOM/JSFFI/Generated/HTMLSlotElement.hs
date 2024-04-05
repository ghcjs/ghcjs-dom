{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLSlotElement
       (js_assignedNodes, assignedNodes, assignedNodes_, js_setName,
        setName, js_getName, getName, HTMLSlotElement(..),
        gTypeHTMLSlotElement)
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
 
foreign import javascript unsafe "$1[\"assignedNodes\"]($2)"
        js_assignedNodes ::
        HTMLSlotElement -> Optional AssignedNodesOptions -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.assignedNodes Mozilla HTMLSlotElement.assignedNodes documentation> 
assignedNodes ::
              (MonadIO m) =>
                HTMLSlotElement -> Maybe AssignedNodesOptions -> m [Node]
assignedNodes self options
  = liftIO
      ((js_assignedNodes self (maybeToOptional options)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.assignedNodes Mozilla HTMLSlotElement.assignedNodes documentation> 
assignedNodes_ ::
               (MonadIO m) =>
                 HTMLSlotElement -> Maybe AssignedNodesOptions -> m ()
assignedNodes_ self options
  = liftIO (void (js_assignedNodes self (maybeToOptional options)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLSlotElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.name Mozilla HTMLSlotElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLSlotElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLSlotElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.name Mozilla HTMLSlotElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLSlotElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))