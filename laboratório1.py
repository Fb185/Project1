import numpy
import math

#####   PART 3  ######
#####   ALINEA A ######

##  Área do retangulo

L = float(input("lado maior "))
l = float(input("lado menor "))
print("a area do retangulo é: ", l*L)


#####   ALINEA B   ######

Base = float(input(" base grande "))
h = float(input("altura "))
base = float(input("base peq "))

area = ((base + Base)/2)*h

print(area)


###### ALINEA C ######

a = float(input("primeiro numero "))
b = float(input("segundo numero "))
c = float(input("terceiro numero "))

s = (a+b+c)/2

v = (s*(s-a)*(s-b)*(s-c))

print(math.sqrt(v))


###### PARTE 4 ######

## a)

if 4 > 5:
    print("Correto")

## b)

for i in range(10):
    print (i + 1)

## c)

A = 0
while (A < 10):
    A = 1
    break

## d)
d = 1
e = 5
while True:
    if d == e:
        d =+ 1
    else:
        print("Feito")   

    break

## e)
#soma dois numeros inteiros

def sum(k, r):
    return k + r


## f)

#compara dois numeros inteiros

#def compare(x, j)
   # if x == j
     
     #   return True




##### PARTE 5 ######

#### EXERCICIO 1 #####

p = float(input(" insira coeficiente grau 2 ")) #a
l = float(input("insira coeficiente grau 1 ")) #b
j = float(input("insira coeficiente grau 0 ")) #c


d = (math.pow(l, 2)- 4*p*j)

if (d < 0):
    print("equação impossivel")

elif delta == 0:
    x = (-l+math.sqrt(l**2-4*p*j))/2*p
    print ("This equation has one solutions: ", x)
else:
    x1 = ((-l+math.sqrt(l**2-4*p*j))/2*p)
    x2 = (-l-math.sqrt(l**2-4*p*j))/2*p
    print("os zeros da função são respetivamente: ",x1," e ",x2)


###### EXERCICIO 2 ######


n = int(input("Quantos termos? "))

n1 = 0
n2 = 1
count = 0

if n <= 0:
   print("Porfavor insira um numero positivo")
elif n == 1:
   print("Fibonacci", nterms,":")
   print(n1)
else:
  
   print("Sequência:")
   while count < n:
       print(n1)
       nth = n1 + n2
      
       n1 = n2
       n2 = nth
       count += 1

## b)






