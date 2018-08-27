module RecursionSpec where

import           Recursion
import           Test.Hspec

spec :: Spec
spec = do
  describe "power" $ it "Raise 5 to the power 2" $ power 5 2 `shouldBe` (25 :: Int)
  describe "fib" $ do
    it "first fibonacci number" $ fib 0 `shouldBe` [0]
    it "first two fibonacci numbers" $ fib 1 `shouldBe` [1, 0]
    it "first ten fibonacci numbers" $ fib 10 `shouldBe` [55, 34, 21, 13, 8, 5, 3, 2, 1, 1, 0]
  describe "stepReverseSign" $ do
    it "6 and 2" $ stepReverseSign 6 2 `shouldBe` -8
    it "-3 and 1" $ stepReverseSign (-3) 1 `shouldBe` 4
    it "1 and 2" $ stepReverseSign 1 2 `shouldBe` -3
  describe "piCalc" $ it "tolerance of 0.001" $ piCalc 0.001 `shouldBe` (3.1420924036835256,2000)
  describe "piCalc'" $ it "tolerance of 0.001" $ piCalc' 1 0.0 0.001 0 `shouldBe` (3.1420924036835256,2000)
