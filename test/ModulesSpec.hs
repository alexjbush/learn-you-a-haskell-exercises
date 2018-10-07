module ModulesSpec where

import           DistanceConversions
import           Modules
import           Test.Hspec

spec :: Spec
spec = do
  describe "areaConv" $ it "9 inches to cm" $ areaConv inchesToCentimetres 9 `shouldBe` 58.0644
  describe "sqInToSqCm" $ it "9 sqin to sqcm" $ sqInToSqCm 1 `shouldBe` 6.4515996
  describe "sqChainsToSqM" $ it "9 sqch to sqM" $ sqChainsToSqM 9 `shouldBe` 3642.1707
