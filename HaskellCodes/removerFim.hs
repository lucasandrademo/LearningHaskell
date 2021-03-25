
removerFim :: Int -> [Int] -> [Int]
removerFim 0 (a:x) = (a:x)
removerFim n (a:x)
  |  (n >= length x) = []
  |  otherwise = removerFim (n - 1) ([a] ++ init x)
