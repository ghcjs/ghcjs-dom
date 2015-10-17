{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SecurityPolicyViolationEvent
       (js_getDocumentURI, getDocumentURI, js_getReferrer, getReferrer,
        js_getBlockedURI, getBlockedURI, js_getViolatedDirective,
        getViolatedDirective, js_getEffectiveDirective,
        getEffectiveDirective, js_getOriginalPolicy, getOriginalPolicy,
        js_getSourceFile, getSourceFile, js_getLineNumber, getLineNumber,
        SecurityPolicyViolationEvent, castToSecurityPolicyViolationEvent,
        gTypeSecurityPolicyViolationEvent)
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
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        js_getDocumentURI :: SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.documentURI Mozilla SecurityPolicyViolationEvent.documentURI documentation> 
getDocumentURI ::
               (MonadIO m, FromJSString result) =>
                 SecurityPolicyViolationEvent -> m result
getDocumentURI self
  = liftIO (fromJSString <$> (js_getDocumentURI (self)))
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.referrer Mozilla SecurityPolicyViolationEvent.referrer documentation> 
getReferrer ::
            (MonadIO m, FromJSString result) =>
              SecurityPolicyViolationEvent -> m result
getReferrer self
  = liftIO (fromJSString <$> (js_getReferrer (self)))
 
foreign import javascript unsafe "$1[\"blockedURI\"]"
        js_getBlockedURI :: SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.blockedURI Mozilla SecurityPolicyViolationEvent.blockedURI documentation> 
getBlockedURI ::
              (MonadIO m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getBlockedURI self
  = liftIO (fromJSString <$> (js_getBlockedURI (self)))
 
foreign import javascript unsafe "$1[\"violatedDirective\"]"
        js_getViolatedDirective ::
        SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.violatedDirective Mozilla SecurityPolicyViolationEvent.violatedDirective documentation> 
getViolatedDirective ::
                     (MonadIO m, FromJSString result) =>
                       SecurityPolicyViolationEvent -> m result
getViolatedDirective self
  = liftIO (fromJSString <$> (js_getViolatedDirective (self)))
 
foreign import javascript unsafe "$1[\"effectiveDirective\"]"
        js_getEffectiveDirective ::
        SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.effectiveDirective Mozilla SecurityPolicyViolationEvent.effectiveDirective documentation> 
getEffectiveDirective ::
                      (MonadIO m, FromJSString result) =>
                        SecurityPolicyViolationEvent -> m result
getEffectiveDirective self
  = liftIO (fromJSString <$> (js_getEffectiveDirective (self)))
 
foreign import javascript unsafe "$1[\"originalPolicy\"]"
        js_getOriginalPolicy :: SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.originalPolicy Mozilla SecurityPolicyViolationEvent.originalPolicy documentation> 
getOriginalPolicy ::
                  (MonadIO m, FromJSString result) =>
                    SecurityPolicyViolationEvent -> m result
getOriginalPolicy self
  = liftIO (fromJSString <$> (js_getOriginalPolicy (self)))
 
foreign import javascript unsafe "$1[\"sourceFile\"]"
        js_getSourceFile :: SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.sourceFile Mozilla SecurityPolicyViolationEvent.sourceFile documentation> 
getSourceFile ::
              (MonadIO m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getSourceFile self
  = liftIO (fromJSString <$> (js_getSourceFile (self)))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        js_getLineNumber :: SecurityPolicyViolationEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.lineNumber Mozilla SecurityPolicyViolationEvent.lineNumber documentation> 
getLineNumber ::
              (MonadIO m) => SecurityPolicyViolationEvent -> m Int
getLineNumber self = liftIO (js_getLineNumber (self))