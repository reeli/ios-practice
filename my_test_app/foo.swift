//
//  foo.swift
//  my_test_app
//
//  Created by rrli  on 2023/8/5.
//

import Foundation


enum Result {
    case success
    case failure
    case pending
    case completed
    case loading
}

enum Gender {
    case male, female
}


class User: ObservableObject{
    @Published var name: String = ""
    @Published var age: Int32 = 10
    @Published var gender: Gender = .female
}


class SomeClass {
    private(set) var data: String?
    
    init(data: String?) {
        self.data = data
    }
    
    func updateData(_ newData: String?) {
        // 可以在类内部修改 data 的值
        self.data = newData
    }
}


struct Circle {
    var radius: Double
    
    var area: Double {
        get {
            return Double.pi * radius * radius
        }
        
        set(newArea) {
        }
    }
    
    var circumference: Double {
        return 2 * Double.pi * radius
    }
}

let circle = Circle(radius: 5)


struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        get {
            return firstName  + "." + lastName
        }
        set {
            let parts = newValue.split(separator: ".")
            firstName = String(parts[0])
            lastName = String(parts[1])
        }
    }
}

func getPersonFullName(prefix: String) -> String {
    var person = Person(firstName: "Tomas", lastName: "Lee")
    print(person.fullName)
    person.fullName = "July.Wang"
    return person.fullName
}
