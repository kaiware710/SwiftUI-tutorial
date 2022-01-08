var OptionalInt :Int? = 30
//var OptionalInt :Int?
//print(OptionalInt!)

//if let unwrapedInt = OptionalInt {
//    print(unwrapedInt)
//}
//else {
//    print("値がnilです。")
//}

func Unwrap() {
    guard let unwrapedInt = OptionalInt else {
        print("値はnilです。")
        return
    }
    print(unwrapedInt)
}

Unwrap()
