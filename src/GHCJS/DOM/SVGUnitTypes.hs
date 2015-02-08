{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGUnitTypes
       (cSVG_UNIT_TYPE_UNKNOWN, cSVG_UNIT_TYPE_USERSPACEONUSE,
        cSVG_UNIT_TYPE_OBJECTBOUNDINGBOX, SVGUnitTypes, IsSVGUnitTypes,
        castToSVGUnitTypes, gTypeSVGUnitTypes, toSVGUnitTypes)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cSVG_UNIT_TYPE_UNKNOWN = 0
cSVG_UNIT_TYPE_USERSPACEONUSE = 1
cSVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2
#else
module GHCJS.DOM.SVGUnitTypes (
  ) where
#endif
