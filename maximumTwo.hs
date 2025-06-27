maximumTwo :: Int -> Int -> Int
maximumTwo a b = if a > b then a else b

main :: IO ()
main = do
    putStrLn "Enter first number:"
    x <- getLine
    putStrLn "Enter second number:"
    y <- getLine
    let num1 = read x :: Int
        num2 = read y :: Int
        result = maximumTwo num1 num2
    putStrLn ("The maximum is: " ++ show result)
