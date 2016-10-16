{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XSLTProcessor
       (js_newXSLTProcessor, newXSLTProcessor, js_importStylesheet,
        importStylesheet, js_transformToFragment, transformToFragment,
        transformToFragment_, transformToFragmentUnsafe,
        transformToFragmentUnchecked, js_transformToDocument,
        transformToDocument, transformToDocument_,
        transformToDocumentUnsafe, transformToDocumentUnchecked,
        js_setParameter, setParameter, js_getParameter, getParameter,
        getParameter_, getParameterUnsafe, getParameterUnchecked,
        js_removeParameter, removeParameter, js_clearParameters,
        clearParameters, js_reset, reset, XSLTProcessor(..),
        gTypeXSLTProcessor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "new window[\"XSLTProcessor\"]()"
        js_newXSLTProcessor :: IO XSLTProcessor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
newXSLTProcessor :: (MonadIO m) => m XSLTProcessor
newXSLTProcessor = liftIO (js_newXSLTProcessor)
 
foreign import javascript unsafe "$1[\"importStylesheet\"]($2)"
        js_importStylesheet :: XSLTProcessor -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
importStylesheet ::
                 (MonadIO m, IsNode stylesheet) =>
                   XSLTProcessor -> Maybe stylesheet -> m ()
importStylesheet self stylesheet
  = liftIO
      (js_importStylesheet (self)
         (maybeToNullable (fmap toNode stylesheet)))
 
foreign import javascript unsafe
        "$1[\"transformToFragment\"]($2,\n$3)" js_transformToFragment ::
        XSLTProcessor ->
          Nullable Node ->
            Nullable Document -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment ::
                    (MonadIO m, IsNode source, IsDocument docVal) =>
                      XSLTProcessor ->
                        Maybe source -> Maybe docVal -> m (Maybe DocumentFragment)
transformToFragment self source docVal
  = liftIO
      (nullableToMaybe <$>
         (js_transformToFragment (self)
            (maybeToNullable (fmap toNode source))
            (maybeToNullable (fmap toDocument docVal))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment_ ::
                     (MonadIO m, IsNode source, IsDocument docVal) =>
                       XSLTProcessor -> Maybe source -> Maybe docVal -> m ()
transformToFragment_ self source docVal
  = liftIO
      (void
         (js_transformToFragment (self)
            (maybeToNullable (fmap toNode source))
            (maybeToNullable (fmap toDocument docVal))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragmentUnsafe ::
                          (MonadIO m, IsNode source, IsDocument docVal, HasCallStack) =>
                            XSLTProcessor -> Maybe source -> Maybe docVal -> m DocumentFragment
transformToFragmentUnsafe self source docVal
  = liftIO
      ((nullableToMaybe <$>
          (js_transformToFragment (self)
             (maybeToNullable (fmap toNode source))
             (maybeToNullable (fmap toDocument docVal))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragmentUnchecked ::
                             (MonadIO m, IsNode source, IsDocument docVal) =>
                               XSLTProcessor -> Maybe source -> Maybe docVal -> m DocumentFragment
transformToFragmentUnchecked self source docVal
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_transformToFragment (self)
            (maybeToNullable (fmap toNode source))
            (maybeToNullable (fmap toDocument docVal))))
 
foreign import javascript unsafe "$1[\"transformToDocument\"]($2)"
        js_transformToDocument ::
        XSLTProcessor -> Nullable Node -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument ::
                    (MonadIO m, IsNode source) =>
                      XSLTProcessor -> Maybe source -> m (Maybe Document)
transformToDocument self source
  = liftIO
      (nullableToMaybe <$>
         (js_transformToDocument (self)
            (maybeToNullable (fmap toNode source))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument_ ::
                     (MonadIO m, IsNode source) => XSLTProcessor -> Maybe source -> m ()
transformToDocument_ self source
  = liftIO
      (void
         (js_transformToDocument (self)
            (maybeToNullable (fmap toNode source))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocumentUnsafe ::
                          (MonadIO m, IsNode source, HasCallStack) =>
                            XSLTProcessor -> Maybe source -> m Document
transformToDocumentUnsafe self source
  = liftIO
      ((nullableToMaybe <$>
          (js_transformToDocument (self)
             (maybeToNullable (fmap toNode source))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocumentUnchecked ::
                             (MonadIO m, IsNode source) =>
                               XSLTProcessor -> Maybe source -> m Document
transformToDocumentUnchecked self source
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_transformToDocument (self)
            (maybeToNullable (fmap toNode source))))
 
foreign import javascript unsafe "$1[\"setParameter\"]($2, $3, $4)"
        js_setParameter ::
        XSLTProcessor -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.setParameter Mozilla XSLTProcessor.setParameter documentation> 
setParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              ToJSString value) =>
               XSLTProcessor -> namespaceURI -> localName -> value -> m ()
setParameter self namespaceURI localName value
  = liftIO
      (js_setParameter (self) (toJSString namespaceURI)
         (toJSString localName)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2, $3)"
        js_getParameter ::
        XSLTProcessor -> JSString -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              FromJSString result) =>
               XSLTProcessor -> namespaceURI -> localName -> m (Maybe result)
getParameter self namespaceURI localName
  = liftIO
      (fromMaybeJSString <$>
         (js_getParameter (self) (toJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter_ ::
              (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                XSLTProcessor -> namespaceURI -> localName -> m ()
getParameter_ self namespaceURI localName
  = liftIO
      (void
         (js_getParameter (self) (toJSString namespaceURI)
            (toJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameterUnsafe ::
                   (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                    HasCallStack, FromJSString result) =>
                     XSLTProcessor -> namespaceURI -> localName -> m result
getParameterUnsafe self namespaceURI localName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getParameter (self) (toJSString namespaceURI)
             (toJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameterUnchecked ::
                      (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                       FromJSString result) =>
                        XSLTProcessor -> namespaceURI -> localName -> m result
getParameterUnchecked self namespaceURI localName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getParameter (self) (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"removeParameter\"]($2, $3)"
        js_removeParameter ::
        XSLTProcessor -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
removeParameter ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  XSLTProcessor -> namespaceURI -> localName -> m ()
removeParameter self namespaceURI localName
  = liftIO
      (js_removeParameter (self) (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"clearParameters\"]()"
        js_clearParameters :: XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
clearParameters :: (MonadIO m) => XSLTProcessor -> m ()
clearParameters self = liftIO (js_clearParameters (self))
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
reset :: (MonadIO m) => XSLTProcessor -> m ()
reset self = liftIO (js_reset (self))