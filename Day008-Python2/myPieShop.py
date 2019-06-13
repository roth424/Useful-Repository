pie_list = ["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun",
            "Blueberry", "Buko", "Burek", "Tamale", "Steak", "Fish"]
x = 0
selected_list = []

answer = "Y"
while answer == "Y":
    for index, name in enumerate(pie_list,1):
        print(f"({index}) {name}", end="  ")

    choice = input("\nEnter the number of your choice: ")

    print(f"Your {pie_list[int(choice)-1]} pie will be right up.")
    x+=1
    selected_list.append(pie_list[int(choice)-1])
    answer = input("Want another? ")

print(f"You ordered {x} pies.")

for pie in selected_list:
    print(pie)