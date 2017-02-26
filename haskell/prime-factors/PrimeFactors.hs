module PrimeFactors (primeFactors) where

primes :: [Int]
primes = 2 : filter (\y -> head (primeFactors y) == y) [3, 5 ..]

primeFactors :: Int -> [Int]
primeFactors = prime_factors primes 
         where prime_factors (p:ps) n
                 | n < 2 = []
                 | n < p * p = [n]
                 | n `mod` p == 0 = p : prime_factors (p:ps) (n `div` p)
                 | otherwise = prime_factors ps n