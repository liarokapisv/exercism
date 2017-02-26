module WordCount (wordCount) where

import qualified Data.Map as M
import qualified Data.MultiSet as S
import qualified Data.List.Split as L
import Data.Char

wordCount :: String -> M.Map String Int
wordCount = S.toMap . S.fromList . L.wordsBy (not . isAlphaNum) . map toLower