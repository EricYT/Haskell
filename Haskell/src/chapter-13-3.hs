

justH :: Maybe Char
justH = do
    (x:xs) <- Just "hello"
    return x

wopwop :: Maybe Char
wopwop = do
    (x:xs) <- Just ""
    return x

listOfTuples :: [(Int, Char)]
listOfTuples = do
    n <- [1, 2]
    ch <- ['a', 'b']
    return (n, ch)
