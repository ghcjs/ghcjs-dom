{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Text
       (js_newText, newText, js_splitText, splitText, splitText_,
        js_getWholeText, getWholeText, Text(..), gTypeText, IsText, toText)
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
 
foreign import javascript unsafe "new window[\"Text\"]($1)"
        js_newText :: Optional JSString -> IO Text

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadIO m, ToJSString data') => Maybe data' -> m Text
newText data' = liftIO (js_newText (toOptionalJSString data'))
 
foreign import javascript safe "$1[\"splitText\"]($2)" js_splitText
        :: Text -> Word -> IO Text

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText :: (MonadIO m, IsText self) => self -> Word -> m Text
splitText self offset = liftIO (js_splitText (toText self) offset)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText_ :: (MonadIO m, IsText self) => self -> Word -> m ()
splitText_ self offset
  = liftIO (void (js_splitText (toText self) offset))
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        js_getWholeText :: Text -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadIO m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftIO (fromJSString <$> (js_getWholeText (toText self)))