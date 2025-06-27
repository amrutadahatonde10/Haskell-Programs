import Data.Ratio (numerator, denominator, (%), Rational)

mixedFraction :: Double -> (Integer, Integer, Integer)
mixedFraction x =
    let (whole, frac) = properFraction x :: (Integer, Double)
        r = toRational frac
        a = numerator r
        b = denominator r
    in (whole, a, b)

main :: IO ()
main = do
    putStrLn "Enter a positive number:"
    input <- getLine
    let x = read input :: Double
    if x <= 0
        then putStrLn "Please enter a **positive** number."
        else let (i, a, b) = mixedFraction x
             in putStrLn $ "Mixed Fraction: " ++ show i ++ " + " ++ show a ++ "/" ++ show b
