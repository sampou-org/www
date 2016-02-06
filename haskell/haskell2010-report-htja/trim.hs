import FileTrans
import Data.Char
import System.Environment.UTF8

main :: IO ()
main = getArgs >>= mapM_ (trans trim)

trim :: String -> String
trim = unlines . foldr (\ l a -> let l' = tr l in if null l' then a else l':a) [] . lines

tr :: String -> String
tr = reverse . dropWhile isSpace . reverse
