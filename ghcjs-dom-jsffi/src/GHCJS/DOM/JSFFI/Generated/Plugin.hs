{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Plugin
       (js_item, item, js_namedItem, namedItem, js_getName, getName,
        js_getFilename, getFilename, js_getDescription, getDescription,
        js_getLength, getLength, Plugin, castToPlugin, gTypePlugin)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        Plugin -> Word -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item :: (MonadIO m) => Plugin -> Word -> m (Maybe MimeType)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: Plugin -> JSString -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            Plugin -> name -> m (Maybe MimeType)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.name Mozilla Plugin.name documentation> 
getName :: (MonadIO m, FromJSString result) => Plugin -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.filename Mozilla Plugin.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => Plugin -> m result
getFilename self
  = liftIO (fromJSString <$> (js_getFilename (self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.description Mozilla Plugin.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => Plugin -> m result
getDescription self
  = liftIO (fromJSString <$> (js_getDescription (self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        Plugin -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.length Mozilla Plugin.length documentation> 
getLength :: (MonadIO m) => Plugin -> m Word
getLength self = liftIO (js_getLength (self))