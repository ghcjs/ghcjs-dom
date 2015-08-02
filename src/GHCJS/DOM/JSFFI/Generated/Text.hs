{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Text
       (js_newText, newText, js_splitText, splitText, js_replaceWholeText,
        replaceWholeText, js_getWholeText, getWholeText, Text, castToText,
        gTypeText, IsText, toText)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"Text\"]($1)"
        js_newText :: JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadIO m, ToJSString data') => data' -> m Text
newText data'
  = liftIO (js_newText (toJSString data') >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        js_splitText :: JSRef Text -> Word -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText ::
          (MonadIO m, IsText self) => self -> Word -> m (Maybe Text)
splitText self offset
  = liftIO
      ((js_splitText (unText (toText self)) offset) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        js_replaceWholeText :: JSRef Text -> JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText ::
                 (MonadIO m, IsText self, ToJSString content) =>
                   self -> content -> m (Maybe Text)
replaceWholeText self content
  = liftIO
      ((js_replaceWholeText (unText (toText self)) (toJSString content))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        js_getWholeText :: JSRef Text -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadIO m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftIO
      (fromJSString <$> (js_getWholeText (unText (toText self))))