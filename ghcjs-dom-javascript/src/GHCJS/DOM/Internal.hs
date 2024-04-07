module GHCJS.DOM.Internal where

import Unsafe.Coerce (unsafeCoerce)

import GHCJS.Marshal (FromJSVal(..))
import GHC.JS.Foreign.Callback (Callback)


-- This orphan instance is meant as a temporary solution
-- until FromJSVal will be added to GHC.JS.Prim
-- so that a proper instance leveraging Callback's
-- constructor can be defined in base.
instance FromJSVal (Callback a) where
  fromJSVal = pure . Just . unsafeCoerce
