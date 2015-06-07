{-# LANGUAGE RecordWildCards #-}
module GHCJS.DOM.JSFFI.DOMError (
    module Generated
  , DOMErrorException(..)
  , throwDOMErrorException
) where

import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.DOM.JSFFI.Generated.DOMError as Generated

data DOMErrorException = DOMErrorException { domErrorName :: String } deriving (Show, Eq)

instance Exception DOMErrorException

throwDOMErrorException :: MonadIO m => DOMError -> m a
throwDOMErrorException error = do
    domErrorName <- getName error
    liftIO $ throwIO DOMErrorException{..}
