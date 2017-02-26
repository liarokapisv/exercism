module BankAccount ( BankAccount, openAccount, closeAccount
                   , getBalance, incrementBalance ) where

import Data.IORef

type BankAccount = IORef (Maybe Int)

openAccount :: IO BankAccount
openAccount = newIORef (Just 0) 

closeAccount :: BankAccount -> IO ()
closeAccount = flip atomicWriteIORef Nothing
 
getBalance :: BankAccount -> IO (Maybe Int)
getBalance = readIORef

incrementBalance :: BankAccount -> Int -> IO (Maybe Int)
incrementBalance account n = atomicModifyIORef account incrementBalance' 
      where incrementBalance' balance = let new_balance = fmap (+n) balance in (new_balance, new_balance)