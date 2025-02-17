module LED where

import Colour

type LED = Colour

type LEDStrip = [LED]

data VariableLED = VariableLED
  { colour :: Colour,
    opacity :: Float -- 0 : 1
  }

type VariableLEDStrip = [VariableLED]
