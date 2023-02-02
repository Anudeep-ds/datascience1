class python:
    val = 100

print(python)   

ob = python()

print("value is =",ob.val)

#create clas

class bike:
    name = "kawasaki"
    body = "gen III"
    engine = 1340

    def demofun(self): #fuction 
        print("\nbike =", self.name)
        print("\nbody =", self.body)
        print("\nengine =", self.engine)

#create onjects

b1=bike()
b2=bike()

#accessing the first object

print("bike name is ",b1.name)
print("bike name is ",b1.body)

b2.demofun()

