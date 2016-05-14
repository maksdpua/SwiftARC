//
//  main.swift
//  SwiftARC
//
//  Created by Maks on 5/12/16.
//  Copyright © 2016 Maks. All rights reserved.
//

import Foundation

var playground = true

class Student {
    
    unowned let teacher : Teacher
    
    deinit {
        print("goodbye student")
    }
    
    init(teacher: Teacher) {
        self.teacher = teacher
    }
    
}


class Teacher {
    
    var student : Student!
    
    var test: (()->())?
    
    lazy var test2 : (Bool)->() = {
        [unowned self] (a: Bool) in
        print(self.student)
    }
    
    init() {
        self.student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
    
}

var closure3 : (() -> ())?

//var t : Teacher?

if playground {
    
    var teacher = Teacher()
    
    teacher.test2(true)
    
    teacher.test = {
        [unowned teacher] in
        print(teacher)
    }
    
    
//    if playground {
//        var student = Student(teacher: teacher)
//        teacher.student = student
//
//    }
    
    var student = teacher.student
    
    closure3 = {
        [weak student] in
        print(student)
    }
    
    
    print("exit playground")
}

var x = 10
var y = 20

class Human  {
    var name = "A"
}

var h = Human()

var closure : () -> () = {
    [x,y] in
    print("\(x) \(y)")
}

var closure2 : (Int) -> Int = { [x,y,h] (a: Int) -> Int in
    print("Closure2: \(x) \(y) \(h.name)")
    return a
}

closure()

closure2(1)



h = Human()
h.name = "B"
x = 30
y = 40

closure2(1)

closure()

print("end")





