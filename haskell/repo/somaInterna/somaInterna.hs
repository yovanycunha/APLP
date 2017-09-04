sumIntern :: [Int] -> Int
sumIntern [] = 0
sumIntern (a:as) =
    a + sumIntern as


main = do
    x <- getLine
    let lista1 = (map read $ words x :: [Int])

    print("A soma dos elementos da lista eh: ")
    print(sumIntern lista1)