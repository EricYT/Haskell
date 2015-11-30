import Prelude

data DataInt = D Int
             deriving (Show, Eq, Ord)

type ID = Int

showID :: ID -> String
showID = show

newtype NewTypeInt = N Int
                     deriving(Show, Ord, Eq)
