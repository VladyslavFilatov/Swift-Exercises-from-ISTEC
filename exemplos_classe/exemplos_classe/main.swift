//
//  main.swift
//  exemplos_classe
//
//  Created by Vladyslav Filatov on 28/04/2022.
//

import Foundation

class Pessoa_class{
    
    var nome:String
    var idade:UInt8

    /// nome:String = "Sem nome"
    /// idade:UInt8 = 0

    init(nome:String = "Sem nome", idade:UInt8 = 0){
        self.nome = nome
        self.idade = idade
    }

    func showData(){
        print("nome: \(self.nome), idade: \(self.idade)")
    }
    
}


struct Pessoa_struct{
    
    var nome:String
    var idade:UInt8
    
    mutating func growUp(anos:UInt8 = 1){
        self.idade += anos
    }
}


var ps = Pessoa_struct(nome: "Joao", idade: 20)
var pc = Pessoa_class(nome: "Joao", idade: 20)
var pc2 = Pessoa_class(nome: "Joao")

pc2.showData()


//init(nome:String = "Sem nome", idade:UInt8 = 0)
var pc3 = Pessoa_class(nome: "Joao")
pc3.showData()

var pc5 = Pessoa_class(nome: "Joao")
pc5.showData()


print(pc3 === pc5)



class Quadrado{

    var teste:Int = 10
    
    var lado:Float
    init(lado:Float = 0.0){
        self.lado = lado
    }
    var area:Float{
        get{
            return (lado * lado)
        }
        set{
            self.lado = sqrt(newValue)
        }
    }
    var p:Int = 01 {
        
        willSet{
            print("o valor de p é \(p) e vai mudar para \(newValue)")
            
        }
        
        //set
        
        didSet{
            print("o valor de p é \(p) tendo sido mudado de \(oldValue)")
            
        }

    }
    
}

var q = Quadrado(lado: 10)

print(q.area)


q.p = 10
