struct Animal {
    var age = 5
    var kind = "犬"
    func Bite() {
        print("\(age)歳の\(kind)が噛み付く")
    }
}
var dog = Animal()
dog.Bite()


struct AnimalInit {
    var age: Int
    var kind: String
    func Bite() {
        print("\(age)歳の\(kind)が噛み付く")
    }
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}
var panda = AnimalInit(age: 11, kind: "パンダ")
//panda.Bite()


var animals: [AnimalInit] = [
    AnimalInit(age: 10, kind: "ライオン"),
    AnimalInit(age: 17, kind: "オランウータン"),
    AnimalInit(age: 20, kind: "ヒト"),
]
animals[2].Bite()
