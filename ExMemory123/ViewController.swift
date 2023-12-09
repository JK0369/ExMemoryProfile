//
//  ViewController.swift
//  ExMemory123
//
//  Created by 김종권 on 2023/12/08.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let vc2 = VC2()
            self.present(vc2, animated: true)
        }
    }
}

class VC2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        var person = Person(name: "John")
        var pet = Pet(name: "Fluffy")

        person.pet = pet
        pet.owner = person
    }
}

class Person {
    var name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    
    deinit {
        print("\(name) is deallocated")
    }
}

class Pet {
    var name: String
    var owner: Person?
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    
    deinit {
        print("\(name) is deallocated")
    }
}
