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

  data DividedResult =
      Result (Integer, Integer) 
    | DividedByZero deriving Show

  dividedBy :: Integer -> Integer -> DividedResult 
  dividedBy _ 0 = DividedByZero
  dividedBy num den = go (abs num) (abs den) 0
    where go n d count 
            | n < d && num > 0 && den > 0 = Result (count, n)
            | n < d && num < 0 && den > 0 = Result (negate count, negate n)
            | n < d && num < 0 && den < 0 = Result (count, negate n)
            | n < d && num > 0 && den < 0 = Result (negate count, n)
            | otherwise = go (n - d) d (count + 1)

  mc91 :: (Num a, Ord a) => a -> a
  mc91 n 
    | n > 100   = n - 10
    | otherwise = mc91 $ mc91 $ n + 11    
    

