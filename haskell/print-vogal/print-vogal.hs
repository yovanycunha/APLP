main = do
    inputA <- getLine
    inputB <- getLine
    inputC <- getLine
    inputD <- getLine
    inputE <- getLine
    let lista = inputA : inputB : inputC : inputD : inputE : []
    printVogal lista

printVogal :: [String] -> IO()
printVogal [] = putStr("")
printVogal (a:ab)
    |p == 'a' = do
        putStr("a")
        printVogal ab
    |p == 'e' = do
        putStr("e")
        printVogal ab
    |p == 'i' = do
        putStr("i")
        printVogal ab
    |p == 'o' = do
        putStr("o")
        printVogal ab
    |p == 'u' = do
        putStr("u")
        printVogal ab
    |otherwise = do
        putStr("")
        printVogal ab
    where
        p = (last a)
