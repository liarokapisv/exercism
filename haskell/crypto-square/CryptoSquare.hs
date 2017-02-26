module CryptoSquare (normalizePlaintext,
                     squareSize,
                     plaintextSegments,
                     ciphertext,
                     normalizeCiphertext) where

import Data.List
import Data.List.Split (chunksOf)
import Control.Monad
import Data.Char

normalizePlaintext :: String -> String
normalizePlaintext = map toLower . filter isAlphaNum

squareSize :: String -> Int
squareSize = ceiling . sqrt . fromIntegral . length

plaintextSegments :: String -> [String]
plaintextSegments = (chunksOf =<< squareSize) . normalizePlaintext

ciphertext :: String -> String
ciphertext = concat . transpose . plaintextSegments

normalizeCiphertext :: String -> String
normalizeCiphertext = unwords . transpose . plaintextSegments