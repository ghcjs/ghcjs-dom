{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLegendElement
       (js_getForm, getForm, js_setAlign, setAlign, js_getAlign, getAlign,
        HTMLLegendElement(..), gTypeHTMLLegendElement)
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
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLLegendElement -> IO HTMLFormElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.form Mozilla HTMLLegendElement.form documentation> 
getForm :: (MonadIO m) => HTMLLegendElement -> m HTMLFormElement
getForm self = liftIO (js_getForm self)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLLegendElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLLegendElement -> val -> m ()
setAlign self val = liftIO (js_setAlign self (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLLegendElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLLegendElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign self))