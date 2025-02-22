module Main where

import Examples.ShiftAnimation
import LEDHaskell.Colour.Colour
import LEDHaskell.LEDs.EmulateLED
import LEDHaskell.LEDs.LED

main :: IO ()
main =
  emulateLEDs
    ( ShiftAnimation
        { value = 0,
          transformR = (+ 0.3) . sin . (+ 0.5),
          transformG = (+ 0.3) . cos,
          transformB = sin,
          scalar = 2
        }
    )
    mkLEDStrip

mkLEDStrip :: LEDStrip
mkLEDStrip = map (\a -> let b = a * 7 in mkOnLED (Colour b b b)) [1 .. 25]
