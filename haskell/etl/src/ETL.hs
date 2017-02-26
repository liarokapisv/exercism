module ETL (transform) where

import Data.Map (Map, toList, fromList)
import Data.Char
import Data.Functor

transform :: Map a String -> Map Char a
transform m =  fromList [(v, c) | (c, vs) <- toList m, 
                                        v <- map toLower vs]
