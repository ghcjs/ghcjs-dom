{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ScriptProfileNode
       (js_children, children, js_getId, getId, js_getFunctionName,
        getFunctionName, js_getUrl, getUrl, js_getLineNumber,
        getLineNumber, js_getColumnNumber, getColumnNumber,
        ScriptProfileNode, castToScriptProfileNode, gTypeScriptProfileNode)
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
 
foreign import javascript unsafe "$1[\"children\"]()" js_children
        :: ScriptProfileNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.children Mozilla ScriptProfileNode.children documentation> 
children ::
         (MonadIO m) => ScriptProfileNode -> m [Maybe ScriptProfileNode]
children self
  = liftIO ((js_children (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.id Mozilla ScriptProfileNode.id documentation> 
getId :: (MonadIO m) => ScriptProfileNode -> m Word
getId self = liftIO (js_getId (self))
 
foreign import javascript unsafe "$1[\"functionName\"]"
        js_getFunctionName :: ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.functionName Mozilla ScriptProfileNode.functionName documentation> 
getFunctionName ::
                (MonadIO m, FromJSString result) => ScriptProfileNode -> m result
getFunctionName self
  = liftIO (fromJSString <$> (js_getFunctionName (self)))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.url Mozilla ScriptProfileNode.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => ScriptProfileNode -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl (self)))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        js_getLineNumber :: ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.lineNumber Mozilla ScriptProfileNode.lineNumber documentation> 
getLineNumber :: (MonadIO m) => ScriptProfileNode -> m Word
getLineNumber self = liftIO (js_getLineNumber (self))
 
foreign import javascript unsafe "$1[\"columnNumber\"]"
        js_getColumnNumber :: ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.columnNumber Mozilla ScriptProfileNode.columnNumber documentation> 
getColumnNumber :: (MonadIO m) => ScriptProfileNode -> m Word
getColumnNumber self = liftIO (js_getColumnNumber (self))