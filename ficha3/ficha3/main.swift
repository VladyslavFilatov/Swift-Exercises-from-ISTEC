//
//  main.swift
//  ficha3
//
//  Created by Vladyslav Filatov on 19/05/2022.
//

import Foundation


protocol ICanBuyIt {
    var modelo : String { get set }
    var purchase : Int { get set}
}


// Carro Class

class Carro{
    var modelo:String
    var ano:Int
    var cor:String
    var purchase:Int
    
    init(modelo:String, ano:Int, cor:String, purchase:Int) {
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
        self.purchase = purchase
}
    
    
    func info() -> String{
"o carro tem o modelo: \(modelo), o ano: \(ano), o cor: \(cor) e o preço: \(purchase)"
        }
                 
}

var bmw = Carro(modelo: "BMW", ano: 2022, cor: "preto", purchase: 39000)
var mercedes = Carro(modelo: "Mercedes",ano: 1950, cor: "branco", purchase: 75000)
var parche = Carro(modelo: "Porshe",ano: 1971, cor: "amarelo", purchase: 100000)


// Cliente Class

class Cliente: Carro {
    var name:String
    var idade:Int
    
    init(modelo:String, ano:Int, cor:String, purchase:Int, name:String, idade:Int) {
        self.name = name
        self.idade = idade
        super.init(modelo: modelo, ano: ano, cor: cor, purchase: purchase)
        }
    
    override func info() -> String{
            "o carro tem o modelo: \(modelo), o ano: \(ano), o cor: \(cor) e o preço \(purchase)"
        }
    
    
}



var vlad = Cliente(modelo: "BMW", ano: 2022, cor: "preto", purchase: 39000, name:"Vlad", idade:28)



// Vendedor Class
class Vendedor: Cliente, ICanBuyIt {
    var stand:String

    init(modelo:String, ano:Int, cor:String, purchase:Int, name:String, idade:Int, stand:String) {
        self.stand = stand
        super.init(modelo: modelo, ano: ano, cor: cor, purchase: purchase, name: name, idade: idade)

    }
    
    override func info() -> String{
            "O carro tem o modelo: \(modelo), o ano: \(ano) o cor: \(cor) e o preço: \(purchase)"
        }
    
    
}
var stand = Vendedor(modelo: "BMW", ano: 2022, cor: "preto", purchase: 21000, name:"Vlad", idade:28, stand: "Oriente")
var stand2 = Vendedor(modelo: "Mercedes", ano: 1975, cor: "branco", purchase: 55000, name:"Maria", idade:19, stand: "Sintra")
var stand3 = Vendedor(modelo: "Porshe", ano: 1950, cor: "amarelo", purchase: 100000, name:"Vladyslav", idade:29, stand: "Azores")



func buy(_ item : ICanBuyIt) {
    print("Gostaria de comprar o carro \(item.modelo) de valor \(item.purchase)?")
    let sim = String(readLine()!)
    if sim == "Sim" {
        print("Parabens voce o novo dono do maravilhoso carro ")
    } else {
        print("Voce pode pensar um poco e comprar o carro depois")
    }
}



print("Escolha opção")
print("Comprar Carro - 1 ------- Vender Carro - 2")
var num = Int(readLine()!)
if num == 1 {
    print("Escolha o Carro. Nossos carros são: \(stand.modelo), \(stand2.modelo), \(stand3.modelo) ")
    
    let com = String(readLine()!)
    if com == "BMW" {
        print(stand.info())
        
        print(buy(stand))

    } else if com == "Mercedes" {
        print(stand2.info())
        
        print(buy(stand2))
    } else if com == "Porshe" {
        print(stand3.info())
        
        print(buy(stand3))

    } else {
        print("Obrigado")
    }
    
}else {// Opção 2 - Vender Carro 
    print("Gostaria vender o meu carro \(vlad.info())")
    
    print("Queria comprar o Carro?")
    let comp = String(readLine()!)
    if comp == "Sim" {
        print("É bom voce comprou o carro maravilhoso")
    } else {
        print("Não faz mal, vou para outro stand")
    }
}
