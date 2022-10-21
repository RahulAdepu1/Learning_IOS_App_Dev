
struct Town {
    let nameOfLand: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(citizens: [String], nameOfLand: String, resources: [String:Int]) {
        self.citizens = citizens
        self.nameOfLand = nameOfLand.uppercased()
        self.resources = resources
    }
    
    mutating func harvestRice() {
        resources["Rice"] = 100
    }
}

var myTown = Town(citizens: ["Rahul", "Tushar"], nameOfLand: "RahulLand", resources: ["Burger":50, "ChickenWings":100])

myTown.citizens.append("Kunal")
print("People of \(myTown.nameOfLand): \(myTown.citizens)")

myTown.harvestRice()
print(myTown.resources)

//--------------------------------------------
func greeting1() {
    print("Hello")
}

greeting1()

func greeting2(name: String) {
    print("Hello \(name)")
}

greeting2(name: "Rahul")


func greeting3(name: String) -> Bool {
    if name == "Rahul" || name == "Tushar" {
        return true
    }else {
        return false
    }
}

var doorOpen = greeting3(name: "Rahul")
print(doorOpen)
