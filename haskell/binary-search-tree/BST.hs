module BST (bstLeft, bstRight, bstValue, singleton, insert, fromList, toList) where

import Data.Maybe

data BST a = Node { bstLeft :: Maybe (BST a), bstRight :: Maybe (BST a), bstValue :: a }
             deriving (Eq, Show)

singleton :: a -> BST a
singleton x = Node { bstLeft = Nothing, bstRight = Nothing, bstValue = x }

insert :: Ord a => a -> BST a -> BST a
insert x node  = insert' x (Just node)
    where insert' x Nothing = singleton x
          insert' x (Just node)
                | x <= bstValue node = node { bstLeft = Just (insert' x $ bstLeft node) }
                | otherwise = node { bstRight = Just (insert' x $ bstRight node) }

fromList :: Ord a => [a] -> BST a
fromList (x:xs) = foldl (flip insert) (singleton x) xs

toList :: BST a -> [a]
toList (Node { bstLeft = left, bstRight = right, bstValue = value })
    = concat $ catMaybes [toList `fmap` left, Just [value], toList `fmap` right]