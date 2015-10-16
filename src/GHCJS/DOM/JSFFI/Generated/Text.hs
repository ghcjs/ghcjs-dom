{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Text
       (js_newText, newText, js_splitText, splitText, js_replaceWholeText,
        replaceWholeText, js_getWholeText, getWholeText, Text, castToText,
        gTypeText, IsText, toText)
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
 
foreign import javascript unsafe "new window[\"Text\"]($1)"
        js_newText :: JSString -> IO Text

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadIO m, ToJSString data') => data' -> m Text
newText data' = liftIO (js_newText (toJSString data'))
 
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        js_splitText :: Text -> Word -> IO (Nullable Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText ::
          (MonadIO m, IsText self) => self -> Word -> m (Maybe Text)
splitText self offset
  = liftIO (nullableToMaybe <$> (js_splitText (toText self) offset))
 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        js_replaceWholeText :: Text -> JSString -> IO (Nullable Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText ::
                 (MonadIO m, IsText self, ToJSString content) =>
                   self -> content -> m (Maybe Text)
replaceWholeText self content
  = liftIO
      (nullableToMaybe <$>
         (js_replaceWholeText (toText self) (toJSString content)))
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        js_getWholeText :: Text -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadIO m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftIO (fromJSString <$> (js_getWholeText (toText self)))