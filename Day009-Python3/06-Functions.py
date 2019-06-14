
def MySubName(name):
    print("Hello " + name)

def Multiply(num1, num2):
    return num1 * num2

def House(address, sqFootage = 1200, price = 0):
    print(address, str(sqFootage), "$" + str(price))

House("123 Habitat")
House("123 Free St", 2400)
House("123 Street", 1000, 250000)

MySubName("dino")

x = Multiply(5,3)
print(x)

def MultiplyList(numbers):
    result = 1
    for number in numbers:
        result = result * number
    return result


mylist = [1, 2, 4, 6, 8, 13]
result = MultiplyList(mylist)
print(result)      
