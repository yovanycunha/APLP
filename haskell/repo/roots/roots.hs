roots :: Double -> Double -> Double -> [Double]
roots a b c
    |delta >  0 = [(-b + sqrt delta)/(2*a), (-b - sqrt delta)/(2*a)]
    |delta == 0 = [(-b)/(2*a)]
    |otherwise  = []
    where 
        delta = (b*b)-(4*a*c)


main = do
    print ("a: ")
    x <- getLine
    print ("b: ")
    y <- getLine
    print ("c: ")
    z <- getLine

    let a = read x
    let b = read y
    let c = read z

    print(roots a b c)