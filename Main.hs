module Main (main) where

import Csound.Base

-- Make a Tab form a soundfile

mkTab :: String -> Tab
mkTab str =
  wavs str 0 WavAll

-- Define a granualar instrument

grainInstr :: String -> D -> Sig
grainInstr filestr pos =
  partikkel pSpec 10 0.1 1 [mkTab filestr] [sig $ pos * (1.0 / (lengthSnd filestr))] 
  
main :: IO ()
main = dac
  $ mul 0.2
  $ grainInstr "Sounds/flutec.wav" 0.07

pSpec :: PartikkelSpec 
pSpec = PartikkelSpec
  { partikkelDistribution = 0
  , partikkelDisttab = setSize 32768 $ lins [0, 1, 1]
  , partikkelSync = 0
  , partikkelEnv2amt = 1
  , partikkelEnv2tab = setSize 4096 $ winSync
  , partikkelEnv_attack= noTab
  , partikkelEnv_decay = noTab
  , partikkelSustain_amount = 0
  , partikkelA_d_ratio = 0
  , partikkelAmp = 1
  , partikkelGainmasks = noTab
  , partikkelSweepshape = 0
  , partikkelWavfreqstarttab = noTab
  , partikkelWavfreqendtab = noTab
  , partikkelWavfm = 1
  , partikkelFmamptab = noTab
  , partikkelFmenv = noTab
  , partikkelCosine = setSize 8193 $ sines3 [(1, 1, 90)]
  , partikkelNumpartials = 1
  , partikkelChroma = 1
  , partikkelChannelmasks = noTab
  , partikkelRandommask = 0
  , partikkelWaveamptab = noTab
  , partikkelWavekeys = [1]
  , partikkelMax_grains = 1000
  }