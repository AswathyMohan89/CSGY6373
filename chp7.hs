-- a function is called higher-order if it takes
-- a function as an argument or returns a function
-- as a result

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- Why are they useful?
-- common programming idioms can be encoded
-- as functions within the language itself
-- domain specific languages can be defined
-- as collections of higher-order functions
-- algebraic properties of higher-order functions
-- can be used to reason about programs

-- the higher-order library function called  map
-- applies a function to every element of a list

-- this notation means that you are passing in a function
-- and you get back a list of functions
-- such that you can apply that list of functions
-- to a list of arguments such that you get a
-- transformed list of arguments
map :: (a -> b) -> [a] -> [b]

-- for example:
map (+1) [1, 3, 5, 7]

-- this would return [2, 4, 6, 8]

-- the map function can be defined 
-- in a particularly simple manner
-- using a list comprehension
map f xs = [f x | x <- xs]

-- alternatively we can also use recursion
map f [] = []
map f (x:xs) = f x : map f xs

-- the higher-rder function filter selects
-- every element from a list that satisfies a
-- predicate

filter :: (a -> Bool) -> [a] -> [a]

-- for example:
filter even [1..10]

-- this can also be done using a list comprehension
filter p xs = [x | x <- xs, p x]

-- alternatively with recursion
filter p [] = []
filter p (x:xs) 
    | p x = x : filter p xs
    | otherwise = filter p xs

-- suppose that we want to do the following
sum [] = 0
sum (x:xs) = x + sum xs

-- this simple function above sums up the contents of a list

-- however, there's a way to collapse this typical design pattern
-- this is by using the foldr function
-- the foldr function encapsulates this simple pattern of recursion
-- with the function (+) and the value v as arguments

sum = foldr (+) 0

product foldr (*) 1

length = foldr (\_ n -> 1 + n) 0

reverse = foldr (\x xs -> xs ++ [x]) []

-- The library function (.) returns the composition
-- of two functions as a single function

f . g = \x -> f (g x)

-- The library function all decides if every element 
-- of a list satisfies a given predicate
all :: (a -> Bool) -> [a] -> Bool
all p xs = and [p x | x <- xs]
-- the and function allows to evaluate whether all the bool statements
-- in the list are a true or false conjunction

-- the library function any decides if at least one element of a list
-- satisfies a predicate
any :: (a -> Bool) -> [a] -> Bool
any p xs = or [p x | x <- xs]

-- the library function takeWhile selects elements from a list while
-- a predicate holds all of the elements

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile p [] = []
takeWhile p (x:xs)
    | p x = x : takeWhile p xs
    | otherwise = []

-- the function dropWhile removes elements while a predicate holds
-- all of the elements

dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile p [] = []
dropWhile p (x:xs)
    | p x = dropWhile p xs
    | otherwise = x:xs
