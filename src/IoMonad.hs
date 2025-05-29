module IoMonad (dice, hello1) where

import System.Random
import GHC.Base (unIO)

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

hello1 :: IO Int
hello1 = unIO $ return 1
