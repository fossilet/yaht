data BinaryTree a
    = Leaf a
    | Branch (BinaryTree a) a (BinaryTree a)

elements :: BinaryTree a -> [a]
elements (Leaf a) = a
elements (Branch lhs x rhs) = elements lhs ++ [x] ++ elements rhs

foldlTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldlTree f z (Leaf x) = f x z
foldlTree f z (branch lhs x rhs) = foldlTree f (f x (foldTree f z rhs)) lhs
