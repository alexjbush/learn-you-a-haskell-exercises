module FunctorsApplicativeFunctorsAndMonoids
(List(..),
combineLists,
oneToFive,
threeToOne,
applyFunToList,
applyBinFunBetweenLists,
binaryFunctionList,
applyBinaryFunctions)
where

import Control.Applicative
import Data.Monoid

-- We can use the following type to simulate our own list
data List a = Empty | Value a (List a) deriving (Show, Eq)

-- Complete the instance definition of Functor for List
instance Functor List where
  fmap f Empty = Empty
  fmap f (Value a t) = Value (f a) (fmap f t)

-- Write a function which appends one list on to another
combineLists:: List a -> List a -> List a
combineLists Empty l = l
combineLists l Empty = l
combineLists (Value v rest) l = Value v (combineLists rest l)


-- Complete the instance definition of Applicative for List
instance Applicative List where
  pure a = Value a Empty
  (<*>) Empty l = Empty
  (<*>) f Empty = Empty
  (<*>) (Value f rest) l = combineLists (fmap f l) (rest <*> l)


-- Complete the instance definition of Monoid for List
instance Monoid (List a) where
  mempty = Empty
  mappend = combineLists

-- Make sure that the List obeys the laws for Applicative and Monoid

-- Create two lists:
-- oneToFive that represents [1,2,3,4,5] using your list implementation
oneToFive :: Num a => List a
oneToFive = Value 1 $ Value 2 $ Value 3 $ Value 4 $ Value 5 Empty

-- threeToOne that represents [3,2,1] using your list implementation
threeToOne :: Num a => List a
threeToOne = Value 3 $ Value 2 $ Value 1 Empty

-- Create a function using <$> that applies a function to all elements of the list
applyFunToList :: (a -> b) -> List a -> List b
applyFunToList f l = f <$> l

-- Create a function using <$> and <*> that applies a binary function between all elements of two lists
applyBinFunBetweenLists :: (a -> b -> c) -> List a -> List b -> List c
applyBinFunBetweenLists f a b = f <$> a <*> b

-- Create a list of binary functions that represent [(+),(*),(^)] using your list implementation
binaryFunctionList :: Integral a => List (a -> a -> a)
binaryFunctionList = Value (+) $ Value (*) $ Value (^) Empty

-- Create a function that applies a list of binary functions between all combinations of two lists
applyBinaryFunctions :: List (a -> b -> c) -> List a -> List b -> List c
applyBinaryFunctions f a b = f <*> a <*> b

