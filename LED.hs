module LED where

import Colour ( Colour (Colour) )

type LED = Colour Int

mkLED :: Colour Int -> LED
mkLED (Colour r g b) = LED (r g b)

type LEDStrip = [LED]

data VariableLED = VariableLED
  { colour :: LED,
    opacity :: Float -- 0 : 1
  }

type VariableLEDStrip = [VariableLED]