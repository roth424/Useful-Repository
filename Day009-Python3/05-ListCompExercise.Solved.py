names = []
for x in range(5):
    name = input("Please enter the name of someone you know. ")
    names.append(name)

lowercased = [name.lower() for name in names]
titlecased = [name.title() for name in lowercased]
invitations = [f"Dear {name}, attend me!" for name in titlecased]

for invitation in invitations:
    print(invitation)
