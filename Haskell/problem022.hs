import Data.List.Split;

main:: IO()
main = do
    fileCont <- readFile "problem022res/p022_names.txt"
    



splitString :: String -> String -> [String]
splitString = loop "" []
    where 
