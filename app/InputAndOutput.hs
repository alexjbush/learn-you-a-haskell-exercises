module Main where

import           System.Environment

{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}
dispatch :: [String] -> IO ()
dispatch ("-n":args) = putStr $ foldr (\x y -> x ++ " " ++ y ) "" args
dispatch args        = putStrLn $ foldr (\x y -> x ++ " " ++ y ) "" args

main = do
  args <- getArgs
  dispatch args
