

testWhere :: [Char] -> Char
testWhere [] = 'e'
testWhere xs = theFirst xs
   where theFirst (h:_) = h
