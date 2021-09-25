import csv
import MySQL80
import pandas as pd

mydb = MySQLdb.connect(host='127.0.0.1',
    user='root',
    passwd='data@OSQL2021',
    db='trial')
cursor = mydb.cursor()

csv_data = pd.read_csv('/C:/Users/user/Desktop/10Academy/week 11/station.csv')
for row in csv_data:

    cursor.execute('INSERT INTO kim(name, gender, \
          age, location )' \
          'VALUES("%s", "%s", "%s")', 
          row)
#close the connection to the database.
mydb.commit()
cursor.close()
print ("Done")

