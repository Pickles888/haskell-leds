module LEDHaskell.Lib.Helpers where

clamp :: (Ord a) => a -> a -> a -> a
clamp mn mx = max mn . min mx
