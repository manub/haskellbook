{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

  -- simple example
  example = 1

  fun1a = (* 9) 6

  fun1b = head [(0,"doge"),(1,"kitteh")]

  fun1c = head [(0 :: Integer, "doge"),(1,"kitteh")]

  fun1d = if False then True else False

  fun1e = length [1,2,3,4,5]

  fun1f = (length [1, 2, 3, 4]) > (length "TACOCAT")

