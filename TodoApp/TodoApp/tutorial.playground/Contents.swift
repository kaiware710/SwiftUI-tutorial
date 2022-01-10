class Animal {
    var age = 2
    let kind = "犬"

    func Bite() {
        print("\(age)歳の\(kind)が噛み付いてきた。")
    }
}
var dog = Animal()
print(String(dog.age)+"歳")
dog.Bite()


class AnimalInit {
    var age: Int
    var kind: String
    func Bite() {
        print("\(age)歳の\(kind)が噛み付いてきた。")
    }
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
    }
}
var cat = AnimalInit(age: 4, kind: "猫")
cat.Bite()
