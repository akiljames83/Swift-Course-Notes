import UIKit

var str = "Hello, playground"

print(str)

var arr: [Double]?

var money: Int?


class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 400
    var pastLocations = [String]()
    
    func drive(){
        // accelerate car
    }
    
    func newPosition(speed: Int, position: Int, time: Int) -> Int{
        let Nposition = position + time*speed
        return Nposition
    }
    
    func recap() {
        for past in self.pastLocations {
            print("This vehicle went to \(past)")
        }
        print("\nEnd of recapitulation...")
    }
    
}

var bmw = Vehicle()
var pos = bmw.newPosition(speed: 10, position: 3, time: 4)
print(pos)

var locations = ["A", "B", "C"]

for i in 0..<locations.count {
    //print(locations[i])
    bmw.pastLocations.append(locations[i])
}

bmw.recap()

//arr = [Double]()
//
//arr.append(23.3)
//arr.append(25.3)
//
//for each in arr {
//    arr = arr + 2
//    print(arr)
//}
