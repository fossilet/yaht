-- Since July 15 2013

module Main
    where

--import System.IO

main = do
    putStrLn "Please enter your name: "
    name <- getLine
    putStrLn ("Hello, " ++ name ++ ", how are you?")
