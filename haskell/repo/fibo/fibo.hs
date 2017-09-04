fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo a =
    fibo(a - 1) + fibo(a - 2)

main = do
    x <- getLine
    let a = read x
    print (fibo a)