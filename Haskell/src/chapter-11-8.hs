
myAction :: IO String
myAction = (++) <$> getLine <*> getLine

myAction' :: IO String
myAction' = do
    firstLine <- getLine
    secondLine <- getLine
    return $ firstLine ++ secondLine


