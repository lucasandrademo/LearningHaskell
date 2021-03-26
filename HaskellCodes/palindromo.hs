
corpo :: [Int] -> [Int]
corpo (a:x)
  |  length (a:x)>1 = [a] ++ (corpo x)
  |  otherwise = []

cabeca :: [Int] -> Int
cabeca (c:x) = c

inverte :: Int -> [Int] -> [Int]
inverte n (i:z)
  |  n==0  = (i:z)
  |  otherwise = (inverte (n-1) [ b | b <- z ]) ++ [i]

palindromo :: [Int] -> Bool
palindromo [] = True
palindromo (a:x)
  |  x==[] = True
  |  a==cabeca(inverte (length x) (a:x)) = palindromo(corpo x) 
  |  otherwise = False
