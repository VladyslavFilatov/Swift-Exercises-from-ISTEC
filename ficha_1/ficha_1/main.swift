//
//  main.swift
//  ficha_1
//
//  Created by Vladyslav Filatov on 28/04/2022.
//

import Foundation

// ex1
print("Escreve numero 1 ")
var nnum1 = Int(readLine()!)
print("Escreve numero 2 ")
var nnum2 = Int(readLine()!)

print("Escreve o numero da elevaçãp")
var nel = Int(readLine()!)

var soomma: Int = nnum1! + nnum2!

if soomma % 2 == 0{
    print("somma dos numeros: \(soomma) é par")
    print("Soma + numero da elevação: \(soomma + nel!)")
    
}else{
    print("somma dos numeros: \(soomma) é inpar")
    print("Soma + numero da elevação: \(soomma + nel!)")
    
}


print("----------------------")

print("Ex 2")
// ex2


var a: Float = 1

if a == 0 {
    print("numero incorreto, a não pode ser 0")
    exit(1)
}

var b: Float = 2

var c: Float = -15

if a == 100 && b == 1 && c == 5 {
    print("não possui raízes reais - a == 100 && b == 1 && c == 5 ")
    exit(1)
}

var total: Float = (-b+sqrt((b*b)-(4*a*c)))/(2*a)
var total1: Float   = (-b-sqrt((b*b)-(4*a*c)))/(2*a)

print("formula resolvento: x1 = \(total) e x2 = \(total1)")


print("----------------------")

print("Ex 3")
// ex3
var nu1: Float = 2
var nu2: Float = 8
var nu3: Float = 5

var nu4: Float = nu2 * nu3 / nu1


print(" regra de 3 simples \(nu1)")


print("----------------------")

print("Ex 4")
// ex4
print("Escreve numero 1 ")
var num1 = Int(readLine()!)
print("Escreve numero 2 ")
var num2 = Int(readLine()!)

var soma: Int = 0
for i in (num1!+1..<num2!){
     soma = soma + i
}
print(" somma entre dois numeros: \(soma)")


print("----------------------")

print("Ex 5")
// ex5
print("Escreve numero 1 ")
var n1 = Int(readLine()!)
print("Escreve numero 2 ")
var n2 = Int(readLine()!)

var somma: Int = 0
for i in (n1!+1..<n2!){
    if i % 2 == 0 {
        somma = somma + i
    }

}
print(" somma todos os numeros pares entre dois numeros: \(somma)")


print("----------------------")

print("Ex 6")
// ex6
var notaFinal = [15, 20, 18, 16, 17, 19]

notaFinal.sort()

print("Nota min: \(notaFinal[0]) e Nota max: \(notaFinal[notaFinal.endIndex - 1])")


print("----------------------")

print("Ex 7")
// ex7
print("Escreve numero 1 ")
var numm1 = Int(readLine()!)
print("Escreve numero 2 ")
var numm2 = Int(readLine()!)

var sommma: Int = 0
for i in (numm1!+1..<numm2!-1){
    if i % 2 == 0 || i % 5 == 0 {
        sommma = sommma + i
    }

}
print(" some todos os multiplos de 2 e 5 entre os 2 números: \(sommma)")


print("----------------------")

print("Ex 8")
// ex8
var fibnum: Int = 10
var fib: Int = 1
if fibnum == 0{
    print("Numero não pode ser 0")
    exit(1)
}
else if fibnum == 1{
    print(fibnum)
}else{
    while fibnum > 1 {
        fib += fibnum
        fibnum -= 1
    }
    print("Fibanaci \(fib)")
}


print("----------------------")

print("Ex 9")
// ex9
var factorial: Int = 1
var n: Int = 5
while n > 1{
    factorial *= n
    n -= 1
}
print(factorial)


print("----------------------")

print("Ex 10")
// ex10
print("Escola jogador1: Papel, Tesoura ou Pedra")
var jogador1: String = readLine()!
print("Escola jogador2: Papel, Tesoura ou Pedra")
var jogador2: String = readLine()!

if jogador1 == "Papel" && jogador2 == "Pedra" || jogador1 == "Tesoura" && jogador2 == "Papel" || jogador1 == "Pedra" && jogador2 == "Tesoura"{
    print("Jodador 1 ganho! \(jogador1) maior do que \(jogador2)")
}else{
    print("Jodador 2 ganho! \(jogador2) maior do que \(jogador1)")
}

