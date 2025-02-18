{-# LANGUAGE RecordWildCards #-}

module EmulateLED where

import Colour
import LED
import TrueColour

{- LED Stuff -}

instance Show LED where -- LED converted to TrueColour
  show (LED {..}) =
    let tColour = mkBgColour ledColour
     in if isOn then applyTrueColour " " tColour else " "

{- TODO -}
-- instance Show VariableLED where
--  show (VariableLED {colour, opacity}) =
