module LEDHaskell.Animations.Tools where

peakingRange :: Int -> [Int]
peakingRange 0 = []
peakingRange len =
  let cMid = ceiling (fromIntegral len / 2)
      fMid = floor (fromIntegral len / 2)
   in [1 .. cMid] ++ reverse [1 .. fMid]
