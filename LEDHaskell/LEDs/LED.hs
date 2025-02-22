module LEDHaskell.LEDs.LED where

import LEDHaskell.Colour.Colour

data LED = LED -- On/Off LED
  { ledColour :: Colour,
    isOn :: Bool
  }

getColour :: LED -> Colour
getColour (LED {ledColour}) = ledColour

mkOnLED :: Colour -> LED
mkOnLED ledColour = LED {ledColour, isOn = True}

mapLEDColour :: (Colour -> Colour) -> LED -> LED
mapLEDColour f (LED {isOn, ledColour = colour}) = LED {isOn, ledColour = f colour}

type LEDStrip = [LED]

data VLED = VLED -- Variable LED
  { vLEDColour :: Colour,
    opacity :: Float -- 0 : 1
  }

mkVariableLED :: Colour -> Float -> VLED
mkVariableLED colour opacity = VLED {vLEDColour = colour, opacity}

type VLEDStrip = [VLED]
