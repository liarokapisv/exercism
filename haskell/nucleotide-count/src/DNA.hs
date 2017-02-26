module DNA (count, nucleotideCounts) where

import Data.Map (Map, fromList, adjust)
import Data.Traversable (sequenceA)

validate :: Char -> Either String Char
validate c | c `elem` "CGTA" = Right c
           | otherwise = Left "Invalid nucleotide"

validateStr :: String -> Either String String
validateStr = sequenceA . map validate 

count :: Char -> String -> Either String Int
count c str = count' <$> validate c <*> validateStr str
    where count' c = length . filter (==c)

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts str =  nucleotideCounts' <$> validateStr str
    where nucleotideCounts' = foldr (adjust (+1)) initMap
          initMap = fromList [('C', 0),('G',0),('T',0),('A',0)]

