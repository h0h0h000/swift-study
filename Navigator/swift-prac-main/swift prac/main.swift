//
//  main.swift
//  swift prac
//
//  Created by 경호's mac on 2022/04/04.
//

import Foundation

var ch1 = readLine()?.components(separatedBy: " ")
var num1 = ch1?[0]
var num2 = ch1?[1]

if let num1 = Int(num1 ?? "0"),
   let num2 = Int(num2 ?? "0"){
    print(num1 - num2)
}



