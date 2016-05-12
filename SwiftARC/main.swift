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
    
    var teacher : Teacher?
    
    deinit {
        print("goodbye student")
    }
    
}


class Teacher {
    
    var student : Student?
    
    deinit {
        print("goodbye teacher")
    }
    
}

//var t : Teacher?

if playground {
    
    var teacher = Teacher()
    
    
    if playground {
        var student = Student()
        teacher.student = student
        student.teacher = teacher
    }
    
    
    print("exit playground")
}

print("end")


