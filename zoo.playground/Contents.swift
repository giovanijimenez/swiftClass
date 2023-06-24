import UIKit

class Animal{
    //Las clases pueden contener propiedades en este caso "var"
    var name : String
    var description : String
    var color : String
    var age : Int
    
    //Iniciamos nuestra clase
    init(name: String, description: String, color: String, age:Int){
        //Self se usa para referirme a una variable de la misma clase
        self.name = name
        self.description = description
        self.color = color
        self.age = age
    }
    //Las clases pueden contener metodos en este caso "func"
    
    func eat() -> String{
        return "" //Temporalmente vacia por que esta la vamos a sobreescribir
    }
    func makeNoise() -> String {
        return ""
    }
    func move() -> String {
        return ""
    }
    func animalData() {
        print("Name: \(name)")
        print("description: \(description)")
        print("color: \(color)")
        print("Age: \(age)")
    }
}

//var tiger: Animal = Animal (name: "Toño", description: "is a bengal tiger", color: "orange", age: 4)
//tiger.animalData()

print("------Herencias")
//-----Herencia
class Carnivore: Animal{
    var hasFang: Bool //Este es un booleano
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool) {
        self.hasFang = hasFang
        super.init(name: name, description: description, color: color, age: age)
    }
    
    //Usamos polimorfismo override
    override func eat() -> String {
        return "meat"
    }
}

class Tiger : Carnivore {
    var animalSize: Float
    
    init(name: String, description: String, color: String, age: Int, hasFang: Bool, animalSize: Float) {
        self.animalSize = animalSize
        super.init(name: name, description: description, color: color, age: age, hasFang: hasFang)
        //Super. aplica cuando solo estoy heredando de otra clase del self. (como ya use el self necesito usar un super. para añadir mas)
    }
    
    override func makeNoise() -> String {
        return "--Roar--"
    }
    override func move() -> String {
        return "Fast"
    }
}


let tiger = Tiger(name: "Toño", description: "Belga tiger", color: "orange", age: 3, hasFang: true, animalSize: 15.5)
tiger.animalData()
print("This animal eats \(tiger.eat()), and make a sound like \(tiger.makeNoise()), and it moves so \(tiger.move())")



//----Herbivore
print("-----Herbivore")

class Herbivore: Animal{
    var eatPlants: Bool
    init(name: String, description: String, color: String, age: Int, eatPnats: Bool) {
        self.eatPlants = eatPlants
        super.init(name: name, description: description, color: color, age: age)
    }
    override func fly() -> String{
        return "It can fly"
    }
}

let herbivore = Herbivore(name: "Gio", description: "cow description", color: "Black and white", age: 5, eatPnats: true)
herbivore.animalData()
print("This animal eats \(herbivore.eat()), and  \(herbivore.fly())")



//----Omnivore

print("-----Omnivore")
class Omnivore Animal {
    var canFly: Bool
    init(name: String, description: String, color: String, age: Int, canFly: Bool){
        self.canFly = canFly
        super.init(name: name, description: description, color: color, age: age)
    }
    override func
}





//Objetos
/*Usamos la palabra reservada
 class NombreDelObjeto {
    aqui estan nuestros atributos
    o nuestros funciones

    //usamos un inicializador para llamarlo que este preparado
    int(){
 
    }
 } */


class Programmer {
    let name : String
    let lenguage : String
    let age : Int
    
    init(name: String, lenguage: String, age: Int){
        self.name = name //Asignarle ese valor al atributo
        self.lenguage = lenguage
        self.age = age
    }
    func code(){
        print("Estoy programando")
    }
}


/*Inicializamos una variable
 Aqui le mando los parametros
 */
//Instanciamos nuestra clase programer
let gio = Programmer(name: "Gio", lenguage: "GO", age: 25)

gio.code()
gio.age

//Aqui añadimos atributos a las clases con herencias

class programmerKodemia : Programmer{
    
}
