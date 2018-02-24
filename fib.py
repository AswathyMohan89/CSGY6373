#def memoize(f):
#	store = {}
#	def anon(x):
#		if store.has_key(x):
#			return store[x]
#		else:
#			y = f(x)
#			store[x] = y
#			print(store)
#			return y
#	return anon

# we can create a memodict class when we are considering
# more than 1 input for the function
def memoize(f):
	class memodict(dict):
		def __init__(self, f):
			self.f = f
		def __call__(self, *args):
			return self[args]
		def __missing__(self, key):
			"""Method called when key is missing from dictionary"""
			ret = self[key] = self.f(*key)
			"""key is a tuple argument, *key is the list of arguments"""
			return ret
	
	return memodict(f)


# the decorator allows the memoize function
# to be applied with every function call
@memoize
def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

@memoize
def foo(a, b):
    return a * b

print(foo(2, 3))
print(foo)

print(foo(3, 4))
print(foo)
