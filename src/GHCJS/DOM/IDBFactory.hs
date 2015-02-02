{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBFactory
       (ghcjs_dom_idb_factory_open, idbFactoryOpen,
        ghcjs_dom_idb_factory_delete_database, idbFactoryDeleteDatabase,
        ghcjs_dom_idb_factory_cmp, idbFactoryCmp, IDBFactory, IsIDBFactory,
        castToIDBFactory, gTypeIDBFactory, toIDBFactory)
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

 
foreign import javascript unsafe "$1[\"open\"]($2, $3)"
        ghcjs_dom_idb_factory_open ::
        JSRef IDBFactory ->
          JSString -> Double -> IO (JSRef IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
idbFactoryOpen ::
               (IsIDBFactory self, ToJSString name) =>
                 self -> name -> Word64 -> IO (Maybe IDBOpenDBRequest)
idbFactoryOpen self name version
  = (ghcjs_dom_idb_factory_open (unIDBFactory (toIDBFactory self))
       (toJSString name)
       (fromIntegral version))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteDatabase\"]($2)"
        ghcjs_dom_idb_factory_delete_database ::
        JSRef IDBFactory -> JSString -> IO (JSRef IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
idbFactoryDeleteDatabase ::
                         (IsIDBFactory self, ToJSString name) =>
                           self -> name -> IO (Maybe IDBOpenDBRequest)
idbFactoryDeleteDatabase self name
  = (ghcjs_dom_idb_factory_delete_database
       (unIDBFactory (toIDBFactory self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cmp\"]($2, $3)"
        ghcjs_dom_idb_factory_cmp ::
        JSRef IDBFactory -> JSRef a -> JSRef a -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
idbFactoryCmp ::
              (IsIDBFactory self) => self -> JSRef a -> JSRef a -> IO Int
idbFactoryCmp self first second
  = ghcjs_dom_idb_factory_cmp (unIDBFactory (toIDBFactory self))
      first
      second
#else
module GHCJS.DOM.IDBFactory (
  ) where
#endif
