{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SecurityPolicyViolationEvent
       (ghcjs_dom_security_policy_violation_event_get_document_uri,
        securityPolicyViolationEventGetDocumentURI,
        ghcjs_dom_security_policy_violation_event_get_referrer,
        securityPolicyViolationEventGetReferrer,
        ghcjs_dom_security_policy_violation_event_get_blocked_uri,
        securityPolicyViolationEventGetBlockedURI,
        ghcjs_dom_security_policy_violation_event_get_violated_directive,
        securityPolicyViolationEventGetViolatedDirective,
        ghcjs_dom_security_policy_violation_event_get_effective_directive,
        securityPolicyViolationEventGetEffectiveDirective,
        ghcjs_dom_security_policy_violation_event_get_original_policy,
        securityPolicyViolationEventGetOriginalPolicy,
        ghcjs_dom_security_policy_violation_event_get_source_file,
        securityPolicyViolationEventGetSourceFile,
        ghcjs_dom_security_policy_violation_event_get_line_number,
        securityPolicyViolationEventGetLineNumber,
        SecurityPolicyViolationEvent, IsSecurityPolicyViolationEvent,
        castToSecurityPolicyViolationEvent,
        gTypeSecurityPolicyViolationEvent, toSecurityPolicyViolationEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"documentURI\"]"
        ghcjs_dom_security_policy_violation_event_get_document_uri ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.documentURI Mozilla SecurityPolicyViolationEvent.documentURI documentation> 
securityPolicyViolationEventGetDocumentURI ::
                                           (IsSecurityPolicyViolationEvent self,
                                            FromJSString result) =>
                                             self -> IO result
securityPolicyViolationEventGetDocumentURI self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_document_uri
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"referrer\"]"
        ghcjs_dom_security_policy_violation_event_get_referrer ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.referrer Mozilla SecurityPolicyViolationEvent.referrer documentation> 
securityPolicyViolationEventGetReferrer ::
                                        (IsSecurityPolicyViolationEvent self,
                                         FromJSString result) =>
                                          self -> IO result
securityPolicyViolationEventGetReferrer self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_referrer
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"blockedURI\"]"
        ghcjs_dom_security_policy_violation_event_get_blocked_uri ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.blockedURI Mozilla SecurityPolicyViolationEvent.blockedURI documentation> 
securityPolicyViolationEventGetBlockedURI ::
                                          (IsSecurityPolicyViolationEvent self,
                                           FromJSString result) =>
                                            self -> IO result
securityPolicyViolationEventGetBlockedURI self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_blocked_uri
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"violatedDirective\"]"
        ghcjs_dom_security_policy_violation_event_get_violated_directive ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.violatedDirective Mozilla SecurityPolicyViolationEvent.violatedDirective documentation> 
securityPolicyViolationEventGetViolatedDirective ::
                                                 (IsSecurityPolicyViolationEvent self,
                                                  FromJSString result) =>
                                                   self -> IO result
securityPolicyViolationEventGetViolatedDirective self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_violated_directive
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"effectiveDirective\"]"
        ghcjs_dom_security_policy_violation_event_get_effective_directive
        :: JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.effectiveDirective Mozilla SecurityPolicyViolationEvent.effectiveDirective documentation> 
securityPolicyViolationEventGetEffectiveDirective ::
                                                  (IsSecurityPolicyViolationEvent self,
                                                   FromJSString result) =>
                                                    self -> IO result
securityPolicyViolationEventGetEffectiveDirective self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_effective_directive
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"originalPolicy\"]"
        ghcjs_dom_security_policy_violation_event_get_original_policy ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.originalPolicy Mozilla SecurityPolicyViolationEvent.originalPolicy documentation> 
securityPolicyViolationEventGetOriginalPolicy ::
                                              (IsSecurityPolicyViolationEvent self,
                                               FromJSString result) =>
                                                self -> IO result
securityPolicyViolationEventGetOriginalPolicy self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_original_policy
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"sourceFile\"]"
        ghcjs_dom_security_policy_violation_event_get_source_file ::
        JSRef SecurityPolicyViolationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.sourceFile Mozilla SecurityPolicyViolationEvent.sourceFile documentation> 
securityPolicyViolationEventGetSourceFile ::
                                          (IsSecurityPolicyViolationEvent self,
                                           FromJSString result) =>
                                            self -> IO result
securityPolicyViolationEventGetSourceFile self
  = fromJSString <$>
      (ghcjs_dom_security_policy_violation_event_get_source_file
         (unSecurityPolicyViolationEvent
            (toSecurityPolicyViolationEvent self)))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        ghcjs_dom_security_policy_violation_event_get_line_number ::
        JSRef SecurityPolicyViolationEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.lineNumber Mozilla SecurityPolicyViolationEvent.lineNumber documentation> 
securityPolicyViolationEventGetLineNumber ::
                                          (IsSecurityPolicyViolationEvent self) => self -> IO Int
securityPolicyViolationEventGetLineNumber self
  = ghcjs_dom_security_policy_violation_event_get_line_number
      (unSecurityPolicyViolationEvent
         (toSecurityPolicyViolationEvent self))
#else
module GHCJS.DOM.SecurityPolicyViolationEvent (
  ) where
#endif
