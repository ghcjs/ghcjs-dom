{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AbstractView
       (js_getDocument, getDocument, js_getStyleMedia, getStyleMedia,
        AbstractView, castToAbstractView, gTypeAbstractView)
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
 
foreign import javascript unsafe "$1[\"document\"]" js_getDocument
        :: AbstractView -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocument :: (MonadIO m) => AbstractView -> m (Maybe Document)
getDocument self
  = liftIO (nullableToMaybe <$> (js_getDocument (self)))
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        js_getStyleMedia :: AbstractView -> IO (Nullable StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMedia ::
              (MonadIO m) => AbstractView -> m (Maybe StyleMedia)
getStyleMedia self
  = liftIO (nullableToMaybe <$> (js_getStyleMedia (self)))