module FunctorsApplicativeFunctorsAndMonoidsSpec where

import           FunctorsApplicativeFunctorsAndMonoids
import           Test.Hspec

spec :: Spec
spec = do
  describe "Functor List" $ do
    it "fmap a list of numbers into strings" $
      fmap show (Value 1 $ Value 2 Empty) `shouldBe` (Value "1" $ Value "2" Empty)
    it "fmap a list of numbers using id should do nothing" $
      fmap id (Value 1 $ Value 2 Empty) `shouldBe` (Value 1 $ Value 2 Empty)
    it "fmap an empty list should do nothing" $ fmap id (Empty :: List Int) `shouldBe` (Empty)
  describe "Applicative List" $ do
    it "pure of a value should be a list with a single element" $ pure 1 `shouldBe` Value 1 Empty
    it "<*> of two lists of three elements should produce a list of nine elements" $ do
      let v1 = Value (3 *) (Value (100 +) (Value (2 *) Empty))
          v2 = Value 1 (Value 2 (Value 3 Empty))
          r = Value 0 (Value 0 (Value 0 (Value 101 (Value 102 (Value 103 (Value 1 (Value 4 (Value 9 Empty))))))))
      v1 <*> v2 `shouldBe` r
    it "first applicative law" $ do
      let v = Value 1 Empty
      pure id <*> v `shouldBe` v
    it "second applicative law" $ do
          let v = Value 5 $ Value 3 Empty
              u = Value 1 Empty
              w = Value 9 Empty
          pure (.) <*> u <*> v <*> w `shouldBe` u <*> (v <*> w)