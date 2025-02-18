module LED where

import Colour

data LED = LED -- On/Off LED
  { ledColour :: Colour,
    isOn :: Bool
  }

getColour :: LED -> Colour
getColour (LED {ledColour}) = ledColour

mkOnLED :: Colour -> LED
mkOnLED ledColour = LED {ledColour, isOn = True}

type LEDStrip = [LED]

data VLED = VLED -- Variable LED
  { vLEDColour :: Colour,
    opacity :: Float -- 0 : 1
  }

mkVariableLED :: Colour -> Float -> VLED
mkVariableLED colour opacity = VLED {vLEDColour = colour, opacity}

type VLEDStrip = [VLED]
