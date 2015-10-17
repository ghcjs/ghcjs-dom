{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMetaElement
       (js_setContent, setContent, js_getContent, getContent,
        js_setHttpEquiv, setHttpEquiv, js_getHttpEquiv, getHttpEquiv,
        js_setName, setName, js_getName, getName, js_setScheme, setScheme,
        js_getScheme, getScheme, HTMLMetaElement, castToHTMLMetaElement,
        gTypeHTMLMetaElement)
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
 
foreign import javascript unsafe "$1[\"content\"] = $2;"
        js_setContent :: HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
setContent ::
           (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setContent self val
  = liftIO (js_setContent (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"content\"]" js_getContent ::
        HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
getContent ::
           (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getContent self = liftIO (fromJSString <$> (js_getContent (self)))
 
foreign import javascript unsafe "$1[\"httpEquiv\"] = $2;"
        js_setHttpEquiv :: HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
setHttpEquiv ::
             (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setHttpEquiv self val
  = liftIO (js_setHttpEquiv (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"httpEquiv\"]"
        js_getHttpEquiv :: HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
getHttpEquiv ::
             (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getHttpEquiv self
  = liftIO (fromJSString <$> (js_getHttpEquiv (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"scheme\"] = $2;"
        js_setScheme :: HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
setScheme ::
          (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setScheme self val = liftIO (js_setScheme (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scheme\"]" js_getScheme ::
        HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
getScheme ::
          (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getScheme self = liftIO (fromJSString <$> (js_getScheme (self)))