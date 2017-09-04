
bubble :: [Int] -> [Int]
bubble [] = []
bubble a = 
    (iterate swap a) !! ((length a) - 1)
    where 
        swap [a] = [a]
        swap (a:b:cs)
            | a>b = b:swap (a:cs)
            | otherwise = a:swap (b:cs)

main = do
    x <- getLine
    y <- getLine
    let lista1 = (map read $ words x :: [Int])
    let lista2 = (map read $ words y :: [Int])

    print (bubble lista1)
    print (bubble lista2)
