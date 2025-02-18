module EmulateLED where

import Colour
import LED ( LEDStrip, LED, VariableLED )
import TrueColour ( mkBgColour, applyTrueColour )

{- LED Stuff -}

instance Show LED where -- LED converted to TrueColour
  show = applyTrueColour " " . mkBgColour 

-- instance Show VariableLED where
--   show (VariableLED {colour, opacity}) = 

-- instance Show LEDStrip where
--   show = mconcat . map (applyTrueColour " " . mkBgColour)