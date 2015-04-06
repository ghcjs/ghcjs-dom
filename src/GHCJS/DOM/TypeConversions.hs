{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TypeConversions
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"testLong\"] = $2;"
        js_setTestLong :: JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
setTestLong :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestLong self val
  = liftIO (js_setTestLong (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testLong\"]" js_getTestLong
        :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
getTestLong :: (MonadIO m) => TypeConversions -> m Int
getTestLong self = liftIO (js_getTestLong (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLong\"] = $2;" js_setTestEnforceRangeLong ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
setTestEnforceRangeLong ::
                        (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeLong self val
  = liftIO (js_setTestEnforceRangeLong (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeLong\"]"
        js_getTestEnforceRangeLong :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
getTestEnforceRangeLong :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeLong self
  = liftIO (js_getTestEnforceRangeLong (unTypeConversions self))
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"] = $2;"
        js_setTestUnsignedLong :: JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
setTestUnsignedLong ::
                    (MonadIO m) => TypeConversions -> Word -> m ()
setTestUnsignedLong self val
  = liftIO (js_setTestUnsignedLong (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testUnsignedLong\"]"
        js_getTestUnsignedLong :: JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
getTestUnsignedLong :: (MonadIO m) => TypeConversions -> m Word
getTestUnsignedLong self
  = liftIO (js_getTestUnsignedLong (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"] = $2;"
        js_setTestEnforceRangeUnsignedLong ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
setTestEnforceRangeUnsignedLong ::
                                (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedLong self val
  = liftIO
      (js_setTestEnforceRangeUnsignedLong (unTypeConversions self) val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLong\"]"
        js_getTestEnforceRangeUnsignedLong ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
getTestEnforceRangeUnsignedLong ::
                                (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedLong self
  = liftIO
      (js_getTestEnforceRangeUnsignedLong (unTypeConversions self))
 
foreign import javascript unsafe "$1[\"testLongLong\"] = $2;"
        js_setTestLongLong :: JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
setTestLongLong :: (MonadIO m) => TypeConversions -> Int64 -> m ()
setTestLongLong self val
  = liftIO
      (js_setTestLongLong (unTypeConversions self) (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testLongLong\"]"
        js_getTestLongLong :: JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
getTestLongLong :: (MonadIO m) => TypeConversions -> m Int64
getTestLongLong self
  = liftIO (round <$> (js_getTestLongLong (unTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeLongLong\"] = $2;"
        js_setTestEnforceRangeLongLong ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
setTestEnforceRangeLongLong ::
                            (MonadIO m) => TypeConversions -> Int64 -> m ()
setTestEnforceRangeLongLong self val
  = liftIO
      (js_setTestEnforceRangeLongLong (unTypeConversions self)
         (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testEnforceRangeLongLong\"]"
        js_getTestEnforceRangeLongLong ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
getTestEnforceRangeLongLong ::
                            (MonadIO m) => TypeConversions -> m Int64
getTestEnforceRangeLongLong self
  = liftIO
      (round <$>
         (js_getTestEnforceRangeLongLong (unTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testUnsignedLongLong\"] = $2;" js_setTestUnsignedLongLong ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
setTestUnsignedLongLong ::
                        (MonadIO m) => TypeConversions -> Word64 -> m ()
setTestUnsignedLongLong self val
  = liftIO
      (js_setTestUnsignedLongLong (unTypeConversions self)
         (fromIntegral val))
 
foreign import javascript unsafe "$1[\"testUnsignedLongLong\"]"
        js_getTestUnsignedLongLong :: JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
getTestUnsignedLongLong ::
                        (MonadIO m) => TypeConversions -> m Word64
getTestUnsignedLongLong self
  = liftIO
      (round <$> (js_getTestUnsignedLongLong (unTypeConversions self)))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"] = $2;"
        js_setTestEnforceRangeUnsignedLongLong ::
        JSRef TypeConversions -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
setTestEnforceRangeUnsignedLongLong ::
                                    (MonadIO m) => TypeConversions -> Word64 -> m ()
setTestEnforceRangeUnsignedLongLong self val
  = liftIO
      (js_setTestEnforceRangeUnsignedLongLong (unTypeConversions self)
         (fromIntegral val))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedLongLong\"]"
        js_getTestEnforceRangeUnsignedLongLong ::
        JSRef TypeConversions -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
getTestEnforceRangeUnsignedLongLong ::
                                    (MonadIO m) => TypeConversions -> m Word64
getTestEnforceRangeUnsignedLongLong self
  = liftIO
      (round <$>
         (js_getTestEnforceRangeUnsignedLongLong (unTypeConversions self)))
 
foreign import javascript unsafe "$1[\"testByte\"] = $2;"
        js_setTestByte :: JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
setTestByte :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestByte self val
  = liftIO (js_setTestByte (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testByte\"]" js_getTestByte
        :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
getTestByte :: (MonadIO m) => TypeConversions -> m Int
getTestByte self = liftIO (js_getTestByte (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeByte\"] = $2;" js_setTestEnforceRangeByte ::
        JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
setTestEnforceRangeByte ::
                        (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeByte self val
  = liftIO (js_setTestEnforceRangeByte (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeByte\"]"
        js_getTestEnforceRangeByte :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
getTestEnforceRangeByte :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeByte self
  = liftIO (js_getTestEnforceRangeByte (unTypeConversions self))
 
foreign import javascript unsafe "$1[\"testOctet\"] = $2;"
        js_setTestOctet :: JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
setTestOctet :: (MonadIO m) => TypeConversions -> Word -> m ()
setTestOctet self val
  = liftIO (js_setTestOctet (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testOctet\"]"
        js_getTestOctet :: JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
getTestOctet :: (MonadIO m) => TypeConversions -> m Word
getTestOctet self
  = liftIO (js_getTestOctet (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeOctet\"] = $2;" js_setTestEnforceRangeOctet
        :: JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
setTestEnforceRangeOctet ::
                         (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeOctet self val
  = liftIO (js_setTestEnforceRangeOctet (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeOctet\"]"
        js_getTestEnforceRangeOctet :: JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
getTestEnforceRangeOctet ::
                         (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeOctet self
  = liftIO (js_getTestEnforceRangeOctet (unTypeConversions self))
 
foreign import javascript unsafe "$1[\"testShort\"] = $2;"
        js_setTestShort :: JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
setTestShort :: (MonadIO m) => TypeConversions -> Int -> m ()
setTestShort self val
  = liftIO (js_setTestShort (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testShort\"]"
        js_getTestShort :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
getTestShort :: (MonadIO m) => TypeConversions -> m Int
getTestShort self
  = liftIO (js_getTestShort (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeShort\"] = $2;" js_setTestEnforceRangeShort
        :: JSRef TypeConversions -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
setTestEnforceRangeShort ::
                         (MonadIO m) => TypeConversions -> Int -> m ()
setTestEnforceRangeShort self val
  = liftIO (js_setTestEnforceRangeShort (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testEnforceRangeShort\"]"
        js_getTestEnforceRangeShort :: JSRef TypeConversions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
getTestEnforceRangeShort :: (MonadIO m) => TypeConversions -> m Int
getTestEnforceRangeShort self
  = liftIO (js_getTestEnforceRangeShort (unTypeConversions self))
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"] = $2;"
        js_setTestUnsignedShort :: JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
setTestUnsignedShort ::
                     (MonadIO m) => TypeConversions -> Word -> m ()
setTestUnsignedShort self val
  = liftIO (js_setTestUnsignedShort (unTypeConversions self) val)
 
foreign import javascript unsafe "$1[\"testUnsignedShort\"]"
        js_getTestUnsignedShort :: JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
getTestUnsignedShort :: (MonadIO m) => TypeConversions -> m Word
getTestUnsignedShort self
  = liftIO (js_getTestUnsignedShort (unTypeConversions self))
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"] = $2;"
        js_setTestEnforceRangeUnsignedShort ::
        JSRef TypeConversions -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
setTestEnforceRangeUnsignedShort ::
                                 (MonadIO m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedShort self val
  = liftIO
      (js_setTestEnforceRangeUnsignedShort (unTypeConversions self) val)
 
foreign import javascript unsafe
        "$1[\"testEnforceRangeUnsignedShort\"]"
        js_getTestEnforceRangeUnsignedShort ::
        JSRef TypeConversions -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
getTestEnforceRangeUnsignedShort ::
                                 (MonadIO m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedShort self
  = liftIO
      (js_getTestEnforceRangeUnsignedShort (unTypeConversions self))
#else
module GHCJS.DOM.TypeConversions (
  ) where
#endif
