{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTemplateElement
       (js_getContent, getContent, HTMLTemplateElement,
        castToHTMLTemplateElement, gTypeHTMLTemplateElement)
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
 
foreign import javascript unsafe "$1[\"content\"]" js_getContent ::
        HTMLTemplateElement -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement.content Mozilla HTMLTemplateElement.content documentation> 
getContent ::
           (MonadIO m) => HTMLTemplateElement -> m (Maybe DocumentFragment)
getContent self
  = liftIO (nullableToMaybe <$> (js_getContent (self)))