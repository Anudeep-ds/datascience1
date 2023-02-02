def cal(number):
    if number ==0:
        return 1
    else:
         return number * cal(number-1)
        
print ("0! = ",cal(0))
print ("1! = ",cal(1))
print ("7! = ",cal(7))
print ("10! = ",cal(10))
