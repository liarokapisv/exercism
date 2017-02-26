module Gigasecond (fromDay) where

import Data.Time.Clock

fromDay :: UTCTime -> UTCTime
fromDay = addUTCTime (10 ^ 9)