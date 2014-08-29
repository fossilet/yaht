#! /usr/bin/env runghc
-- Since July 16 2013

module Main
    where

import System.IO


main = do
    num_list <- ask_for_words
    {- The following line would cause misleading error messages, possibly due to
     - automated type inference. -}
    --putStrLn num_list
    putStrLn ("The sum is " ++ show (foldr (+) 0 num_list))
    putStrLn ("The product is " ++ show (foldr (*) 1 num_list))
    show_fac num_list

show_fac [] = return ()
show_fac (x:xs) = do
    putStrLn (show x ++ " factorial is " ++ show (fac x))
    show_fac xs


ask_for_words = do
    putStrLn "Give me a number (or 0 to stop):"
    word <- getLine
    let num = read word
    if num == 0
        then return []
    else do
        rest <- ask_for_words
        return (num : rest)

fac 1 = 1
fac n = n * fac (n - 1)
