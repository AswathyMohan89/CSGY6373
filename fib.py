# def memoize(f):
#     store = {}
#     def anon(x):
#         if store.has_key(x):
#             return store[x]
#         else:

def memoize(f):
    pass

@memoize
def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)
