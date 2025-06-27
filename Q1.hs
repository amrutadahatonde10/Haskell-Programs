fibonacci :: [Integer]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = do
    putStrLn "Enter the number of Fibonacci terms (must be >= 20):"
    input <- getLine
    let n = read input :: Int
    if n < 20 
        then putStrLn "Please enter a number greater than or equal to 20."
        else print $ take n fibonacci
