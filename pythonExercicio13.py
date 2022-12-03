import mysql.connector

N = int (input('Digite o valor: '))

conexao = mysql.connector.connect (
    host ='localhost',
    user = 'root',
    port = '3306',
    password = 'mariadb',
    database = 'fatec'
)

cursor = conexao.cursor ()

argumentos = (N, 0)
resultado = cursor.callproc ('Doispy', argumentos)

print ('resultado:', resultado)
#Faça um programa que calcule o fatorial de um número inteiro fornecido pelo usuário. Ex.: 5!=5.4.3.2.1=120