//
//  main.swift
//  exemplo_heranca
//
//  Created by Vladyslav Filatov on 26/05/2022.
//

import Foundation
import SwiftUI
/*
enum dictErros:Error{
    case keyDoNotExist(key:String)
}

extension Dictionary{
    
    func valueFor(key: Key) throws -> Value{
        
        guard let val = self[key] else {
            throw dictErros.keyDoNotExist(key: key as! String)
        }
        
        return val
    }
    
}


var dict:[String:String] = ["key":"value", "key2":"value", "key3":"value"]


do{
    
    let val = try dict.valueFor(key: "eqwwqe")
    
    print(val)
}catch(dictErros.keyDoNotExist(let val)){
    
    
    print("key -> \(val) <-Invalida ")
    
    
}

print("pos erro")


*/


protocol Veiculo{
    
    var porp1:String {get set}
    var porp2:String {get}
    func info() -> String

}
class Carro: Veiculo{
    var porp1: String{
        get{
           return "porp1"
        }
        set{
            
        }
        
    }
    
    var porp2: String
    
    
    var modelo:String
    var cor:String
  
    init(modelo:String, cor:String){
        self.cor = cor
        self.modelo = modelo
        self.porp2 = ""
    }
    
    
    func info() -> String{
        "o carro tem o modelo: \(modelo) e cor: \(cor)"
    }
    
}


class BMW:Carro{
    
    var ano:UInt
    
    init(modelo: String, cor: String, ano:UInt) {
        self.ano = ano
        super.init(modelo: modelo, cor: cor)
    }
    
    override func info() -> String {
        "\(super.info()) e é do ano: \(self.ano)"
    }
    
}


class Audi:Carro{
    
    var Vmax:UInt
    
    init(modelo: String, cor: String, Vmax:UInt) {
        self.Vmax = Vmax
        super.init(modelo: modelo, cor: cor)
    }
    
    override func info() -> String {
        "\(super.info()) e a Vmax é: \(self.Vmax)"
    }
    
}


class Barco:Veiculo{

    var porp1: String = ""
    
    var porp2: String = ""
    
    
    var topSpeed:UInt
    
    init(topSpeed:UInt){
        self.topSpeed = topSpeed
        
    }
    
    func info() -> String {
        "infos do barco"
    }
    
}

var carro = Carro(modelo: "sem modelo", cor: "Azul")
var bmw = BMW(modelo: "320", cor: "preto", ano: 1960)
var audi = Audi(modelo: "A8", cor: "Amarelo", Vmax: 320)
var barco = Barco(topSpeed: 3233)
/*
print(carro.info())
print(bmw.info())
print(audi.info())
*/

let arr:[Veiculo] = [carro, bmw, audi, barco]

arr.forEach { c in
    print( c.info())
}

/*
 
 o carro tem o modelo: sem modelo e cor: Azul
 o carro tem o modelo: 320 e cor: preto e é do ano: 1960
 o carro tem o modelo: A8 e cor: Amarelo e a Vmax é: 320
 
 */
