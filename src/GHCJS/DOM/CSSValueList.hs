{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSValueList
       (ghcjs_dom_css_value_list_item, cssValueListItem,
        ghcjs_dom_css_value_list_get_length, cssValueListGetLength,
        CSSValueList, IsCSSValueList, castToCSSValueList,
        gTypeCSSValueList, toCSSValueList)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_css_value_list_item ::
        JSRef CSSValueList -> Word -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
cssValueListItem ::
                 (MonadIO m, IsCSSValueList self) =>
                   self -> Word -> m (Maybe CSSValue)
cssValueListItem self index
  = liftIO
      ((ghcjs_dom_css_value_list_item
          (unCSSValueList (toCSSValueList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_value_list_get_length ::
        JSRef CSSValueList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.length Mozilla CSSValueList.length documentation> 
cssValueListGetLength ::
                      (MonadIO m, IsCSSValueList self) => self -> m Word
cssValueListGetLength self
  = liftIO
      (ghcjs_dom_css_value_list_get_length
         (unCSSValueList (toCSSValueList self)))
#else
module GHCJS.DOM.CSSValueList (
  ) where
#endif
