{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGDocument
       (js_createEvent, createEvent, createEvent_, createEventUnsafe,
        createEventUnchecked, js_getRootElement, getRootElement,
        getRootElementUnsafe, getRootElementUnchecked, SVGDocument(..),
        gTypeSVGDocument)
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
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        js_createEvent :: SVGDocument -> JSString -> IO (Nullable Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent ::
            (MonadIO m, ToJSString eventType) =>
              SVGDocument -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftIO
      (nullableToMaybe <$>
         (js_createEvent (self) (toJSString eventType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent_ ::
             (MonadIO m, ToJSString eventType) =>
               SVGDocument -> eventType -> m ()
createEvent_ self eventType
  = liftIO (void (js_createEvent (self) (toJSString eventType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEventUnsafe ::
                  (MonadIO m, ToJSString eventType, HasCallStack) =>
                    SVGDocument -> eventType -> m Event
createEventUnsafe self eventType
  = liftIO
      ((nullableToMaybe <$>
          (js_createEvent (self) (toJSString eventType)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEventUnchecked ::
                     (MonadIO m, ToJSString eventType) =>
                       SVGDocument -> eventType -> m Event
createEventUnchecked self eventType
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createEvent (self) (toJSString eventType)))
 
foreign import javascript unsafe "$1[\"rootElement\"]"
        js_getRootElement :: SVGDocument -> IO (Nullable SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElement ::
               (MonadIO m) => SVGDocument -> m (Maybe SVGSVGElement)
getRootElement self
  = liftIO (nullableToMaybe <$> (js_getRootElement (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElementUnsafe ::
                     (MonadIO m, HasCallStack) => SVGDocument -> m SVGSVGElement
getRootElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRootElement (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElementUnchecked ::
                        (MonadIO m) => SVGDocument -> m SVGSVGElement
getRootElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRootElement (self)))