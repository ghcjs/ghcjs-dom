{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Window (
    module Generated
  , js_openDatabase
  , openDatabase
) where

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Types (JSString)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.Generated.Window as Generated hiding (js_openDatabase, openDatabase)

foreign import javascript interruptible
        "(function(db) { if(db) $c(db) })($1[\"openDatabase\"]($2, $3, $4, $5, function(d) { $c(d) }));" js_openDatabase ::
        Window -> JSString -> JSString -> JSString -> Word -> IO Database

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation>
openDatabase :: (MonadIO m, ToJSString name, ToJSString version, ToJSString displayName) =>
                Window -> name -> version -> displayName -> Word -> m Database
openDatabase self name version displayName estimatedSize = liftIO $
    js_openDatabase
        self
        (toJSString name)
        (toJSString version)
        (toJSString displayName)
        estimatedSize
