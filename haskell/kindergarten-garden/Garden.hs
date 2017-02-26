module Garden (garden, defaultGarden, lookupPlants, Plant(..)) where

import qualified Data.Map as M
import Data.List.Split (chunksOf, splitOn)
import Data.List

defaultChildren :: [String]
defaultChildren = ["Alice", 
                   "Bob", 
                   "Charlie", 
                   "David", 
                   "Eve", 
                   "Fred", 
                   "Ginny", 
                   "Harriet", 
                   "Ileana", 
                   "Joseph", 
                   "Kincaid", 
                   "Larry"] 

data Plant = Grass | Violets | Radishes | Clover 
             deriving (Show, Ord, Eq)

toPlant :: Char -> Plant
toPlant c = case c of 
                 'G' -> Grass
                 'V' -> Violets
                 'R' -> Radishes
                 'C' -> Clover

type Garden = M.Map String [Plant]

lookupPlants :: String -> Garden -> [Plant]
lookupPlants = M.findWithDefault []

garden :: [String] -> String -> Garden
garden names str = let names' = sort names
                   in M.fromListWith (flip (++)) $ do row <- splitOn "\n" str
                                                      let segmented_row = chunksOf 2 $ map toPlant row
                                                      zip names' segmented_row
                                             
defaultGarden :: String -> Garden
defaultGarden = garden defaultChildren