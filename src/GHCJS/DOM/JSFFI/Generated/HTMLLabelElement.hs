{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLabelElement
       (js_getForm, getForm, js_setHtmlFor, setHtmlFor, js_getHtmlFor,
        getHtmlFor, js_getControl, getControl, HTMLLabelElement,
        castToHTMLLabelElement, gTypeHTMLLabelElement)
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
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLLabelElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLLabelElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
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