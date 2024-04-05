{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLCanvasElement
       (js_getContext, getContext, getContext_, getContextUnsafe,
        getContextUnchecked, js_toDataURL, toDataURL, toDataURL_,
        js_toBlob', toBlob', js_captureStream, captureStream,
        captureStream_, js_setWidth, setWidth, js_getWidth, getWidth,
        js_setHeight, setHeight, js_getHeight, getHeight,
        HTMLCanvasElement(..), gTypeHTMLCanvasElement)
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
 
foreign import javascript unsafe "$1[\"getContext\"]($2, $3)"
        js_getContext ::
        HTMLCanvasElement ->
          JSString -> JSVal -> IO (Nullable RenderingContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext ::
           (MonadIO m, ToJSString contextId, ToJSVal arguments) =>
             HTMLCanvasElement ->
               contextId -> [arguments] -> m (Maybe RenderingContext)
getContext self contextId arguments
  = liftIO
      (nullableToMaybe <$>
         (toJSVal arguments >>=
            \ arguments' ->
              js_getContext self (toJSString contextId) arguments'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext_ ::
            (MonadIO m, ToJSString contextId, ToJSVal arguments) =>
              HTMLCanvasElement -> contextId -> [arguments] -> m ()
getContext_ self contextId arguments
  = liftIO
      (void
         (toJSVal arguments >>=
            \ arguments' ->
              js_getContext self (toJSString contextId) arguments'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContextUnsafe ::
                 (MonadIO m, ToJSString contextId, ToJSVal arguments,
                  HasCallStack) =>
                   HTMLCanvasElement -> contextId -> [arguments] -> m RenderingContext
getContextUnsafe self contextId arguments
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal arguments >>=
             \ arguments' ->
               js_getContext self (toJSString contextId) arguments'))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContextUnchecked ::
                    (MonadIO m, ToJSString contextId, ToJSVal arguments) =>
                      HTMLCanvasElement -> contextId -> [arguments] -> m RenderingContext
getContextUnchecked self contextId arguments
  = liftIO
      (fromJust . nullableToMaybe <$>
         (toJSVal arguments >>=
            \ arguments' ->
              js_getContext self (toJSString contextId) arguments'))
 
foreign import javascript safe "$1[\"toDataURL\"]($2)" js_toDataURL
        :: HTMLCanvasElement -> Optional JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL ::
          (MonadIO m, ToJSString type', FromJSString result) =>
            HTMLCanvasElement -> Maybe type' -> m result
toDataURL self type'
  = liftIO
      (fromJSString <$> (js_toDataURL self (toOptionalJSString type')))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL_ ::
           (MonadIO m, ToJSString type') =>
             HTMLCanvasElement -> Maybe type' -> m ()
toDataURL_ self type'
  = liftIO (void (js_toDataURL self (toOptionalJSString type')))
 
foreign import javascript safe "$1[\"toBlob\"]($2, $3, $4)"
        js_toBlob' ::
        HTMLCanvasElement ->
          BlobCallback -> Optional JSString -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toBlob Mozilla HTMLCanvasElement.toBlob documentation> 
toBlob' ::
        (MonadIO m, ToJSString type', ToJSVal quality) =>
          HTMLCanvasElement ->
            BlobCallback -> Maybe type' -> Maybe quality -> m ()
toBlob' self callback type' quality
  = liftIO
      (mapM toJSVal quality >>=
         \ quality' ->
           js_toBlob' self callback (toOptionalJSString type')
             (maybeToOptional quality'))
 
foreign import javascript safe "$1[\"captureStream\"]($2)"
        js_captureStream ::
        HTMLCanvasElement -> Optional Double -> IO MediaStream

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.captureStream Mozilla HTMLCanvasElement.captureStream documentation> 
captureStream ::
              (MonadIO m) => HTMLCanvasElement -> Maybe Double -> m MediaStream
captureStream self frameRequestRate
  = liftIO (js_captureStream self (maybeToOptional frameRequestRate))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.captureStream Mozilla HTMLCanvasElement.captureStream documentation> 
captureStream_ ::
               (MonadIO m) => HTMLCanvasElement -> Maybe Double -> m ()
captureStream_ self frameRequestRate
  = liftIO
      (void (js_captureStream self (maybeToOptional frameRequestRate)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLCanvasElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
setWidth :: (MonadIO m) => HTMLCanvasElement -> Word -> m ()
setWidth self val = liftIO (js_setWidth self val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLCanvasElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
getWidth :: (MonadIO m) => HTMLCanvasElement -> m Word
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: HTMLCanvasElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
setHeight :: (MonadIO m) => HTMLCanvasElement -> Word -> m ()
setHeight self val = liftIO (js_setHeight self val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLCanvasElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
getHeight :: (MonadIO m) => HTMLCanvasElement -> m Word
getHeight self = liftIO (js_getHeight self)