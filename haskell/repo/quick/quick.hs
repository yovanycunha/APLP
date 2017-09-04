quick :: [Int] -> [Int]
quick [] = []
quick (x:xs) = quick small ++ mid ++ quick larger
    where
        small  = [y | y <- xs, y < x]
        mid    = [y | y <- xs, y == x] ++ [x]
        larger = [y | y <- xs, y > x]


main = do
    x <- getLine
    let lista1 = (map read $ words x :: [Int])

    print (quick lista1)