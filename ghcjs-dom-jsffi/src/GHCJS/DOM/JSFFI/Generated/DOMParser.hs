{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMParser
       (js_newDOMParser, newDOMParser, js_parseFromString,
        parseFromString, parseFromString_, parseFromStringUnchecked,
        DOMParser, castToDOMParser, gTypeDOMParser)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"DOMParser\"]()"
        js_newDOMParser :: IO DOMParser

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation> 
newDOMParser :: (MonadIO m) => m DOMParser
newDOMParser = liftIO (js_newDOMParser)
 
foreign import javascript unsafe "$1[\"parseFromString\"]($2, $3)"
        js_parseFromString ::
        DOMParser -> JSString -> JSString -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromString ::
                (MonadIO m, ToJSString str, ToJSString contentType) =>
                  DOMParser -> str -> contentType -> m (Maybe Document)
parseFromString self str contentType
  = liftIO
      (nullableToMaybe <$>
         (js_parseFromString (self) (toJSString str)
            (toJSString contentType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromString_ ::
                 (MonadIO m, ToJSString str, ToJSString contentType) =>
                   DOMParser -> str -> contentType -> m ()
parseFromString_ self str contentType
  = liftIO
      (void
         (js_parseFromString (self) (toJSString str)
            (toJSString contentType)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromStringUnchecked ::
                         (MonadIO m, ToJSString str, ToJSString contentType) =>
                           DOMParser -> str -> contentType -> m Document
parseFromStringUnchecked self str contentType
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_parseFromString (self) (toJSString str)
            (toJSString contentType)))