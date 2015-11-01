module Step
( step
) where

-- 台阶有 N 阶, 每次 1-3 步，总共有多少种走法
step :: Int -> Int
step 1 = 1
step 2 = 2
step 3 = 4
step n = step (n - 1) + step (n - 2) + step (n - 3)
