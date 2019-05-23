import Data.Char

main :: IO()
main = putStrLn $ show $ result


result = arr !! 1 * arr !! 10 * arr !! 100 * arr !! 1000 * arr !! 10000 * arr !! 100000 * arr !! 1000000
    where
        arr = champernowne


champernowne :: [Int]
champernowne = calc 0
    where
        calc :: Int -> [Int]
        --calc n = (map digitToInt $ show n) ++ (calc $ n + 1)
        calc n = map digitToInt $ concatMap show [0..]