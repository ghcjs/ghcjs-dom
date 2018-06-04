{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SiteBoundCredential
       (js_getName, getName, js_getIconURL, getIconURL,
        SiteBoundCredential(..), gTypeSiteBoundCredential,
        IsSiteBoundCredential, toSiteBoundCredential)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        SiteBoundCredential -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SiteBoundCredential.name Mozilla SiteBoundCredential.name documentation> 
getName ::
        (MonadIO m, IsSiteBoundCredential self, FromJSString result) =>
          self -> m result
getName self
  = liftIO
      (fromJSString <$> (js_getName (toSiteBoundCredential self)))
 
foreign import javascript unsafe "$1[\"iconURL\"]" js_getIconURL ::
        SiteBoundCredential -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SiteBoundCredential.iconURL Mozilla SiteBoundCredential.iconURL documentation> 
getIconURL ::
           (MonadIO m, IsSiteBoundCredential self, FromJSString result) =>
             self -> m result
getIconURL self
  = liftIO
      (fromJSString <$> (js_getIconURL (toSiteBoundCredential self)))