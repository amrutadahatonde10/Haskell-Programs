quadraticRoots :: Double -> Double -> Double -> String
quadraticRoots a b c
  | discriminant > 0 = "The roots are real and distinct: " ++ show root1 ++ " and " ++ show root2
  | discriminant == 0 = "The root is real and repeated: " ++ show root1
  | discriminant < 0 = "The roots are complex: " ++ show realPart ++ " + " ++ show imaginaryPart ++ "i and " ++ show realPart ++ " - " ++ show imaginaryPart ++ "i"
  where
    discriminant = b * b - 4 * a * c
    root1 = (-b + sqrt discriminant) / (2 * a)
    root2 = (-b - sqrt discriminant) / (2 * a)
    realPart = -b / (2 * a)
    imaginaryPart = sqrt (-discriminant) / (2 * a)

main :: IO ()
main = do
    putStrLn "Enter the value of a:"
    a <- readLn
    putStrLn "Enter the value of b:"
    b <- readLn
    putStrLn "Enter the value of c:"
    c <- readLn

    putStrLn (quadraticRoots a b c)
