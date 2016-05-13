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
    
    init() {
        self.student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
    
}

//var t : Teacher?

if playground {
    
    var teacher = Teacher()
    
    
    if playground {
        var student = Student(teacher: teacher)
        teacher.student = student

    }
    
    
    print("exit playground")
}

print("end")


