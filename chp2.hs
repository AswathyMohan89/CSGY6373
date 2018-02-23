-- select the first element of a list
head [1, 2, 3, 4, 5]

-- remove the first element of a list
tail [1, 2, 3, 4, 5]

-- select the nth element of a list
[1, 2, 3, 4, 5] !! 2
-- haskell has a 0-based index

-- select the first n elements of a list
take 3 [1, 2, 3, 4, 5]
-- in this example, we take 3 such that the expected
-- output is: [1, 2, 3]

-- remove the first n elements from a list
drop 3 [1, 2, 3, 4, 5]

-- calculate the length of a list
length [1, 2, 3, 4, 5]

-- calculate the sum of a list of numbers
sum [1, 2, 3, 4, 5]

-- calculate the product of a list of numbers
product [1, 2, 3, 4, 5]

-- append two lists
[1, 2, 3] ++ [4, 5]

-- reverse a list
reverse [1, 2, 3, 4, 5]

-- factorial of some number n
factorial n = product [1..n]

-- average of a list of numbers
average ns = sum ns `div` length ns

-- div is enclosed in back quotes.
-- this is merely syntactic sugar.
-- i.e. x `f` y is equivalent to f x y

-- naming requirements
-- function and arugment names must begin with a lower-case letter

-- list arguments usually have an s suffic on their name.
