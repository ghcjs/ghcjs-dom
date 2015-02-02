{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMeterElement
       (ghcjs_dom_html_meter_element_set_value, htmlMeterElementSetValue,
        ghcjs_dom_html_meter_element_get_value, htmlMeterElementGetValue,
        ghcjs_dom_html_meter_element_set_min, htmlMeterElementSetMin,
        ghcjs_dom_html_meter_element_get_min, htmlMeterElementGetMin,
        ghcjs_dom_html_meter_element_set_max, htmlMeterElementSetMax,
        ghcjs_dom_html_meter_element_get_max, htmlMeterElementGetMax,
        ghcjs_dom_html_meter_element_set_low, htmlMeterElementSetLow,
        ghcjs_dom_html_meter_element_get_low, htmlMeterElementGetLow,
        ghcjs_dom_html_meter_element_set_high, htmlMeterElementSetHigh,
        ghcjs_dom_html_meter_element_get_high, htmlMeterElementGetHigh,
        ghcjs_dom_html_meter_element_set_optimum,
        htmlMeterElementSetOptimum,
        ghcjs_dom_html_meter_element_get_optimum,
        htmlMeterElementGetOptimum,
        ghcjs_dom_html_meter_element_get_labels, htmlMeterElementGetLabels,
        HTMLMeterElement, IsHTMLMeterElement, castToHTMLMeterElement,
        gTypeHTMLMeterElement, toHTMLMeterElement)
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

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_meter_element_set_value ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
htmlMeterElementSetValue ::
                         (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetValue self val
  = ghcjs_dom_html_meter_element_set_value
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_meter_element_get_value ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
htmlMeterElementGetValue ::
                         (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetValue self
  = ghcjs_dom_html_meter_element_get_value
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"min\"] = $2;"
        ghcjs_dom_html_meter_element_set_min ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
htmlMeterElementSetMin ::
                       (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetMin self val
  = ghcjs_dom_html_meter_element_set_min
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_html_meter_element_get_min ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
htmlMeterElementGetMin ::
                       (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetMin self
  = ghcjs_dom_html_meter_element_get_min
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        ghcjs_dom_html_meter_element_set_max ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
htmlMeterElementSetMax ::
                       (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetMax self val
  = ghcjs_dom_html_meter_element_set_max
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_html_meter_element_get_max ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
htmlMeterElementGetMax ::
                       (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetMax self
  = ghcjs_dom_html_meter_element_get_max
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"low\"] = $2;"
        ghcjs_dom_html_meter_element_set_low ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
htmlMeterElementSetLow ::
                       (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetLow self val
  = ghcjs_dom_html_meter_element_set_low
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"low\"]"
        ghcjs_dom_html_meter_element_get_low ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
htmlMeterElementGetLow ::
                       (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetLow self
  = ghcjs_dom_html_meter_element_get_low
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"high\"] = $2;"
        ghcjs_dom_html_meter_element_set_high ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
htmlMeterElementSetHigh ::
                        (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetHigh self val
  = ghcjs_dom_html_meter_element_set_high
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"high\"]"
        ghcjs_dom_html_meter_element_get_high ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
htmlMeterElementGetHigh ::
                        (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetHigh self
  = ghcjs_dom_html_meter_element_get_high
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"optimum\"] = $2;"
        ghcjs_dom_html_meter_element_set_optimum ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
htmlMeterElementSetOptimum ::
                           (IsHTMLMeterElement self) => self -> Double -> IO ()
htmlMeterElementSetOptimum self val
  = ghcjs_dom_html_meter_element_set_optimum
      (unHTMLMeterElement (toHTMLMeterElement self))
      val
 
foreign import javascript unsafe "$1[\"optimum\"]"
        ghcjs_dom_html_meter_element_get_optimum ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
htmlMeterElementGetOptimum ::
                           (IsHTMLMeterElement self) => self -> IO Double
htmlMeterElementGetOptimum self
  = ghcjs_dom_html_meter_element_get_optimum
      (unHTMLMeterElement (toHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_meter_element_get_labels ::
        JSRef HTMLMeterElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
htmlMeterElementGetLabels ::
                          (IsHTMLMeterElement self) => self -> IO (Maybe NodeList)
htmlMeterElementGetLabels self
  = (ghcjs_dom_html_meter_element_get_labels
       (unHTMLMeterElement (toHTMLMeterElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLMeterElement (
  ) where
#endif
