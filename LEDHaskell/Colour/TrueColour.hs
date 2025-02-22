module LEDHaskell.Colour.TrueColour where

import LEDHaskell.Colour.Colour

data TrueColour = TrueColour
  { colour :: Colour,
    bg :: Bool
  }

mkFgColour :: Colour -> TrueColour
mkFgColour colour = TrueColour {colour, bg = False}

mkBgColour :: Colour -> TrueColour
mkBgColour colour = TrueColour {colour, bg = True}

bgToStr :: Bool -> Int
bgToStr True = 48
bgToStr False = 38

applyTrueColour :: String -> TrueColour -> String
applyTrueColour str (TrueColour {colour = colour, bg = bg}) =
  let red = getRed colour
      green = getGreen colour
      blue = getBlue colour
   in mconcat
        [ "\x1b[",
          show (bgToStr bg),
          ";2;",
          show red,
          ";",
          show green,
          ";",
          show blue,
          "m",
          str,
          "\x1b[0m"
        ]
