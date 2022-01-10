func HowAreYou(name: String) -> String {
    return "こんにちは\(name)さん。調子はどう？"
}
print(HowAreYou(name: "デニス"))

func greeting(greet: String, name: String, word: String) -> String {
    return "\(greet)、\(name)さん。\(word)"
}
print(greeting(greet: "おはよう", name: "デニス", word: "今日も元気？"))

