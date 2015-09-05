
main = do
    line <- getLine
    if null line
      then return ()
      else do
        putStrLn $ reverseWords line
        main
    -- will excute here
    --do
    --  putStrLn "go here"

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
