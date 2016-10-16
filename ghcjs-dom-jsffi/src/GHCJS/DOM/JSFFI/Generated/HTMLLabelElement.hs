{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLabelElement
       (js_getForm, getForm, getFormUnsafe, getFormUnchecked,
        js_setHtmlFor, setHtmlFor, js_getHtmlFor, getHtmlFor,
        js_getControl, getControl, getControlUnsafe, getControlUnchecked,
        HTMLLabelElement(..), gTypeHTMLLabelElement)
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
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLLabelElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLLabelElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getFormUnsafe ::
              (MonadIO m, HasCallStack) => HTMLLabelElement -> m HTMLFormElement
getFormUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getForm (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getFormUnchecked ::
                 (MonadIO m) => HTMLLabelElement -> m HTMLFormElement
getFormUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        js_setHtmlFor :: HTMLLabelElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
setHtmlFor ::
           (MonadIO m, ToJSString val) => HTMLLabelElement -> val -> m ()
setHtmlFor self val
  = liftIO (js_setHtmlFor (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        HTMLLabelElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m, FromJSString result) => HTMLLabelElement -> m result
getHtmlFor self = liftIO (fromJSString <$> (js_getHtmlFor (self)))
 
foreign import javascript unsafe "$1[\"control\"]" js_getControl ::
        HTMLLabelElement -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControl ::
           (MonadIO m) => HTMLLabelElement -> m (Maybe HTMLElement)
getControl self
  = liftIO (nullableToMaybe <$> (js_getControl (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControlUnsafe ::
                 (MonadIO m, HasCallStack) => HTMLLabelElement -> m HTMLElement
getControlUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getControl (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControlUnchecked ::
                    (MonadIO m) => HTMLLabelElement -> m HTMLElement
getControlUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getControl (self)))