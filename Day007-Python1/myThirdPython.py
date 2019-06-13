candyList = ['bonbons', 'twix', 'big red']

shoppingCart = []

selection = int(input("pick a candy"))
candy = candyList[selection]
shoppingCart.append(candy)

print(shoppingCart)

# line 9 should be:
print('You are taking home:')
for candy in shoppingCart:
    print(candy)