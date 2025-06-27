gcd' :: Int -> Int -> Int
gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b)

lcm' :: Int -> Int -> Int
lcm' a b = (a * b) `div` gcd' a b

main :: IO ()
main = do
    putStrLn "Enter first number:"
    input1 <- getLine
    putStrLn "Enter second number:"
    input2 <- getLine
    let a = read input1 :: Int
        b = read input2 :: Int
    putStrLn $ "GCD: " ++ show (gcd' a b)
    putStrLn $ "LCM: " ++ show (lcm' a b)
