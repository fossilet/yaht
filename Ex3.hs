-- Since July 14 2013

module Main
    where
{-
-- 3.3
map isLower "aBCde"

-- 3.4
length (filter isLower "aBCde")

-- 3.5
foldr max 0 [5, 10, 2, 8, 1]

-- 3.6
fst (head (tail [(5, 'b'), (1, 'c'), (6, 'a')]))

-}

-- 3.7
fib 1 = 1
fib 2 = 2
fib n = fib (n - 2) + fib (n -1)

-- 3.8
mult a 1 = a
mult a b = a + mult a (b -1)


-- 3.9
my_map f [] = []
my_map f (x : xs) = f x : my_map f xs
