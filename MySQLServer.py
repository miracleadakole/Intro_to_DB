import mysql.connector

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Mimiene/4452"
    )

    mycursor = mydb.cursor()  

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database 'alx_book_store' created successfully")

except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    if 'mycursor' in locals():
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
