-- Since July 22 2013
-- Must then and else be indented deeper than if?
-- Seems "What some miss is that then and else must be indented deeper than the if statement" is not true at here: http://www.haskell.org/haskellwiki/Common_Misunderstandings#Indentation.

module Main where

import System.IO

f x = if x < 0
      then -1
      else if x == 0
      then 0
      else 1

main = do
    num <- getLine
    if read num == 0 then do
        putStrLn "Zero."
    else
        do putStrLn "Not zero."
