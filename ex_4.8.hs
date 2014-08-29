data List a = Nil
            | Cons a (List a)

listHead :: List a -> a
listHead (Cons x xs) = x

listTail :: List a -> List a
listTail (Cons x xs) = xs

listFoldl :: (b -> a -> b) -> b -> List a -> b
listFoldl f y Nil = y
listFoldl f y (Cons x xs) = listFoldl f (f y x) xs

listFoldr :: (a -> b -> b) -> b -> List a -> b
listFoldr f y Nil = y
listFoldr f y (Cons x xs) = f x (listFoldr f y xs)
