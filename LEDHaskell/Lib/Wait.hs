module LEDHaskell.Lib.Wait (waitCentis, waitMillis, waitDecis, waitSecs) where

import Control.Concurrent (threadDelay)

centiToMicro :: Int -> Int
centiToMicro = (* 10000)

milliToMicro :: Int -> Int
milliToMicro = (* 1000)

deciToMicro :: Int -> Int
deciToMicro = (* 100000)

secToMicro :: Int -> Int
secToMicro = (* 1000000)

waitCentis :: Int -> IO () -- 1/100 of a second
waitCentis = threadDelay . centiToMicro

waitMillis :: Int -> IO () -- 1/1000 of a second
waitMillis = threadDelay . milliToMicro

waitDecis :: Int -> IO () -- 1/10 of a second
waitDecis = threadDelay . deciToMicro

waitSecs :: Int -> IO () -- 1 second (duh)
waitSecs = threadDelay . secToMicro
