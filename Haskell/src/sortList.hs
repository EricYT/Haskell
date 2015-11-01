
import Data.List

sortListByLength :: [[a]] -> [[a]]
sortListByLength xys = sortBy sizeComare xys
  where sizeComare xs ys
          | xsl == ysl = EQ
          | xsl > ysl  = GT
          | otherwise= LT
          where xsl = length xs
                ysl = length ys 

sortListByLength' :: [[a]] -> [[a]]
sortListByLength' = sortBy (\x y -> let xl = length x
                                        yl = length y
                                        com fl sl
                                          | fl == sl = EQ
                                          | fl > sl  = GT
                                          | otherwise= LT
                                    in com xl yl)

