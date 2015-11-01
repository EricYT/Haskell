
import Data.Char (toUpper)

main :: IO Bool
main =
    putStrLn "Is green your favorite color?" >>
    getLine >>=
    (\input -> return ((toUpper . head $ input) == 'Y'))

