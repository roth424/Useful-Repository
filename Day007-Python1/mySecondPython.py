animal = input("Please enter an animal: ")
number = int(input("Please enter a number: "))
answer = input(f"Do you have {number} {animal}s in your pocket? ")

if(answer == 'Y'):
    inPocket = True
elif answer == 'Yes':
    inPocket = True
else:
    inPocket = False

# doesn't work result = "fred" + 1
result = animal + str(number) + str(inPocket)
print(result)