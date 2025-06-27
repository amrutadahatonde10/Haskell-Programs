// fibonacci :: Integral a => a -> a
// fibonacci 0 = 0
// fibonacci 1 = 1
// fibonacci n = fibonacci(n-1) + fibonacci(n-2)

fibonacci :: Int -> Int
fibonacci n = 
    if n == 0 then 0
    else if n == 1 then 1
    else fibonacci (n - 1) + fibonacci (n - 2)