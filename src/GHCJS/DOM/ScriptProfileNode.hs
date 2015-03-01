{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ScriptProfileNode
       (js_children, children, js_getId, getId, js_getFunctionName,
        getFunctionName, js_getUrl, getUrl, js_getLineNumber,
        getLineNumber, js_getColumnNumber, getColumnNumber,
        ScriptProfileNode, castToScriptProfileNode, gTypeScriptProfileNode)
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

 
foreign import javascript unsafe "$1[\"children\"]()" js_children
        :: JSRef ScriptProfileNode -> IO (JSRef [Maybe ScriptProfileNode])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.children Mozilla ScriptProfileNode.children documentation> 
children ::
         (MonadIO m) => ScriptProfileNode -> m [Maybe ScriptProfileNode]
children self
  = liftIO
      ((js_children (unScriptProfileNode self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.id Mozilla ScriptProfileNode.id documentation> 
getId :: (MonadIO m) => ScriptProfileNode -> m Word
getId self = liftIO (js_getId (unScriptProfileNode self))
 
foreign import javascript unsafe "$1[\"functionName\"]"
        js_getFunctionName :: JSRef ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.functionName Mozilla ScriptProfileNode.functionName documentation> 
getFunctionName ::
                (MonadIO m, FromJSString result) => ScriptProfileNode -> m result
getFunctionName self
  = liftIO
      (fromJSString <$> (js_getFunctionName (unScriptProfileNode self)))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        JSRef ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.url Mozilla ScriptProfileNode.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => ScriptProfileNode -> m result
getUrl self
  = liftIO (fromJSString <$> (js_getUrl (unScriptProfileNode self)))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        js_getLineNumber :: JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.lineNumber Mozilla ScriptProfileNode.lineNumber documentation> 
getLineNumber :: (MonadIO m) => ScriptProfileNode -> m Word
getLineNumber self
  = liftIO (js_getLineNumber (unScriptProfileNode self))
 
foreign import javascript unsafe "$1[\"columnNumber\"]"
        js_getColumnNumber :: JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.columnNumber Mozilla ScriptProfileNode.columnNumber documentation> 
getColumnNumber :: (MonadIO m) => ScriptProfileNode -> m Word
getColumnNumber self
  = liftIO (js_getColumnNumber (unScriptProfileNode self))
#else
module GHCJS.DOM.ScriptProfileNode (
  ) where
#endif
