module EmulateLED where

import Colour
import LED
import TrueColour

{- LED Stuff -}

instance {-# OVERLAPS #-} Show LED where -- LED converted to TrueColour
  show = applyTrueColour " " . mkBgColour
