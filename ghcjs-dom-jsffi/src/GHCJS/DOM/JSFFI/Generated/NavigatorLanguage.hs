{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorLanguage
       (js_getLanguage, getLanguage, js_getLanguages, getLanguages,
        NavigatorLanguage(..), gTypeNavigatorLanguage, IsNavigatorLanguage,
        toNavigatorLanguage)
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
 
foreign import javascript unsafe "$1[\"language\"]" js_getLanguage
        :: NavigatorLanguage -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorLanguage.language Mozilla NavigatorLanguage.language documentation> 
getLanguage ::
            (MonadIO m, IsNavigatorLanguage self, FromJSString result) =>
              self -> m result
getLanguage self
  = liftIO
      (fromJSString <$> (js_getLanguage (toNavigatorLanguage self)))
 
foreign import javascript unsafe "$1[\"languages\"]"
        js_getLanguages :: NavigatorLanguage -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorLanguage.languages Mozilla NavigatorLanguage.languages documentation> 
getLanguages ::
             (MonadIO m, IsNavigatorLanguage self, FromJSString result) =>
               self -> m [result]
getLanguages self
  = liftIO
      ((js_getLanguages (toNavigatorLanguage self)) >>=
         fromJSValUnchecked)