flintstones = ['fred','wilma','pebbles','dino']

newNames = []
for name in flintstones:
    if name == 'dino':
        newNames.append(name.upper())

print(newNames)

newNames = [x.upper() for x in flintstones if x == 'dino']

print(newNames)