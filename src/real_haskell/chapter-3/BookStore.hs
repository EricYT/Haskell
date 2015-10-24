type CustomerID = String
type Address = String

data Customer = Customer {
         customerID :: CustomerID
       , customerName :: String
       , customerAddress :: Address
       } deriving (Show)

main :: IO ()
main = do
    contents <- getFileContents name

