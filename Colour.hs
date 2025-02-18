module Colour where

data Colour a = Colour a a a

getRed :: Colour a -> a
getRed (Colour r _  _)= r

getBlue :: Colour a -> a
getBlue (Colour _ _ b) = b

getGreen :: Colour a -> a
getGreen (Colour _ g _) = g

-- instance Functor Colour where
--     fmap f (Colour r g b) = Colour (f r) (f g) (f b)

instance Semigroup a => Semigroup (Colour a) where
    (Colour r g b) <> (Colour r' g' b') = Colour (r <> r') (g <> g') (b <> b')
    
instance Monoid a => Monoid (Colour a) where
    mempty = Colour mempty mempty mempty
