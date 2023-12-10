filterDups :: Eq a => [a] -> [a]
filterDups [] = []
filterDups (x:xs) = x : filterDups (filter (/= x) xs)

-- Tests
{-
filterDups [1, 1, 1, 1, 1] = [1]
filterDups [1, 2, 2, 2, 2] = [1,2]
filterDups [1, 2, 3, 4, 5] = [1,2,3,4,5]
-}