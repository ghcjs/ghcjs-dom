{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGViewElement
       (js_getViewTarget, getViewTarget, SVGViewElement,
        castToSVGViewElement, gTypeSVGViewElement)
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
 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        js_getViewTarget :: SVGViewElement -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewElement.viewTarget Mozilla SVGViewElement.viewTarget documentation> 
getViewTarget ::
              (MonadIO m) => SVGViewElement -> m (Maybe SVGStringList)
getViewTarget self
  = liftIO (nullableToMaybe <$> (js_getViewTarget (self)))