import System.IO
import Control.Exception


main = do
    withFile' "girlfriend.txt" ReadMode (\handle -> do
                                        contents <- hGetContents handle 
                                        putStr contents
                                        )

withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile' file mode f = bracket (openFile file mode)
  (\handle -> hClose handle)
  (\handle -> f handle)
