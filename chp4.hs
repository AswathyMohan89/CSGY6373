-- conditional expressions
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- conditional expressions can be nested
signum :: Int -> Int
signum n = if n < 0 then -1 else
              if n == 0 then 0 else 1

-- in Haskell, conditional expressions must always have an else branch
-- which avoids any possible ambiguity problems with nested conditionals.


-- guarded equations
abs n | n >= 0 = n
      | otherwise = -n

-- guarded equations can be used to make definitions involving multiple
-- conditions easier to read

signum n | n < 0     = -1
         | n == 0    = 0
         | otherwise = 1

-- not function maps False to True and True to False

not False = True
not True = False

-- functions can often be defined in many different ways 
-- using pattern matching

True && True = True
_    && _    = False

-- this says that if you have true and true you get a true
-- but if it is any other combination you will get a false

-- if the first expression is false, then the rest is not evaluated

-- the underscore symbol is a wildcard pattern
-- that matches any argument value

-- patterns are matched in order
-- therefore:
_    && _    = False
True && True = True

-- will always return false because
-- we see the wildcard expression first

-- patterns may not repeat variables. 
b && b = b
_ && _ = False 

-- this will cause an error


-- functions on lists can be defined using x:xs patterns

head (x:_) = x

tail (_:xs) = xs

-- x:xs patterns only match non-empty lists
-- head [] will return an error

-- x:xs patterns must be parenthesised
-- because application has priority over (:)


-- lambda expressions can be used to give a formal meaning to functions
-- defined using currying

add x y = x+y

-- lambda expressions are also useful when defining functions that return functions as results

const x = \_ -> x

-- lambda expressions can be used to avoid naming functions that are only referenced onced

odd n = map (\x -> x*2 + 1) [0..n-1]



