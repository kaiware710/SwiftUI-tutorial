class Monster {
    var kind = "モンスター"
    func bodyBrow() {
        print("体当たり")
    }
}

class Dragon: Monster {
    func fireBreath() {
        print("火を吹く")
    }
}

class Slime: Monster {
    func recovery() {
        print("回復する")
    }
}

var dragon = Dragon()
print(dragon.kind)
dragon.bodyBrow()
dragon.fireBreath()

var slime = Slime()
print(slime.kind)
slime.bodyBrow()
slime.recovery()
