# Create a dictionary to store the following:
  # Your name
  # Your age
  # A list of a few of your hobbies
  # A dictionary of a few times you wake up during the week
# Print out your name, how many hobbies you have and a time you get up during the week.
my_info = {"name": "Simon",
            "age": 21,
            "hobbies": ['Miniatures','AoS','W40K','Infinity', 
                        'D&D','Kickstarters'],            
            "wake up times": {"Mon-Fri": "3:00", 
                              "Sat": "4:00", "Sun": "5:00"}
}
print(my_info["name"], len(my_info["hobbies"]), 
        my_info["wake up times"]["Sat"])

