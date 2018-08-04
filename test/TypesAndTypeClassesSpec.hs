module TypesAndTypeClassesSpec where

import TypesAndTypeClasses
import Test.Hspec

spec :: Spec
spec = do
  describe "firstColour" $ do
    it "The first colour" $
     firstColour `shouldBe` (Colour)