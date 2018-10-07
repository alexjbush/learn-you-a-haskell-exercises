module MakingOurOwnTypesAndTypeclassesSpec where

import           MakingOurOwnTypesAndTypeclasses
import           Test.Hspec

spec :: Spec
spec = do
  describe "betterCard" $
    it "Better card of lowest card and highest card should give the highest card" $
    betterCard (minBound :: Card) (maxBound :: Card) `shouldBe` (maxBound :: Card)
  describe "Hand for Card" $ do
    it "A complete enumeration of the cards should give true since Ace of Spades will be present" $
      play ([minBound .. maxBound] :: [Card]) `shouldBe` True
    it "An empty hand should give false" $ play ([] :: [Card]) `shouldBe` False
    it "A hand of just the maximum card should give false" $ play ([maxBound :: Card] :: [Card]) `shouldBe` False
