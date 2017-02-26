module ListOps
  ( length
  , reverse
  , map
  , filter
  , foldr
  , foldl'
  , (++)
  , concat
  ) where

import Prelude hiding
  ( length, reverse, map, filter, foldr, (++), concat )

foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' _ a [] = a
foldl' f a (x:xs) = let a' = f a x in a' `seq` foldl' f a' xs

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ a [] = a
foldr f a (x:xs) = f x $ foldr f a xs

length :: [a] -> Int
length = foldl' (const . (+1)) 0 

reverse :: [a] -> [a]
reverse = foldl (flip (:)) []

map :: (a -> b) -> [a] -> [b]
map f = foldr ((:) . f) [] 

filter :: (a -> Bool) -> [a] -> [a]
filter p = foldr step []
    where step x | p x = (x:)
                 | otherwise = id

(++) :: [a] -> [a] -> [a]
(++) = flip (foldr (:))

concat :: [[a]] -> [a]
concat = foldr (++) []