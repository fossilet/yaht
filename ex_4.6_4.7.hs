data Tuple a b c d = One a
                   | Two a b
                   | Three a b c
                   | Four a b c d

tuple1 :: Tuple a b c d -> Maybe a
tuple1 (One   a)       = Just a
tuple1 (Two   a b)     = Just a
tuple1 (Three a b c)   = Just a
tuple1 (Four  a b c d) = Just a

tuple2 :: Tuple a b c d -> Maybe b
tuple2 (One   a)       = Nothing
tuple2 (Two   a b)     = Just b
tuple2 (Three a b c)   = Just b
tuple2 (Four  a b c d) = Just b

tuple3 :: Tuple a b c d -> Maybe c
tuple3 (One   a)       = Nothing
tuple3 (Two   a b)     = Nothing
tuple3 (Three a b c)   = Just c
tuple3 (Four  a b c d) = Just c

tuple4 :: Tuple a b c d -> Maybe d
tuple4 (One   a)       = Nothing
tuple4 (Two   a b)     = Nothing
tuple4 (Three a b c)   = Nothing
tuple4 (Four  a b c d) = Just d

to_haskell_tuple :: Tuple a b c d -> Either (Either a (a, b)) (Either (a, b, c) (a, b, c, d))
to_haskell_tuple (One   a)       = Left  (Left  a           )
to_haskell_tuple (Two   a b)     = Left  (Right (a, b)      )
to_haskell_tuple (Three a b c)   = Right (Left  (a, b, c)   )
to_haskell_tuple (Four  a b c d) = Right (Right (a, b, c, d))
