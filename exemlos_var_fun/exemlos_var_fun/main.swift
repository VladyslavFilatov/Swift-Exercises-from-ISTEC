//
//  main.swift
//  exemlos_var_fun
//
//  Created by Vladyslav Filatov on 12/05/2022.
//

import Foundation

var greeting = "Hello, playground"


var idade = 10
let idade_const = 10

idade = 40
//idade_const = 50



var valor = 10.8

var soma = Double(idade) + valor

var somaInt = idade + Int(valor)

(10.8).rounded()



var idade_t:Int = 10
var altura_t:Float = 10

print(altura_t)


var nome = "teste"

//var 1nome = 1

var nome_1 = 1
var _nome = 1
//var π = 3.14
var π = 312423
var  🐶 = "cao"


var t = ("Gonçalo", 30)

t.0

var t2 = (nome:"Gonçalo", idade:30)

t2.nome
t2.0


var t3:(nome:String, idade:Int)


t3 = (nome:"Gonçalo", idade:30)
//t3 = (nome2:"Gonçalo", idade2:30)
t3 = (idade:30, nome:"Gonçalo")


t3 = ("Gonçalo", 30)

t3.nome

t = (nome:"Gonçalo", idade:30)

print(t3)




 /*
  
  n ... m
  0 ... 5 -> [0,1,2,3,4,5]
  
  n ..< (m-1)
  0 ... 5 -> [0,1,2,3,4]

  */

var lb = 0
var ub = 100

for a in lb ..< ub where a % 2 == 0{
    
    print(a)
    
}

var a = 0
while a < 10{
    
    print("o valor de a = \(a)")
    a += 1
    
}


if a == 10{
    
    print("o valor de a \n \" teste \" 10");
    
}else if a == 15 {
    
    print("a = 15")
}else {
    print("Outro valor")
}

if true {
    
}else{
    
    
}

/*
 
 fucs
 
 */
print("---------------------------------------------")
a = 10
switch a{
    case 10:
        print("o valor de a \n \" teste \" 10")
        
    case 15:
        print("o valor de a \n \" teste \" 15")
        
    default:
        print("Outro valor")
}

/*
A) print("o valor de a \n \" teste \" 10");
B) print("o valor de a \n \" teste \" 15");
C) A e B
D) O o codigo tem erros
*/

print("---------------------------------------------")


func olaMundo(){
    
    print("Ola Mundo")
    
}

olaMundo()
olaMundo()
olaMundo()


print("---------------------------------------------")

func olaMundo2(nome:String){
    
    print("Ola Mundo, \(nome), em 2022")
    
}

olaMundo2(nome: "Gonçalo")

print("---------------------------------------------")

func olaMundo(nome:String) -> String{
   return "Ola Mundo, \(nome)"
}

var resp = olaMundo(nome: "Gonçalo_pram")
print(resp)


print("---------------------------------------------")

func olaMundo3(nome:String) -> String{
    "Ola Mundo, \(nome)"
}

print(olaMundo3(nome: "Gonçalo_pram"))




func soma(valor1:Int, valor2:Int) -> Int{
    valor1 + valor2
}

soma(valor1: 2, valor2: 4)


func multiplica(_ valor1:Int, por valor2:Int) -> Int{
    valor1 * valor2
}

multiplica(40, por: 4)

for _ in 0 ... 50{
    
    print("teste")
    
}

