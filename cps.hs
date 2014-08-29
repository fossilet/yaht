cfold' :: (a -> b -> (b -> b) -> b) -> b -> [a] -> b
cfold' f z [] = z
cfold' f z (x:xs) = f x z (\y -> cfold' f y xs)

-- x is the current list item, t is the accumulated value, and g is the
-- continuation.
cfold f z l = cfold' (\x t g -> f x (g t)) z l

cfold1 f z l = cfold' (\x t g -> (x : g t)) z l

cfold2 f z l = cfold' (\x t g -> g (x : t)) z l
