import System.Directory
import System.IO
import System.Environment
import Control.Exception
import qualified Data.ByteString.Lazy as B

main = do
    (fileNameSource:fileNameDest:_) <- getArgs
    copy fileNameSource fileNameDest

copy :: String -> String -> IO()
copy source dst = do
    contents <- B.readFile source
    bracketOnError
        (openTempFile "." "tmp")
        (\(tempName, tempHandle) -> do
          hClose tempHandle
          removeFile tempName)
        (\(tempName, tempHandle) -> do
          B.hPutStr tempHandle contents
          hClose tempHandle
          renameFile tempName dst)
