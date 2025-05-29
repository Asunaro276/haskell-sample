module IoMonadSpec (spec) where

import IoMonad (dice, hello1)
import Test.Hspec (Spec, describe, it, shouldBe, shouldSatisfy)

spec :: Spec
spec = do
  describe "dice" $ do
    it "returns a random number between 1 and 6" $ do
      result <- dice
      result `shouldSatisfy` (`elem` [1 .. 6])
  describe "hello1" $ do
    it "returns 1" $ do
      result <- hello1
      result `shouldBe` 1
