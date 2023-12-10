map_ :: (a -> b) -> [a] -> [b]
map_ f l = foldr (\x xs -> f x:xs) [] l

-- Tests
{-
    map_ abs [-1, 2, -3, 4] = [1,2,3,4]
    map_ reverse ["abc", "cda", "1234"] = ["cba","adc","4321"]
    map_ (3*) [1, 2, 3, 4] = [3,6,9,12]
-}


filter_ :: (a -> Bool) -> [a] -> [a]
filter_ f l = foldr (\x xs -> if f x then x:xs else xs) [] l

-- Tests
{-
    filter_ (>5) [1..8] = [6,7,8]
    filter_ odd [3, 6, 7, 9, 12, 14] = [3,7,9]
    filter_ (\x -> length x > 4)["aaaa", "bbbbbbbbbbb", "ccc", "ddddd"] = ["bbbbbbbbbbb","ddddd"]
-}

all_ :: Foldable t => (a -> Bool) -> t a -> Bool
all_ f l = foldr ((&&). f) True l

-- Tests 
{- 
    all_ (<10) [1,3,5,7,9] = True
    all_ (==1) [1,1,0,1,1] = False
    all_ even [2,4,6,8,10] = True
    all_ (\x -> (x*x)/4 > 10) [5,10,15] = False
-}

any_ :: Foldable t => (a -> Bool) -> t a -> Bool
any_ f l = foldr ((||) . f) False l

-- Tests 
{-
    any_ (1==) [0,1,2,3,4,5] = True
    any_ (>5) [0,1,2,3,4,5] = False
    any_ even [1,3,5,7,9] = False
    any_ (\x -> x*4>20) [1,2,3,4,5,6] = True
-}