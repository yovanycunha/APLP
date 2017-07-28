
calculaValor :: String -> Int
calculaValor x  |(x == "moto")  = 5
                |(x == "carro") = 10
                |(otherwise)    = 30

main :: IO()
main = do
    x <- getLine
    putStrLn(show(calculaValor x))
  
