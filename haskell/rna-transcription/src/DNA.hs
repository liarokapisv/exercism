module DNA (toRNA) where

import Control.Monad

toRNA :: String -> Maybe String
toRNA = mapM (\n -> case n of
             'A' -> Just 'U' 
             'C' -> Just 'G' 
             'T' -> Just 'A' 
             'G' -> Just 'C'
             _   -> Nothing)


