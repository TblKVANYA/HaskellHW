unzipMap :: [(a, b)] -> ([a], [b])
unzipMap l = (map fst l, map snd l)

-- Tests 
{-
    unzipMap (zip [1, 2, 3][9, 8, 7]) = ([1,2,3],[9,8,7])
    unzipMap (zip [1, 2, 3, 4, 5][9, 8]) = ([1,2],[9,8])
-}