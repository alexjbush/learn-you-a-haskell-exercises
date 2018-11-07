module FunctionallySolvingProblemsSpec where

import           FunctionallySolvingProblems
import           Test.Hspec

spec :: Spec
spec = do
  describe "headAsPivot" $
    it "return the head and tail of a list as a tuple" $ headAsPivot [1, 2, 3] `shouldBe` (1, [2, 3])
  describe "splitAtPivot" $
    it "split a list into lower than pivot, pivot and higher than pivot given a pivot function" $
    splitAtPivot headAsPivot [3, 1, 5, 2, 4] `shouldBe` ([1, 2], 3, [5, 4])
  describe "quicksort" $ do
    it "sort a list of one number" $ quicksort headAsPivot [1] `shouldBe` [1]
    it "sort a list of five numbers" $ quicksort headAsPivot [5, 2, 4, 3, 1] `shouldBe` [1, 2, 3, 4, 5]
    it "sort a list of five characters" $
      quicksort headAsPivot ['d', 'c', 'b', 'e', 'a'] `shouldBe` ['a', 'b', 'c', 'd', 'e']
