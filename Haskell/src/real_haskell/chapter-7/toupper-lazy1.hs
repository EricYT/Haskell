
import Data.Char (toUpper)

main :: IO ()
main = do
    inStr <- readFile "input.txt"
    writeFile "out.txt" $ map toUpper inStr
