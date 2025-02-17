module Colour where

type Colour = (Int, Int, Int)

makeColour :: Int -> Int -> Int -> Colour
makeColour r g b = (r, g, b)

getRed :: Colour -> Int
getRed (r, _, _) = r

getBlue :: Colour -> Int
getBlue (_, _, b) = b

getGreen :: Colour -> Int
getGreen (_, g, _) = g
