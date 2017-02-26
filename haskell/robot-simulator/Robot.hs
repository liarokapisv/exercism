module Robot (Bearing(..), Robot, mkRobot,
              coordinates, simulate,
              bearing, turnRight, turnLeft) where

import Control.Arrow

data Bearing = North | East | South | West
               deriving (Enum, Show, Eq)

data Robot = Robot { bearing :: Bearing,
                     coordinates :: Coordinates
                   } deriving (Show, Eq)

type Coordinates = (Int, Int)

mkRobot :: Bearing -> Coordinates -> Robot
mkRobot b c = Robot { bearing = b, coordinates = c }

turnRight :: Bearing -> Bearing
turnRight = toEnum . (`mod` 4) . succ . fromEnum

turnLeft :: Bearing -> Bearing
turnLeft = toEnum . (`mod` 4) . (+3) . fromEnum

advance :: Bearing -> Coordinates -> Coordinates
advance b = case b of
            North -> second succ
            East -> first succ
            South -> second pred
            West -> first pred

robotStep :: Robot -> Char -> Robot
robotStep robot@Robot{ bearing = b, coordinates = c } 
          ch = case ch of
               'A' -> robot { coordinates = advance b c }
               'L' -> robot { bearing = turnLeft b }
               'R' -> robot { bearing = turnRight b }

simulate :: Robot -> String -> Robot
simulate = foldl robotStep