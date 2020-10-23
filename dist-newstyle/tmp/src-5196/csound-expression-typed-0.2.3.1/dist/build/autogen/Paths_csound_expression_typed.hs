{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_csound_expression_typed (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,2,3,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/joes/.cabal/store/ghc-8.8.4/csnd-xprssn-typd-0.2.3.1-fcd1dde6/bin"
libdir     = "/Users/joes/.cabal/store/ghc-8.8.4/csnd-xprssn-typd-0.2.3.1-fcd1dde6/lib"
dynlibdir  = "/Users/joes/.cabal/store/ghc-8.8.4/lib"
datadir    = "/Users/joes/.cabal/store/ghc-8.8.4/csnd-xprssn-typd-0.2.3.1-fcd1dde6/share"
libexecdir = "/Users/joes/.cabal/store/ghc-8.8.4/csnd-xprssn-typd-0.2.3.1-fcd1dde6/libexec"
sysconfdir = "/Users/joes/.cabal/store/ghc-8.8.4/csnd-xprssn-typd-0.2.3.1-fcd1dde6/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "csound_expression_typed_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "csound_expression_typed_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "csound_expression_typed_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "csound_expression_typed_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "csound_expression_typed_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "csound_expression_typed_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
