
--main = do
--    a <- getLine
--    b <- getLine
--    c <- getLine
--    print [a, b, c]


main = do
    xs <- sequence [getLine, getLine, getLine]
    print xs
    let a = map print [1..4]
    putStrLn "hi"

