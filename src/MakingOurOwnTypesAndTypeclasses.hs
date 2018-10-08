module MakingOurOwnTypesAndTypeclasses
  ( Card(..)
  , Digit(..)
  , Suit(..)
  , Coin(..)
  , betterCard
  , play
  , Hand
  ) where
import Data.List
import Data.Maybe
{-
 - We are going to create some types for a deck of cards
 - The cards need to have an ordering, based on the standard ranking http://en.wikipedia.org/wiki/Standard_52-card_deck#Rank_and_color
 - We are assuming Aces are high.
 - Therefore, the following statements should be true:
 -    (Card Ace Spades) > (Card King Spades)
 -    (Card Two Clubs) < (Card Three Clubs)
 -
 - We are going to provide our own implementation of the Show typeclass for the Card type.
 - When displaying the Card instance in GHCI, or calling show (Card digit suit), the String which should be displayed is "The <Digit> of <Suit>"
 -
 - Complete the implementation of the following declarations, and provide an implementation for instance Show Card
 -
 - NOTE: The tests for this module are commented out to allow the module to compile.
 - Please uncomment them to enable the tests.
 -}
data Suit = Clubs | Diamonds | Hearts | Spades deriving (Show, Eq, Enum, Bounded)

data Digit = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King deriving (Show, Eq, Enum, Ord, Bounded)

data Card = Card { suit :: Suit, digit :: Digit} deriving (Show, Eq, Bounded)

instance Ord Card where
  (Card _ d1) `compare` (Card _ d2) = d1 `compare` d2

instance Enum Card where
    fromEnum c = fromJust $ elemIndex c table
    toEnum i = table !! i
table = [ Card s d | s <- [minBound .. maxBound] :: [Suit], d <- [minBound .. maxBound] :: [Digit] ]

-- We should be able to provide a function which returns the higher ranked card:
betterCard :: Card -> Card -> Card
betterCard = max

-- Here is a new Typeclass, which represents some kind of playing hand in a game.
-- It returns True for a "winning hand", depending on the rules for the type of class we are playing with
class Hand a where
  play :: [a] -> Bool

-- Implement Hand for Card, where play returns true if the list contains the Ace of Spades
instance Hand Card where
  play = any (\ h -> h == Card Spades Ace)

-- Create a new Coin type by completing the implementation
data Coin = Head | Tail deriving (Show, Eq, Enum)

-- Implement Hand for Coin, where play returns true if there are ten heads in a row in the list
instance Hand Coin where
  play = isInfixOf (replicate 10 Head)
-- Have a play with implementing Hand for some other types, for instance Int and Bool
