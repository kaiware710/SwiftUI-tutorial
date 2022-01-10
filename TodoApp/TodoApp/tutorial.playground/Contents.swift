let Hello = { (name: String) -> String in
    return "こんにちは\(name)さん！"
}
print(Hello("デイビッド"))
// 引数の省略
let Hello = { () -> String in
    return "こんにちはデイビッドさん！"
}
print(Hello())
// 戻り地の省略
let Hello = {print("こんにちはデイビッドさん！")}
Hello()
