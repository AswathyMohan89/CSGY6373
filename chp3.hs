-- a type is a name for a collection of related values
-- ex: Bool contains True and False
-- applying a function to one or more arguments of the wrong type is called
-- a type error

-- if evaluating an expression e would produce a value of type t,
-- then e has a type t, written e::t

-- every well formed expression has a type which can be automatically
-- calculated a compile time using a process called type inference

-- all type errors are found at compile time which makes programs safer and faster
-- by removing the need for type checks at run time

-- curried functions are more flexible than functions on tuples,
-- because useful functions can often be made by partially applying a curried function

-- a function is called polymorphic if its type contains one or more type variables

-- i.e. length :: [a] -> Int
-- the "a" here means that any type can be substituted into it.


