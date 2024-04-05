{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ParentNode
       (js_prepend, prepend, js_append, append, js_querySelector,
        querySelector, querySelector_, querySelectorUnsafe,
        querySelectorUnchecked, js_querySelectorAll, querySelectorAll,
        querySelectorAll_, js_getChildren, getChildren,
        js_getFirstElementChild, getFirstElementChild,
        getFirstElementChildUnsafe, getFirstElementChildUnchecked,
        js_getLastElementChild, getLastElementChild,
        getLastElementChildUnsafe, getLastElementChildUnchecked,
        js_getChildElementCount, getChildElementCount, ParentNode(..),
        gTypeParentNode, IsParentNode, toParentNode)
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
 
foreign import javascript safe "$1[\"prepend\"]($2)" js_prepend ::
        ParentNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.prepend Mozilla ParentNode.prepend documentation> 
prepend ::
        (MonadIO m, IsParentNode self, IsNodeOrString nodes) =>
          self -> [nodes] -> m ()
prepend self nodes
  = liftIO
      (toJSVal nodes >>=
         \ nodes' -> js_prepend (toParentNode self) nodes')
 
foreign import javascript safe "$1[\"append\"]($2)" js_append ::
        ParentNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.append Mozilla ParentNode.append documentation> 
append ::
       (MonadIO m, IsParentNode self, IsNodeOrString nodes) =>
         self -> [nodes] -> m ()
append self nodes
  = liftIO
      (toJSVal nodes >>=
         \ nodes' -> js_append (toParentNode self) nodes')
 
foreign import javascript safe "$1[\"querySelector\"]($2)"
        js_querySelector :: ParentNode -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelector ::
              (MonadIO m, IsParentNode self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_querySelector (toParentNode self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelector_ ::
               (MonadIO m, IsParentNode self, ToJSString selectors) =>
                 self -> selectors -> m ()
querySelector_ self selectors
  = liftIO
      (void
         (js_querySelector (toParentNode self) (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadIO m, IsParentNode self, ToJSString selectors,
                     HasCallStack) =>
                      self -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftIO
      ((nullableToMaybe <$>
          (js_querySelector (toParentNode self) (toJSString selectors)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadIO m, IsParentNode self, ToJSString selectors) =>
                         self -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_querySelector (toParentNode self) (toJSString selectors)))
 
foreign import javascript safe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll :: ParentNode -> JSString -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelectorAll Mozilla ParentNode.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, IsParentNode self, ToJSString selectors) =>
                   self -> selectors -> m NodeList
querySelectorAll self selectors
  = liftIO
      (js_querySelectorAll (toParentNode self) (toJSString selectors))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelectorAll Mozilla ParentNode.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadIO m, IsParentNode self, ToJSString selectors) =>
                    self -> selectors -> m ()
querySelectorAll_ self selectors
  = liftIO
      (void
         (js_querySelectorAll (toParentNode self) (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"children\"]" js_getChildren
        :: ParentNode -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.children Mozilla ParentNode.children documentation> 
getChildren ::
            (MonadIO m, IsParentNode self) => self -> m HTMLCollection
getChildren self = liftIO (js_getChildren (toParentNode self))
 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        js_getFirstElementChild :: ParentNode -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChild ::
                     (MonadIO m, IsParentNode self) => self -> m (Maybe Element)
getFirstElementChild self
  = liftIO
      (nullableToMaybe <$> (js_getFirstElementChild (toParentNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChildUnsafe ::
                           (MonadIO m, IsParentNode self, HasCallStack) => self -> m Element
getFirstElementChildUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getFirstElementChild (toParentNode self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChildUnchecked ::
                              (MonadIO m, IsParentNode self) => self -> m Element
getFirstElementChildUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getFirstElementChild (toParentNode self)))
 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        js_getLastElementChild :: ParentNode -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChild ::
                    (MonadIO m, IsParentNode self) => self -> m (Maybe Element)
getLastElementChild self
  = liftIO
      (nullableToMaybe <$> (js_getLastElementChild (toParentNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChildUnsafe ::
                          (MonadIO m, IsParentNode self, HasCallStack) => self -> m Element
getLastElementChildUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getLastElementChild (toParentNode self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChildUnchecked ::
                             (MonadIO m, IsParentNode self) => self -> m Element
getLastElementChildUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getLastElementChild (toParentNode self)))
 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        js_getChildElementCount :: ParentNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.childElementCount Mozilla ParentNode.childElementCount documentation> 
getChildElementCount ::
                     (MonadIO m, IsParentNode self) => self -> m Word
getChildElementCount self
  = liftIO (js_getChildElementCount (toParentNode self))