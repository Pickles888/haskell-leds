module Animation where

import EmulateLED
import LED

class Animation a where
  update :: a -> LEDStrip -> LEDStrip
  updateVal :: a -> a

mkLEDAnimation :: (Animation a) => (a -> Bool) -> a -> LEDStrip -> [LEDStrip]
mkLEDAnimation endCond a leds =
  leds : if endCond a then [] else mkLEDAnimation endCond (updateVal a) (update a leds)
