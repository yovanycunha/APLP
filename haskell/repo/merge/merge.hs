-- Pega a primeira parte da lista passada como parâmetro,
-- usando a função take do Haskell, que no primeiro parâmetro especifica
-- a quantidade de elementos a serem retornados
prmParte :: [a] -> [a]
prmParte xs = take (length xs `div`2) xs


-- Pega a segunda parte da lista passada como parâmetro,
-- usando a função drop do Haskell, que em seu primeiro parâmetro especifica
-- uma quantidade de elementos a serem ignorados para o retorno, ou seja, a partir de ql elemento
-- vai ser formada a nova lista
sgdParte :: [a] -> [a]
sgdParte ys = drop (length ys `div`2) ys


merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    |(x <= y)  = x:(merge xs (y:ys))
    |otherwise = y:(merge (x:xs) ys)

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (prmParte xs)) (mergesort (sgdParte xs))

main = do
    x <- getLine
    y <- getLine
    let lista1 = (map read $ words x :: [Int])
    let lista2 = (map read $ words y :: [Int])

    print (mergesort lista1)