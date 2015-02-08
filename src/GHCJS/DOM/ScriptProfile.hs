{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ScriptProfile
       (ghcjs_dom_script_profile_get_title, scriptProfileGetTitle,
        ghcjs_dom_script_profile_get_uid, scriptProfileGetUid,
        ghcjs_dom_script_profile_get_root_node, scriptProfileGetRootNode,
        ScriptProfile, IsScriptProfile, castToScriptProfile,
        gTypeScriptProfile, toScriptProfile)
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

 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_script_profile_get_title ::
        JSRef ScriptProfile -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.title Mozilla ScriptProfile.title documentation> 
scriptProfileGetTitle ::
                      (MonadIO m, IsScriptProfile self, FromJSString result) =>
                        self -> m result
scriptProfileGetTitle self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_script_profile_get_title
            (unScriptProfile (toScriptProfile self))))
 
foreign import javascript unsafe "$1[\"uid\"]"
        ghcjs_dom_script_profile_get_uid :: JSRef ScriptProfile -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.uid Mozilla ScriptProfile.uid documentation> 
scriptProfileGetUid ::
                    (MonadIO m, IsScriptProfile self) => self -> m Word
scriptProfileGetUid self
  = liftIO
      (ghcjs_dom_script_profile_get_uid
         (unScriptProfile (toScriptProfile self)))
 
foreign import javascript unsafe "$1[\"rootNode\"]"
        ghcjs_dom_script_profile_get_root_node ::
        JSRef ScriptProfile -> IO (JSRef ScriptProfileNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
scriptProfileGetRootNode ::
                         (MonadIO m, IsScriptProfile self) =>
                           self -> m (Maybe ScriptProfileNode)
scriptProfileGetRootNode self
  = liftIO
      ((ghcjs_dom_script_profile_get_root_node
          (unScriptProfile (toScriptProfile self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.ScriptProfile (
  ) where
#endif
