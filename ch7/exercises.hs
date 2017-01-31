module Chapter7 where

  tensDigit :: Integral a => a -> a
  tensDigit x = d 
    where div = fst $ divMod x 10
          d = snd $ divMod div 10 

  hunsD :: Integral a => a -> a
  hunsD x = d2
    where div = fst $ divMod x 100
          d2 = snd $ divMod div 10

  foldBool' :: a -> a -> Bool -> a 
  foldBool' x y b =
    case b of
      True -> x
      False -> y

  foldBool'' :: a -> a -> Bool -> a
  foldBool'' x y b 
    | b == True = x
    | otherwise = y 

  g :: (a -> b) -> (a, c) -> (b, c)
  g f (a, c) = ((f a), c) 
