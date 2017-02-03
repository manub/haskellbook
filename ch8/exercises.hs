module Chapter8 where

  sumRec :: Int -> Int
  sumRec x = go x 0
    where go n x
           | n == 0     = x
           | otherwise  = go (n-1) (x+n)

  multRec :: Integral a => a -> a -> a
  multRec a b 
    | b == 0 = 1
    | b == 1 = a
    | b == (-1) = negate a
    | b < -1 = multRec (a+a) (b+1)
    | otherwise = multRec (a+a) (b-1)



  

