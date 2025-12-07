# MySQLServer.py
import mysql.connector
import pymysql

def create_database():
    connection = None
    try:
        # Connect to MySQL server
        connection = pymysql.connect(
            host="localhost",
            user="root",
            password="Mimiene/4452"
        )
    try:
        # Connect to MySQL server (NOT a specific database)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="your_password_here"   # Replace with your MySQL password
        )
            
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except Exception as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        if connection:
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
