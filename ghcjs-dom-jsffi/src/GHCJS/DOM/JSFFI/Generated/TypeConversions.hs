{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TypeConversions
       (js_setTestLong, setTestLong, js_getTestLong, getTestLong,
        js_setTestEnforceRangeLong, setTestEnforceRangeLong,
        js_getTestEnforceRangeLong, getTestEnforceRangeLong,
        js_setTestUnsignedLong, setTestUnsignedLong,
        js_getTestUnsignedLong, getTestUnsignedLong,
        js_setTestEnforceRangeUnsignedLong,
        setTestEnforceRangeUnsignedLong,
        js_getTestEnforceRangeUnsignedLong,
        getTestEnforceRangeUnsignedLong, js_setTestLongLong,
        setTestLongLong, js_getTestLongLong, getTestLongLong,
        js_setTestEnforceRangeLongLong, setTestEnforceRangeLongLong,
        js_getTestEnforceRangeLongLong, getTestEnforceRangeLongLong,
        js_setTestUnsignedLongLong, setTestUnsignedLongLong,
        js_getTestUnsignedLongLong, getTestUnsignedLongLong,
        js_setTestEnforceRangeUnsignedLongLong,
        setTestEnforceRangeUnsignedLongLong,
        js_getTestEnforceRangeUnsignedLongLong,
        getTestEnforceRangeUnsignedLongLong, js_setTestByte, setTestByte,
        js_getTestByte, getTestByte, js_setTestEnforceRangeByte,
        setTestEnforceRangeByte, js_getTestEnforceRangeByte,
        getTestEnforceRangeByte, js_setTestOctet, setTestOctet,
        js_getTestOctet, getTestOctet, js_setTestEnforceRangeOctet,
        setTestEnforceRangeOctet, js_getTestEnforceRangeOctet,
        getTestEnforceRangeOctet, js_setTestShort, setTestShort,
        js_getTestShort, getTestShort, js_setTestEnforceRangeShort,
        setTestEnforceRangeShort, js_getTestEnforceRangeShort,
        getTestEnforceRangeShort, js_setTestUnsignedShort,
        setTestUnsignedShort, js_getTestUnsignedShort,
        getTestUnsignedShort, js_setTestEnforceRangeUnsignedShort,
        setTestEnforceRangeUnsignedShort,
        js_getTestEnforceRangeUnsignedShort,
        getTestEnforceRangeUnsignedShort, TypeConversions,
        castToTypeConversions, gTypeTypeConversions)
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
 
foreign import javascript unsafe "$1[\"testLong\"] = $2;"
        js_setTestLong :: TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
setTestLong :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestLong self val = liftIO (js_setTestLong (self) val)
 
foreign import javascript unsafe "$1[\"testLong\"]" js_getTestLong
        :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
getTestLong :: (MonadIO m) => TypeConversions -> m Int
getTestLong self = liftIO (js_getTestLong (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLong\"] = $2;" js_setTestEnforceRangeLong ::
        TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
setTestEnforceRangeLong ::
                        (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeLong self val
  = liftIO (js_setTestEnforceRangeLong (self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeLong\"]"
        js_getTestEnforceRangeLong :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
getTestEnforceRangeLong :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeLong self
  = liftIO (js_getTestEnforceRangeLong (self))
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"] = $2;"
        js_setTestUnsignedLong :: TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
setTestUnsignedLong ::
                    (MonadIO m) => TypeConversions -> Word -> m ()
setTestUnsignedLong self val
  = liftIO (js_setTestUnsignedLong (self) val)
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"]"
        js_getTestUnsignedLong :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
getTestUnsignedLong :: (MonadIO m) => TypeConversions -> m Word
getTestUnsignedLong self = liftIO (js_getTestUnsignedLong (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"] = $2;"
        js_setTestEnforceRangeUnsignedLong ::
        TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
setTestEnforceRangeUnsignedLong ::
                                (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedLong self val
  = liftIO (js_setTestEnforceRangeUnsignedLong (self) val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"]"
        js_getTestEnforceRangeUnsignedLong :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
getTestEnforceRangeUnsignedLong ::
                                (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedLong self
  = liftIO (js_getTestEnforceRangeUnsignedLong (self))
 
foreign import javascript unsafe "$1[\"testLongLong\"] = $2;"
        js_setTestLongLong :: TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
setTestLongLong :: (MonadIO m) => TypeConversions -> Int64 -> m ()
setTestLongLong self val
  = liftIO (js_setTestLongLong (self) (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testLongLong\"]"
        js_getTestLongLong :: TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
getTestLongLong :: (MonadIO m) => TypeConversions -> m Int64
getTestLongLong self
  = liftIO (round <$> (js_getTestLongLong (self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLongLong\"] = $2;"
        js_setTestEnforceRangeLongLong ::
        TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
setTestEnforceRangeLongLong ::
                            (MonadIO m) => TypeConversions -> Int64 -> m ()
setTestEnforceRangeLongLong self val
  = liftIO (js_setTestEnforceRangeLongLong (self) (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testEnforceRangeLongLong\"]"
        js_getTestEnforceRangeLongLong :: TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
getTestEnforceRangeLongLong ::
                            (MonadIO m) => TypeConversions -> m Int64
getTestEnforceRangeLongLong self
  = liftIO (round <$> (js_getTestEnforceRangeLongLong (self)))
 
foreign import javascript unsafe
        "$1[\"testUnsignedLongLong\"] = $2;" js_setTestUnsignedLongLong ::
        TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
setTestUnsignedLongLong ::
                        (MonadIO m) => TypeConversions -> Word64 -> m ()
setTestUnsignedLongLong self val
  = liftIO (js_setTestUnsignedLongLong (self) (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testUnsignedLongLong\"]"
        js_getTestUnsignedLongLong :: TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
getTestUnsignedLongLong ::
                        (MonadIO m) => TypeConversions -> m Word64
getTestUnsignedLongLong self
  = liftIO (round <$> (js_getTestUnsignedLongLong (self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"] = $2;"
        js_setTestEnforceRangeUnsignedLongLong ::
        TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
setTestEnforceRangeUnsignedLongLong ::
                                    (MonadIO m) => TypeConversions -> Word64 -> m ()
setTestEnforceRangeUnsignedLongLong self val
  = liftIO
      (js_setTestEnforceRangeUnsignedLongLong (self) (fromIntegral val))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"]"
        js_getTestEnforceRangeUnsignedLongLong ::
        TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
getTestEnforceRangeUnsignedLongLong ::
                                    (MonadIO m) => TypeConversions -> m Word64
getTestEnforceRangeUnsignedLongLong self
  = liftIO
      (round <$> (js_getTestEnforceRangeUnsignedLongLong (self)))
 
foreign import javascript unsafe "$1[\"testByte\"] = $2;"
        js_setTestByte :: TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
setTestByte :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestByte self val = liftIO (js_setTestByte (self) val)
 
foreign import javascript unsafe "$1[\"testByte\"]" js_getTestByte
        :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
getTestByte :: (MonadIO m) => TypeConversions -> m Int
getTestByte self = liftIO (js_getTestByte (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeByte\"] = $2;" js_setTestEnforceRangeByte ::
        TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
setTestEnforceRangeByte ::
                        (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeByte self val
  = liftIO (js_setTestEnforceRangeByte (self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeByte\"]"
        js_getTestEnforceRangeByte :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
getTestEnforceRangeByte :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeByte self
  = liftIO (js_getTestEnforceRangeByte (self))
 
foreign import javascript unsafe "$1[\"testOctet\"] = $2;"
        js_setTestOctet :: TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
setTestOctet :: (MonadIO m) => TypeConversions -> Word -> m ()
setTestOctet self val = liftIO (js_setTestOctet (self) val)
 
foreign import javascript unsafe "$1[\"testOctet\"]"
        js_getTestOctet :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
getTestOctet :: (MonadIO m) => TypeConversions -> m Word
getTestOctet self = liftIO (js_getTestOctet (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeOctet\"] = $2;" js_setTestEnforceRangeOctet
        :: TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
setTestEnforceRangeOctet ::
                         (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeOctet self val
  = liftIO (js_setTestEnforceRangeOctet (self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeOctet\"]"
        js_getTestEnforceRangeOctet :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
getTestEnforceRangeOctet ::
                         (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeOctet self
  = liftIO (js_getTestEnforceRangeOctet (self))
 
foreign import javascript unsafe "$1[\"testShort\"] = $2;"
        js_setTestShort :: TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
setTestShort :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestShort self val = liftIO (js_setTestShort (self) val)
 
foreign import javascript unsafe "$1[\"testShort\"]"
        js_getTestShort :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
getTestShort :: (MonadIO m) => TypeConversions -> m Int
getTestShort self = liftIO (js_getTestShort (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeShort\"] = $2;" js_setTestEnforceRangeShort
        :: TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
setTestEnforceRangeShort ::
                         (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeShort self val
  = liftIO (js_setTestEnforceRangeShort (self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeShort\"]"
        js_getTestEnforceRangeShort :: TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
getTestEnforceRangeShort :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeShort self
  = liftIO (js_getTestEnforceRangeShort (self))
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"] = $2;"
        js_setTestUnsignedShort :: TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
setTestUnsignedShort ::
                     (MonadIO m) => TypeConversions -> Word -> m ()
setTestUnsignedShort self val
  = liftIO (js_setTestUnsignedShort (self) val)
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"]"
        js_getTestUnsignedShort :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
getTestUnsignedShort :: (MonadIO m) => TypeConversions -> m Word
getTestUnsignedShort self = liftIO (js_getTestUnsignedShort (self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"] = $2;"
        js_setTestEnforceRangeUnsignedShort ::
        TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
setTestEnforceRangeUnsignedShort ::
                                 (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedShort self val
  = liftIO (js_setTestEnforceRangeUnsignedShort (self) val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"]"
        js_getTestEnforceRangeUnsignedShort :: TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
getTestEnforceRangeUnsignedShort ::
                                 (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedShort self
  = liftIO (js_getTestEnforceRangeUnsignedShort (self))