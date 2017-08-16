{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ApplePaySession
       (js_newApplePaySession, newApplePaySession, js_supportsVersion,
        supportsVersion, supportsVersion_, js_canMakePayments,
        canMakePayments, canMakePayments_,
        js_canMakePaymentsWithActiveCard, canMakePaymentsWithActiveCard,
        canMakePaymentsWithActiveCard_, js_openPaymentSetup,
        openPaymentSetup, openPaymentSetup_, js_begin, begin, js_abort,
        abort, js_completeMerchantValidation, completeMerchantValidation,
        js_completeShippingMethodSelectionUpdate,
        completeShippingMethodSelectionUpdate,
        js_completeShippingContactSelectionUpdate,
        completeShippingContactSelectionUpdate,
        js_completePaymentMethodSelectionUpdate,
        completePaymentMethodSelectionUpdate, js_completePaymentResult,
        completePaymentResult, js_completeShippingMethodSelection,
        completeShippingMethodSelection,
        js_completeShippingContactSelection,
        completeShippingContactSelection,
        js_completePaymentMethodSelection, completePaymentMethodSelection,
        js_completePayment, completePayment, pattern STATUS_SUCCESS,
        pattern STATUS_FAILURE,
        pattern STATUS_INVALID_BILLING_POSTAL_ADDRESS,
        pattern STATUS_INVALID_SHIPPING_POSTAL_ADDRESS,
        pattern STATUS_INVALID_SHIPPING_CONTACT,
        pattern STATUS_PIN_REQUIRED, pattern STATUS_PIN_INCORRECT,
        pattern STATUS_PIN_LOCKOUT, validatemerchant,
        paymentmethodselected, paymentauthorized, shippingmethodselected,
        shippingcontactselected, cancel, ApplePaySession(..),
        gTypeApplePaySession)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"ApplePaySession\"]($1,\n$2)" js_newApplePaySession ::
        Word -> ApplePayPaymentRequest -> IO ApplePaySession

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession Mozilla ApplePaySession documentation> 
newApplePaySession ::
                   (MonadIO m) => Word -> ApplePayPaymentRequest -> m ApplePaySession
newApplePaySession version paymentRequest
  = liftIO (js_newApplePaySession version paymentRequest)
 
foreign import javascript unsafe
        "($1[\"supportsVersion\"]($2) ? 1 : 0)" js_supportsVersion ::
        ApplePaySession -> Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion :: (MonadIO m) => ApplePaySession -> Word -> m Bool
supportsVersion self version
  = liftIO (js_supportsVersion self version)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion_ :: (MonadIO m) => ApplePaySession -> Word -> m ()
supportsVersion_ self version
  = liftIO (void (js_supportsVersion self version))
 
foreign import javascript unsafe
        "($1[\"canMakePayments\"]() ? 1 : 0)" js_canMakePayments ::
        ApplePaySession -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments :: (MonadIO m) => ApplePaySession -> m Bool
canMakePayments self = liftIO (js_canMakePayments self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments_ :: (MonadIO m) => ApplePaySession -> m ()
canMakePayments_ self = liftIO (void (js_canMakePayments self))
 
foreign import javascript interruptible
        "$1[\"canMakePaymentsWithActiveCard\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_canMakePaymentsWithActiveCard ::
        ApplePaySession -> JSString -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard ::
                              (MonadIO m, ToJSString merchantIdentifier) =>
                                ApplePaySession -> merchantIdentifier -> m Bool
canMakePaymentsWithActiveCard self merchantIdentifier
  = liftIO
      ((js_canMakePaymentsWithActiveCard self
          (toJSString merchantIdentifier))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard_ ::
                               (MonadIO m, ToJSString merchantIdentifier) =>
                                 ApplePaySession -> merchantIdentifier -> m ()
canMakePaymentsWithActiveCard_ self merchantIdentifier
  = liftIO
      (void
         (js_canMakePaymentsWithActiveCard self
            (toJSString merchantIdentifier)))
 
foreign import javascript interruptible
        "$1[\"openPaymentSetup\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_openPaymentSetup ::
        ApplePaySession -> JSString -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup ::
                 (MonadIO m, ToJSString merchantIdentifier) =>
                   ApplePaySession -> merchantIdentifier -> m Bool
openPaymentSetup self merchantIdentifier
  = liftIO
      ((js_openPaymentSetup self (toJSString merchantIdentifier)) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup_ ::
                  (MonadIO m, ToJSString merchantIdentifier) =>
                    ApplePaySession -> merchantIdentifier -> m ()
openPaymentSetup_ self merchantIdentifier
  = liftIO
      (void (js_openPaymentSetup self (toJSString merchantIdentifier)))
 
foreign import javascript unsafe "$1[\"begin\"]()" js_begin ::
        ApplePaySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.begin Mozilla ApplePaySession.begin documentation> 
begin :: (MonadIO m) => ApplePaySession -> m ()
begin self = liftIO (js_begin self)
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        ApplePaySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.abort Mozilla ApplePaySession.abort documentation> 
abort :: (MonadIO m) => ApplePaySession -> m ()
abort self = liftIO (js_abort self)
 
foreign import javascript unsafe
        "$1[\"completeMerchantValidation\"]($2)"
        js_completeMerchantValidation :: ApplePaySession -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeMerchantValidation Mozilla ApplePaySession.completeMerchantValidation documentation> 
completeMerchantValidation ::
                           (MonadIO m, ToJSVal merchantSession) =>
                             ApplePaySession -> merchantSession -> m ()
completeMerchantValidation self merchantSession
  = liftIO
      (toJSVal merchantSession >>=
         \ merchantSession' ->
           js_completeMerchantValidation self merchantSession')
 
foreign import javascript unsafe
        "$1[\"completeShippingMethodSelection\"]($2)"
        js_completeShippingMethodSelectionUpdate ::
        ApplePaySession -> ApplePayShippingMethodUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingMethodSelection Mozilla ApplePaySession.completeShippingMethodSelection documentation> 
completeShippingMethodSelectionUpdate ::
                                      (MonadIO m) =>
                                        ApplePaySession -> ApplePayShippingMethodUpdate -> m ()
completeShippingMethodSelectionUpdate self update
  = liftIO (js_completeShippingMethodSelectionUpdate self update)
 
foreign import javascript unsafe
        "$1[\"completeShippingContactSelection\"]($2)"
        js_completeShippingContactSelectionUpdate ::
        ApplePaySession -> ApplePayShippingContactUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingContactSelection Mozilla ApplePaySession.completeShippingContactSelection documentation> 
completeShippingContactSelectionUpdate ::
                                       (MonadIO m) =>
                                         ApplePaySession -> ApplePayShippingContactUpdate -> m ()
completeShippingContactSelectionUpdate self update
  = liftIO (js_completeShippingContactSelectionUpdate self update)
 
foreign import javascript unsafe
        "$1[\"completePaymentMethodSelection\"]($2)"
        js_completePaymentMethodSelectionUpdate ::
        ApplePaySession -> ApplePayPaymentMethodUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePaymentMethodSelection Mozilla ApplePaySession.completePaymentMethodSelection documentation> 
completePaymentMethodSelectionUpdate ::
                                     (MonadIO m) =>
                                       ApplePaySession -> ApplePayPaymentMethodUpdate -> m ()
completePaymentMethodSelectionUpdate self update
  = liftIO (js_completePaymentMethodSelectionUpdate self update)
 
foreign import javascript unsafe "$1[\"completePayment\"]($2)"
        js_completePaymentResult ::
        ApplePaySession -> ApplePayPaymentAuthorizationResult -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePayment Mozilla ApplePaySession.completePayment documentation> 
completePaymentResult ::
                      (MonadIO m) =>
                        ApplePaySession -> ApplePayPaymentAuthorizationResult -> m ()
completePaymentResult self result
  = liftIO (js_completePaymentResult self result)
 
foreign import javascript unsafe
        "$1[\"completeShippingMethodSelection\"]($2,\n$3, $4)"
        js_completeShippingMethodSelection ::
        ApplePaySession -> Word -> ApplePayLineItem -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingMethodSelection Mozilla ApplePaySession.completeShippingMethodSelection documentation> 
completeShippingMethodSelection ::
                                (MonadIO m) =>
                                  ApplePaySession ->
                                    Word -> ApplePayLineItem -> [ApplePayLineItem] -> m ()
completeShippingMethodSelection self status newTotal newLineItems
  = liftIO
      (toJSVal newLineItems >>=
         \ newLineItems' ->
           js_completeShippingMethodSelection self status newTotal
             newLineItems')
 
foreign import javascript unsafe
        "$1[\"completeShippingContactSelection\"]($2,\n$3, $4, $5)"
        js_completeShippingContactSelection ::
        ApplePaySession ->
          Word -> JSVal -> ApplePayLineItem -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingContactSelection Mozilla ApplePaySession.completeShippingContactSelection documentation> 
completeShippingContactSelection ::
                                 (MonadIO m) =>
                                   ApplePaySession ->
                                     Word ->
                                       [ApplePayShippingMethod] ->
                                         ApplePayLineItem -> [ApplePayLineItem] -> m ()
completeShippingContactSelection self status newShippingMethods
  newTotal newLineItems
  = liftIO
      (toJSVal newLineItems >>=
         \ newLineItems' ->
           toJSVal newShippingMethods >>=
             \ newShippingMethods' ->
               js_completeShippingContactSelection self status newShippingMethods'
             newTotal
             newLineItems')
 
foreign import javascript unsafe
        "$1[\"completePaymentMethodSelection\"]($2,\n$3)"
        js_completePaymentMethodSelection ::
        ApplePaySession -> ApplePayLineItem -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePaymentMethodSelection Mozilla ApplePaySession.completePaymentMethodSelection documentation> 
completePaymentMethodSelection ::
                               (MonadIO m) =>
                                 ApplePaySession -> ApplePayLineItem -> [ApplePayLineItem] -> m ()
completePaymentMethodSelection self newTotal newLineItems
  = liftIO
      (toJSVal newLineItems >>=
         \ newLineItems' ->
           js_completePaymentMethodSelection self newTotal newLineItems')
 
foreign import javascript unsafe "$1[\"completePayment\"]($2)"
        js_completePayment :: ApplePaySession -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePayment Mozilla ApplePaySession.completePayment documentation> 
completePayment :: (MonadIO m) => ApplePaySession -> Word -> m ()
completePayment self status
  = liftIO (js_completePayment self status)
pattern STATUS_SUCCESS = 0
pattern STATUS_FAILURE = 1
pattern STATUS_INVALID_BILLING_POSTAL_ADDRESS = 2
pattern STATUS_INVALID_SHIPPING_POSTAL_ADDRESS = 3
pattern STATUS_INVALID_SHIPPING_CONTACT = 4
pattern STATUS_PIN_REQUIRED = 5
pattern STATUS_PIN_INCORRECT = 6
pattern STATUS_PIN_LOCKOUT = 7

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onvalidatemerchant Mozilla ApplePaySession.onvalidatemerchant documentation> 
validatemerchant :: EventName ApplePaySession onvalidatemerchant
validatemerchant = unsafeEventName (toJSString "validatemerchant")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onpaymentmethodselected Mozilla ApplePaySession.onpaymentmethodselected documentation> 
paymentmethodselected ::
                        EventName ApplePaySession onpaymentmethodselected
paymentmethodselected
  = unsafeEventName (toJSString "paymentmethodselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onpaymentauthorized Mozilla ApplePaySession.onpaymentauthorized documentation> 
paymentauthorized :: EventName ApplePaySession onpaymentauthorized
paymentauthorized
  = unsafeEventName (toJSString "paymentauthorized")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onshippingmethodselected Mozilla ApplePaySession.onshippingmethodselected documentation> 
shippingmethodselected ::
                         EventName ApplePaySession onshippingmethodselected
shippingmethodselected
  = unsafeEventName (toJSString "shippingmethodselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.onshippingcontactselected Mozilla ApplePaySession.onshippingcontactselected documentation> 
shippingcontactselected ::
                          EventName ApplePaySession onshippingcontactselected
shippingcontactselected
  = unsafeEventName (toJSString "shippingcontactselected")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.oncancel Mozilla ApplePaySession.oncancel documentation> 
cancel :: EventName ApplePaySession oncancel
cancel = unsafeEventName (toJSString "cancel")