main :: IO ()
main = putStrLn $ show $ smallestPosDiv 20

factorial :: Int -> Int
factorial n = foldl (\state x -> state * x) 1 [2..n]

smallestPosDiv :: Int -> Int
smallestPosDiv n = head [x | x <- [n..fac], divisible x n]
    where
        divisible :: Int -> Int -> Bool
        divisible x n = and $ map (\a -> x `mod` a == 0) [2..n]
        fac :: Int
        fac = factorial n