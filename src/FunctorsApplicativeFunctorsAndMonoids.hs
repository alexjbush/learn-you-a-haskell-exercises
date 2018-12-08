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
instance Functor List

-- Write a function which appends one list on to another
combineLists:: List a -> List a -> List a
combineLists a b = undefined

-- Complete the instance definition of Applicative for List
instance Applicative List

-- Complete the instance definition of Monoid for List
instance Monoid (List a)

-- Make sure that the List obeys the laws for Applicative and Monoid

-- Create two lists:
-- oneToFive that represents [1,2,3,4,5] using your list implementation
oneToFive :: Num a => List a
oneToFive = undefined

-- threeToOne that represents [3,2,1] using your list implementation
threeToOne :: Num a => List a
threeToOne = undefined

-- Create a function using <$> that applies a function to all elements of the list
applyFunToList :: (a -> b) -> List a -> List b
applyFunToList = undefined

-- Create a function using <$> and <*> that applies a binary function between all elements of two lists
applyBinFunBetweenLists :: (a -> b -> c) -> List a -> List b -> List c
applyBinFunBetweenLists = undefined

-- Create a list of binary functions that represent [(+),(*),(^)] using your list implementation
binaryFunctionList :: Num a => List (a -> a -> a)
binaryFunctionList = undefined

-- Create a function that applies a list of binary functions between all combinations of two lists
applyBinaryFunctions :: List (a -> b -> c) -> List a -> List b -> List c
applyBinaryFunctions = undefined

