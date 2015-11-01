
import System.IO
import Data.Char (toUpper)

main :: IO ()
main = do
    inh <- openFile "input.txt" ReadMode
    outh <- openFile "out.txt" WriteMode
    inpStr <- hGetContents inh
    let result = processData inpStr
    hPutStr outh result
    hClose inh
    hClose outh

processData :: String -> String
processData = map toUpper
