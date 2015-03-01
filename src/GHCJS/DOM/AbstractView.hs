{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AbstractView
       (js_getDocument, getDocument, js_getStyleMedia, getStyleMedia,
        AbstractView, castToAbstractView, gTypeAbstractView)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"document\"]" js_getDocument
        :: JSRef AbstractView -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocument :: (MonadIO m) => AbstractView -> m (Maybe Document)
getDocument self
  = liftIO ((js_getDocument (unAbstractView self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        js_getStyleMedia :: JSRef AbstractView -> IO (JSRef StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMedia ::
              (MonadIO m) => AbstractView -> m (Maybe StyleMedia)
getStyleMedia self
  = liftIO ((js_getStyleMedia (unAbstractView self)) >>= fromJSRef)
#else
module GHCJS.DOM.AbstractView (
  ) where
#endif
