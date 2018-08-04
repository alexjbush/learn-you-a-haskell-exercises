module StartingOutSpec where

import           StartingOut
import           Test.Hspec

spec :: Spec
spec = do
  describe "penultimate" $ do
    it "returns the penultimate element of a list" $ penultimate [1, 2, 3] `shouldBe` (2 :: Int)
  describe "findK" $ do
    it "finds the element at the kth location in the list" $ findK 2 [0, 0, 1, 0, 0, 0] `shouldBe` (1 :: Int)
  describe "isPalindrome" $ do
    it "should return true if a list is a palindrome" $ isPalindrome ['b', 'o', 'b'] `shouldBe` (True :: Bool)
    it "should return false if a list is not palindrome" $ isPalindrome ['b', 'o', 'd'] `shouldBe` (False :: Bool)
  describe "duplicate" $ do it "should duplicate elements in a list" $ duplicate [1, 2, 3] `shouldBe` [1, 1, 2, 2, 3, 3]
  describe "ziplike" $ do
    it "should imitate the functionality of zip" $
      ziplike [1, 2, 3] ['a', 'b', 'c', 'd'] `shouldBe` [(1, 'a'), (2, 'b'), (3, 'c')]
  describe "splitAtIndex" $ do
    it "should split the list at index into a tuple of two lists" $
      splitAtIndex 3 [1, 1, 1, 2, 2, 2] `shouldBe` ([1, 1, 1], [2, 2, 2])
  describe "dropK" $ do
    it "should drop the element at index k from a list" $ dropK 3 [0, 0, 0, 1, 0, 0, 0] `shouldBe` [0, 0, 0, 0, 0, 0]
  describe "slice" $ do
    it "Extract elements between ith and kth element in list l" $
      slice 3 6 [0, 0, 0, 1, 2, 3, 0, 0, 0] `shouldBe` [1, 2, 3]
  describe "insertElem" $ do
    it "Insert element x in list l at index k" $ insertElem 2 5 [0, 0, 0, 0, 0, 0] `shouldBe` [0, 0, 0, 0, 0, 2, 0]
  describe "rotate" $ do it "Rotate list l n places left" $ rotate 2 [1, 2, 3, 4, 5] `shouldBe` [3, 4, 5, 1, 2]
