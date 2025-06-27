factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

main :: IO ()
main = do
  putStrLn "Enter a number:"
  input <- getLine
  let n = read input :: Integer
  print (factorial n)
