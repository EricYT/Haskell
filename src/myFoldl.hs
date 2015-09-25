

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f z xs = foldr step id xs z
  where step x g a = g (f a x)

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' step zero (x:xs) = foldl' step (step zero x) xs
foldl' _ acc []         = acc

-- 开始怎么看都没看明白，天生愚笨啊！
-- 体胖勤跑步，人丑多读书
-- myfoldl f zero xs = foldr t g xs
-- = t x1 (t x2 (t x3 (myfoldr t g [])))
-- = t x1 (t x2 (t x3 g))
-- 如果t只有2个参数,那么:
-- t x3 g将可直接计算.
-- 于是t x2 (...)也被计算.
-- 到最外围的t x1 (...)也被计算.
-- t我们希望改变计算顺序的计划就泡汤了.因此必须让t x3 g被curry.所以t的参数个数要大于2个.
-- 一旦参数个数大于2个:
-- t x3 g被curry.
-- t x2 (...)被curry.
-- t x1 (...)是最外围了.此时它必须被计算.不然全部不可计算显然不符合语法也不符合我们的打算.
-- 显然t x1 (...) zero是显而易见的.我们还漏了zero这个初始化参数呢.在myfoldl的计算中,要求先计算f(zero x1).那么可考虑做如下变换:
-- t x1 ... zero = (...) (f zero x1)
-- 即是说,t是这么个函数:
-- t x g a = g (f a x).
-- 因为g即(...)被curry了,它还缺少一个参数.所以我们把f a x即f zero x1作为参数传递给g即(...).
-- 于是有:t x2 (...) (f zero x1)
-- (...) f(f(zero x1) x2)
-- t x3 g f(f(zero x1) x2)
-- g f(f(f(zero x1) x2) x3)
-- 令g = id即可:
-- f(f(f(zero x1) x2) x3)
-- - (- (- 0 1) 2) 3) = 6.
