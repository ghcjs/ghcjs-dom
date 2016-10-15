{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitCSSViewportRule
       (js_getStyle, getStyle, getStyleUnchecked,
        WebKitCSSViewportRule(..), gTypeWebKitCSSViewportRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        WebKitCSSViewportRule -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule.style Mozilla WebKitCSSViewportRule.style documentation> 
getStyle ::
         (MonadIO m) =>
           WebKitCSSViewportRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftIO (nullableToMaybe <$> (js_getStyle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSViewportRule.style Mozilla WebKitCSSViewportRule.style documentation> 
getStyleUnchecked ::
                  (MonadIO m) => WebKitCSSViewportRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyle (self)))