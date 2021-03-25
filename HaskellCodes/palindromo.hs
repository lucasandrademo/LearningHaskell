
palindromo :: [Int] -> Bool
palindromo [] = True
palindromo (a:x)
  |  x == [] = True
  |  (a == last x) = palindromo (init x)
  |  otherwise = False
