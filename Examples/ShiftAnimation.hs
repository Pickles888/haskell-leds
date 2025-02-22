{-# LANGUAGE RecordWildCards #-}

module Examples.ShiftAnimation where

import LEDHaskell.Animations.Animation
import LEDHaskell.Colour.Colour
import LEDHaskell.LEDs.LED

data ShiftAnimation = ShiftAnimation
  { value :: Int,
    transformR :: Float -> Float,
    transformG :: Float -> Float,
    transformB :: Float -> Float,
    scalar :: Float
  }

instance Animation ShiftAnimation where
  update ShiftAnimation {..} =
    map $
      mapLEDColour $ \c ->
        clampColour $
          Colour
            (processVal ((* scalar) . transformR) value)
            (processVal ((* scalar) . transformG) value)
            (processVal ((* scalar) . transformB) value)
            <> c
  updateVal ShiftAnimation {..} = ShiftAnimation {transformR, transformG, transformB, scalar, value = value + 1}

processVal :: (Float -> Float) -> Int -> Int
processVal f a = round $ (* 10) $ f $ (/ 10) $ fromIntegral (a :: Int)
