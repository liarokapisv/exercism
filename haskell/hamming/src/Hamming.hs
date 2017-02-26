module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance a b | length a /= length b = Nothing
             | otherwise = Just $ distance' a b
             where distance' = ((length . filter id).) . zipWith (/=)
