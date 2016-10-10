{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSFontFaceRule
       (js_getStyle, getStyle, getStyleUnchecked, CSSFontFaceRule,
        castToCSSFontFaceRule, gTypeCSSFontFaceRule)
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
        CSSFontFaceRule -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule.style Mozilla CSSFontFaceRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSFontFaceRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftIO (nullableToMaybe <$> (js_getStyle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceRule.style Mozilla CSSFontFaceRule.style documentation> 
getStyleUnchecked ::
                  (MonadIO m) => CSSFontFaceRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyle (self)))