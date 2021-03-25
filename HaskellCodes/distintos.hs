
existe :: Int -> [Int] -> Bool
existe n [] = False
existe n (b:y)
  | (n==b) = True
  | otherwise = existe n y

distintos :: [Int] -> Bool
distintos [] = True
distintos (a:x)
  | (existe a x == True) = False
  | otherwise = distintos x

