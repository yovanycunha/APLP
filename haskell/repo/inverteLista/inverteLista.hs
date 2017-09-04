inverte :: [Int] -> [Int]
inverte [] = []
inverte (a:as) = 
    inverte as ++ [a]


main = do
    x <- getLine
    let lista1 = (map read $ words x :: [Int])

    print (inverte lista1)