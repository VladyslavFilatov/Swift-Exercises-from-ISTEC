//
//  main.swift
//  aula_2_ex_exam
//
//  Created by Vladyslav Filatov on 28/04/2022.
//

import Foundation

class X{
    static var x:Int = 10
    
    static func x(x: Int) -> Int {
        var x = x
        
        x = X.x + ((X.x/(x/2))*2)
        
        return X.x + 2;
        
    }
    
}
var x = (X.x/(X.x/5)) - 1
print(X.x(x:x))

