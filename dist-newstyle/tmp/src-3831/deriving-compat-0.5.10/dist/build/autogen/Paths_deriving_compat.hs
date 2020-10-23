{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_deriving_compat (
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
version = Version [0,5,10] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/joes/.cabal/store/ghc-8.8.4/drvng-cmpt-0.5.10-818743e5/bin"
libdir     = "/Users/joes/.cabal/store/ghc-8.8.4/drvng-cmpt-0.5.10-818743e5/lib"
dynlibdir  = "/Users/joes/.cabal/store/ghc-8.8.4/lib"
datadir    = "/Users/joes/.cabal/store/ghc-8.8.4/drvng-cmpt-0.5.10-818743e5/share"
libexecdir = "/Users/joes/.cabal/store/ghc-8.8.4/drvng-cmpt-0.5.10-818743e5/libexec"
sysconfdir = "/Users/joes/.cabal/store/ghc-8.8.4/drvng-cmpt-0.5.10-818743e5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "deriving_compat_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "deriving_compat_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "deriving_compat_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "deriving_compat_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "deriving_compat_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "deriving_compat_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
