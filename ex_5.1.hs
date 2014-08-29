-- Since July 20 2013

module Main where

import System.IO


main = do
    putStrLn "What's your name?"
    name <- getLine
    tell name
    tell_case name


tell name = do
    putStrLn (
        if elem name ["Simon", "John", "Phil"] then
            "I think Haskell is a great programming language."
        else if name == "Koen" then
            "I think debugging Haskell is fun."
        else
            "I don't know who you are."
        )


tell_case name = do
    case name of
        "Simon" ->
            putStrLn "I think Haskell is a great programming language."
        "John" ->
            putStrLn "I think Haskell is a great programming language."
        "Phil" ->
            putStrLn "I think Haskell is a great programming language."
        "Koen" ->
            putStrLn "I think debugging Haskell is fun."
        _ ->
            putStrLn "I don't know who you are."
