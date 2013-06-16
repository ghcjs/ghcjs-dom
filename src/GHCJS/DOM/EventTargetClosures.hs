{-# LANGUAGE CPP #-}
module GHCJS.DOM.EventTargetClosures
       (eventTargetAddEventListener) where

import GHCJS.DOM.Types

eventTargetAddEventListener ::
                         (GObjectClass self, EventClass event) =>
                           self -> String -> Bool -> (self -> event -> IO ()) -> IO Bool
eventTargetAddEventListener self eventName bubble user = undefined
--do
--  sptr <- newStablePtr action
--  gclosurePtr <- gtk2hs_closure_new sptr
--  toBool <$> (
--    withUTFString eventName $ \ eventNamePtr ->
--      {# call webkit_dom_event_target_add_event_listener_closure #}
--        (unsafeCastGObject $ toGObject self)
--        eventNamePtr
--        (GClosure gclosurePtr)
--        (fromBool bubble))
--  where action :: Ptr GObject -> Ptr GObject -> IO ()
--        action obj1 obj2 =
--          failOnGError $
--          makeNewGObject (GObject, objectUnrefFromMainloop) (return obj2) >>= \obj2' ->
--          makeNewGObject (GObject, objectUnrefFromMainloop) (return obj1) >>= \obj1' ->
--          user (unsafeCastGObject obj1') (unsafeCastGObject obj2')

