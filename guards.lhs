This is a demo of guards.

Since July 21 2013.

> module Main where
> main =
>    comparison x y | x < y = "The first is less"
>                   | x > y = "The second is less"
>                   | otherwise = "They are equal"
