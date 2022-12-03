import mysql.connector

N = float (input('Digite o valor: '))

conexao = mysql.connector.connect (
    host ='localhost',
    user = 'root',
    port = '3306',
    password = 'mariadb',
    database = 'fatec'
)

cursor = conexao.cursor ()

argumentos = (N, 0)
resultado = cursor.callproc ('Umpy', argumentos)

print ('resultado:', resultado)

##Sendo H = 1 + 1/2 + 1/3 + ... + 1/N, faça um programa para gerar o número H. O número N é informado pelo usuário.