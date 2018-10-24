import UIKit

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am a Vehicle.")
    }
    
    // driving algorithm
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    // Function for breaking
    func brake() {
            // to be defined at a later time
    }
    
}

// Example of class inheritance
class SportsCar: Vehicle {
    override init() { // overides the init function of the parent
        super.init() // calls the parents init function anyway
        print("I am a Sports Car.")
        make = "BMW"
        model = "3 Series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease*3
    }
}

var car = SportsCar()


// Polymorphism:
// Two implementations that have same name but do different things

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

// We have 2 different classes which inherit from the parent class Shape, but their function calculate area is different
class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = ( valA * valB ) / 2
    }
}

class Recatangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = ( valA * valB )
    }
}
