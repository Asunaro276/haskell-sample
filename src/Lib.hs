module Lib
  ( someFunc,
    randAlpha,
  )
where

import System.Random (randomRIO)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Generate a random lowercase letter
randAlpha :: IO Char
randAlpha = randomRIO ('a', 'z')
