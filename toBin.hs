import Data.Char (intToDigit, toUpper)

toBin :: Int -> String
toBin = map toUpper . reverse . recurse
  where recurse n 
                 | n < 2 = [intToDigit n]
                 | otherwise = let (q, r) = n `divMod` 2
                              in (intToDigit r)
                              : recurse q