{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ScriptProfileNode
       (ghcjs_dom_script_profile_node_children, scriptProfileNodeChildren,
        ghcjs_dom_script_profile_node_get_id, scriptProfileNodeGetId,
        ghcjs_dom_script_profile_node_get_function_name,
        scriptProfileNodeGetFunctionName,
        ghcjs_dom_script_profile_node_get_url, scriptProfileNodeGetUrl,
        ghcjs_dom_script_profile_node_get_line_number,
        scriptProfileNodeGetLineNumber,
        ghcjs_dom_script_profile_node_get_column_number,
        scriptProfileNodeGetColumnNumber, ScriptProfileNode,
        IsScriptProfileNode, castToScriptProfileNode,
        gTypeScriptProfileNode, toScriptProfileNode)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"children\"]()"
        ghcjs_dom_script_profile_node_children ::
        JSRef ScriptProfileNode -> IO (JSRef [Maybe ScriptProfileNode])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.children Mozilla ScriptProfileNode.children documentation> 
scriptProfileNodeChildren ::
                          (MonadIO m, IsScriptProfileNode self) =>
                            self -> m [Maybe ScriptProfileNode]
scriptProfileNodeChildren self
  = liftIO
      ((ghcjs_dom_script_profile_node_children
          (unScriptProfileNode (toScriptProfileNode self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_script_profile_node_get_id ::
        JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.id Mozilla ScriptProfileNode.id documentation> 
scriptProfileNodeGetId ::
                       (MonadIO m, IsScriptProfileNode self) => self -> m Word
scriptProfileNodeGetId self
  = liftIO
      (ghcjs_dom_script_profile_node_get_id
         (unScriptProfileNode (toScriptProfileNode self)))
 
foreign import javascript unsafe "$1[\"functionName\"]"
        ghcjs_dom_script_profile_node_get_function_name ::
        JSRef ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.functionName Mozilla ScriptProfileNode.functionName documentation> 
scriptProfileNodeGetFunctionName ::
                                 (MonadIO m, IsScriptProfileNode self, FromJSString result) =>
                                   self -> m result
scriptProfileNodeGetFunctionName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_script_profile_node_get_function_name
            (unScriptProfileNode (toScriptProfileNode self))))
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_script_profile_node_get_url ::
        JSRef ScriptProfileNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.url Mozilla ScriptProfileNode.url documentation> 
scriptProfileNodeGetUrl ::
                        (MonadIO m, IsScriptProfileNode self, FromJSString result) =>
                          self -> m result
scriptProfileNodeGetUrl self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_script_profile_node_get_url
            (unScriptProfileNode (toScriptProfileNode self))))
 
foreign import javascript unsafe "$1[\"lineNumber\"]"
        ghcjs_dom_script_profile_node_get_line_number ::
        JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.lineNumber Mozilla ScriptProfileNode.lineNumber documentation> 
scriptProfileNodeGetLineNumber ::
                               (MonadIO m, IsScriptProfileNode self) => self -> m Word
scriptProfileNodeGetLineNumber self
  = liftIO
      (ghcjs_dom_script_profile_node_get_line_number
         (unScriptProfileNode (toScriptProfileNode self)))
 
foreign import javascript unsafe "$1[\"columnNumber\"]"
        ghcjs_dom_script_profile_node_get_column_number ::
        JSRef ScriptProfileNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.columnNumber Mozilla ScriptProfileNode.columnNumber documentation> 
scriptProfileNodeGetColumnNumber ::
                                 (MonadIO m, IsScriptProfileNode self) => self -> m Word
scriptProfileNodeGetColumnNumber self
  = liftIO
      (ghcjs_dom_script_profile_node_get_column_number
         (unScriptProfileNode (toScriptProfileNode self)))
#else
module GHCJS.DOM.ScriptProfileNode (
  ) where
#endif
