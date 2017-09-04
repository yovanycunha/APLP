inverte :: [String] -> [String]
inverte [] = []
inverte (a:as) = 
    inverte as ++ [a]


main = do
    x <- getLine
    let lista1 = (words x)

    print (inverte lista1)