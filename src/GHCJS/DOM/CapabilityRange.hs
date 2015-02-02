{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CapabilityRange
       (ghcjs_dom_capability_range_get_max, capabilityRangeGetMax,
        ghcjs_dom_capability_range_get_min, capabilityRangeGetMin,
        ghcjs_dom_capability_range_get_supported,
        capabilityRangeGetSupported, CapabilityRange, IsCapabilityRange,
        castToCapabilityRange, gTypeCapabilityRange, toCapabilityRange)
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

 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_capability_range_get_max ::
        JSRef CapabilityRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.max Mozilla CapabilityRange.max documentation> 
capabilityRangeGetMax ::
                      (IsCapabilityRange self) => self -> IO (JSRef a)
capabilityRangeGetMax self
  = ghcjs_dom_capability_range_get_max
      (unCapabilityRange (toCapabilityRange self))
 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_capability_range_get_min ::
        JSRef CapabilityRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.min Mozilla CapabilityRange.min documentation> 
capabilityRangeGetMin ::
                      (IsCapabilityRange self) => self -> IO (JSRef a)
capabilityRangeGetMin self
  = ghcjs_dom_capability_range_get_min
      (unCapabilityRange (toCapabilityRange self))
 
foreign import javascript unsafe "($1[\"supported\"] ? 1 : 0)"
        ghcjs_dom_capability_range_get_supported ::
        JSRef CapabilityRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.supported Mozilla CapabilityRange.supported documentation> 
capabilityRangeGetSupported ::
                            (IsCapabilityRange self) => self -> IO Bool
capabilityRangeGetSupported self
  = ghcjs_dom_capability_range_get_supported
      (unCapabilityRange (toCapabilityRange self))
#else
module GHCJS.DOM.CapabilityRange (
  ) where
#endif
