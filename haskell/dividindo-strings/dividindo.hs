main = do
    lista1 <- getLine
    lista2 <- getLine
    let listaA = (words lista1)
    let listaB = (words lista2)
    
    divide listaA listaB
    

divide :: [String] -> [String] -> IO()
divide lista_a lista_b = do
    if length lista_a == 0 || length lista_b == 0 then return()
    else do 
        putStrLn (head lista_a ++ " " ++ head lista_b)
        divide (tail lista_a) (tail lista_b)
