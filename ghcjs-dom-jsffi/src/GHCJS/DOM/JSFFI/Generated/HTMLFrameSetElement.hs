{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFrameSetElement
       (js_setCols, setCols, js_getCols, getCols, js_setRows, setRows,
        js_getRows, getRows, blur, error, focus, focusin, focusout, load,
        resize, scroll, webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop,
        HTMLFrameSetElement(..), gTypeHTMLFrameSetElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"cols\"] = $2;" js_setCols ::
        HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
setCols ::
        (MonadIO m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setCols self val = liftIO (js_setCols self (toJSString val))
 
foreign import javascript unsafe "$1[\"cols\"]" js_getCols ::
        HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
getCols ::
        (MonadIO m, FromJSString result) => HTMLFrameSetElement -> m result
getCols self = liftIO (fromJSString <$> (js_getCols self))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;" js_setRows ::
        HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
setRows ::
        (MonadIO m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setRows self val = liftIO (js_setRows self (toJSString val))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
getRows ::
        (MonadIO m, FromJSString result) => HTMLFrameSetElement -> m result
getRows self = liftIO (fromJSString <$> (js_getRows self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onblur Mozilla HTMLFrameSetElement.onblur documentation> 
blur :: EventName HTMLFrameSetElement FocusEvent
blur = unsafeEventNameAsync (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onerror Mozilla HTMLFrameSetElement.onerror documentation> 
error :: EventName HTMLFrameSetElement UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocus Mozilla HTMLFrameSetElement.onfocus documentation> 
focus :: EventName HTMLFrameSetElement FocusEvent
focus = unsafeEventNameAsync (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocusin Mozilla HTMLFrameSetElement.onfocusin documentation> 
focusin :: EventName HTMLFrameSetElement onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocusout Mozilla HTMLFrameSetElement.onfocusout documentation> 
focusout :: EventName HTMLFrameSetElement onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onload Mozilla HTMLFrameSetElement.onload documentation> 
load :: EventName HTMLFrameSetElement UIEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onresize Mozilla HTMLFrameSetElement.onresize documentation> 
resize :: EventName HTMLFrameSetElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onscroll Mozilla HTMLFrameSetElement.onscroll documentation> 
scroll :: EventName HTMLFrameSetElement UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealbottom Mozilla HTMLFrameSetElement.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom :: EventName HTMLFrameSetElement Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealleft Mozilla HTMLFrameSetElement.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft :: EventName HTMLFrameSetElement Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealright Mozilla HTMLFrameSetElement.onwebkitwillrevealright documentation> 
webKitWillRevealRight :: EventName HTMLFrameSetElement Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealtop Mozilla HTMLFrameSetElement.onwebkitwillrevealtop documentation> 
webKitWillRevealTop :: EventName HTMLFrameSetElement Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")