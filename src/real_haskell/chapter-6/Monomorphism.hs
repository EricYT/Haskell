
-- can not compile
myShow1 = show


-- these ok

myShow2 value = show value

myShow :: (Show a) => a -> String
myShow = show
