module StartingOutSpec where

import StartingOut
import Test.Hspec

spec :: Spec
spec = do
  describe "StartingOut" $ do
    it "returns the penultimate element of a list" $ penultimate [1, 2, 3] `shouldBe` (2 :: Int)
    it "finds the element at the kth location in the list" $ findK 2 [0,0,1,0,0,0] `shouldBe` (1 :: Int)