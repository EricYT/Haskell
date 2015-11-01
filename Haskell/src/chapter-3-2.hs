

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey _ [] = Nothing
findKey key ((k, v):xs)
    | key == k = Just v
    | otherwise = findKey key xs

findKey' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey' _ [] = Nothing
findKey' key ((k, v):xs) = case key == k of
                             True -> Just v
                             False -> findKey' key xs
