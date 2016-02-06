module Main where

import FileTrans
import System.Environment
import Text.Regex

main :: IO ()
main = getArgs >>= \ (p:q:fs) -> mapM_ (trans (sub p q)) fs

sub :: String -> String -> String -> String
sub p q = flip (subRegex (mkRegex p)) q
