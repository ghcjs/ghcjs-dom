{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTitleElement
       (js_setText, setText, js_getText, getText, HTMLTitleElement,
        castToHTMLTitleElement, gTypeHTMLTitleElement)
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
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLTitleElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) =>
          HTMLTitleElement -> Maybe val -> m ()
setText self val = liftIO (js_setText (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLTitleElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) =>
          HTMLTitleElement -> m (Maybe result)
getText self = liftIO (fromMaybeJSString <$> (js_getText (self)))