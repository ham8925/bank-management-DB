import mysql.connector
import streamlit as st

# Establish a connection to MySQL Server

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="H@mm2455",
    database="covid",
    auth_plugin="mysql_native_password"
)
mycursor=mydb.cursor()
st.header('Connection Established')

