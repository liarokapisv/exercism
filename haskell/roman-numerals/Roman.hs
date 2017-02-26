module Roman (numerals) where

import qualified Data.Map as M

hundredsMap :: M.Map Int String
hundredsMap = M.fromList $ zip [0..9] ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]

tensMap :: M.Map Int String
tensMap = M.fromList $ zip [0..9] ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]

onesMap :: M.Map Int String
onesMap = M.fromList $ zip [0..9] ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

numerals :: Int -> String
numerals n = concat [thousands , hundreds, tens, ones]
           where [d1, d2, d3, d4] = map (`mod` 10) $ take 4 $ iterate (`div` 10) n
                 thousands = replicate d4 'M'
                 [hundreds, tens, ones] = zipWith (M.findWithDefault "") 
                                                  [d3, d2, d1]
                                                  [hundredsMap, tensMap, onesMap]