import System.Random
import Control.Monad(when)

main = do
    gen <- getStdGen
    let (randomNumber, _) = randomR (1, 10) gen :: (Int, StdGen)
    putStrLn "Which number in the range from 1 to 10 am i thinking of?"
    numberString <- getLine
    when (not $ null numberString) $ do
      let number = read numberString
      if randomNumber == number
        then putStrLn "You are correct!"
        else putStrLn $ "Sorry, it was " ++ show randomNumber 
      newStdGen
      main
