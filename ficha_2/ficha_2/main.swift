//
//  main.swift
//  ficha_2
//
//  Created by Vladyslav Filatov on 05/05/2022.
//

import Foundation


// ex1

var array: [Int] = []

for i in 1...100 {
    if i % 2 == 0 {
        array.append(i)
    }
    
}
    print("Os numeros pares em array: \(array)")

// ex2

var somma: Int = 0
for i in array {
    somma = somma + i
    
}
    print("Somma de todos os numeros de array ex1 \(somma)")

// ex3


var arrayN: [Int] = []
var arraySom = [Int]()
for i in 0...100 {
    if i % 2 != 0 {
        arrayN.append(i)
    }
    
}
for ind in 0...49{
    let soma = array[ind]+arrayN[ind]
    arraySom.append(soma)
}
print("Os numeros de dois array: \(arraySom)")


// ex 4

var arrayR: [Int] = [5,3,7,10,11,21]
arrayR.sort()

print("Os numeros de array \(arrayR)")


// ex5

var arrayS = [Int] ()
for ii in 0...49{
    let som = ( array[ii] + (arraySom[ii] + 1) )
    arrayS.append(som)
}
print("Soma dos array ex1 e ex3: \(arrayS)")


// ex 6

var setRanNum = Set<Int>(0...49)

print("Os numeros de Set são: \(setRanNum)")


// ex7

var almoco: Set<String> = ["Carte", "Batata", "Fruta", "Cha", "Sobremesa"]
var jantar: Set<String> = ["Peixe", "Batata", "Vinho", "Cafe", "Sobremesa", "Fruta"]

print(almoco.intersection(jantar))
print(almoco.subtracting(jantar))
//
print(almoco.symmetricDifference(jantar))
print(almoco.union(jantar))


// ex8

var dictAlunos: [Int:Int]
dictAlunos = [135:16, 321:18, 169:15, 251:19, 793:10, 521:14, 671:15, 933:20, 791: 17]

for a in dictAlunos.values{
    if a < 15{
        print("Bom alunos: \(dictAlunos.keys)")
    }
}

print("Todos os alunos \(dictAlunos.keys)")
print("Todas as notas \(dictAlunos.values)")





