{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SecurityPolicyViolationEvent
       (js_getDocumentURI, getDocumentURI, js_getReferrer, getReferrer,
        js_getBlockedURI, getBlockedURI, js_getViolatedDirective,
        getViolatedDirective, js_getEffectiveDirective,
        getEffectiveDirective, js_getOriginalPolicy, getOriginalPolicy,
        js_getSourceFile, getSourceFile, js_getLineNumber, getLineNumber,
        SecurityPolicyViolationEvent, castToSecurityPolicyViolationEvent,
        gTypeSecurityPolicyViolationEvent)
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

 
foreign import javascript unsafe "$1[\"documentURI\"]"
        js_getDocumentURI ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.documentURI Mozilla SecurityPolicyViolationEvent.documentURI documentation> 
getDocumentURI ::
               (MonadIO m, FromJSString result) =>
                 SecurityPolicyViolationEvent -> m result
getDocumentURI self
  = liftIO
      (fromJSString <$>
         (js_getDocumentURI (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.referrer Mozilla SecurityPolicyViolationEvent.referrer documentation> 
getReferrer ::
            (MonadIO m, FromJSString result) =>
              SecurityPolicyViolationEvent -> m result
getReferrer self
  = liftIO
      (fromJSString <$>
         (js_getReferrer (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"blockedURI\"]"
        js_getBlockedURI ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.blockedURI Mozilla SecurityPolicyViolationEvent.blockedURI documentation> 
getBlockedURI ::
              (MonadIO m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getBlockedURI self
  = liftIO
      (fromJSString <$>
         (js_getBlockedURI (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"violatedDirective\"]"
        js_getViolatedDirective ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.violatedDirective Mozilla SecurityPolicyViolationEvent.violatedDirective documentation> 
getViolatedDirective ::
                     (MonadIO m, FromJSString result) =>
                       SecurityPolicyViolationEvent -> m result
getViolatedDirective self
  = liftIO
      (fromJSString <$>
         (js_getViolatedDirective (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"effectiveDirective\"]"
        js_getEffectiveDirective ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.effectiveDirective Mozilla SecurityPolicyViolationEvent.effectiveDirective documentation> 
getEffectiveDirective ::
                      (MonadIO m, FromJSString result) =>
                        SecurityPolicyViolationEvent -> m result
getEffectiveDirective self
  = liftIO
      (fromJSString <$>
         (js_getEffectiveDirective (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"originalPolicy\"]"
        js_getOriginalPolicy ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.originalPolicy Mozilla SecurityPolicyViolationEvent.originalPolicy documentation> 
getOriginalPolicy ::
                  (MonadIO m, FromJSString result) =>
                    SecurityPolicyViolationEvent -> m result
getOriginalPolicy self
  = liftIO
      (fromJSString <$>
         (js_getOriginalPolicy (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"sourceFile\"]"
        js_getSourceFile ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.sourceFile Mozilla SecurityPolicyViolationEvent.sourceFile documentation> 
getSourceFile ::
              (MonadIO m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getSourceFile self
  = liftIO
      (fromJSString <$>
         (js_getSourceFile (unSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        js_getLineNumber :: JSRef SecurityPolicyViolationEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.lineNumber Mozilla SecurityPolicyViolationEvent.lineNumber documentation> 
getLineNumber ::
              (MonadIO m) => SecurityPolicyViolationEvent -> m Int
getLineNumber self
  = liftIO (js_getLineNumber (unSecurityPolicyViolationEvent self))
#else
module GHCJS.DOM.SecurityPolicyViolationEvent (
  ) where
#endif
