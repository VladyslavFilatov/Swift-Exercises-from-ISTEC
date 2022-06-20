//
//  main.swift
//  exemplos_heranca_overraiding_protocolos
//
//  Created by Vladyslav Filatov on 26/05/2022.
//

import Foundation

/*
 
 herança
 overraiding
 protocolos
 
 
 
 array
 set
 dicionarios
 
 
 
 */


// Clouser
func calc(op: () -> Int) ->Int{
    
    return op();
    
}


var x = calc {
    10
}


print(x)



/*
 
 herança
 overraiding
 
 
 
 */

class Pessoa{
    var nome:String
    var idade:Int
    
    init(nome:String,idade:Int ){
        self.nome = nome
        self.idade = idade
    }
    
    func infos(){
        print("\(self.idade), \(self.nome)")
        
    }
    
    final func teste(){
        
        
    }
    
}

class Medico: Pessoa{
    
    var exp:String
    
    init(nome: String, idade: Int, exp:String) {
        self.exp = exp
        super.init(nome: nome, idade: idade)
    }
    
    func dados() {
        super.infos()
        print("-------------")
        print("nome: \(super.nome),\nage: \(super.idade),\nexp: \(self.exp)")
    }
    
    override func infos() {
        print("nome: \(super.nome),\nage: \(super.idade),\nexp: \(self.exp)")
    }
    
    // override func teste(){ }
}


var p = Pessoa(nome: "Joao", idade: 30)
var m = Medico(nome: "Rui", idade: 30, exp: "foo")



var mp = m as Pessoa


print(mp.nome)
m.nome = "Luis"
print(mp.nome)




/*
 
 protocolos
 
 */








protocol SomeProtocol {
    var someInt:Int {get set}
    var someOtherInt:Int {get}
}

protocol SomeProtocol2 {
    func random() -> Double
}

class MyClass:SomeProtocol, SomeProtocol2{
    var someInt: Int
    var someOtherInt: Int
    init(){
        someOtherInt = 0
        someInt = 0
    }
    func random() -> Double {
        0
    }
}



/*
 
 array
 set
 dicionarios
 
 
 */
print("-----------------array-----------------")
//array

var nome:[Int] = []
var nome2 = [2,3,45,9,12,321,124,124,12]



print(nome2)
nome2.append(1111)
print(nome2)
nome2.insert(9999, at: 3)
print(nome2)


print(nome2[3])


nome2.remove(at: 3)
print(nome2)

nome2[3] = 32112423214

print(nome2)


print("---------------array -> for a in nome2 ----------------")
for a in nome2{
    
    print(a)
}

print("---------------array -> nome2.forEach { elm in ----------------")

nome2.forEach { elm in
    print(elm)
}

print("---------------Fim array-----------------")

//set
print("---------------set-----------------")


var s1:Set = ["Polvilho doce","Polvilho azedo", "Leite", "Oleo", "Queijo", "Ovos"]

print(s1)
/*
 ["Leite", "Oleo", "Ovos", "Polvilho azedo", "Queijo", "Polvilho doce"]
 
 ["Ovos", "Queijo", "Leite", "Polvilho azedo", "Oleo", "Polvilho doce"]

 */
print(s1)

//var s1:Set = ["Polvilho doce","Polvilho azedo", "Leite", "Oleo", "Queijo", "Ovos"]

var s2:Set = ["Polvilho doce","Polvilho azedo"]



s2.map { val in
    val.lowercased()
}

s2.forEach { val in
    print(val)
}

print(s1.intersection(s2))

//s2.remove(at: Set<String>.Index)

print("---------------set add-----------------")

let resp = s2.insert("teste")

print(resp)

let resp2 = s2.insert("teste")

print(resp2)


print(s2)
s2.remove("Polvilho doce")
print(s2)


let c = s2.contains("Polvilho azedo")
print(c)

let c1 = s2.contains("Polvilho Azedo")
print(c1)

print("---------------Fim set-----------------")
//dicionarios


print("--------------Dicionarios-----------------")

var dict:[String: String] = [:]

var dict2:[String: String] = ["key":"valor"]

var dict3 = ["key":"valor","key2":"valor2","key3":"valor3"]

print(dict3)

print(dict3["key"])


print("--------------Dicionarios add new elm -----------------")

print(dict3)
dict3["key9"] = "valor9"
print(dict3)
dict3["key9"] = nil
print(dict3)


for a in dict3{
    print(a)
}


dict3.forEach { (key, value) in
    print(key)
    print(value)
    
    print("(key: \"\(key)\", value: \"\(value)\"")
    
}
