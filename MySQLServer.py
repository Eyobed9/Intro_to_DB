import mysql.connector

# establish a connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="123"
)

cursor = db.cursor()

try:
    # create the database
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(e)
finally:
    # close the connection
    cursor.close()
    db.close()

