-- fact n 
--     | n == 0 = 1
--     | n == 1 = 1
--     | n > 0 = n * fact(n-1)

fact n = product [1..n]