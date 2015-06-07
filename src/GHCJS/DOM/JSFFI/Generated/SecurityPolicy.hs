{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SecurityPolicy
       (js_allowsConnectionTo, allowsConnectionTo, js_allowsFontFrom,
        allowsFontFrom, js_allowsFormAction, allowsFormAction,
        js_allowsFrameFrom, allowsFrameFrom, js_allowsImageFrom,
        allowsImageFrom, js_allowsMediaFrom, allowsMediaFrom,
        js_allowsObjectFrom, allowsObjectFrom, js_allowsPluginType,
        allowsPluginType, js_allowsScriptFrom, allowsScriptFrom,
        js_allowsStyleFrom, allowsStyleFrom, js_getAllowsEval,
        getAllowsEval, js_getAllowsInlineScript, getAllowsInlineScript,
        js_getAllowsInlineStyle, getAllowsInlineStyle, js_getIsActive,
        getIsActive, js_getReportURIs, getReportURIs, SecurityPolicy,
        castToSecurityPolicy, gTypeSecurityPolicy)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsConnectionTo Mozilla SecurityPolicy.allowsConnectionTo documentation> 
allowsConnectionTo ::
                   (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsConnectionTo self url
  = liftIO
      (js_allowsConnectionTo (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)" js_allowsFontFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFontFrom Mozilla SecurityPolicy.allowsFontFrom documentation> 
allowsFontFrom ::
               (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFontFrom self url
  = liftIO
      (js_allowsFontFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)" js_allowsFormAction ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFormAction Mozilla SecurityPolicy.allowsFormAction documentation> 
allowsFormAction ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFormAction self url
  = liftIO
      (js_allowsFormAction (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)" js_allowsFrameFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFrameFrom Mozilla SecurityPolicy.allowsFrameFrom documentation> 
allowsFrameFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFrameFrom self url
  = liftIO
      (js_allowsFrameFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)" js_allowsImageFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsImageFrom Mozilla SecurityPolicy.allowsImageFrom documentation> 
allowsImageFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsImageFrom self url
  = liftIO
      (js_allowsImageFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)" js_allowsMediaFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsMediaFrom Mozilla SecurityPolicy.allowsMediaFrom documentation> 
allowsMediaFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsMediaFrom self url
  = liftIO
      (js_allowsMediaFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)" js_allowsObjectFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsObjectFrom Mozilla SecurityPolicy.allowsObjectFrom documentation> 
allowsObjectFrom ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsObjectFrom self url
  = liftIO
      (js_allowsObjectFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)" js_allowsPluginType ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsPluginType Mozilla SecurityPolicy.allowsPluginType documentation> 
allowsPluginType ::
                 (MonadIO m, ToJSString type') => SecurityPolicy -> type' -> m Bool
allowsPluginType self type'
  = liftIO
      (js_allowsPluginType (unSecurityPolicy self) (toJSString type'))
 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)" js_allowsScriptFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsScriptFrom Mozilla SecurityPolicy.allowsScriptFrom documentation> 
allowsScriptFrom ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsScriptFrom self url
  = liftIO
      (js_allowsScriptFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)" js_allowsStyleFrom ::
        JSRef SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsStyleFrom Mozilla SecurityPolicy.allowsStyleFrom documentation> 
allowsStyleFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsStyleFrom self url
  = liftIO
      (js_allowsStyleFrom (unSecurityPolicy self) (toJSString url))
 
foreign import javascript unsafe "($1[\"allowsEval\"] ? 1 : 0)"
        js_getAllowsEval :: JSRef SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsEval Mozilla SecurityPolicy.allowsEval documentation> 
getAllowsEval :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsEval self
  = liftIO (js_getAllowsEval (unSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"] ? 1 : 0)" js_getAllowsInlineScript ::
        JSRef SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineScript Mozilla SecurityPolicy.allowsInlineScript documentation> 
getAllowsInlineScript :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsInlineScript self
  = liftIO (js_getAllowsInlineScript (unSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"] ? 1 : 0)" js_getAllowsInlineStyle ::
        JSRef SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineStyle Mozilla SecurityPolicy.allowsInlineStyle documentation> 
getAllowsInlineStyle :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsInlineStyle self
  = liftIO (js_getAllowsInlineStyle (unSecurityPolicy self))
 
foreign import javascript unsafe "($1[\"isActive\"] ? 1 : 0)"
        js_getIsActive :: JSRef SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.isActive Mozilla SecurityPolicy.isActive documentation> 
getIsActive :: (MonadIO m) => SecurityPolicy -> m Bool
getIsActive self = liftIO (js_getIsActive (unSecurityPolicy self))
 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        js_getReportURIs ::
        JSRef SecurityPolicy -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.reportURIs Mozilla SecurityPolicy.reportURIs documentation> 
getReportURIs ::
              (MonadIO m) => SecurityPolicy -> m (Maybe DOMStringList)
getReportURIs self
  = liftIO ((js_getReportURIs (unSecurityPolicy self)) >>= fromJSRef)