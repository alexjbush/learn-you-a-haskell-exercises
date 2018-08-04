module TypesAndTypeClassesSpec where

import           Test.Hspec
import           TypesAndTypeClasses

spec :: Spec
spec = do
  describe "firstColour" $ do it "The first colour" $ firstColour `shouldBe` (Red)
  describe "reverseColourOrder" $ do
    it "List the colours in reverse order" $
      reverseColourOrder `shouldBe` [Violet, Indigo, Blue, Green, Yellow, Orange, Red]
  describe "paintMix" $ do
    it "Mix two colours together, to produce the average value of the two" $ do
      paintMix Orange Green `shouldBe` Yellow
    it "favour the higher value when computing the average" $ do
      paintMix Green Violet `shouldBe` Indigo