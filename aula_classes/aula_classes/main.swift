//
//  main.swift
//  aula_classes
//
//  Created by Vladyslav Filatov on 19/05/2022.
//

import Foundation

class Aluno {
    
    static var id:Int = 1
    

    var idade: UInt {
        didSet {
            print("o alunos passou para \(self.idade) anos de \(oldValue)")
        }
        willSet{
            print("o alunos vai passar de para \(self.idade) para \(newValue) anos")
        }
    }
    
    init(){
        idade = 10
    }
    
    func isAldulto() -> Bool{
        self.idade >= 18
    }
    
    func growUP(anos:UInt = 1) {
        self.idade += anos
    }
    
    var anoNasc:UInt{
        get{
            2022 - idade
        }
        set{
            self.idade = 2022 - newValue
            
        }
    }
    
    lazy var demo = self.coolFunc()
    
    var nome:String = {
        "Goncalo"
    }()
    
    func coolFunc() -> String {
        self.idade = 0
        return "coolfunck"
    }
    
    
}

struct Aluno2 {

    var idade: Int
    
    func isAldulto() -> Bool{
        self.idade >= 18
    }
    
  //  func growUP(anos:Int = 1) {
   //     self.idade += anos
   // } can'be - need be mutating func
    mutating func growUP(anos:Int = 1) {
        self.idade += anos
    }
    
    
    
    
    
}

var al_Class = Aluno()
var al_Struct = Aluno2(idade: 30)

var al_Class2 = al_Class
var al_Struct2 = al_Struct

al_Class2.idade = 142 // alter becous is reference
al_Struct.idade = 20

print("al_Class \(al_Class.idade), al_Class2 \(al_Class2.idade)")

print("al_Struct \(al_Struct.idade), al_Struct2 \(al_Struct2.idade)")


print(al_Class === al_Class2)

var al_Class3 = Aluno()
print(al_Class === al_Class3)


al_Class.anoNasc = 2000
print("al_Class.anoNasc \(al_Class.anoNasc)")

al_Class.growUP()

Aluno.id



// print(al_Struct === al_Struct2) can't be, becous is not instant









