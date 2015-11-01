import System.Environment
import System.Directory
import System.IO
import Data.List
import Control.Exception

dispath :: String -> [String] -> IO()
dispath "add" = add
dispath "view" = view
dispath "remove" = remove

main = do
    (command:argList) <- getArgs
    dispath command argList

add :: [String] -> IO()
add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")

view :: [String] -> IO()
view [fileName] = do
    contents <- readFile fileName
    let todoTasks = lines contents
        taskItems = zipWith (\index line ->
                            show index ++ " - " ++ line
                            ) [0..] todoTasks
    putStr $ unlines taskItems

remove :: [String] -> IO()
remove [fileName, numberString] = do
    contents <- readFile fileName
    let todoTasks = lines contents
        taskItems = zipWith (\index line -> show index ++ " - " ++ line) [0..] todoTasks
    putStrLn "There are your TO-DO itmes:"
    mapM_ putStrLn taskItems
    let number = read numberString
        newTaskItems = unlines $ delete (todoTasks !! number) todoTasks
    bracketOnError (openTempFile "." "temp")
      (\(tempName, tempHandle) -> do
        hClose tempHandle
        removeFile tempName)
      (\(tempName, tempHandle) -> do
        hPutStr tempHandle newTaskItems
        hClose tempHandle
        removeFile "todo.txt"
        renameFile tempName "todo.txt")
