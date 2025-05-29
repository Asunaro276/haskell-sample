module RandomSpec (spec) where

import Lib (randAlpha)
import Test.Hspec (Spec, describe, it, shouldSatisfy)

spec :: Spec
spec = do
  describe "randAlpha" $ do
    it "returns a lowercase letter" $ do
      result <- randAlpha
      result `shouldSatisfy` (`elem` ['a' .. 'z'])
