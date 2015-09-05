
import Control.Monad

main = do
    input <- getLine
    when (input == "swordfish") $ do
      putStrLn input

-- The above code like this
-- main = do
--     input <- getLine
--     if "swordfish" == input
--       then putStrLn input
--       else return ()
