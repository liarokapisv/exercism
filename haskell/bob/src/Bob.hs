module Bob (responseFor) where

import Data.Char(isAlpha, isLower, isUpper, isSpace)

responseFor :: String -> String
responseFor sentence 
    | onlyContainsWs = "Fine. Be that way!"
    | isShouting = "Whoa, chill out!"
    | endsQmark = "Sure."
    | otherwise = "Whatever."
    where onlyContainsWs = all isSpace sentence
          isShouting = any isAlpha sentence && all (not.isLower) sentence
          endsQmark = last (filter (not.isSpace) sentence) == '?'


