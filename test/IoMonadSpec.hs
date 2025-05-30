{-# LANGUAGE UnboxedTuples #-}
module IoMonadSpec (spec) where

import IoMonad (dice, addsub, sample)
import Test.Hspec (Spec, describe, it, shouldBe, shouldSatisfy)

spec :: Spec
spec = do
  describe "dice" $ do
    it "returns a random number between 1 and 6" $ do
      result <- dice
      result `shouldSatisfy` (`elem` [1 .. 6])
  describe "addsub" $ do
    it "returns (3, -1)" $ do
      let (# a, b #) = addsub 1 2
      a `shouldBe` 3
      b `shouldBe` -1
  describe "sample" $ do
    it "returns 1" $ do
      result <- sample
      result `shouldBe` 1
