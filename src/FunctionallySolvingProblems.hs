module FunctionallySolvingProblems
  ( quicksort
  , headAsPivot
  , splitAtPivot
  ) where

{-
 - For this module we are going to implement quicksort using functional
 - problem solving.
 - Quicksort is a sorting algorithm used for sorting arrays of data: https://en.wikipedia.org/wiki/Quicksort
 -
 - In essence, it works by taking an element out of the array to use as a pivot, sorting the remaining
 - array into two arrays, one containing elements the same as or less than the pivot and one containing
 - elements greater than the array. These two arrays can then be recursively sorted using quicksort until
 - they are reduced to a single element.
 -
 - There are many different approaches to choosing a pivot (e.g. first element, random element etc)
 - therefore our implementation of Quicksort will allow a user to provide their own pivot function.
 -}
import           Data.List

-- Type synonym for a 'pivot-choosing' function
type Pivot a = [a] -> (a, [a])

{-|
  Implement a pivot function that chooses the head of the list as the pivot.
  Note: It should remove the pivot element from the returned list
  -}
headAsPivot :: (Ord a) => Pivot a
headAsPivot (h:t) = (h, t)

{-|
  Implement a function that takes a pivot-choosing function and a list and
  return a tuple containing all the elements less than and equal to the chosen pivot,
  the pivot element and all the elements greater than the chosen pivot
  -}
splitAtPivot :: (Ord a) => Pivot a -> [a] -> ([a], a, [a])
splitAtPivot f l = (low, pivot, high)
  where
    (pivot, remainder) = f l
    pred x = x <= pivot
    (low, high) = partition pred remainder

{-|
  Implement the main body of the Quicksort function. It should take a pivot function and a list
  and return a sorted list.
  The implementation should call `splitAtPivot` and recursively call itself to sort each section
  of the split lists.
  -}
quicksort :: (Ord a) => Pivot a -> [a] -> [a]
quicksort p l@(_:_:_) = sortedLower ++ [pivot] ++ sortedHigher
  where
    (lower, pivot, higher) = splitAtPivot p l
    sortedLower = quicksort p lower
    sortedHigher = quicksort p higher
quicksort _ l = l
