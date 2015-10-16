{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLElement
       (js_insertAdjacentElement, insertAdjacentElement,
        js_insertAdjacentHTML, insertAdjacentHTML, js_insertAdjacentText,
        insertAdjacentText, js_click, click, js_setTitle, setTitle,
        js_getTitle, getTitle, js_setLang, setLang, js_getLang, getLang,
        js_setTranslate, setTranslate, js_getTranslate, getTranslate,
        js_setDir, setDir, js_getDir, getDir, js_setTabIndex, setTabIndex,
        js_getTabIndex, getTabIndex, js_setDraggable, setDraggable,
        js_getDraggable, getDraggable, js_setWebkitdropzone,
        setWebkitdropzone, js_getWebkitdropzone, getWebkitdropzone,
        js_setHidden, setHidden, js_getHidden, getHidden, js_setAccessKey,
        setAccessKey, js_getAccessKey, getAccessKey, js_setInnerText,
        setInnerText, js_getInnerText, getInnerText, js_setOuterText,
        setOuterText, js_getOuterText, getOuterText, js_getChildren,
        getChildren, js_setContentEditable, setContentEditable,
        js_getContentEditable, getContentEditable, js_getIsContentEditable,
        getIsContentEditable, js_setSpellcheck, setSpellcheck,
        js_getSpellcheck, getSpellcheck, HTMLElement, castToHTMLElement,
        gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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
 
foreign import javascript unsafe
        "$1[\"insertAdjacentElement\"]($2,\n$3)" js_insertAdjacentElement
        ::
        HTMLElement ->
          JSString -> Nullable Element -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentElement Mozilla HTMLElement.insertAdjacentElement documentation> 
insertAdjacentElement ::
                      (MonadIO m, IsHTMLElement self, ToJSString where',
                       IsElement element) =>
                        self -> where' -> Maybe element -> m (Maybe Element)
insertAdjacentElement self where' element
  = liftIO
      (nullableToMaybe <$>
         (js_insertAdjacentElement (toHTMLElement self) (toJSString where')
            (maybeToNullable (fmap toElement element))))
 
foreign import javascript unsafe
        "$1[\"insertAdjacentHTML\"]($2, $3)" js_insertAdjacentHTML ::
        HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentHTML Mozilla HTMLElement.insertAdjacentHTML documentation> 
insertAdjacentHTML ::
                   (MonadIO m, IsHTMLElement self, ToJSString where',
                    ToJSString html) =>
                     self -> where' -> html -> m ()
insertAdjacentHTML self where' html
  = liftIO
      (js_insertAdjacentHTML (toHTMLElement self) (toJSString where')
         (toJSString html))
 
foreign import javascript unsafe
        "$1[\"insertAdjacentText\"]($2, $3)" js_insertAdjacentText ::
        HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentText Mozilla HTMLElement.insertAdjacentText documentation> 
insertAdjacentText ::
                   (MonadIO m, IsHTMLElement self, ToJSString where',
                    ToJSString text) =>
                     self -> where' -> text -> m ()
insertAdjacentText self where' text
  = liftIO
      (js_insertAdjacentText (toHTMLElement self) (toJSString where')
         (toJSString text))
 
foreign import javascript unsafe "$1[\"click\"]()" js_click ::
        HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
click :: (MonadIO m, IsHTMLElement self) => self -> m ()
click self = liftIO (js_click (toHTMLElement self))
 
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
 
foreign import javascript unsafe "$1[\"innerText\"] = $2;"
        js_setInnerText :: HTMLElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
setInnerText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setInnerText self val
  = liftIO
      (js_setInnerText (toHTMLElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"innerText\"]"
        js_getInnerText :: HTMLElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m (Maybe result)
getInnerText self
  = liftIO
      (fromMaybeJSString <$> (js_getInnerText (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"outerText\"] = $2;"
        js_setOuterText :: HTMLElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
setOuterText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setOuterText self val
  = liftIO
      (js_setOuterText (toHTMLElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"outerText\"]"
        js_getOuterText :: HTMLElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m (Maybe result)
getOuterText self
  = liftIO
      (fromMaybeJSString <$> (js_getOuterText (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"children\"]" js_getChildren
        :: HTMLElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.children Mozilla HTMLElement.children documentation> 
getChildren ::
            (MonadIO m, IsHTMLElement self) => self -> m (Maybe HTMLCollection)
getChildren self
  = liftIO
      (nullableToMaybe <$> (js_getChildren (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"contentEditable\"] = $2;"
        js_setContentEditable :: HTMLElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
setContentEditable ::
                   (MonadIO m, IsHTMLElement self, ToJSString val) =>
                     self -> Maybe val -> m ()
setContentEditable self val
  = liftIO
      (js_setContentEditable (toHTMLElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        js_getContentEditable :: HTMLElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
getContentEditable ::
                   (MonadIO m, IsHTMLElement self, FromJSString result) =>
                     self -> m (Maybe result)
getContentEditable self
  = liftIO
      (fromMaybeJSString <$>
         (js_getContentEditable (toHTMLElement self)))
 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)" js_getIsContentEditable ::
        HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
getIsContentEditable ::
                     (MonadIO m, IsHTMLElement self) => self -> m Bool
getIsContentEditable self
  = liftIO (js_getIsContentEditable (toHTMLElement self))
 
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