import os
import csv
csvpath = os.path.join('C:/TempDataDir/netflix_ratings.csv')

title = input("What show or movie are you looking for? ")
with open(csvpath, newline='') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=',')

    found = False
    # Read each row of data after the header
    for row in csvreader:
        if(row[0] == title):
            print(row[0] + " is rated " + row[1] + " with a rating of " + row[5])
            found = True
            break

if not found:
    print("I don't know that title")
