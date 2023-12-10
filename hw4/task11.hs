toEnd :: [a] -> [a]
toEnd (x:xs) = xs ++ [x]

rottsIterate :: [a] -> [[a]]
rottsIterate l = take (length l) (iterate toEnd l)

-- Tests
{-
    rottsIterate [1, 2, 3, 4, 5] = [[1,2,3,4,5],[2,3,4,5,1],[3,4,5,1,2],[4,5,1,2,3],[5,1,2,3,4]]
    rottsIterate [1] = [[1]]
    rottsIterate "hello world" = ["hello world","ello worldh","llo worldhe","lo worldhel","o worldhell"," worldhello","worldhello ","orldhello w","rldhello wo","ldhello wor","dhello worl"]
-}

toReplace :: [a] -> a -> [a]
toReplace (x:xs) y = xs ++ [y]

rottsScanl :: [a] -> [[a]]
rottsScanl l = take (length l) (scanl toReplace l l)

-- Tests 
{-
    rottsScanl  [1, 2, 3, 4, 5] = [[1,2,3,4,5],[2,3,4,5,1],[3,4,5,1,2],[4,5,1,2,3],[5,1,2,3,4]]
    rottsScanl  [1] = [[1]]
    rottsScanl  "hello world" = ["hello world","ello worldh","llo worldhe","lo worldhel","o worldhell"," worldhello","worldhello ","orldhello w","rldhello wo","ldhello wor","dhello worl"]
-}