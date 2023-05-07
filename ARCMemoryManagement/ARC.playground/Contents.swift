import UIKit

class Vehicle{
    var car: Car?
    let id: String
    init(id: String, car: Car?){
        self.id = id
        self.car = car
        print("\(self) allocated")
    }
    deinit {
        print("\(self) deallocated")
    }
}

class Car{
    unowned var vehicle: Vehicle?
    let id: String
    init(id: String, vehicle: Vehicle?){
        self.id = id
        self.vehicle = vehicle
        print("\(self) allocated")
    }
    deinit {
        print("\(self) deallocated")
    }
}

//Vehicle(id: "Vehicle", car: nil)

var vehicle: Vehicle? = Vehicle(id: "Vehicle", car: nil)
var car: Car? = Car(id: "Car", vehicle: nil)

vehicle?.car = car
car?.vehicle = vehicle

vehicle = nil
car = nil
