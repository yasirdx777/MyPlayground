
/// horizontal inheritance

protocol Nameable {
    var name: String! {get set}
}


class Cats_h:Nameable{
    var name: String!


    init() {
        name = "Cat"
    }
}


class Dogs_h: Nameable{
    var name: String!



    init() {
        name = "Dog"
    }
}

class Car_h: Nameable{
    var name: String!



    init() {
        name = "Ford"
    }
}



let anArray_h:[Nameable] = [Cats_h(), Dogs_h(), Car_h()]


anArray_h.forEach { item in
    print(item.name!)
}


/// vertical inheritance

class Animal{
    func name(){
        print("animal")
    }
}


class Cats_v: Animal{
   override func name(){
        print("Mailo")
    }
}


class Dogs_v: Animal{
    override func name(){
        print("Some Dog Name")
    }
}

class Car_v{
    func name(){
        print("Some Car Name")
    }
}


let anArray_v:[Animal] = [Cats_v(), Dogs_v() /* , Car_v() #it's not an  Animal :) */]

anArray_v.forEach { item in
    item.name()
}
