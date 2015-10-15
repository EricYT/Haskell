
import qualified GHC.Base as Base

str2action :: String -> IO ()
str2action input = putStrLn $ "Data: " ++ input

list2action :: [String] -> [IO ()]
list2action = map str2action

numbers :: [Int]
numbers = [1..10]

strings :: [String]
strings = map show numbers

actions :: [IO ()]
actions = list2action strings

printitall :: IO ()
printitall = runall actions

runall :: [IO ()] -> IO ()
runall [] = Base.return ()
runall (firstelem:remainingelems) = do
    firstelem
    runall remainingelems

main :: IO ()
main = do str2action "Start of the program"
          printitall
          str2action "Done!"
