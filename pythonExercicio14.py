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
resultado = cursor.callproc ('Trespy', argumentos)

print ('resultado:', resultado)
#Faça um programa que peça um número inteiro e determine se ele é ou não um número primo. Um número primo é aquele que é divisível somente por ele mesmo e por 1.