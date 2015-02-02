{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TypeConversions
       (ghcjs_dom_type_conversions_set_test_long,
        typeConversionsSetTestLong,
        ghcjs_dom_type_conversions_get_test_long,
        typeConversionsGetTestLong,
        ghcjs_dom_type_conversions_set_test_enforce_range_long,
        typeConversionsSetTestEnforceRangeLong,
        ghcjs_dom_type_conversions_get_test_enforce_range_long,
        typeConversionsGetTestEnforceRangeLong,
        ghcjs_dom_type_conversions_set_test_unsigned_long,
        typeConversionsSetTestUnsignedLong,
        ghcjs_dom_type_conversions_get_test_unsigned_long,
        typeConversionsGetTestUnsignedLong,
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long,
        typeConversionsSetTestEnforceRangeUnsignedLong,
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long,
        typeConversionsGetTestEnforceRangeUnsignedLong,
        ghcjs_dom_type_conversions_set_test_long_long,
        typeConversionsSetTestLongLong,
        ghcjs_dom_type_conversions_get_test_long_long,
        typeConversionsGetTestLongLong,
        ghcjs_dom_type_conversions_set_test_enforce_range_long_long,
        typeConversionsSetTestEnforceRangeLongLong,
        ghcjs_dom_type_conversions_get_test_enforce_range_long_long,
        typeConversionsGetTestEnforceRangeLongLong,
        ghcjs_dom_type_conversions_set_test_unsigned_long_long,
        typeConversionsSetTestUnsignedLongLong,
        ghcjs_dom_type_conversions_get_test_unsigned_long_long,
        typeConversionsGetTestUnsignedLongLong,
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long_long,
        typeConversionsSetTestEnforceRangeUnsignedLongLong,
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long_long,
        typeConversionsGetTestEnforceRangeUnsignedLongLong,
        ghcjs_dom_type_conversions_set_test_byte,
        typeConversionsSetTestByte,
        ghcjs_dom_type_conversions_get_test_byte,
        typeConversionsGetTestByte,
        ghcjs_dom_type_conversions_set_test_enforce_range_byte,
        typeConversionsSetTestEnforceRangeByte,
        ghcjs_dom_type_conversions_get_test_enforce_range_byte,
        typeConversionsGetTestEnforceRangeByte,
        ghcjs_dom_type_conversions_set_test_octet,
        typeConversionsSetTestOctet,
        ghcjs_dom_type_conversions_get_test_octet,
        typeConversionsGetTestOctet,
        ghcjs_dom_type_conversions_set_test_enforce_range_octet,
        typeConversionsSetTestEnforceRangeOctet,
        ghcjs_dom_type_conversions_get_test_enforce_range_octet,
        typeConversionsGetTestEnforceRangeOctet,
        ghcjs_dom_type_conversions_set_test_short,
        typeConversionsSetTestShort,
        ghcjs_dom_type_conversions_get_test_short,
        typeConversionsGetTestShort,
        ghcjs_dom_type_conversions_set_test_enforce_range_short,
        typeConversionsSetTestEnforceRangeShort,
        ghcjs_dom_type_conversions_get_test_enforce_range_short,
        typeConversionsGetTestEnforceRangeShort,
        ghcjs_dom_type_conversions_set_test_unsigned_short,
        typeConversionsSetTestUnsignedShort,
        ghcjs_dom_type_conversions_get_test_unsigned_short,
        typeConversionsGetTestUnsignedShort,
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_short,
        typeConversionsSetTestEnforceRangeUnsignedShort,
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_short,
        typeConversionsGetTestEnforceRangeUnsignedShort,
        TypeConversions(..), IsTypeConversions, castToTypeConversions,
        gTypeTypeConversions, toTypeConversions)
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

 
foreign import javascript unsafe "$1[\"testLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_long ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
typeConversionsSetTestLong ::
                           (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestLong self val
  = ghcjs_dom_type_conversions_set_test_long
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testLong\"]"
        ghcjs_dom_type_conversions_get_test_long ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
typeConversionsGetTestLong ::
                           (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestLong self
  = ghcjs_dom_type_conversions_get_test_long
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_long ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
typeConversionsSetTestEnforceRangeLong ::
                                       (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestEnforceRangeLong self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_long
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testEnforceRangeLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_long ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
typeConversionsGetTestEnforceRangeLong ::
                                       (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestEnforceRangeLong self
  = ghcjs_dom_type_conversions_get_test_enforce_range_long
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_long ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
typeConversionsSetTestUnsignedLong ::
                                   (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestUnsignedLong self val
  = ghcjs_dom_type_conversions_set_test_unsigned_long
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_long ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
typeConversionsGetTestUnsignedLong ::
                                   (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestUnsignedLong self
  = ghcjs_dom_type_conversions_get_test_unsigned_long
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
typeConversionsSetTestEnforceRangeUnsignedLong ::
                                               (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestEnforceRangeUnsignedLong self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
typeConversionsGetTestEnforceRangeUnsignedLong ::
                                               (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestEnforceRangeUnsignedLong self
  = ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe "$1[\"testLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
typeConversionsSetTestLongLong ::
                               (IsTypeConversions self) => self -> Int64 -> IO ()
typeConversionsSetTestLongLong self val
  = ghcjs_dom_type_conversions_set_test_long_long
      (unTypeConversions (toTypeConversions self))
      (fromIntegral val)
 
foreign import javascript unsafe "$1[\"testLongLong\"]"
        ghcjs_dom_type_conversions_get_test_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
typeConversionsGetTestLongLong ::
                               (IsTypeConversions self) => self -> IO Int64
typeConversionsGetTestLongLong self
  = round <$>
      (ghcjs_dom_type_conversions_get_test_long_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
typeConversionsSetTestEnforceRangeLongLong ::
                                           (IsTypeConversions self) => self -> Int64 -> IO ()
typeConversionsSetTestEnforceRangeLongLong self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_long_long
      (unTypeConversions (toTypeConversions self))
      (fromIntegral val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeLongLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
typeConversionsGetTestEnforceRangeLongLong ::
                                           (IsTypeConversions self) => self -> IO Int64
typeConversionsGetTestEnforceRangeLongLong self
  = round <$>
      (ghcjs_dom_type_conversions_get_test_enforce_range_long_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testUnsignedLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
typeConversionsSetTestUnsignedLongLong ::
                                       (IsTypeConversions self) => self -> Word64 -> IO ()
typeConversionsSetTestUnsignedLongLong self val
  = ghcjs_dom_type_conversions_set_test_unsigned_long_long
      (unTypeConversions (toTypeConversions self))
      (fromIntegral val)
 
foreign import javascript unsafe "$1[\"testUnsignedLongLong\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
typeConversionsGetTestUnsignedLongLong ::
                                       (IsTypeConversions self) => self -> IO Word64
typeConversionsGetTestUnsignedLongLong self
  = round <$>
      (ghcjs_dom_type_conversions_get_test_unsigned_long_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long_long
        :: JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
typeConversionsSetTestEnforceRangeUnsignedLongLong ::
                                                   (IsTypeConversions self) =>
                                                     self -> Word64 -> IO ()
typeConversionsSetTestEnforceRangeUnsignedLongLong self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long_long
      (unTypeConversions (toTypeConversions self))
      (fromIntegral val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long_long
        :: JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
typeConversionsGetTestEnforceRangeUnsignedLongLong ::
                                                   (IsTypeConversions self) => self -> IO Word64
typeConversionsGetTestEnforceRangeUnsignedLongLong self
  = round <$>
      (ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testByte\"] = $2;"
        ghcjs_dom_type_conversions_set_test_byte ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
typeConversionsSetTestByte ::
                           (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestByte self val
  = ghcjs_dom_type_conversions_set_test_byte
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testByte\"]"
        ghcjs_dom_type_conversions_get_test_byte ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
typeConversionsGetTestByte ::
                           (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestByte self
  = ghcjs_dom_type_conversions_get_test_byte
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeByte\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_byte ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
typeConversionsSetTestEnforceRangeByte ::
                                       (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestEnforceRangeByte self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_byte
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testEnforceRangeByte\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_byte ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
typeConversionsGetTestEnforceRangeByte ::
                                       (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestEnforceRangeByte self
  = ghcjs_dom_type_conversions_get_test_enforce_range_byte
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe "$1[\"testOctet\"] = $2;"
        ghcjs_dom_type_conversions_set_test_octet ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
typeConversionsSetTestOctet ::
                            (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestOctet self val
  = ghcjs_dom_type_conversions_set_test_octet
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testOctet\"]"
        ghcjs_dom_type_conversions_get_test_octet ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
typeConversionsGetTestOctet ::
                            (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestOctet self
  = ghcjs_dom_type_conversions_get_test_octet
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeOctet\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_octet ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
typeConversionsSetTestEnforceRangeOctet ::
                                        (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestEnforceRangeOctet self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_octet
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testEnforceRangeOctet\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_octet ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
typeConversionsGetTestEnforceRangeOctet ::
                                        (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestEnforceRangeOctet self
  = ghcjs_dom_type_conversions_get_test_enforce_range_octet
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe "$1[\"testShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_short ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
typeConversionsSetTestShort ::
                            (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestShort self val
  = ghcjs_dom_type_conversions_set_test_short
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testShort\"]"
        ghcjs_dom_type_conversions_get_test_short ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
typeConversionsGetTestShort ::
                            (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestShort self
  = ghcjs_dom_type_conversions_get_test_short
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_short ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
typeConversionsSetTestEnforceRangeShort ::
                                        (IsTypeConversions self) => self -> Int -> IO ()
typeConversionsSetTestEnforceRangeShort self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_short
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testEnforceRangeShort\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_short ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
typeConversionsGetTestEnforceRangeShort ::
                                        (IsTypeConversions self) => self -> IO Int
typeConversionsGetTestEnforceRangeShort self
  = ghcjs_dom_type_conversions_get_test_enforce_range_short
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_short ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
typeConversionsSetTestUnsignedShort ::
                                    (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestUnsignedShort self val
  = ghcjs_dom_type_conversions_set_test_unsigned_short
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_short ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
typeConversionsGetTestUnsignedShort ::
                                    (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestUnsignedShort self
  = ghcjs_dom_type_conversions_get_test_unsigned_short
      (unTypeConversions (toTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_short ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
typeConversionsSetTestEnforceRangeUnsignedShort ::
                                                (IsTypeConversions self) => self -> Word -> IO ()
typeConversionsSetTestEnforceRangeUnsignedShort self val
  = ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_short
      (unTypeConversions (toTypeConversions self))
      val
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_short ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
typeConversionsGetTestEnforceRangeUnsignedShort ::
                                                (IsTypeConversions self) => self -> IO Word
typeConversionsGetTestEnforceRangeUnsignedShort self
  = ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_short
      (unTypeConversions (toTypeConversions self))
#else
module GHCJS.DOM.TypeConversions (
  ) where
#endif
