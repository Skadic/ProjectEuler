module Main where

import Data.Char

main :: IO ()
main = putStrLn $ show $ sumDigits $ factorial 100

factorial :: Integer -> Integer
factorial n = foldl (\state x -> state * x) 1 [1..n]

sumDigits :: Integer -> Int
sumDigits n = sum $ map digitToInt $ show n