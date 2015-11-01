

data BookInfo = Book Int String [String]
              deriving (Show)

data MagzineInfo = Magzine Int String [String]
                 deriving (Show)

data BookReview = BookReview BookInfo CustomerID String

type CustomerID = Int
type ReviewBody = String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

data List a = Cons a (List a)
            | Nil
            deriving (Show)
