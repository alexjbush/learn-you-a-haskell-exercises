module InputAndOutputSpec where

import           InputAndOutput
import           System.Random
import           Test.Hspec

spec :: Spec
spec =
  describe "lottery" $
  it "Should generate the same random numbers given the same seed" $ take 5 (lottery (mkStdGen 1)) `shouldBe` []