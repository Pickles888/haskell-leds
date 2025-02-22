module LEDHaskell.Colour.Colour where

import LEDHaskell.Lib.Helpers

data Colour = Colour Int Int Int

clampToColour :: Int -> Int
clampToColour = clamp 0 255

clampColour :: Colour -> Colour
clampColour (Colour r g b) = Colour (clampToColour r) (clampToColour g) (clampToColour b)

getRed :: Colour -> Int
getRed (Colour r _ _) = r

getBlue :: Colour -> Int
getBlue (Colour _ _ b) = b

getGreen :: Colour -> Int
getGreen (Colour _ g _) = g

instance Semigroup Colour where
  (Colour r g b) <> (Colour r' g' b') = Colour (r + r') (g + g') (b + b')

instance Monoid Colour where
  mempty = Colour 0 0 0
