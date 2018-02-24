-- list comprehensions
squares n = [x^2 | x <- [1..n]]

-- list comp can use guards to restrict values
-- the following list generates even numbers
[x | x <- [1..10], even x]

-- the following three functions will be used
-- to find prime numbers
factors n = [x | x <- [1..n], x `mod` n == 0]

prime n = factors n == [1, n]

primes n = [x | x <- [2..n], prime x]


