gasOrAlcohol :: Double -> Double -> Double
gasOrAlcohol alcohol gas
    |(alcohol < (gas*0.70)) = alcohol
    |otherwise               = gas


main :: IO()
main = do
    x               <- getLine
    y               <- getLine
    z               <- getLine
    let alcohol     =  read x
    let gas         =  read y
    let amount      =  read z
    putStrLn(show(gasOrAlcohol alcohol gas * amount))
