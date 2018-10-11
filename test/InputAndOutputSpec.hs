module InputAndOutputSpec where

import           InputAndOutput
import           System.Random
import           Test.Hspec

spec :: Spec
spec =
  describe "lottery" $
  it "Should generate the same random numbers given the same seed" $
  lottery (mkStdGen 1) `shouldBe` [38, 41, 28, 11, 22, 4]
