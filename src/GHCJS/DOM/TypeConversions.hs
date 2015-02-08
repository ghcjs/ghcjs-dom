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
import Control.Monad.IO.Class (MonadIO(..))
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
                           (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_long
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testLong\"]"
        ghcjs_dom_type_conversions_get_test_long ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
typeConversionsGetTestLong ::
                           (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestLong self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_long ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
typeConversionsSetTestEnforceRangeLong ::
                                       (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestEnforceRangeLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_long
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_long ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
typeConversionsGetTestEnforceRangeLong ::
                                       (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestEnforceRangeLong self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_long ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
typeConversionsSetTestUnsignedLong ::
                                   (MonadIO m, IsTypeConversions self) => self -> Word -> m ()
typeConversionsSetTestUnsignedLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_unsigned_long
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_long ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
typeConversionsGetTestUnsignedLong ::
                                   (MonadIO m, IsTypeConversions self) => self -> m Word
typeConversionsGetTestUnsignedLong self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_unsigned_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
typeConversionsSetTestEnforceRangeUnsignedLong ::
                                               (MonadIO m, IsTypeConversions self) =>
                                                 self -> Word -> m ()
typeConversionsSetTestEnforceRangeUnsignedLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
typeConversionsGetTestEnforceRangeUnsignedLong ::
                                               (MonadIO m, IsTypeConversions self) => self -> m Word
typeConversionsGetTestEnforceRangeUnsignedLong self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
typeConversionsSetTestLongLong ::
                               (MonadIO m, IsTypeConversions self) => self -> Int64 -> m ()
typeConversionsSetTestLongLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_long_long
         (unTypeConversions (toTypeConversions self))
         (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testLongLong\"]"
        ghcjs_dom_type_conversions_get_test_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
typeConversionsGetTestLongLong ::
                               (MonadIO m, IsTypeConversions self) => self -> m Int64
typeConversionsGetTestLongLong self
  = liftIO
      (round <$>
         (ghcjs_dom_type_conversions_get_test_long_long
            (unTypeConversions (toTypeConversions self))))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
typeConversionsSetTestEnforceRangeLongLong ::
                                           (MonadIO m, IsTypeConversions self) =>
                                             self -> Int64 -> m ()
typeConversionsSetTestEnforceRangeLongLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_long_long
         (unTypeConversions (toTypeConversions self))
         (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testEnforceRangeLongLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
typeConversionsGetTestEnforceRangeLongLong ::
                                           (MonadIO m, IsTypeConversions self) => self -> m Int64
typeConversionsGetTestEnforceRangeLongLong self
  = liftIO
      (round <$>
         (ghcjs_dom_type_conversions_get_test_enforce_range_long_long
            (unTypeConversions (toTypeConversions self))))
 
foreign import javascript unsafe
        "$1[\"testUnsignedLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_long_long ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
typeConversionsSetTestUnsignedLongLong ::
                                       (MonadIO m, IsTypeConversions self) => self -> Word64 -> m ()
typeConversionsSetTestUnsignedLongLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_unsigned_long_long
         (unTypeConversions (toTypeConversions self))
         (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testUnsignedLongLong\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_long_long ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
typeConversionsGetTestUnsignedLongLong ::
                                       (MonadIO m, IsTypeConversions self) => self -> m Word64
typeConversionsGetTestUnsignedLongLong self
  = liftIO
      (round <$>
         (ghcjs_dom_type_conversions_get_test_unsigned_long_long
            (unTypeConversions (toTypeConversions self))))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long_long
        :: JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
typeConversionsSetTestEnforceRangeUnsignedLongLong ::
                                                   (MonadIO m, IsTypeConversions self) =>
                                                     self -> Word64 -> m ()
typeConversionsSetTestEnforceRangeUnsignedLongLong self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_long_long
         (unTypeConversions (toTypeConversions self))
         (fromIntegral val))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long_long
        :: JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
typeConversionsGetTestEnforceRangeUnsignedLongLong ::
                                                   (MonadIO m, IsTypeConversions self) =>
                                                     self -> m Word64
typeConversionsGetTestEnforceRangeUnsignedLongLong self
  = liftIO
      (round <$>
         (ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_long_long
            (unTypeConversions (toTypeConversions self))))
 
foreign import javascript unsafe "$1[\"testByte\"] = $2;"
        ghcjs_dom_type_conversions_set_test_byte ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
typeConversionsSetTestByte ::
                           (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestByte self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_byte
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testByte\"]"
        ghcjs_dom_type_conversions_get_test_byte ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
typeConversionsGetTestByte ::
                           (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestByte self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_byte
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeByte\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_byte ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
typeConversionsSetTestEnforceRangeByte ::
                                       (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestEnforceRangeByte self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_byte
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeByte\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_byte ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
typeConversionsGetTestEnforceRangeByte ::
                                       (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestEnforceRangeByte self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_byte
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testOctet\"] = $2;"
        ghcjs_dom_type_conversions_set_test_octet ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
typeConversionsSetTestOctet ::
                            (MonadIO m, IsTypeConversions self) => self -> Word -> m ()
typeConversionsSetTestOctet self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_octet
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testOctet\"]"
        ghcjs_dom_type_conversions_get_test_octet ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
typeConversionsGetTestOctet ::
                            (MonadIO m, IsTypeConversions self) => self -> m Word
typeConversionsGetTestOctet self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_octet
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeOctet\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_octet ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
typeConversionsSetTestEnforceRangeOctet ::
                                        (MonadIO m, IsTypeConversions self) => self -> Word -> m ()
typeConversionsSetTestEnforceRangeOctet self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_octet
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeOctet\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_octet ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
typeConversionsGetTestEnforceRangeOctet ::
                                        (MonadIO m, IsTypeConversions self) => self -> m Word
typeConversionsGetTestEnforceRangeOctet self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_octet
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_short ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
typeConversionsSetTestShort ::
                            (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestShort self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_short
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testShort\"]"
        ghcjs_dom_type_conversions_get_test_short ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
typeConversionsGetTestShort ::
                            (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestShort self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_short
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_short ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
typeConversionsSetTestEnforceRangeShort ::
                                        (MonadIO m, IsTypeConversions self) => self -> Int -> m ()
typeConversionsSetTestEnforceRangeShort self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_short
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeShort\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_short ::
        JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
typeConversionsGetTestEnforceRangeShort ::
                                        (MonadIO m, IsTypeConversions self) => self -> m Int
typeConversionsGetTestEnforceRangeShort self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_short
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_unsigned_short ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
typeConversionsSetTestUnsignedShort ::
                                    (MonadIO m, IsTypeConversions self) => self -> Word -> m ()
typeConversionsSetTestUnsignedShort self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_unsigned_short
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"]"
        ghcjs_dom_type_conversions_get_test_unsigned_short ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
typeConversionsGetTestUnsignedShort ::
                                    (MonadIO m, IsTypeConversions self) => self -> m Word
typeConversionsGetTestUnsignedShort self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_unsigned_short
         (unTypeConversions (toTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"] = $2;"
        ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_short ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
typeConversionsSetTestEnforceRangeUnsignedShort ::
                                                (MonadIO m, IsTypeConversions self) =>
                                                  self -> Word -> m ()
typeConversionsSetTestEnforceRangeUnsignedShort self val
  = liftIO
      (ghcjs_dom_type_conversions_set_test_enforce_range_unsigned_short
         (unTypeConversions (toTypeConversions self))
         val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"]"
        ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_short ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
typeConversionsGetTestEnforceRangeUnsignedShort ::
                                                (MonadIO m, IsTypeConversions self) =>
                                                  self -> m Word
typeConversionsGetTestEnforceRangeUnsignedShort self
  = liftIO
      (ghcjs_dom_type_conversions_get_test_enforce_range_unsigned_short
         (unTypeConversions (toTypeConversions self)))
#else
module GHCJS.DOM.TypeConversions (
  ) where
#endif
