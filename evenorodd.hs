evenOrOdd :: Int -> String
evenOrOdd n = if even n then "Even" else "Odd"

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Int
    putStrLn ("The number is " ++ evenOrOdd number)
