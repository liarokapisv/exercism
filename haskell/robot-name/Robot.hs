module Robot (robotName, mkRobot, resetName) where

import qualified Data.Map as M
import qualified System.Random as R
import Control.Monad  
import qualified Data.IORef as IO

type Robot = String

robotName :: IO.IORef Robot -> IO String
robotName = IO.readIORef

mkRobot :: IO (IO.IORef Robot)
mkRobot = randName >>= IO.newIORef

resetName :: IO.IORef Robot -> IO ()
resetName = (randName >>=) . IO.writeIORef

randName :: IO String
randName = sequence $ replicate 2 randLetter ++ replicate 3 randDigit

randLetter :: IO Char
randLetter = R.randomRIO ('A', 'Z')

randDigit :: IO Char
randDigit = R.randomRIO ('0', '9')