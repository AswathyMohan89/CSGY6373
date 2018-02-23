-- Bool contains True and False
-- Applying a function to one or more arguments of the wrong type
-- is called a type error

-- e has a type t => e :: t
-- every well formed expression has a type (compiler does this through type inference)
-- all type erros are found at compile time (this is safer and faster)

-- Polymorphic function if its type contins one or more type variables

add' x y = x + y