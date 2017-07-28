main = do
    lista1 <- getLine
    lista2 <- getLine
    let listaA = (map read $ words lista1 :: [Int])
    let listaB = (map read $ words lista2 :: [Int])

    printSoma listaA listaB

printSoma :: [Int] -> [Int] -> IO()
printSoma lista_a lista_b = do
    if length lista_a == 0 || length lista_b == 0 then return()
    else do
        print(head lista_a - head lista_b)
        printSoma (tail lista_a) (tail lista_b)
