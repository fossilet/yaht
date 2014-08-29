first_ele :: [a] -> Maybe a

first_ele [] = Nothing
first_ele (x:xs) = Just x
