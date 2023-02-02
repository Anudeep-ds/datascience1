##------------------------------------------------------------
#variable declaration
a,b,c=1,2,4
d=a+c
a*=d
print('a+b',c)
print(d,a)
##---------------------------------------------------------------------------------------------
# #data types
# a=10
# b=1.2
# c="Anudeep"
# d=3+7j
# f=False

# print(type(a))
# print(type(b))
# print(type(c))
# print(type(d))
# print(type(f))
# #answer
# class 'int'>
# <class 'float'>
# <class 'str'>
# <class 'complex'>
# <class 'bool'>
# #--------------------------------------------------------------------------------------------

# #type conversion
# #number can abe coverted to string but string cannot be coverted to intiger
# num=29
# d=str(num)
# print(d)
# print(type(d))

# # Boolen converted to integer
# num=2.9
# d=int(num)
# print(d)
# print(type(d))

# #---------------------------------------------------------------------------------------------------------------------------
# # Comments are two types
# #single line comments

#a=10 #a is a variable


# #multiline comments

# '''mutiline comments can be
# written
# in parragraph
# by this 3 sigle cottation '''

# #-------------------------------------------------------------------------------------------------

##Control Sratetements are two types
# # Conditional statements - if,else, elif
# # Looping statements - for, while

# a=20
# b=1000

# if a>b:
#     print('a>b')
# # elif a<b:
# #     print('a<b')
# elif a!=b:
#     print('a no equal to b') #written for understanding
# else:
#     print('a=b')

# #imp - We can use sonditional operators like "and"(2 conditions are true), "or"(any of the statements is)

# a=20
# b=1000

# if a>b:
#     pass
# # pass

# #------------------------------------------------------------------------------------------
# # Looping statements
# # For loop and while loop

# l=[1,2,3,4,5,6]
# sum=0

# for i in l:
#     sum=sum+i
#     print(sum)

# # Range fuction

# for i in range(0,30,5):
#     print(i)


#while

# while True:
#     print("infinite loop") #this is infinite loop cannot be used in the code with out condition

# c=0
# while c<3:
#     c+=1
#     print("c is",c)
# else:
#     print("complted")


# #------------------------------------------------------------------------------------------
# # List method

# # List will start with square brackets[]

# # interview question imp -in list there will be again a list
# # index will start with 0

# # Append - Add any thing at the las
# # extend - Add any thing at the last multiple list elements
# # remove - remove anything
# # insert - insert anything in any place
# # Index -  find the index
# # count - how many times will come


# anudeep = [1,1.2,'anudeep',[1,2,3],True]
# anudeep.append(12)
# print(anudeep)

# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# anudeep.extend([1,4,5,6])
# print(anudeep)

# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# anudeep.insert(1,'king size')
# print(anudeep)

# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# print(len(anudeep))

# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# anudeep.pop(1)
# print(anudeep)

# # reverse will be reverse the lst display
# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# anudeep.reverse()
# print(anudeep)

# # imp to pull the value for nested list
# anudeep = [1,1.2,'anudeep',[1,2,3],True,12]
# print(anudeep[3][1])

# #------------------------------------------------------------------------------------------------------------------------------------

## tuple - same like list but it is immutable ante change avvadhu , ee brackets use cheyyali ()

# t=(1,2,True,"abc")
# t1=(2,3,False,"bdc")
# t2=(1,2.2,4,5)
# print(t[1])
# print(type(t),type(t1))

# # # Different type of operations
# # # Membership - if 2 in t (question chestham ) in word use chestham
# print(2 in t)
# # # Repetations - t * 2 (tuppe to time multiply avthadhi adition isthe adition avthadhi)
# print(t*2)
# # # iterations - if i in t (iteration method lo print avthai kadha adhe iterations)
# for i in t1:
#     print(i)
# # # concadination - t+t1 (2 tupples ni add cheyadam)
# print(t+t1)

# # function - min, max, sort, sum (e function manam use chestam)
# print(max(t2))
# print(min(t2))
# print(sorted(t2))
# print(sum(t2))

##------------------------------------------------------------------------------------------------------------------
##break will break the loop
# for value in "Anudeep":
#     if value=='d':
#         break
#     print(value)
# print('the end')

# ## continue will continue the loop
# for value in "Anudeep":
#     if value=='d':
#         continue
#     print(value)
# print('the end')

# # pause will pause the loop
# for value in "Anudeep":
#     if value=='d':
#         pass
#     print(value)
# print('the end')

# #-----------------------------------------------------------------------------------------------------------------

# Strings - single quotation double quotation trible quotation edi ichina string eee
# 'sdfs'
# "sdsdfsdfsd"
# '''sfsdfsdfsdf
# sadasdasdsasda'''
#pivi evina aaa stigs ee

# functions in strings

s='Anud e ep'

# print(s.upper())
# print(s.lower())
# print(s.split())
# print(s.strip())
# print(s.startswith('A'))
# print(s.endswith('A'))

print(s.count("e"))

# print(s.replace('e','E'))
# s.format()















