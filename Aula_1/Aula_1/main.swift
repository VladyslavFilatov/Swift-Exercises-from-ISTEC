//
//  main.swift
//  Aula_1
//
//  Created by Vladyslav Filatov on 21/04/2022.
//

import Foundation

var a: Float = 100

if a == 0 {
    print("numero incorreto, a não pode ser 0")
    exit(1)
}

var b: Float = 1

var c: Float = 5

if a == 100 && b == 1 && c == 5 {
    print("não possui raízes reais - a == 100 && b == 1 && c == 5 ")
    exit(1)
}

var total: Float = (-b+sqrt((b*b)-(4*a*c)))/(2*a)
var total1: Float   = (-b-sqrt((b*b)-(4*a*c)))/(2*a)

print("formula resolvento: x1 = \(total) e x2 = \(total1)")







