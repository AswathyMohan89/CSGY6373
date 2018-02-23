--- summing up the integers 1 to 10 in Haskell:
sum [1..10]

-- A taste of Haskell

f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
           where 
               ys = [a | a <- xs, a <= x]
               xs = [b | b <- xs, b > x]

-- this piece of code actually implements quicksort
