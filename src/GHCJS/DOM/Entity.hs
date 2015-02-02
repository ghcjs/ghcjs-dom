{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Entity
       (ghcjs_dom_entity_get_public_id, entityGetPublicId,
        ghcjs_dom_entity_get_system_id, entityGetSystemId,
        ghcjs_dom_entity_get_notation_name, entityGetNotationName, Entity,
        IsEntity, castToEntity, gTypeEntity, toEntity)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_entity_get_public_id :: JSRef Entity -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.publicId Mozilla Entity.publicId documentation> 
entityGetPublicId ::
                  (IsEntity self, FromJSString result) => self -> IO result
entityGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_entity_get_public_id (unEntity (toEntity self)))
 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_entity_get_system_id :: JSRef Entity -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.systemId Mozilla Entity.systemId documentation> 
entityGetSystemId ::
                  (IsEntity self, FromJSString result) => self -> IO result
entityGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_entity_get_system_id (unEntity (toEntity self)))
 
foreign import javascript unsafe "$1[\"notationName\"]"
        ghcjs_dom_entity_get_notation_name :: JSRef Entity -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.notationName Mozilla Entity.notationName documentation> 
entityGetNotationName ::
                      (IsEntity self, FromJSString result) => self -> IO result
entityGetNotationName self
  = fromJSString <$>
      (ghcjs_dom_entity_get_notation_name (unEntity (toEntity self)))
#else
module GHCJS.DOM.Entity (
  ) where
#endif
