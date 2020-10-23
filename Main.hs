module Main (testGrain
, getGrainSize_
, getGrainRate_
, main) where

import           Csound.Base

instr cps = return $ osc (sig cps) * (fades 0.2 6)

data Grain =
  Grain {
    grainSize_ :: Double,
    grainRate_ :: Double
  }

testGrain :: Grain
testGrain =
  Grain {
    grainSize_ = 10,
    grainRate_ = 2
  }

getGrainSize_ :: Grain -> Double
getGrainSize_ grain =
  grainSize_ grain

getGrainRate_ :: Grain -> Double
getGrainRate_ grain =
  grainRate_ grain

main = dac $ granuleSnd1 def [0.75, 3/2, 1.2, 0.2, 2.5, 10] 0.1 "Sounds/flutec.wav"
