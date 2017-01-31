module Chapter7 where

  tensDigit :: Integral a => a -> a
  tensDigit x = d
    where div = fst $ divMod x 10
          d = snd $ divMod div 10 

  hunsD :: Integral a => a -> a
  hunsD x = d2
    where div = fst $ divMod x 100
          d2 = snd $ divMod div 10
