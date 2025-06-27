findGCD :: Integer -> Integer -> Integer
findGCD a 0 = a
findGCD a b = findGCD b (a `mod` b)

main :: IO ()
main = do
    putStrLn "Enter first number:"
    input1 <- getLine
    putStrLn "Enter second number:"
    input2 <- getLine
    let a = read input1 :: Integer
        b = read input2 :: Integer
    if a < 0 || b < 0
        then putStrLn "Please enter non-negative integers only."
        else putStrLn $ "GCD(" ++ show a ++ ", " ++ show b ++ ") = " ++ show (findGCD a b)
