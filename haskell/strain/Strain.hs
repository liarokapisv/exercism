module Strain (keep, discard) where

import Control.Monad

keep :: (a -> Bool) -> [a] -> [a]
keep p xs = xs >>= \x -> if p x then [x] else []

discard :: (a -> Bool) -> [a] -> [a]
discard p xs = keep (not.p) xs