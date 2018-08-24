module SyntaxInFunctionsSpec where

import Control.Exception (evaluate)
import SyntaxInFunctions
import Test.Hspec

spec :: Spec
spec = do
  describe "englishDigit" $ do
    it "Print 3 as text" $ do englishDigit 3 `shouldBe` "three"
    it "favour the higher value when computing the average" $ do englishDigit 10 `shouldBe` "unknown"
  describe "divTuple" $ do
    it "divide 4 by 2" $ do divTuple (4, 2) `shouldBe` 2
    it "divide by zero is undefined" $ do evaluate (divTuple (4, 0)) `shouldThrow` errorCall "Prelude.undefined"
  describe "threeZeroList" $ do
    it "return true if passed a list starting with three zeros" $ do threeZeroList [0, 0, 0, 2] `shouldBe` True
    it "return false if passed a list not starting with three zeros" $ do threeZeroList [] `shouldBe` False