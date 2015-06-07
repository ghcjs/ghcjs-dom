{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAltGlyphElement
       (js_setGlyphRef, setGlyphRef, js_getGlyphRef, getGlyphRef,
        js_setFormat, setFormat, js_getFormat, getFormat,
        SVGAltGlyphElement, castToSVGAltGlyphElement,
        gTypeSVGAltGlyphElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"glyphRef\"] = $2;"
        js_setGlyphRef :: JSRef SVGAltGlyphElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
setGlyphRef ::
            (MonadIO m, ToJSString val) => SVGAltGlyphElement -> val -> m ()
setGlyphRef self val
  = liftIO
      (js_setGlyphRef (unSVGAltGlyphElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"glyphRef\"]" js_getGlyphRef
        :: JSRef SVGAltGlyphElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
getGlyphRef ::
            (MonadIO m, FromJSString result) => SVGAltGlyphElement -> m result
getGlyphRef self
  = liftIO
      (fromJSString <$> (js_getGlyphRef (unSVGAltGlyphElement self)))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        js_setFormat :: JSRef SVGAltGlyphElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
setFormat ::
          (MonadIO m, ToJSString val) => SVGAltGlyphElement -> val -> m ()
setFormat self val
  = liftIO
      (js_setFormat (unSVGAltGlyphElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"format\"]" js_getFormat ::
        JSRef SVGAltGlyphElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
getFormat ::
          (MonadIO m, FromJSString result) => SVGAltGlyphElement -> m result
getFormat self
  = liftIO
      (fromJSString <$> (js_getFormat (unSVGAltGlyphElement self)))