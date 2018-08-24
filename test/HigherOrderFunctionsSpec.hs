module HigherOrderFunctionsSpec where

import           HigherOrderFunctions
import           Test.Hspec

spec :: Spec
spec = do
  describe "sumInts" $ do
    it "sum between 0 and 1" $ sumInts 0 1 `shouldBe` 1
    it "sum between 1 and 3" $ sumInts 1 3 `shouldBe` 6
  describe "sq" $ it "square of 4" $ sq 4 `shouldBe` 16
  describe "sumSquares" $ it "sum squares between 1 and 3" $ sumSquares 1 3 `shouldBe` 14
  describe "hoSumSquares" $ it "sum squares between 1 and 3" $ hoSumSquares 1 3 `shouldBe` 14
  describe "hoSumInts" $ it "sum between 1 and 3" $ hoSumInts 1 3 `shouldBe` 6
  describe "hoFactorial" $ it "factorial of 5" $ hoFactorial 5 `shouldBe` 120