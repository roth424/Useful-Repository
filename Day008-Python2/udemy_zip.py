import csv
path = "C:/TempDataDir/web_starter.csv"
title = []
price = []
subscribers = []
with open(path, newline='', encoding="utf8") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    for row in csvreader:
        title.append(row[1])
        price.append(row[4])
        subscribers.append(row[5])

newdata = zip(title, price, subscribers)
path = "C:/TempDataDir/web_end.csv"
with open(path, 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile, delimiter=",")
    csvwriter.writerow(['Name','Price','Subscribers'])
    csvwriter.writerows(newdata)
