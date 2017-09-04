import Data.List

printMult :: [Int] -> [Int] -> IO()
printMult lista1 lista2 = do
    if length lista1 == 0 || length lista2 == 0 then return()
    else do
        print(head lista1 * head lista2)
        printMult (tail lista1) (tail lista2)

main = do
    x <- getLine
    y <- getLine
    let lista1 = (map read $ words x :: [Int])
    let lista2 = (map read $ words y :: [Int])

    printMult lista1 lista2