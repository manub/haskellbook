module Arith4 where

  roundTrip :: (Show a, Read a) => a -> a
  roundTrip a = read $ show a

  roundTripPF :: (Show a, Read a) => a -> a
  roundTripPF = read . show 

  roundTripInt :: (Show a, Read b) => a -> b
  roundTripInt = read . show 

  main = do
    print $ (roundTripInt 4 :: Int)
    print $ id 4
  
