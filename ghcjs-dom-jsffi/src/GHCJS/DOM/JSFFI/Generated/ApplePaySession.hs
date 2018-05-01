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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe
        "new window[\"ApplePaySession\"]($1,\n$2)" js_newApplePaySession ::
        Word -> ApplePayPaymentRequest -> IO ApplePaySession

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession Mozilla ApplePaySession documentation> 
newApplePaySession ::
                   (MonadIO m) => Word -> ApplePayPaymentRequest -> m ApplePaySession
newApplePaySession version paymentRequest
  = liftIO (js_newApplePaySession version paymentRequest)
 
foreign import javascript safe
        "(window[\"ApplePaySession\"][\"supportsVersion\"]($1) ? 1 : 0)"
        js_supportsVersion :: Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion :: (MonadIO m) => Word -> m Bool
supportsVersion version = liftIO (js_supportsVersion version)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.supportsVersion Mozilla ApplePaySession.supportsVersion documentation> 
supportsVersion_ :: (MonadIO m) => Word -> m ()
supportsVersion_ version
  = liftIO (void (js_supportsVersion version))
 
foreign import javascript safe
        "(window[\"ApplePaySession\"][\"canMakePayments\"]() ? 1 : 0)"
        js_canMakePayments :: IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments :: (MonadIO m) => m Bool
canMakePayments = liftIO (js_canMakePayments)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePayments Mozilla ApplePaySession.canMakePayments documentation> 
canMakePayments_ :: (MonadIO m) => m ()
canMakePayments_ = liftIO (void (js_canMakePayments))
 
foreign import javascript interruptible
        "window[\"ApplePaySession\"][\"canMakePaymentsWithActiveCard\"]($1).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_canMakePaymentsWithActiveCard :: JSString -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard ::
                              (MonadIO m, ToJSString merchantIdentifier) =>
                                merchantIdentifier -> m Bool
canMakePaymentsWithActiveCard merchantIdentifier
  = liftIO
      ((js_canMakePaymentsWithActiveCard (toJSString merchantIdentifier))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.canMakePaymentsWithActiveCard Mozilla ApplePaySession.canMakePaymentsWithActiveCard documentation> 
canMakePaymentsWithActiveCard_ ::
                               (MonadIO m, ToJSString merchantIdentifier) =>
                                 merchantIdentifier -> m ()
canMakePaymentsWithActiveCard_ merchantIdentifier
  = liftIO
      (void
         (js_canMakePaymentsWithActiveCard (toJSString merchantIdentifier)))
 
foreign import javascript interruptible
        "window[\"ApplePaySession\"][\"openPaymentSetup\"]($1).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_openPaymentSetup :: JSString -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup ::
                 (MonadIO m, ToJSString merchantIdentifier) =>
                   merchantIdentifier -> m Bool
openPaymentSetup merchantIdentifier
  = liftIO
      ((js_openPaymentSetup (toJSString merchantIdentifier)) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.openPaymentSetup Mozilla ApplePaySession.openPaymentSetup documentation> 
openPaymentSetup_ ::
                  (MonadIO m, ToJSString merchantIdentifier) =>
                    merchantIdentifier -> m ()
openPaymentSetup_ merchantIdentifier
  = liftIO
      (void (js_openPaymentSetup (toJSString merchantIdentifier)))
 
foreign import javascript safe "$1[\"begin\"]()" js_begin ::
        ApplePaySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.begin Mozilla ApplePaySession.begin documentation> 
begin :: (MonadIO m) => ApplePaySession -> m ()
begin self = liftIO (js_begin self)
 
foreign import javascript safe "$1[\"abort\"]()" js_abort ::
        ApplePaySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.abort Mozilla ApplePaySession.abort documentation> 
abort :: (MonadIO m) => ApplePaySession -> m ()
abort self = liftIO (js_abort self)
 
foreign import javascript safe
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
 
foreign import javascript safe
        "$1[\"completeShippingMethodSelection\"]($2)"
        js_completeShippingMethodSelectionUpdate ::
        ApplePaySession -> ApplePayShippingMethodUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingMethodSelection Mozilla ApplePaySession.completeShippingMethodSelection documentation> 
completeShippingMethodSelectionUpdate ::
                                      (MonadIO m) =>
                                        ApplePaySession -> ApplePayShippingMethodUpdate -> m ()
completeShippingMethodSelectionUpdate self update
  = liftIO (js_completeShippingMethodSelectionUpdate self update)
 
foreign import javascript safe
        "$1[\"completeShippingContactSelection\"]($2)"
        js_completeShippingContactSelectionUpdate ::
        ApplePaySession -> ApplePayShippingContactUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completeShippingContactSelection Mozilla ApplePaySession.completeShippingContactSelection documentation> 
completeShippingContactSelectionUpdate ::
                                       (MonadIO m) =>
                                         ApplePaySession -> ApplePayShippingContactUpdate -> m ()
completeShippingContactSelectionUpdate self update
  = liftIO (js_completeShippingContactSelectionUpdate self update)
 
foreign import javascript safe
        "$1[\"completePaymentMethodSelection\"]($2)"
        js_completePaymentMethodSelectionUpdate ::
        ApplePaySession -> ApplePayPaymentMethodUpdate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePaymentMethodSelection Mozilla ApplePaySession.completePaymentMethodSelection documentation> 
completePaymentMethodSelectionUpdate ::
                                     (MonadIO m) =>
                                       ApplePaySession -> ApplePayPaymentMethodUpdate -> m ()
completePaymentMethodSelectionUpdate self update
  = liftIO (js_completePaymentMethodSelectionUpdate self update)
 
foreign import javascript safe "$1[\"completePayment\"]($2)"
        js_completePaymentResult ::
        ApplePaySession -> ApplePayPaymentAuthorizationResult -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePaySession.completePayment Mozilla ApplePaySession.completePayment documentation> 
completePaymentResult ::
                      (MonadIO m) =>
                        ApplePaySession -> ApplePayPaymentAuthorizationResult -> m ()
completePaymentResult self result
  = liftIO (js_completePaymentResult self result)
 
foreign import javascript safe
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
 
foreign import javascript safe
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
 
foreign import javascript safe
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
 
foreign import javascript safe "$1[\"completePayment\"]($2)"
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