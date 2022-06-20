//
//  main.swift
//  exemplos_opecionais
//
//  Created by Vladyslav Filatov on 12/05/2022.
//

import Foundation

var idade:Int
idade = 14
var idade2:Int = 1

var idade_opt:Int?
idade_opt = 10
//print(idade_opt!)



var val2:Int? = 10

//var val3:Int? = val1 + val2


var val1:Int? = nil
if let valor = val1 {
    
 print("val1 = \(valor)")
    
}else{
    
   
    print("val1 é nil")

}



var opt:Int? = nil
var foo = opt ?? -1


func teste(nome:String?){
    
    guard let nome = nome else {
        print("o nome é nil")
        return
    }
    print(nome)
}

func teste2(nome:String?) -> String{
    
    guard let nome = nome else {
        //print("o nome é nil")
        return "o nome é nil"
    }

    return nome
}


teste(nome: "João")


var teste:String? = "Carlos"

print(teste2(nome: teste))

/*
 (-b +/- raiz( b^2 -4ac))/(2a)
 
 a < 0 -> imp
 
 delta = b^2 - 4ac < 0 -> imp
 
 r = raiz(delta)
 
 resp1 = (-b+r) / (2a)
 resp2 = (-b-r) / (2a)

 */

//  NaN

//raiz -> sqrt()



func frame(h:Int? = nil, w:Int? = nil) -> (h:Int, w:Int){
    let h:Int = h ?? 100
    let w:Int = w ?? 100
    
    return (h, w)
}

print(frame(h: 200, w: 412))
print(frame(h: 200, w: nil))

print(frame(w: 302))



func frame2(h:Int = 100, w:Int = 100) -> (h:Int, w:Int){
    //let h:Int = h ?? 100
    //let w:Int = w ?? 100
    
    return (h, w)
}


print(frame2(w: 302))


frame(h: opt, w: opt)


print("dadasd \(4324)")


func eleva(base:Int, exp:Int) {
  var rslt:Int = base
  var exp:Int = exp

  while(exp>0) {
    rslt *= base;
    exp -= 1
  }
  print("A potência é igual a: \(rslt)")
}

var a = 10
var b = 20

eleva(base: 2, exp: 10)



var f = 10

print("-------------------------")
var greeting:Int? = 10
print(greeting) // 10

var fooo = 5
greeting = fooo
print(greeting) // 5

print(greeting!) // 5

greeting = 10
print(greeting!) // 10
greeting = nil
print(greeting ?? 20) // 20

print("----------------------------------")

greeting = 912

if let greeting = greeting {
    print(greeting)
} else{
    print("a var e nil")
}


print("----------------------------------")

func teste_guard (valorA:Int? = nil) {
    
    guard let valorA = valorA else {
        print("o valorA e nil")
        return
    }
    print(valorA)

}

print("----------teste_guard(valorA:39)------------------------")


teste_guard(valorA: 39)

print("------------teste_guard()----------------------")

teste_guard()

print("----------------------------------")



func logIn(network:Bool, usr:Bool,pwd:Bool,loged:Bool ) -> Bool?{
    
    guard network == true else{
        print("sem ligação a rede")
        return nil
    }
    
    guard usr == true else{
        print("sem user")
        return nil

    }
    
    guard pwd == true else{
        print("sem pwd")
        return nil

    }
    
    guard loged == true else{
        print("login Falhado")
        return nil

    }
    
    return true
}



logIn(network: true, usr: true, pwd: true, loged: false)

