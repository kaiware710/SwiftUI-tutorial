protocol Animal {
    var age: Int { get }  // プロパティ
    func bark()   // メソッド
}

struct Dog: Animal {
    let age: Int
    func bark() {
        print("犬が吠える")
    }
}
