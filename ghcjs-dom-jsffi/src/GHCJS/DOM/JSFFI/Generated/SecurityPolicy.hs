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
 
foreign import javascript unsafe
        "($1[\"allowsConnectionTo\"]($2) ? 1 : 0)" js_allowsConnectionTo ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsConnectionTo Mozilla SecurityPolicy.allowsConnectionTo documentation> 
allowsConnectionTo ::
                   (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsConnectionTo self url
  = liftIO (js_allowsConnectionTo (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)" js_allowsFontFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFontFrom Mozilla SecurityPolicy.allowsFontFrom documentation> 
allowsFontFrom ::
               (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFontFrom self url
  = liftIO (js_allowsFontFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)" js_allowsFormAction ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFormAction Mozilla SecurityPolicy.allowsFormAction documentation> 
allowsFormAction ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFormAction self url
  = liftIO (js_allowsFormAction (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)" js_allowsFrameFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFrameFrom Mozilla SecurityPolicy.allowsFrameFrom documentation> 
allowsFrameFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFrameFrom self url
  = liftIO (js_allowsFrameFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)" js_allowsImageFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsImageFrom Mozilla SecurityPolicy.allowsImageFrom documentation> 
allowsImageFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsImageFrom self url
  = liftIO (js_allowsImageFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)" js_allowsMediaFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsMediaFrom Mozilla SecurityPolicy.allowsMediaFrom documentation> 
allowsMediaFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsMediaFrom self url
  = liftIO (js_allowsMediaFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)" js_allowsObjectFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsObjectFrom Mozilla SecurityPolicy.allowsObjectFrom documentation> 
allowsObjectFrom ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsObjectFrom self url
  = liftIO (js_allowsObjectFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)" js_allowsPluginType ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsPluginType Mozilla SecurityPolicy.allowsPluginType documentation> 
allowsPluginType ::
                 (MonadIO m, ToJSString type') => SecurityPolicy -> type' -> m Bool
allowsPluginType self type'
  = liftIO (js_allowsPluginType (self) (toJSString type'))
 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)" js_allowsScriptFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsScriptFrom Mozilla SecurityPolicy.allowsScriptFrom documentation> 
allowsScriptFrom ::
                 (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsScriptFrom self url
  = liftIO (js_allowsScriptFrom (self) (toJSString url))
 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)" js_allowsStyleFrom ::
        SecurityPolicy -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsStyleFrom Mozilla SecurityPolicy.allowsStyleFrom documentation> 
allowsStyleFrom ::
                (MonadIO m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsStyleFrom self url
  = liftIO (js_allowsStyleFrom (self) (toJSString url))
 
foreign import javascript unsafe "($1[\"allowsEval\"] ? 1 : 0)"
        js_getAllowsEval :: SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsEval Mozilla SecurityPolicy.allowsEval documentation> 
getAllowsEval :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsEval self = liftIO (js_getAllowsEval (self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"] ? 1 : 0)" js_getAllowsInlineScript ::
        SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineScript Mozilla SecurityPolicy.allowsInlineScript documentation> 
getAllowsInlineScript :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsInlineScript self
  = liftIO (js_getAllowsInlineScript (self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"] ? 1 : 0)" js_getAllowsInlineStyle ::
        SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineStyle Mozilla SecurityPolicy.allowsInlineStyle documentation> 
getAllowsInlineStyle :: (MonadIO m) => SecurityPolicy -> m Bool
getAllowsInlineStyle self = liftIO (js_getAllowsInlineStyle (self))
 
foreign import javascript unsafe "($1[\"isActive\"] ? 1 : 0)"
        js_getIsActive :: SecurityPolicy -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.isActive Mozilla SecurityPolicy.isActive documentation> 
getIsActive :: (MonadIO m) => SecurityPolicy -> m Bool
getIsActive self = liftIO (js_getIsActive (self))
 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        js_getReportURIs :: SecurityPolicy -> IO (Nullable DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.reportURIs Mozilla SecurityPolicy.reportURIs documentation> 
getReportURIs ::
              (MonadIO m) => SecurityPolicy -> m (Maybe DOMStringList)
getReportURIs self
  = liftIO (nullableToMaybe <$> (js_getReportURIs (self)))