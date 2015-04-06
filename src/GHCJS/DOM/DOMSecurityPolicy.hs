{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSecurityPolicy
       (js_allowsConnectionTo, allowsConnectionTo, js_allowsFontFrom,
        allowsFontFrom, js_allowsFormAction, allowsFormAction,
        js_allowsFrameFrom, allowsFrameFrom, js_allowsImageFrom,
        allowsImageFrom, js_allowsMediaFrom, allowsMediaFrom,
        js_allowsObjectFrom, allowsObjectFrom, js_allowsPluginType,
        allowsPluginType, js_allowsScriptFrom, allowsScriptFrom,
        js_allowsStyleFrom, allowsStyleFrom, js_getAllowsEval,
        getAllowsEval, js_getAllowsInlineScript, getAllowsInlineScript,
        js_getAllowsInlineStyle, getAllowsInlineStyle, js_getIsActive,
        getIsActive, js_getReportURIs, getReportURIs, DOMSecurityPolicy,
        castToDOMSecurityPolicy, gTypeDOMSecurityPolicy)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"allowsConnectionTo\"]($2) ? 1 : 0)" js_allowsConnectionTo ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsConnectionTo Mozilla SecurityPolicy.allowsConnectionTo documentation> 
allowsConnectionTo ::
                   (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsConnectionTo self url
  = liftIO
      (js_allowsConnectionTo (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)" js_allowsFontFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFontFrom Mozilla SecurityPolicy.allowsFontFrom documentation> 
allowsFontFrom ::
               (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsFontFrom self url
  = liftIO
      (js_allowsFontFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)" js_allowsFormAction ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFormAction Mozilla SecurityPolicy.allowsFormAction documentation> 
allowsFormAction ::
                 (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsFormAction self url
  = liftIO
      (js_allowsFormAction (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)" js_allowsFrameFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFrameFrom Mozilla SecurityPolicy.allowsFrameFrom documentation> 
allowsFrameFrom ::
                (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsFrameFrom self url
  = liftIO
      (js_allowsFrameFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)" js_allowsImageFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsImageFrom Mozilla SecurityPolicy.allowsImageFrom documentation> 
allowsImageFrom ::
                (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsImageFrom self url
  = liftIO
      (js_allowsImageFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)" js_allowsMediaFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsMediaFrom Mozilla SecurityPolicy.allowsMediaFrom documentation> 
allowsMediaFrom ::
                (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsMediaFrom self url
  = liftIO
      (js_allowsMediaFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)" js_allowsObjectFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsObjectFrom Mozilla SecurityPolicy.allowsObjectFrom documentation> 
allowsObjectFrom ::
                 (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsObjectFrom self url
  = liftIO
      (js_allowsObjectFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)" js_allowsPluginType ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsPluginType Mozilla SecurityPolicy.allowsPluginType documentation> 
allowsPluginType ::
                 (MonadIO m, ToJSString type') =>
                   DOMSecurityPolicy -> type' -> m Bool
allowsPluginType self type'
  = liftIO
      (js_allowsPluginType (unDOMSecurityPolicy self) (toJSString type'))
 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)" js_allowsScriptFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsScriptFrom Mozilla SecurityPolicy.allowsScriptFrom documentation> 
allowsScriptFrom ::
                 (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsScriptFrom self url
  = liftIO
      (js_allowsScriptFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)" js_allowsStyleFrom ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsStyleFrom Mozilla SecurityPolicy.allowsStyleFrom documentation> 
allowsStyleFrom ::
                (MonadIO m, ToJSString url) => DOMSecurityPolicy -> url -> m Bool
allowsStyleFrom self url
  = liftIO
      (js_allowsStyleFrom (unDOMSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe "($1[\"allowsEval\"] ? 1 : 0)"
        js_getAllowsEval :: JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsEval Mozilla SecurityPolicy.allowsEval documentation> 
getAllowsEval :: (MonadIO m) => DOMSecurityPolicy -> m Bool
getAllowsEval self
  = liftIO (js_getAllowsEval (unDOMSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"] ? 1 : 0)" js_getAllowsInlineScript ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineScript Mozilla SecurityPolicy.allowsInlineScript documentation> 
getAllowsInlineScript :: (MonadIO m) => DOMSecurityPolicy -> m Bool
getAllowsInlineScript self
  = liftIO (js_getAllowsInlineScript (unDOMSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"] ? 1 : 0)" js_getAllowsInlineStyle ::
        JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineStyle Mozilla SecurityPolicy.allowsInlineStyle documentation> 
getAllowsInlineStyle :: (MonadIO m) => DOMSecurityPolicy -> m Bool
getAllowsInlineStyle self
  = liftIO (js_getAllowsInlineStyle (unDOMSecurityPolicy self))
 
foreign import javascript unsafe "($1[\"isActive\"] ? 1 : 0)"
        js_getIsActive :: JSRef DOMSecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.isActive Mozilla SecurityPolicy.isActive documentation> 
getIsActive :: (MonadIO m) => DOMSecurityPolicy -> m Bool
getIsActive self
  = liftIO (js_getIsActive (unDOMSecurityPolicy self))
 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        js_getReportURIs ::
        JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.reportURIs Mozilla SecurityPolicy.reportURIs documentation> 
getReportURIs ::
              (MonadIO m) => DOMSecurityPolicy -> m (Maybe DOMStringList)
getReportURIs self
  = liftIO
      ((js_getReportURIs (unDOMSecurityPolicy self)) >>= fromJSRef)
#else
module GHCJS.DOM.DOMSecurityPolicy (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
#endif
