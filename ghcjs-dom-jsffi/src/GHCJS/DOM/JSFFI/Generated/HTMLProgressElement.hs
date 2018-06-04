{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLProgressElement
       (js_setValue, setValue, js_getValue, getValue, js_setMax, setMax,
        js_getMax, getMax, js_getPosition, getPosition, js_getLabels,
        getLabels, HTMLProgressElement(..), gTypeHTMLProgressElement)
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
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
setValue :: (MonadIO m) => HTMLProgressElement -> Double -> m ()
setValue self val = liftIO (js_setValue self val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
getValue :: (MonadIO m) => HTMLProgressElement -> m Double
getValue self = liftIO (js_getValue self)
 
foreign import javascript unsafe "$1[\"max\"] = $2;" js_setMax ::
        HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
setMax :: (MonadIO m) => HTMLProgressElement -> Double -> m ()
setMax self val = liftIO (js_setMax self val)
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
getMax :: (MonadIO m) => HTMLProgressElement -> m Double
getMax self = liftIO (js_getMax self)
 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.position Mozilla HTMLProgressElement.position documentation> 
getPosition :: (MonadIO m) => HTMLProgressElement -> m Double
getPosition self = liftIO (js_getPosition self)
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLProgressElement -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.labels Mozilla HTMLProgressElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLProgressElement -> m NodeList
getLabels self = liftIO (js_getLabels self)