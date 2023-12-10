takeWhile_ :: (a -> Bool) -> [a] -> [a]
takeWhile_ f (x:xs)
    | f x = x : takeWhile_ f xs
    | otherwise = [] 

-- Tests 
{-
    takeWhile_ (<3) [1,2,3,4,5] = [1,2]
    takeWhile_ (>3) [1,2,3,4,5] = []
    takeWhile_ odd [1,3,5,7,9,10,11,13,15,17] = [1,3,5,7,9]
-}


dropWhile_ :: (a -> Bool) -> [a] -> [a]
dropWhile_ _ [] = []
dropWhile_ f (x:xs)
    | f x = dropWhile_ f xs
    | otherwise = x:xs

-- Tests 
{-
    dropWhile_ (<3) [1,2,3,4,5] = [3,4,5]
    dropWhile_ even [2,4,6,7,9,11,12,13,14] = [7,9,11,12,13,14]
    dropWhile_ (<3) [1,2] = []
-}