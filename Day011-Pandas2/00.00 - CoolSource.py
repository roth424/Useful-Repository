while 1==1:
    print("Oh no, I'm stuck in an infinite loop...")
    # break  

x = 0  # 0.0  # ''
if x:
    print('x is truthy')
else:
    print('x is falsey')


import sys

for x in range(2, 100, 2):
    if (x % 10):
        print(x)
    elif (x >= 80):
        sys.exit()
    else:
        continue


result = print("Hello")
print(result)

def retNone():
     return

print(retNone())


try:
    x = 10
    y = 0
    z = x / y
except ZeroDivisionError:
    print("Invalid denominator")

list = ['fish', 'dog', 'cat', 'gorilla', 'emu']
print(list[0])
print(list[1])
print(list[-1])

