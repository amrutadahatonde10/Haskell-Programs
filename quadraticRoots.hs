quadraticRoots :: Double -> Double -> Double -> (Double, Double)
quadraticRoots a b c =
    let d = b * b - 4 * a * c      
        sqrtD = sqrt d            
        twoA = 2 * a               
        root1 = (-b + sqrtD) / twoA
        root2 = (-b - sqrtD) / twoA
    in (root1, root2)

main :: IO ()
main = do
    putStrLn "Enter coefficient a:"
    aInput <- getLine
    putStrLn "Enter coefficient b:"
    bInput <- getLine
    putStrLn "Enter coefficient c:"
    cInput <- getLine

    let a = read aInput :: Double
        b = read bInput :: Double
        c = read cInput :: Double
        (root1, root2) = quadraticRoots a b c

    putStrLn ("The roots are: " ++ show root1 ++ " and " ++ show root2)
