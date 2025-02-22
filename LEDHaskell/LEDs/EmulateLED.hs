{-# LANGUAGE RecordWildCards #-}

module LEDHaskell.LEDs.EmulateLED where

import LEDHaskell.Animations.Animation
import LEDHaskell.Colour.TrueColour
import LEDHaskell.LEDs.LED
import LEDHaskell.Lib.Wait
import System.Process (system)

{- LED Stuff -}

instance Show LED where -- LED converted to TrueColour
  show (LED {..}) =
    let tColour = mkBgColour ledColour
     in if isOn then applyTrueColour "  " tColour else "  "

printLEDStrip :: LEDStrip -> IO ()
printLEDStrip = putStrLn . mconcat . map show

emulateLEDs :: (Animation a) => a -> LEDStrip -> IO ()
emulateLEDs a leds = do
  system "clear" >> printLEDStrip leds
  waitCentis 5
  emulateLEDs (updateVal a) (update a leds)

{- TODO -}
-- instance Show VariableLED where
--  show (VariableLED {colour, opacity}) =
