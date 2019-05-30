method1 :: String -> Int -> String
method1 word num
    | even num = word
    | otherwise = reverse word

method2 :: [String] -> [String]
method2 [] = []
method2 [word] = [word]
method2 (word1:word2:words) = method1 word1 1 : method1 word2 2 : method2 words

trial :: String -> [String]
trial [] = []
trial word = take 20 word : (trial $ drop 20 word)