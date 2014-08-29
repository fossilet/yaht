-- Since July 20 2013

module Main where

import System.IO
import Control.Exception


main :: IO ()
main = do
    putStrLn "Do you want to [read] a file, [write] a file or [quit]?" 
    cmd <- getLine
    case cmd of
        "quit"  -> do putStrLn "Goodbye!"
                      return ()
        "read"  -> do read_file
                      main
        "write" -> do write_file
                      main
        _       -> do putStrLn ("I don't understand the command " ++ cmd ++ ".")
                      main
    

read_file = do
    putStrLn "Enter a file name to read:"
    fname <- getLine
    --bracket (openFile fname ReadMode) hClose
    --        (\h -> do txt <- hGetContents h
    --                  putStr txt)
    contents <- readFile fname
    putStr contents


write_file = do
    putStrLn "Enter a file name to write:"
    fname <- getLine 
    putStrLn "Enter text (dot on a line by itself to end):"
    bracket (openFile fname WriteMode) hClose
            (\h -> read_line_and_write h)


read_line_and_write h = do
    line <- getLine
    if line /= "." then do
       hPutStrLn h line
       read_line_and_write h
    else
       return ()
