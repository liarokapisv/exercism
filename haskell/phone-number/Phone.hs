module Phone (number, areaCode, prettyPrint) where

import Data.Char
import Control.Monad.State.Lazy
import Control.Arrow
import Text.Printf

number :: String -> String
number = validate . filter isDigit 
         where validate str
                | length str == 11 && head str == '1' = tail str
                | length str == 10 = str
                | otherwise = "0000000000"

areaCode :: String -> String
areaCode = take 3 . number

getN :: Int -> State String String
getN n = state $ take n &&& drop n

prettyPrint :: String -> String
prettyPrint = process . number
              where process = evalState $ do
                              f1 <- getN 3
                              f2 <- getN 3
                              f3 <- getN 4 
                              return $ printf "(%s) %s-%s" f1 f2 f3