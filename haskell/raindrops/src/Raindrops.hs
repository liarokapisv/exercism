module Raindrops (convert) where

convert :: Integer -> String
convert n = if null result then show n else result
          where result = concatMap snd $ filter (isFactor.fst) conversions
                conversions = [(3, "Pling"),(5,"Plang"),(7,"Plong")]
                isFactor k = n `mod` k == 0
