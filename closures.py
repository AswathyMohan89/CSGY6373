def makeInce(x):
    def inc(y):
        return y + x
    return inc

x = makeInc(3)
y = makeInc(7)

x(1) # 4
y(2) # 9

'''
Closures in python are created by function calls
'''

def generate_power_func(n):
    print("id(n): %x" % id(n))
    def nth_power(x):
        return x**n
    print("id(nth_power): %X" % id(nth_power))
    return nth_power

# Python yield
def createGenerator():
    myList = range(3)
    for i in myList:
        yield i * i

mygen = createGenerator()
for i in mygen:
    print(i)
