val = lambda i:i+21;
print(val(20))\

str = "Hello World"
(lambda str: print(str))(str)

var = lambda i,j,k : i*k*j
print(var(10,20,3))


var = lambda i,j : i if (i > j) else j
print(var(100,20))

vals = lambda a: a*a
print(vals(2))
print(vals(3))
print(vals(6))
print(vals(12))