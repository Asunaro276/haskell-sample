{-# LANGUAGE UnboxedTuples #-}

module IoMonad (dice, addsub, sample) where

import System.Random
import GHC.IO (IO(..))

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

addsub x y = (# x + y, x - y #)

sample = IO $ \s -> (# s, 1 #)
