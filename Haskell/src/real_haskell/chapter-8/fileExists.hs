import qualified System.Directory as S
import System.FilePath ((</>))

doesNameExist :: FilePath -> IO Bool
doesNameExist name = do
    fileExist <- S.doesFileExist name
    if fileExist
      then return True
      else S.doesDirectoryExist name

listPlain :: FilePath -> String -> IO [String]
listPlain dirName baseName = do
    exists <- if null baseName
                then S.doesDirectoryExist dirName
                else doesNameExist $ dirName </> baseName
    return $ if exists then [baseName] else []
