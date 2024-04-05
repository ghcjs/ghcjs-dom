{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XPathExpression
       (js_evaluate, evaluate, evaluate_, XPathExpression(..),
        gTypeXPathExpression)
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
 
foreign import javascript safe "$1[\"evaluate\"]($2, $3, $4)"
        js_evaluate ::
        XPathExpression ->
          Optional Node ->
            Optional Word -> Optional XPathResult -> IO XPathResult

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate ::
         (MonadIO m, IsNode contextNode) =>
           XPathExpression ->
             Maybe contextNode ->
               Maybe Word -> Maybe XPathResult -> m XPathResult
evaluate self contextNode type' inResult
  = liftIO
      (js_evaluate self (maybeToOptional (fmap toNode contextNode))
         (maybeToOptional type')
         (maybeToOptional inResult))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate_ ::
          (MonadIO m, IsNode contextNode) =>
            XPathExpression ->
              Maybe contextNode -> Maybe Word -> Maybe XPathResult -> m ()
evaluate_ self contextNode type' inResult
  = liftIO
      (void
         (js_evaluate self (maybeToOptional (fmap toNode contextNode))
            (maybeToOptional type')
            (maybeToOptional inResult)))