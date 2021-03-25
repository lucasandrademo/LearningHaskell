
somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (a:l) = a + somatorio l

somafatores :: Int -> Int
somafatores n = somatorio([ x | x <- [1 .. n-1], ((mod n x) == 0)])

perfeito :: Int -> Bool
perfeito m
  | m==0 = False
  | ((somafatores m) == m) = True
  | otherwise = False
