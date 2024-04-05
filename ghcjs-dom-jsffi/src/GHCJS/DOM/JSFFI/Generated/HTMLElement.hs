{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLElement
       (js_newHTMLElement, newHTMLElement, js_click, click, js_focus,
        focus, js_blur, blur, js_setTitle, setTitle, js_getTitle, getTitle,
        js_setLang, setLang, js_getLang, getLang, js_setTranslate,
        setTranslate, js_getTranslate, getTranslate, js_setDir, setDir,
        js_getDir, getDir, js_getDataset, getDataset, js_setHidden,
        setHidden, js_getHidden, getHidden, js_setTabIndex, setTabIndex,
        js_getTabIndex, getTabIndex, js_setAccessKey, setAccessKey,
        js_getAccessKey, getAccessKey, js_setDraggable, setDraggable,
        js_getDraggable, getDraggable, js_setSpellcheck, setSpellcheck,
        js_getSpellcheck, getSpellcheck, js_setInnerText, setInnerText,
        js_getInnerText, getInnerText, js_setContentEditable,
        setContentEditable, js_getContentEditable, getContentEditable,
        js_getIsContentEditable, getIsContentEditable, js_getOffsetParent,
        getOffsetParent, getOffsetParentUnsafe, getOffsetParentUnchecked,
        js_getOffsetTop, getOffsetTop, js_getOffsetLeft, getOffsetLeft,
        js_getOffsetWidth, getOffsetWidth, js_getOffsetHeight,
        getOffsetHeight, js_setOuterText, setOuterText, js_getOuterText,
        getOuterText, js_setAutocorrect, setAutocorrect, js_getAutocorrect,
        getAutocorrect, js_setAutocapitalize, setAutocapitalize,
        js_getAutocapitalize, getAutocapitalize, js_setWebkitdropzone,
        setWebkitdropzone, js_getWebkitdropzone, getWebkitdropzone,
        HTMLElement(..), gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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
 
foreign import javascript unsafe "new window[\"HTMLElement\"]()"
        js_newHTMLElement :: IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement Mozilla HTMLElement documentation> 
newHTMLElement :: (MonadIO m) => m HTMLElement
newHTMLElement = liftIO (js_newHTMLElement)
 
foreign import javascript unsafe "$1[\"click\"]()" js_click ::
        HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
click :: (MonadIO m, IsHTMLElement self) => self -> m ()
click self = liftIO (js_click (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"focus\"]()" js_focus ::
        HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.focus Mozilla HTMLElement.focus documentation> 
focus :: (MonadIO m, IsHTMLElement self) => self -> m ()
focus self = liftIO (js_focus (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"blur\"]()" js_blur ::
        HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.blur Mozilla HTMLElement.blur documentation> 
blur :: (MonadIO m, IsHTMLElement self) => self -> m ()
blur self = liftIO (js_blur (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
setTitle ::
         (MonadIO m, IsHTMLElement self, ToJSString val) =>
           self -> val -> m ()
setTitle self val
  = liftIO (js_setTitle (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
getTitle ::
         (MonadIO m, IsHTMLElement self, FromJSString result) =>
           self -> m result
getTitle self
  = liftIO (fromJSString <$> (js_getTitle (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;" js_setLang ::
        HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
setLang ::
        (MonadIO m, IsHTMLElement self, ToJSString val) =>
          self -> val -> m ()
setLang self val
  = liftIO (js_setLang (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"lang\"]" js_getLang ::
        HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
getLang ::
        (MonadIO m, IsHTMLElement self, FromJSString result) =>
          self -> m result
getLang self
  = liftIO (fromJSString <$> (js_getLang (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"translate\"] = $2;"
        js_setTranslate :: HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
setTranslate ::
             (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setTranslate self val
  = liftIO (js_setTranslate (toHTMLElement self) val)
 
foreign import javascript unsafe "($1[\"translate\"] ? 1 : 0)"
        js_getTranslate :: HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
getTranslate :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getTranslate self = liftIO (js_getTranslate (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
setDir ::
       (MonadIO m, IsHTMLElement self, ToJSString val) =>
         self -> val -> m ()
setDir self val
  = liftIO (js_setDir (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
getDir ::
       (MonadIO m, IsHTMLElement self, FromJSString result) =>
         self -> m result
getDir self
  = liftIO (fromJSString <$> (js_getDir (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"dataset\"]" js_getDataset ::
        HTMLElement -> IO DOMStringMap

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dataset Mozilla HTMLElement.dataset documentation> 
getDataset ::
           (MonadIO m, IsHTMLElement self) => self -> m DOMStringMap
getDataset self = liftIO (js_getDataset (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"hidden\"] = $2;"
        js_setHidden :: HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
setHidden ::
          (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setHidden self val = liftIO (js_setHidden (toHTMLElement self) val)
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        js_getHidden :: HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
getHidden :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getHidden self = liftIO (js_getHidden (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        js_setTabIndex :: HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
setTabIndex ::
            (MonadIO m, IsHTMLElement self) => self -> Int -> m ()
setTabIndex self val
  = liftIO (js_setTabIndex (toHTMLElement self) val)
 
foreign import javascript unsafe "$1[\"tabIndex\"]" js_getTabIndex
        :: HTMLElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
getTabIndex :: (MonadIO m, IsHTMLElement self) => self -> m Int
getTabIndex self = liftIO (js_getTabIndex (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"accessKey\"] = $2;"
        js_setAccessKey :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
setAccessKey ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setAccessKey self val
  = liftIO (js_setAccessKey (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"accessKey\"]"
        js_getAccessKey :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
getAccessKey ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getAccessKey self
  = liftIO (fromJSString <$> (js_getAccessKey (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"draggable\"] = $2;"
        js_setDraggable :: HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
setDraggable ::
             (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setDraggable self val
  = liftIO (js_setDraggable (toHTMLElement self) val)
 
foreign import javascript unsafe "($1[\"draggable\"] ? 1 : 0)"
        js_getDraggable :: HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
getDraggable :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getDraggable self = liftIO (js_getDraggable (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"spellcheck\"] = $2;"
        js_setSpellcheck :: HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
setSpellcheck ::
              (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setSpellcheck self val
  = liftIO (js_setSpellcheck (toHTMLElement self) val)
 
foreign import javascript unsafe "($1[\"spellcheck\"] ? 1 : 0)"
        js_getSpellcheck :: HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
getSpellcheck :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getSpellcheck self = liftIO (js_getSpellcheck (toHTMLElement self))
 
foreign import javascript safe "$1[\"innerText\"] = $2;"
        js_setInnerText :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
setInnerText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setInnerText self val
  = liftIO (js_setInnerText (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"innerText\"]"
        js_getInnerText :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getInnerText self
  = liftIO (fromJSString <$> (js_getInnerText (toHTMLElement self)))
 
foreign import javascript safe "$1[\"contentEditable\"] = $2;"
        js_setContentEditable :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
setContentEditable ::
                   (MonadIO m, IsHTMLElement self, ToJSString val) =>
                     self -> val -> m ()
setContentEditable self val
  = liftIO
      (js_setContentEditable (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        js_getContentEditable :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
getContentEditable ::
                   (MonadIO m, IsHTMLElement self, FromJSString result) =>
                     self -> m result
getContentEditable self
  = liftIO
      (fromJSString <$> (js_getContentEditable (toHTMLElement self)))
 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)" js_getIsContentEditable ::
        HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
getIsContentEditable ::
                     (MonadIO m, IsHTMLElement self) => self -> m Bool
getIsContentEditable self
  = liftIO (js_getIsContentEditable (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        js_getOffsetParent :: HTMLElement -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParent ::
                (MonadIO m, IsHTMLElement self) => self -> m (Maybe Element)
getOffsetParent self
  = liftIO
      (nullableToMaybe <$> (js_getOffsetParent (toHTMLElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParentUnsafe ::
                      (MonadIO m, IsHTMLElement self, HasCallStack) => self -> m Element
getOffsetParentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOffsetParent (toHTMLElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetParent Mozilla HTMLElement.offsetParent documentation> 
getOffsetParentUnchecked ::
                         (MonadIO m, IsHTMLElement self) => self -> m Element
getOffsetParentUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getOffsetParent (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        js_getOffsetTop :: HTMLElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetTop Mozilla HTMLElement.offsetTop documentation> 
getOffsetTop :: (MonadIO m, IsHTMLElement self) => self -> m Double
getOffsetTop self = liftIO (js_getOffsetTop (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        js_getOffsetLeft :: HTMLElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetLeft Mozilla HTMLElement.offsetLeft documentation> 
getOffsetLeft ::
              (MonadIO m, IsHTMLElement self) => self -> m Double
getOffsetLeft self = liftIO (js_getOffsetLeft (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        js_getOffsetWidth :: HTMLElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetWidth Mozilla HTMLElement.offsetWidth documentation> 
getOffsetWidth ::
               (MonadIO m, IsHTMLElement self) => self -> m Double
getOffsetWidth self
  = liftIO (js_getOffsetWidth (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        js_getOffsetHeight :: HTMLElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.offsetHeight Mozilla HTMLElement.offsetHeight documentation> 
getOffsetHeight ::
                (MonadIO m, IsHTMLElement self) => self -> m Double
getOffsetHeight self
  = liftIO (js_getOffsetHeight (toHTMLElement self))
 
foreign import javascript safe "$1[\"outerText\"] = $2;"
        js_setOuterText :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
setOuterText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setOuterText self val
  = liftIO (js_setOuterText (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"outerText\"]"
        js_getOuterText :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getOuterText self
  = liftIO (fromJSString <$> (js_getOuterText (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        js_setAutocorrect :: HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocorrect Mozilla HTMLElement.autocorrect documentation> 
setAutocorrect ::
               (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setAutocorrect self val
  = liftIO (js_setAutocorrect (toHTMLElement self) val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        js_getAutocorrect :: HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocorrect Mozilla HTMLElement.autocorrect documentation> 
getAutocorrect :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getAutocorrect self
  = liftIO (js_getAutocorrect (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        js_setAutocapitalize :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadIO m, IsHTMLElement self, ToJSString val) =>
                    self -> val -> m ()
setAutocapitalize self val
  = liftIO
      (js_setAutocapitalize (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        js_getAutocapitalize :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.autocapitalize Mozilla HTMLElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadIO m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
getAutocapitalize self
  = liftIO
      (fromJSString <$> (js_getAutocapitalize (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"] = $2;"
        js_setWebkitdropzone :: HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
setWebkitdropzone ::
                  (MonadIO m, IsHTMLElement self, ToJSString val) =>
                    self -> val -> m ()
setWebkitdropzone self val
  = liftIO
      (js_setWebkitdropzone (toHTMLElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"]"
        js_getWebkitdropzone :: HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
getWebkitdropzone ::
                  (MonadIO m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
getWebkitdropzone self
  = liftIO
      (fromJSString <$> (js_getWebkitdropzone (toHTMLElement self)))