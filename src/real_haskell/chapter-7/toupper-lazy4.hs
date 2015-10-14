
import Data.Char (toUpper)

main :: IO ()
--main = interact $ map toUpper . (++) "Your data, in uppercase, is:\n\n"
main = interact $ (++) "Your data, in uppercase, is:\n\n" . map toUpper
