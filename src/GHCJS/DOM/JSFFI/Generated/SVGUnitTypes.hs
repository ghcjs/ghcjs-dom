{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGUnitTypes
       (pattern SVG_UNIT_TYPE_UNKNOWN,
        pattern SVG_UNIT_TYPE_USERSPACEONUSE,
        pattern SVG_UNIT_TYPE_OBJECTBOUNDINGBOX, SVGUnitTypes,
        castToSVGUnitTypes, gTypeSVGUnitTypes)
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
pattern SVG_UNIT_TYPE_UNKNOWN = 0
pattern SVG_UNIT_TYPE_USERSPACEONUSE = 1
pattern SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2