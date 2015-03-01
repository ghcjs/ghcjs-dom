{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSImportRule
       (js_getHref, getHref, js_getMedia, getMedia, js_getStyleSheet,
        getStyleSheet, CSSImportRule, castToCSSImportRule,
        gTypeCSSImportRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef CSSImportRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => CSSImportRule -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unCSSImportRule self)))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef CSSImportRule -> IO (JSRef MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMedia :: (MonadIO m) => CSSImportRule -> m (Maybe MediaList)
getMedia self
  = liftIO ((js_getMedia (unCSSImportRule self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleSheet\"]"
        js_getStyleSheet :: JSRef CSSImportRule -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheet ::
              (MonadIO m) => CSSImportRule -> m (Maybe CSSStyleSheet)
getStyleSheet self
  = liftIO ((js_getStyleSheet (unCSSImportRule self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSImportRule (
  ) where
#endif
