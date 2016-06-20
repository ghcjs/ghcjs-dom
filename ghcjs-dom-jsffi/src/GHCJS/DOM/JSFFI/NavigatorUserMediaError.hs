{-# LANGUAGE RecordWildCards #-}
module GHCJS.DOM.JSFFI.NavigatorUserMediaError (
    module Generated
  , UserMediaException(..)
  , throwUserMediaException
) where

import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.DOM.JSFFI.DOMError (getName)
import GHCJS.DOM.JSFFI.Generated.NavigatorUserMediaError as Generated

data UserMediaException = UserMediaException {
        userMediaErrorName           :: String,
        userMediaErrorConstraintName :: String } deriving (Show, Eq)

instance Exception UserMediaException

throwUserMediaException :: MonadIO m => NavigatorUserMediaError -> m a
throwUserMediaException error = do
    userMediaErrorName           <- getName           error
    userMediaErrorConstraintName <- getConstraintName error
    liftIO $ throwIO (UserMediaException{..})



