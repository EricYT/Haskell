import RecursiveContents (getRecursiveContents)

simpleFind :: (FilePath -> Bool) -> FilePath -> IO [FilePath]
simpleFind f path = do
    names <- getRecursiveContents path
    return $ filter f names
