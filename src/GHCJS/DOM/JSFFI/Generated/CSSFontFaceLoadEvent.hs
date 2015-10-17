{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSFontFaceLoadEvent
       (js_getFontface, getFontface, js_getError, getError,
        CSSFontFaceLoadEvent, castToCSSFontFaceLoadEvent,
        gTypeCSSFontFaceLoadEvent)
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
 
foreign import javascript unsafe "$1[\"fontface\"]" js_getFontface
        :: CSSFontFaceLoadEvent -> IO (Nullable CSSFontFaceRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontface ::
            (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe CSSFontFaceRule)
getFontface self
  = liftIO (nullableToMaybe <$> (js_getFontface (self)))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        CSSFontFaceLoadEvent -> IO (Nullable DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getError ::
         (MonadIO m) => CSSFontFaceLoadEvent -> m (Maybe DOMError)
getError self = liftIO (nullableToMaybe <$> (js_getError (self)))