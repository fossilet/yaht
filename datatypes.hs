data Pair a b = Pair a b

pairFst (Pair x y) = x
pairSnd (Pair x y) = y

data Triple a b c = Triple a b c

tripleFst (Triple x y z) = x
tripleSnd (Triple x y z) = y
tripleThr (Triple x y z) = z

data Quadruple a b = Quadruple a a b b

firstTwo :: Quadruple a b -> [a]
firstTwo (Quadruple x y z w) = [x, y]

lastTwo :: Quadruple a b -> [b]
lastTwo (Quadruple x y z w) = [z, w]
