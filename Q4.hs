lcmOfTwo :: Int -> Int -> Int
lcmOfTwo a b = abs (a * b) `div` gcd a b  -- gcd is built-in

main :: IO ()
main = do
    putStrLn "Enter the first number:"
    num1 <- readLn

    putStrLn "Enter the second number:"
    num2 <- readLn

    let result = lcmOfTwo num1 num2

    putStrLn ("The Least Common Multiple of " ++ show num1 ++ " and " ++ show num2 ++ " is: " ++ show result)




    -- ghc -o LCM Q4.hs
    -- LCM 