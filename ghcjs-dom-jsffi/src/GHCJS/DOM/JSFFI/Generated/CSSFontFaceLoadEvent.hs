{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSFontFaceLoadEvent
       (js_newCSSFontFaceLoadEvent, newCSSFontFaceLoadEvent,
        js_getFontface, getFontface, getFontfaceUnsafe,
        getFontfaceUnchecked, js_getError, getError, getErrorUnsafe,
        getErrorUnchecked, CSSFontFaceLoadEvent(..),
        gTypeCSSFontFaceLoadEvent)
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
 
foreign import javascript unsafe
        "new window[\"CSSFontFaceLoadEvent\"]($1,\n$2)"
        js_newCSSFontFaceLoadEvent ::
        JSString ->
          Optional CSSFontFaceLoadEventInit -> IO CSSFontFaceLoadEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent Mozilla CSSFontFaceLoadEvent documentation> 
newCSSFontFaceLoadEvent ::
                        (MonadIO m, ToJSString type') =>
                          type' -> Maybe CSSFontFaceLoadEventInit -> m CSSFontFaceLoadEvent
newCSSFontFaceLoadEvent type' eventInit
  = liftIO
      (js_newCSSFontFaceLoadEvent (toJSString type')
         (maybeToOptional eventInit))
 
foreign import javascript unsafe "$1[\"fontface\"]" js_getFontface
        :: CSSFontFaceLoadEvent -> IO (Nullable CSSFontFaceRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontface ::
            (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe CSSFontFaceRule)
getFontface self
  = liftIO (nullableToMaybe <$> (js_getFontface self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontfaceUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    CSSFontFaceLoadEvent -> m CSSFontFaceRule
getFontfaceUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFontface self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontfaceUnchecked ::
                     (MonadIO m) => CSSFontFaceLoadEvent -> m CSSFontFaceRule
getFontfaceUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFontface self))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        CSSFontFaceLoadEvent -> IO (Nullable DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getError ::
         (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe DOMError)
getError self = liftIO (nullableToMaybe <$> (js_getError self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getErrorUnsafe ::
               (MonadIO m, HasCallStack) => CSSFontFaceLoadEvent -> m DOMError
getErrorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getError self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getErrorUnchecked ::
                  (MonadIO m) => CSSFontFaceLoadEvent -> m DOMError
getErrorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getError self))