-- in Haskell, functions can also be defined in terms of themselves.

factorial 0 = 1
factorial n = n * factorial (n-1)

-- Properties of functions defined using recursion can be proven using
-- the simple but powerful mathematical technique of induction

product :: [Int] -> Int
product [] = 1
product (n:ns) = n * product ns

-- the same pattern can be used for the length function
-- albeit with a minor change

length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs

-- using a similar pattern of recursion we can
-- define the reverse function on lists

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

-- zipping two elements with recursion
-- remember that the : operator concatenates
-- the element on the left-hand side on the left
-- 2 : [2, 3] -> [2, 2, 3]
zip :: [a] -> [b] ->[(a, b)]
zip []    _ = []
zip _     [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys

-- remove the first n elements from a list
drop :: Int -> [a] -> [a]
-- these are the base cases
drop 0 xs = xs
drop _ [] = []
-- in this case, we don't care about the head element
-- because we are getting rid of it so we assign _
-- then we recursively call drop again with the tail 
-- and decrementing n
drop n (_:xs) = drop (n-1) xs

-- appending two lists
(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)

-- quicksort
-- two rules:
-- 1) the empty list is already sorted
-- 2) non-empty lists can be sorted by sorting the
-- tail values <= the head, sorting the tail values
-- > the head, and then appending the resulting lists
-- either side of the head value

qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) =
    qsort smaller ++ [x] ++ qsort larger
    where
        smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]
