main :: IO()
main = putStrLn $ show $ map (\(a, b, c) -> a * b * c) pythTriplets

pythTriplets :: [(Int, Int, Int)]
pythTriplets = [(1000 - y - z, y, z) | z <- [1..998], y <- [1..1000 - z], let x = 1000 - y - z, x > 0, x * x + y * y == z * z]